package org.wikipedia.settings;

import coil3.util.ContextsKt;
import j$.time.LocalDateTime;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.search.SearchResult$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RemoteConfig$RemoteConfigYearInReview {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final LocalDateTime activeEndDate;
    public final LocalDateTime activeStartDate;
    public final long articles;
    public final int averageArticlesReadPerYear;
    public final long bytesAddedEN;
    public final LocalDateTime dataEndDate;
    public final LocalDateTime dataStartDate;
    public final long edits;
    public final long editsApps;
    public final long editsEN;
    public final int editsPerMinute;
    public final List hideCountryCodes;
    public final List hideDonateCountryCodes;
    public final long hoursReadEN;
    public final int languages;
    public final long savedArticlesApps;
    public final List topReadEN;
    public final List topReadPercentages;
    public final long viewsApps;
    public final int year;
    public final int yearsReadEN;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RemoteConfig$RemoteConfigYearInReview$$serializer.INSTANCE;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(13)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(14)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(15)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(16))};
    }

    public /* synthetic */ RemoteConfig$RemoteConfigYearInReview(int i, int i2, LocalDateTime localDateTime, LocalDateTime localDateTime2, LocalDateTime localDateTime3, LocalDateTime localDateTime4, int i3, long j, long j2, long j3, long j4, int i4, int i5, long j5, long j6, long j7, long j8, int i6, List list, List list2, List list3, List list4) {
        if ((i & 1) == 0) {
            this.year = 0;
        } else {
            this.year = i2;
        }
        if ((i & 2) == 0) {
            LocalDateTime now = LocalDateTime.now();
            now.getClass();
            this.activeStartDate = now;
        } else {
            this.activeStartDate = localDateTime;
        }
        if ((i & 4) == 0) {
            LocalDateTime now2 = LocalDateTime.now();
            now2.getClass();
            this.activeEndDate = now2;
        } else {
            this.activeEndDate = localDateTime2;
        }
        if ((i & 8) == 0) {
            LocalDateTime now3 = LocalDateTime.now();
            now3.getClass();
            this.dataStartDate = now3;
        } else {
            this.dataStartDate = localDateTime3;
        }
        if ((i & 16) == 0) {
            LocalDateTime now4 = LocalDateTime.now();
            now4.getClass();
            this.dataEndDate = now4;
        } else {
            this.dataEndDate = localDateTime4;
        }
        if ((i & 32) == 0) {
            this.languages = 0;
        } else {
            this.languages = i3;
        }
        if ((i & 64) == 0) {
            this.articles = 0L;
        } else {
            this.articles = j;
        }
        if ((i & 128) == 0) {
            this.savedArticlesApps = 0L;
        } else {
            this.savedArticlesApps = j2;
        }
        if ((i & 256) == 0) {
            this.viewsApps = 0L;
        } else {
            this.viewsApps = j3;
        }
        if ((i & 512) == 0) {
            this.editsApps = 0L;
        } else {
            this.editsApps = j4;
        }
        if ((i & 1024) == 0) {
            this.editsPerMinute = 0;
        } else {
            this.editsPerMinute = i4;
        }
        if ((i & 2048) == 0) {
            this.averageArticlesReadPerYear = 0;
        } else {
            this.averageArticlesReadPerYear = i5;
        }
        if ((i & 4096) == 0) {
            this.edits = 0L;
        } else {
            this.edits = j5;
        }
        if ((i & 8192) == 0) {
            this.editsEN = 0L;
        } else {
            this.editsEN = j6;
        }
        if ((i & 16384) == 0) {
            this.bytesAddedEN = 0L;
        } else {
            this.bytesAddedEN = j7;
        }
        if ((32768 & i) == 0) {
            this.hoursReadEN = 0L;
        } else {
            this.hoursReadEN = j8;
        }
        if ((65536 & i) == 0) {
            this.yearsReadEN = 0;
        } else {
            this.yearsReadEN = i6;
        }
        int i7 = 131072 & i;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (i7 == 0) {
            this.topReadEN = emptyList;
        } else {
            this.topReadEN = list;
        }
        if ((262144 & i) == 0) {
            this.topReadPercentages = emptyList;
        } else {
            this.topReadPercentages = list2;
        }
        if ((524288 & i) == 0) {
            this.hideCountryCodes = emptyList;
        } else {
            this.hideCountryCodes = list3;
        }
        if ((i & 1048576) == 0) {
            this.hideDonateCountryCodes = emptyList;
        } else {
            this.hideDonateCountryCodes = list4;
        }
    }
}
