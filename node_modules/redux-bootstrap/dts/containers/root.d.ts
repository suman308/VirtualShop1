import * as Redux from "redux";
import * as History from "history";
import interfaces from "../interfaces/interfaces";
export default function getRoot(store: Redux.Store<any>, history: History.History, routes: JSX.Element, routerProps?: interfaces.RouterProps): JSX.Element;
