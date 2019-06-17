import { actionTypes } from '../constants/actionTypes'

export const changeStatus = text => {
    return dispatch => {
        setTimeout(() => {
            dispatch ({
                type: actionTypes.CHANGE_STATUS,
                payload: text
            })
        }, 1000)
    }
}