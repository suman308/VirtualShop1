"use strict";
var __assign = (this && this.__assign) || Object.assign || function(t) {
    for (var s, i = 1, n = arguments.length; i < n; i++) {
        s = arguments[i];
        for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
            t[p] = s[p];
    }
    return t;
};
Object.defineProperty(exports, "__esModule", { value: true });
var React = require("react");
var react_redux_1 = require("react-redux");
var react_router_1 = require("react-router");
function getRoot(store, history, routes, routerProps) {
    return (React.createElement(react_redux_1.Provider, { store: store },
        React.createElement(react_router_1.Router, __assign({ history: history }, routerProps), routes)));
}
exports.default = getRoot;
