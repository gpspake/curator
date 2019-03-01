# Example Queries

## Find an article by id
```
{
  article(id: 1) {
    id
    title
    text
    comments{
      id
      commenter
      body
    }
  }
}
```

## Create an article
```
mutation CreateArticle($input: CreateArticleInput!) {
  createArticle(input: $input) {
    article {
      id
      title
      text
      comments {
        id
      }
    }
  }
}
```
variables
```
{
  "input": {
    "title": "Come on and",
    "text": "Slam"
  }
}
```

## Create a comment
```
mutation CreateComment($input: CreateCommentInput!) {
  createComment(input: $input) {
    comment {
      id
      commenter
      body
    }
  }
}
```
Variables
```
{
  "input": {
    "articleId": "2",
    "commenter": "Hello",
    "body": "World"
  }
}
```
