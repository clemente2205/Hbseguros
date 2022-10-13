import axios, { AxiosResponse } from "axios";

axios.defaults.baseURL = "http://localhost:5000/api"

const responseBody = (response) => response.data;

const requests = {
    get: (url) => axios.get(url).then(responseBody),
}

const Activities = {
    list: () => requests.get('/Activities')
}

const agent = {
    Activities
}

export default agent;