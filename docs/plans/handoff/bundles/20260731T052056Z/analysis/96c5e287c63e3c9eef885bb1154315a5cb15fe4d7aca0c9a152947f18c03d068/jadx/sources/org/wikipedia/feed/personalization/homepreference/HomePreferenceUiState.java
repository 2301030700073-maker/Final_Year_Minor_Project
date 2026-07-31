package org.wikipedia.feed.personalization.homepreference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomePreferenceUiState {
    public final HomeContentState communityState;
    public final HomeContentState personalizedState;
    public final HomePreferenceType selectedType;

    public HomePreferenceUiState(HomePreferenceType homePreferenceType, HomeContentState homeContentState, HomeContentState homeContentState2) {
        homePreferenceType.getClass();
        this.selectedType = homePreferenceType;
        this.communityState = homeContentState;
        this.personalizedState = homeContentState2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HomePreferenceUiState)) {
            return false;
        }
        HomePreferenceUiState homePreferenceUiState = (HomePreferenceUiState) obj;
        return this.selectedType == homePreferenceUiState.selectedType && this.communityState.equals(homePreferenceUiState.communityState) && this.personalizedState.equals(homePreferenceUiState.personalizedState);
    }

    public final int hashCode() {
        return this.personalizedState.hashCode() + ((this.communityState.hashCode() + (this.selectedType.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "HomePreferenceUiState(selectedType=" + this.selectedType + ", communityState=" + this.communityState + ", personalizedState=" + this.personalizedState + ")";
    }
}
