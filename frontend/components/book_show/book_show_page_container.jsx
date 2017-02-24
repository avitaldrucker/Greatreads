import React from 'react';
import { connect } from 'react-redux';
import HeaderContainer from '../header_container';
import BookDetails from './book_details_container';
import Reviews from '../reviews';
import Footer from '../footer';
import { fetchBooks } from '../../actions/book_actions';
import { fetchBookshelves } from '../../actions/bookshelf_actions';
import { fetchReviews } from '../../actions/review_actions';
import { reviewsArray } from '../../selectors/reviews_selector';

class BookShowPage extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    if (!this.props.book && this.props.loggedIn && !this.props.loading.booksLoading && !this.props.loading.bookshelvesLoading) { //refreshing page when logged in
      this.props.fetchBooks();
      this.props.fetchBookshelves(this.props.currentUser.id); //refreshing page when logged out
    } else if (!this.props.book && !this.props.loggedIn && !this.props.loading.booksLoading) {
      this.props.fetchBooks();
    } else if (this.props.book && this.props.loggedIn && !this.props.loading.bookshelvesLoading) { //redirecting to book show page when logged in
      this.props.fetchBookshelves(this.props.currentUser.id);
    }
  }

  componentWillReceiveProps(nextProps) {
    if (!this.props.loggedIn && nextProps.loggedIn && !this.props.loading.booksLoading && !this.props.loading.bookshelvesLoading) { //logging on the book show page
      this.props.fetchBooks();
      this.props.fetchBookshelves(nextProps.currentUser.id);
    }
  }

  render() {
    if (this.props.loading.booksLoading || this.props.loading.bookshelvesLoading || !this.props.book) {
      return(<div></div>);
    }
    else {
      return(
        <main className="overall">
          <HeaderContainer bookId={this.props.book.id}/>
          <main className="body">
            <BookDetails book={this.props.book} />
            <Reviews
              book={this.props.book} loading={this.props.loading} reviews={this.props.reviews} fetchReviews={this.props.fetchReviews}/>
          </main>
          <Footer />
        </main>
      );
    }
  }

}

const mapStateToProps = (state, ownProps) => {
  return {
    book: state.books[ownProps.params.bookId],
    loggedIn: !!state.session.currentUser,
    currentUser: state.session.currentUser,
    bookshelves: state.bookshelves,
    loading: state.loading,
    reviews: reviewsArray(state.reviews)
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchBooks: () => { return dispatch(fetchBooks()); },
    fetchBookshelves: (userId) => { return dispatch(fetchBookshelves(userId)); },
    fetchReviews: (bookId) => { return dispatch(fetchReviews(bookId)); }
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(BookShowPage);
