import { Counter } from "./components/Counter";
import { Home } from "./components/Home";
import { Login } from "./components/Login"

const AppRoutes = [
  {
    index: true,
    element: <Home />
  },
  {
    path: '/counter',
    element: <Counter />
  },
  {
      path: '/Login',
      element: <Login />
  }
];

export default AppRoutes;
