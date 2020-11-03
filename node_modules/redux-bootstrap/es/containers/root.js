import * as React from "react";
import { Provider } from "react-redux";
import { Router } from "react-router";
export default function getRoot(store, history, routes, routerProps) {
    return (React.createElement(Provider, { store: store },
        React.createElement(Router, Object.assign({ history: history }, routerProps), routes)));
}
