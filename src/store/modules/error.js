const state = {
    error: undefined,
};

const getters = {
    error: (state) => state.error,
};

const mutations = {
    onError: (state, error) => (state.error = error),
};

export default {
    state,
    getters,
    mutations,
};
