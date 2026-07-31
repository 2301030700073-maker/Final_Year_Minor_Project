package org.wikipedia.yearinreview;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.search.SearchResult$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class YearInReviewModel {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final int favoriteDayToRead;
    public final int favoriteMonthDidMostReading;
    public final int favoriteTimeToRead;
    public final boolean isCustomIconUnlocked;
    public final boolean isReadingListCreated;
    public final boolean isReadingListDialogShown;
    public final List largestClusterArticles;
    public final Pair largestClusterBottomRight;
    public final String largestClusterCountryName;
    public final Pair largestClusterLocation;
    public final Pair largestClusterTopLeft;
    public final int localReadingArticlesCount;
    public final List localSavedArticles;
    public final int localSavedArticlesCount;
    public final List localTopCategories;
    public final List localTopVisitedArticles;
    public final int slideViewedCount;
    public final long totalReadingTimeMinutes;
    public final int userEditsCount;
    public final long userEditsViewedTimes;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return YearInReviewModel$$serializer.INSTANCE;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(23)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(24)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(25)), null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(26)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(27)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(28)), null, ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(29)), null, null, null, null, null, null};
    }

    public /* synthetic */ YearInReviewModel(int i, long j, int i2, int i3, List list, List list2, List list3, int i4, int i5, int i6, Pair pair, Pair pair2, Pair pair3, String str, List list4, int i7, long j2, boolean z, int i8, boolean z2, boolean z3) {
        if (131071 != (i & 131071)) {
            TuplesKt.throwMissingFieldException(i, 131071, YearInReviewModel$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.totalReadingTimeMinutes = j;
        this.localReadingArticlesCount = i2;
        this.localSavedArticlesCount = i3;
        this.localSavedArticles = list;
        this.localTopVisitedArticles = list2;
        this.localTopCategories = list3;
        this.favoriteTimeToRead = i4;
        this.favoriteDayToRead = i5;
        this.favoriteMonthDidMostReading = i6;
        this.largestClusterLocation = pair;
        this.largestClusterTopLeft = pair2;
        this.largestClusterBottomRight = pair3;
        this.largestClusterCountryName = str;
        this.largestClusterArticles = list4;
        this.userEditsCount = i7;
        this.userEditsViewedTimes = j2;
        this.isCustomIconUnlocked = z;
        if ((131072 & i) == 0) {
            this.slideViewedCount = 0;
        } else {
            this.slideViewedCount = i8;
        }
        if ((262144 & i) == 0) {
            this.isReadingListDialogShown = false;
        } else {
            this.isReadingListDialogShown = z2;
        }
        if ((i & 524288) == 0) {
            this.isReadingListCreated = false;
        } else {
            this.isReadingListCreated = z3;
        }
    }

    public static YearInReviewModel copy$default(YearInReviewModel yearInReviewModel, int i, boolean z, int i2) {
        long j = yearInReviewModel.totalReadingTimeMinutes;
        int i3 = yearInReviewModel.localReadingArticlesCount;
        int i4 = yearInReviewModel.localSavedArticlesCount;
        List list = yearInReviewModel.localSavedArticles;
        List list2 = yearInReviewModel.localTopVisitedArticles;
        List list3 = yearInReviewModel.localTopCategories;
        int i5 = yearInReviewModel.favoriteTimeToRead;
        int i6 = yearInReviewModel.favoriteDayToRead;
        int i7 = yearInReviewModel.favoriteMonthDidMostReading;
        Pair pair = yearInReviewModel.largestClusterLocation;
        Pair pair2 = yearInReviewModel.largestClusterTopLeft;
        Pair pair3 = yearInReviewModel.largestClusterBottomRight;
        String str = yearInReviewModel.largestClusterCountryName;
        List list4 = yearInReviewModel.largestClusterArticles;
        int i8 = yearInReviewModel.userEditsCount;
        long j2 = yearInReviewModel.userEditsViewedTimes;
        boolean z2 = yearInReviewModel.isCustomIconUnlocked;
        int i9 = (i2 & 131072) != 0 ? yearInReviewModel.slideViewedCount : i;
        boolean z3 = yearInReviewModel.isReadingListDialogShown;
        boolean z4 = (i2 & 524288) != 0 ? yearInReviewModel.isReadingListCreated : z;
        list.getClass();
        list2.getClass();
        list3.getClass();
        pair.getClass();
        pair2.getClass();
        pair3.getClass();
        str.getClass();
        list4.getClass();
        return new YearInReviewModel(j, i3, i4, list, list2, list3, i5, i6, i7, pair, pair2, pair3, str, list4, i8, j2, z2, i9, z3, z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof YearInReviewModel)) {
            return false;
        }
        YearInReviewModel yearInReviewModel = (YearInReviewModel) obj;
        return this.totalReadingTimeMinutes == yearInReviewModel.totalReadingTimeMinutes && this.localReadingArticlesCount == yearInReviewModel.localReadingArticlesCount && this.localSavedArticlesCount == yearInReviewModel.localSavedArticlesCount && Intrinsics.areEqual(this.localSavedArticles, yearInReviewModel.localSavedArticles) && Intrinsics.areEqual(this.localTopVisitedArticles, yearInReviewModel.localTopVisitedArticles) && Intrinsics.areEqual(this.localTopCategories, yearInReviewModel.localTopCategories) && this.favoriteTimeToRead == yearInReviewModel.favoriteTimeToRead && this.favoriteDayToRead == yearInReviewModel.favoriteDayToRead && this.favoriteMonthDidMostReading == yearInReviewModel.favoriteMonthDidMostReading && Intrinsics.areEqual(this.largestClusterLocation, yearInReviewModel.largestClusterLocation) && Intrinsics.areEqual(this.largestClusterTopLeft, yearInReviewModel.largestClusterTopLeft) && Intrinsics.areEqual(this.largestClusterBottomRight, yearInReviewModel.largestClusterBottomRight) && Intrinsics.areEqual(this.largestClusterCountryName, yearInReviewModel.largestClusterCountryName) && Intrinsics.areEqual(this.largestClusterArticles, yearInReviewModel.largestClusterArticles) && this.userEditsCount == yearInReviewModel.userEditsCount && this.userEditsViewedTimes == yearInReviewModel.userEditsViewedTimes && this.isCustomIconUnlocked == yearInReviewModel.isCustomIconUnlocked && this.slideViewedCount == yearInReviewModel.slideViewedCount && this.isReadingListDialogShown == yearInReviewModel.isReadingListDialogShown && this.isReadingListCreated == yearInReviewModel.isReadingListCreated;
    }

    public final int hashCode() {
        long j = this.totalReadingTimeMinutes;
        int m = (Modifier.CC.m(Animation.CC.m((this.largestClusterBottomRight.hashCode() + ((this.largestClusterTopLeft.hashCode() + ((this.largestClusterLocation.hashCode() + ((((((Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(((((((int) (j ^ (j >>> 32))) * 31) + this.localReadingArticlesCount) * 31) + this.localSavedArticlesCount) * 31, 31, this.localSavedArticles), 31, this.localTopVisitedArticles), 31, this.localTopCategories) + this.favoriteTimeToRead) * 31) + this.favoriteDayToRead) * 31) + this.favoriteMonthDidMostReading) * 31)) * 31)) * 31)) * 31, 31, this.largestClusterCountryName), 31, this.largestClusterArticles) + this.userEditsCount) * 31;
        long j2 = this.userEditsViewedTimes;
        return ((((((((m + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.isCustomIconUnlocked ? 1231 : 1237)) * 31) + this.slideViewedCount) * 31) + (this.isReadingListDialogShown ? 1231 : 1237)) * 31) + (this.isReadingListCreated ? 1231 : 1237);
    }

    public final String toString() {
        return "YearInReviewModel(totalReadingTimeMinutes=" + this.totalReadingTimeMinutes + ", localReadingArticlesCount=" + this.localReadingArticlesCount + ", localSavedArticlesCount=" + this.localSavedArticlesCount + ", localSavedArticles=" + this.localSavedArticles + ", localTopVisitedArticles=" + this.localTopVisitedArticles + ", localTopCategories=" + this.localTopCategories + ", favoriteTimeToRead=" + this.favoriteTimeToRead + ", favoriteDayToRead=" + this.favoriteDayToRead + ", favoriteMonthDidMostReading=" + this.favoriteMonthDidMostReading + ", largestClusterLocation=" + this.largestClusterLocation + ", largestClusterTopLeft=" + this.largestClusterTopLeft + ", largestClusterBottomRight=" + this.largestClusterBottomRight + ", largestClusterCountryName=" + this.largestClusterCountryName + ", largestClusterArticles=" + this.largestClusterArticles + ", userEditsCount=" + this.userEditsCount + ", userEditsViewedTimes=" + this.userEditsViewedTimes + ", isCustomIconUnlocked=" + this.isCustomIconUnlocked + ", slideViewedCount=" + this.slideViewedCount + ", isReadingListDialogShown=" + this.isReadingListDialogShown + ", isReadingListCreated=" + this.isReadingListCreated + ")";
    }

    public YearInReviewModel(long j, int i, int i2, List list, List list2, List list3, int i3, int i4, int i5, Pair pair, Pair pair2, Pair pair3, String str, List list4, int i6, long j2, boolean z, int i7, boolean z2, boolean z3) {
        list.getClass();
        list2.getClass();
        list3.getClass();
        pair2.getClass();
        pair3.getClass();
        str.getClass();
        list4.getClass();
        this.totalReadingTimeMinutes = j;
        this.localReadingArticlesCount = i;
        this.localSavedArticlesCount = i2;
        this.localSavedArticles = list;
        this.localTopVisitedArticles = list2;
        this.localTopCategories = list3;
        this.favoriteTimeToRead = i3;
        this.favoriteDayToRead = i4;
        this.favoriteMonthDidMostReading = i5;
        this.largestClusterLocation = pair;
        this.largestClusterTopLeft = pair2;
        this.largestClusterBottomRight = pair3;
        this.largestClusterCountryName = str;
        this.largestClusterArticles = list4;
        this.userEditsCount = i6;
        this.userEditsViewedTimes = j2;
        this.isCustomIconUnlocked = z;
        this.slideViewedCount = i7;
        this.isReadingListDialogShown = z2;
        this.isReadingListCreated = z3;
    }
}
