import React from 'react';
import MyBooksIndexItem from './my_books_index_item';

export default class MyBooksIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    if (this.props.selectedBookshelf) {
      return this.props.fetchBookshelfBooks(this.props.selectedBookshelf.id)
        .then(() => { this.setState({ selectedBookshelf: this.props.selectedBookshelf.title }); });
    }
    else  {
      return this.props.fetchUserBooks(this.props.currentUser.id);
    }
  }

  render () {
    if (this.props.loading.booksLoading) {
      return(<div></div>);
    }
    else {
      const userBooks = [];

      const books = this.props.books.map((book, index) => {
        return(
          <MyBooksIndexItem
            bookshelves={this.props.bookshelves}
            book={book}
            updateBook={this.props.updateBook}
            currentUser={this.props.currentUser}
            removeBook={this.props.removeBook}
            deleteStatus={this.props.deleteStatus}
            key={index}/>
        );
      });

      return(
        <table className="my-books">
          <thead>
            <tr>
              <th className="cover-col my-books">cover</th>
              <th className="book-title-col my-books">title</th>
              <th className="book-author-col my-books">author</th>
              <th className="book-average-rating my-books">avg rating</th>
              <th className="shelves my-books">shelves</th>
              <th className="review my-books">review</th>
              <th className="date-read my-books">date read</th>
              <th className="delete-book my-books">&nbsp;</th>
            </tr>
          </thead>
          <tbody>
            {books}
          </tbody>
        </table>
      );
    }
  }

}