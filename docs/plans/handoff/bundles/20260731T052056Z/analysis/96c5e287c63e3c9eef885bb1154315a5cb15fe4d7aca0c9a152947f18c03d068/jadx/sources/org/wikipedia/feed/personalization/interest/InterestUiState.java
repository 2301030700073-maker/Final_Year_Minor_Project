package org.wikipedia.feed.personalization.interest;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InterestUiState {
    public final ArticlesState articlesState;
    public final String languageCode;
    public final ArrayList topicsList;
    public final int totalSelectedCount;

    public InterestUiState(ArrayList arrayList, ArticlesState articlesState, int i, String str) {
        str.getClass();
        this.topicsList = arrayList;
        this.articlesState = articlesState;
        this.totalSelectedCount = i;
        this.languageCode = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InterestUiState)) {
            return false;
        }
        InterestUiState interestUiState = (InterestUiState) obj;
        return this.topicsList.equals(interestUiState.topicsList) && this.articlesState.equals(interestUiState.articlesState) && this.totalSelectedCount == interestUiState.totalSelectedCount && Intrinsics.areEqual(this.languageCode, interestUiState.languageCode);
    }

    public final int hashCode() {
        return this.languageCode.hashCode() + ((((this.articlesState.hashCode() + (this.topicsList.hashCode() * 31)) * 31) + this.totalSelectedCount) * 31);
    }

    public final String toString() {
        return "InterestUiState(topicsList=" + this.topicsList + ", articlesState=" + this.articlesState + ", totalSelectedCount=" + this.totalSelectedCount + ", languageCode=" + this.languageCode + ")";
    }
}
