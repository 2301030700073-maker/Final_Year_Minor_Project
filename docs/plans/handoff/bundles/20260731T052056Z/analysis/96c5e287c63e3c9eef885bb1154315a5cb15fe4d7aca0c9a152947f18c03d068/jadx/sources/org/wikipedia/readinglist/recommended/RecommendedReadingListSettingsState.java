package org.wikipedia.readinglist.recommended;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListSettingsState {
    public final int articlesNumber;
    public final boolean isRecommendedReadingListEnabled;
    public final boolean isRecommendedReadingListNotificationEnabled;
    public final RecommendedReadingListSource recommendedReadingListSource;
    public final RecommendedReadingListUpdateFrequency updateFrequency;

    public RecommendedReadingListSettingsState(boolean z, int i, RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency, RecommendedReadingListSource recommendedReadingListSource, boolean z2) {
        recommendedReadingListUpdateFrequency.getClass();
        recommendedReadingListSource.getClass();
        this.isRecommendedReadingListEnabled = z;
        this.articlesNumber = i;
        this.updateFrequency = recommendedReadingListUpdateFrequency;
        this.recommendedReadingListSource = recommendedReadingListSource;
        this.isRecommendedReadingListNotificationEnabled = z2;
    }

    public static RecommendedReadingListSettingsState copy$default(RecommendedReadingListSettingsState recommendedReadingListSettingsState, boolean z, int i, RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency, RecommendedReadingListSource recommendedReadingListSource, boolean z2, int i2) {
        if ((i2 & 1) != 0) {
            z = recommendedReadingListSettingsState.isRecommendedReadingListEnabled;
        }
        boolean z3 = z;
        if ((i2 & 2) != 0) {
            i = recommendedReadingListSettingsState.articlesNumber;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            recommendedReadingListUpdateFrequency = recommendedReadingListSettingsState.updateFrequency;
        }
        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency2 = recommendedReadingListUpdateFrequency;
        if ((i2 & 8) != 0) {
            recommendedReadingListSource = recommendedReadingListSettingsState.recommendedReadingListSource;
        }
        RecommendedReadingListSource recommendedReadingListSource2 = recommendedReadingListSource;
        if ((i2 & 16) != 0) {
            z2 = recommendedReadingListSettingsState.isRecommendedReadingListNotificationEnabled;
        }
        recommendedReadingListSettingsState.getClass();
        recommendedReadingListUpdateFrequency2.getClass();
        recommendedReadingListSource2.getClass();
        return new RecommendedReadingListSettingsState(z3, i3, recommendedReadingListUpdateFrequency2, recommendedReadingListSource2, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecommendedReadingListSettingsState)) {
            return false;
        }
        RecommendedReadingListSettingsState recommendedReadingListSettingsState = (RecommendedReadingListSettingsState) obj;
        return this.isRecommendedReadingListEnabled == recommendedReadingListSettingsState.isRecommendedReadingListEnabled && this.articlesNumber == recommendedReadingListSettingsState.articlesNumber && this.updateFrequency == recommendedReadingListSettingsState.updateFrequency && this.recommendedReadingListSource == recommendedReadingListSettingsState.recommendedReadingListSource && this.isRecommendedReadingListNotificationEnabled == recommendedReadingListSettingsState.isRecommendedReadingListNotificationEnabled;
    }

    public final int hashCode() {
        return ((this.recommendedReadingListSource.hashCode() + ((this.updateFrequency.hashCode() + ((((this.isRecommendedReadingListEnabled ? 1231 : 1237) * 31) + this.articlesNumber) * 31)) * 31)) * 31) + (this.isRecommendedReadingListNotificationEnabled ? 1231 : 1237);
    }

    public final String toString() {
        return "RecommendedReadingListSettingsState(isRecommendedReadingListEnabled=" + this.isRecommendedReadingListEnabled + ", articlesNumber=" + this.articlesNumber + ", updateFrequency=" + this.updateFrequency + ", recommendedReadingListSource=" + this.recommendedReadingListSource + ", isRecommendedReadingListNotificationEnabled=" + this.isRecommendedReadingListNotificationEnabled + ")";
    }
}
