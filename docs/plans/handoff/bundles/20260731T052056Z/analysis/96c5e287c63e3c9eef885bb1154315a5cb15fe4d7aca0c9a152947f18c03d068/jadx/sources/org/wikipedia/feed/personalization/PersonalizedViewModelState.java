package org.wikipedia.feed.personalization;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.feed.personalization.homepreference.HomeContentState;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceUiState;
import org.wikipedia.feed.personalization.interest.ArticlesState;
import org.wikipedia.feed.personalization.interest.InterestUiState;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;
import org.wikipedia.topics.ArticleTopic;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PersonalizedViewModelState {
    public final List articles;
    public final Throwable articlesError;
    public final boolean articlesLoading;
    public final List communityContent;
    public final Throwable communityError;
    public final boolean communityLoading;
    public final HomePreferenceType homePreferenceType;
    public final String languageCode;
    public final List personalizedContent;
    public final Throwable personalizedError;
    public final boolean personalizedLoading;
    public final Set selectedArticles;
    public final List selectedTopics;
    public final Map topicPreviewContent;
    public final List topics;

    public PersonalizedViewModelState(List list, List list2, boolean z, Throwable th, Set set, List list3, Map map, String str, HomePreferenceType homePreferenceType, List list4, boolean z2, Throwable th2, List list5, boolean z3, Throwable th3) {
        list2.getClass();
        set.getClass();
        list3.getClass();
        map.getClass();
        str.getClass();
        homePreferenceType.getClass();
        list4.getClass();
        list5.getClass();
        this.topics = list;
        this.articles = list2;
        this.articlesLoading = z;
        this.articlesError = th;
        this.selectedArticles = set;
        this.selectedTopics = list3;
        this.topicPreviewContent = map;
        this.languageCode = str;
        this.homePreferenceType = homePreferenceType;
        this.communityContent = list4;
        this.communityLoading = z2;
        this.communityError = th2;
        this.personalizedContent = list5;
        this.personalizedLoading = z3;
        this.personalizedError = th3;
    }

    public static PersonalizedViewModelState copy$default(PersonalizedViewModelState personalizedViewModelState, List list, boolean z, Throwable th, Set set, List list2, Map map, HomePreferenceType homePreferenceType, List list3, boolean z2, Throwable th2, List list4, boolean z3, Throwable th3, int i) {
        List list5 = personalizedViewModelState.topics;
        List list6 = (i & 2) != 0 ? personalizedViewModelState.articles : list;
        boolean z4 = (i & 4) != 0 ? personalizedViewModelState.articlesLoading : z;
        Throwable th4 = (i & 8) != 0 ? personalizedViewModelState.articlesError : th;
        Set set2 = (i & 16) != 0 ? personalizedViewModelState.selectedArticles : set;
        List list7 = (i & 32) != 0 ? personalizedViewModelState.selectedTopics : list2;
        Map map2 = (i & 64) != 0 ? personalizedViewModelState.topicPreviewContent : map;
        String str = personalizedViewModelState.languageCode;
        HomePreferenceType homePreferenceType2 = (i & 256) != 0 ? personalizedViewModelState.homePreferenceType : homePreferenceType;
        List list8 = (i & 512) != 0 ? personalizedViewModelState.communityContent : list3;
        boolean z5 = (i & 1024) != 0 ? personalizedViewModelState.communityLoading : z2;
        Throwable th5 = (i & 2048) != 0 ? personalizedViewModelState.communityError : th2;
        List list9 = (i & 4096) != 0 ? personalizedViewModelState.personalizedContent : list4;
        boolean z6 = (i & 8192) != 0 ? personalizedViewModelState.personalizedLoading : z3;
        Throwable th6 = (i & 16384) != 0 ? personalizedViewModelState.personalizedError : th3;
        personalizedViewModelState.getClass();
        list6.getClass();
        set2.getClass();
        list7.getClass();
        map2.getClass();
        str.getClass();
        homePreferenceType2.getClass();
        list8.getClass();
        list9.getClass();
        return new PersonalizedViewModelState(list5, list6, z4, th4, set2, list7, map2, str, homePreferenceType2, list8, z5, th5, list9, z6, th6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersonalizedViewModelState)) {
            return false;
        }
        PersonalizedViewModelState personalizedViewModelState = (PersonalizedViewModelState) obj;
        return this.topics.equals(personalizedViewModelState.topics) && Intrinsics.areEqual(this.articles, personalizedViewModelState.articles) && this.articlesLoading == personalizedViewModelState.articlesLoading && Intrinsics.areEqual(this.articlesError, personalizedViewModelState.articlesError) && Intrinsics.areEqual(this.selectedArticles, personalizedViewModelState.selectedArticles) && Intrinsics.areEqual(this.selectedTopics, personalizedViewModelState.selectedTopics) && Intrinsics.areEqual(this.topicPreviewContent, personalizedViewModelState.topicPreviewContent) && Intrinsics.areEqual(this.languageCode, personalizedViewModelState.languageCode) && this.homePreferenceType == personalizedViewModelState.homePreferenceType && Intrinsics.areEqual(this.communityContent, personalizedViewModelState.communityContent) && this.communityLoading == personalizedViewModelState.communityLoading && Intrinsics.areEqual(this.communityError, personalizedViewModelState.communityError) && Intrinsics.areEqual(this.personalizedContent, personalizedViewModelState.personalizedContent) && this.personalizedLoading == personalizedViewModelState.personalizedLoading && Intrinsics.areEqual(this.personalizedError, personalizedViewModelState.personalizedError);
    }

    public final int hashCode() {
        int m = (Modifier.CC.m(this.topics.hashCode() * 31, 31, this.articles) + (this.articlesLoading ? 1231 : 1237)) * 31;
        Throwable th = this.articlesError;
        int m2 = (Modifier.CC.m((this.homePreferenceType.hashCode() + Animation.CC.m((this.topicPreviewContent.hashCode() + Modifier.CC.m((this.selectedArticles.hashCode() + ((m + (th == null ? 0 : th.hashCode())) * 31)) * 31, 31, this.selectedTopics)) * 31, 31, this.languageCode)) * 31, 31, this.communityContent) + (this.communityLoading ? 1231 : 1237)) * 31;
        Throwable th2 = this.communityError;
        int m3 = (Modifier.CC.m((m2 + (th2 == null ? 0 : th2.hashCode())) * 31, 31, this.personalizedContent) + (this.personalizedLoading ? 1231 : 1237)) * 31;
        Throwable th3 = this.personalizedError;
        return m3 + (th3 != null ? th3.hashCode() : 0);
    }

    public final HomePreferenceUiState toFeedPreferenceUiState() {
        HomeContentState error;
        boolean z = this.communityLoading;
        HomeContentState homeContentState = HomeContentState.Loading.INSTANCE;
        if (z) {
            error = homeContentState;
        } else {
            Throwable th = this.communityError;
            error = th != null ? new HomeContentState.Error(th) : new HomeContentState.Success(this.communityContent);
        }
        if (!this.personalizedLoading) {
            Throwable th2 = this.personalizedError;
            if (th2 != null) {
                homeContentState = new HomeContentState.Error(th2);
            } else {
                List list = this.personalizedContent;
                homeContentState = list.isEmpty() ? HomeContentState.Empty.INSTANCE : new HomeContentState.Success(list);
            }
        }
        return new HomePreferenceUiState(this.homePreferenceType, error, homeContentState);
    }

    public final InterestUiState toInterestUiState() {
        List list;
        ArticlesState error;
        List list2 = this.topics;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            list = this.selectedTopics;
            if (!hasNext) {
                break;
            }
            OnboardingTopic onboardingTopic = (OnboardingTopic) it.next();
            boolean z = false;
            if (list == null || !list.isEmpty()) {
                Iterator it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (((OnboardingTopic) it2.next()).topic.topicId.equals(onboardingTopic.topic.topicId)) {
                        z = true;
                        break;
                    }
                }
            }
            ArticleTopic articleTopic = onboardingTopic.topic;
            articleTopic.getClass();
            arrayList.add(new OnboardingTopic(articleTopic, z));
        }
        boolean z2 = this.articlesLoading;
        Set set = this.selectedArticles;
        if (z2) {
            error = ArticlesState.Loading.INSTANCE;
        } else {
            Throwable th = this.articlesError;
            error = th != null ? new ArticlesState.Error(th) : new ArticlesState.Success(this.articles, set);
        }
        return new InterestUiState(arrayList, error, set.size() + list.size(), this.languageCode);
    }

    public final String toString() {
        return "PersonalizedViewModelState(topics=" + this.topics + ", articles=" + this.articles + ", articlesLoading=" + this.articlesLoading + ", articlesError=" + this.articlesError + ", selectedArticles=" + this.selectedArticles + ", selectedTopics=" + this.selectedTopics + ", topicPreviewContent=" + this.topicPreviewContent + ", languageCode=" + this.languageCode + ", homePreferenceType=" + this.homePreferenceType + ", communityContent=" + this.communityContent + ", communityLoading=" + this.communityLoading + ", communityError=" + this.communityError + ", personalizedContent=" + this.personalizedContent + ", personalizedLoading=" + this.personalizedLoading + ", personalizedError=" + this.personalizedError + ")";
    }
}
