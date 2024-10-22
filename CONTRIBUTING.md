# Contributing to Todo Application

First off, thank you for considering contributing to our Todo Application! 🎉 

This document provides guidelines and steps for contributing. Following these guidelines helps communicate that you respect the time of the developers managing and developing this open source project.

## Table of Contents
- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
  - [Issues](#issues)
  - [Pull Requests](#pull-requests)
- [Development Setup](#development-setup)
- [Coding Guidelines](#coding-guidelines)
  - [Go Guidelines](#go-guidelines)
  - [React Guidelines](#react-guidelines)
- [Commit Messages](#commit-messages)
- [Testing](#testing)
- [Documentation](#documentation)

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to [vigneshkavery97@gmail.com].

## Getting Started

### Issues

#### Create a New Issue
- Check if the issue already exists
- Use our issue template when creating a new issue
- Provide a clear title and description
- Add appropriate labels
- Include steps to reproduce if reporting a bug

#### Issue Types
- 🐛 Bug Report
- ✨ Feature Request
- 📝 Documentation
- 🔄 Refactoring
- 🎨 UI/UX

### Pull Requests

1. Fork the repository
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   # or
   git checkout -b fix/your-bug-fix
   ```
3. Make your changes
4. Write or update tests if needed
5. Update documentation if needed
6. Commit your changes (see [Commit Messages](#commit-messages))
7. Push to your fork
8. Open a Pull Request

#### PR Guidelines
- Link the related issue(s)
- Provide a clear description of the changes
- Include screenshots for UI changes
- Ensure all tests pass
- Request review from maintainers

## Development Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/todo-app.git
   cd todo-app
   ```

2. **Backend Setup**
   ```bash
   # Install Go dependencies
   go mod download
   
   # Setup environment variables
   cp .env.example .env
   # Edit .env with your configuration
   
   # Run the server
   go run main.go
   ```

3. **Frontend Setup**
   ```bash
   cd client
   npm install
   
   # Setup environment variables
   cp .env.example .env
   # Edit .env with your configuration
   
   # Run the development server
   npm run dev
   ```

## Coding Guidelines

### Go Guidelines

- Follow standard Go formatting guidelines
- Use meaningful variable and function names
- Write comments for complex logic
- Handle errors appropriately
- Use interfaces when appropriate

```go
// Good Example
func GetTodoByID(id string) (*Todo, error) {
    if id == "" {
        return nil, errors.New("invalid ID")
    }
    // ... rest of the code
}

// Bad Example
func Get(i string) (*Todo, error) {
    // ... code without validation
}
```

### React Guidelines

- Use functional components and hooks
- Follow component file structure
- Use meaningful component and prop names
- Include PropTypes or TypeScript types
- Keep components small and focused

```jsx
// Good Example
const TodoItem = ({ todo, onComplete }) => {
    return (
        <div className="todo-item">
            <span>{todo.title}</span>
            <button onClick={() => onComplete(todo.id)}>Complete</button>
        </div>
    );
};

// Bad Example
const Item = (props) => {
    return <div onClick={props.click}>{props.t}</div>;
};
```

## Commit Messages

Follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

Examples:
```
feat(api): add endpoint for updating todo status
fix(ui): resolve todo list rendering issue
docs: update API documentation
```

## Testing

### Backend Testing
- Write unit tests for all new functions
- Ensure existing tests pass
- Use table-driven tests when appropriate
- Mock external dependencies

```go
func TestCreateTodo(t *testing.T) {
    tests := []struct {
        name    string
        input   Todo
        wantErr bool
    }{
        // Add test cases
    }
    // ... test implementation
}
```

### Frontend Testing
- Write tests for components using React Testing Library
- Test user interactions
- Test error states
- Write integration tests for critical flows

```javascript
describe('TodoItem', () => {
    it('should render todo text', () => {
        // Test implementation
    });
});
```

## Documentation

- Update README.md if you change setup steps
- Document new environment variables
- Update API documentation for new endpoints
- Add JSDoc comments for new components
- Include comments for complex logic

### API Documentation Example
```markdown
### Create Todo
POST /api/todos

Request Body:
{
    "title": "string",
    "completed": boolean
}

Response:
{
    "id": "string",
    "title": "string",
    "completed": boolean,
    "createdAt": "string"
}
```

---

## Recognition

Contributors who submit a substantial pull request will be added to our Contributors list in the README.md file.

## Questions?

Feel free to contact the maintainers if you have any questions. We're here to help! 🚀

---

<div align="center">

Thank you for contributing to make this project better! 🙌

</div>