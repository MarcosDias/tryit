import { createStore, applyMiddleware } from 'redux'
import { createLogger} from 'redux-logger'
import thunk from 'redux-thunk'
import { composeWithDevTools } from 'redux-devtools-extension';

import { statusReducer } from './reducers/statusReducer'

const middlewares = composeWithDevTools(
    applyMiddleware(thunk, createLogger())
)

export const store = createStore(statusReducer, middlewares)
