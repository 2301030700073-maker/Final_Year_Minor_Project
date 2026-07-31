package org.wikipedia.search;

import android.location.Location;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SearchResult {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final List coordinates;
    public final int indexInApiCall;
    public final PageTitle pageTitle;
    public final String redirectFrom;
    public final String snippet;
    public final SearchResultType type;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SearchResult$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class SearchResultType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ SearchResultType[] $VALUES;
        private static final Lazy $cachedSerializer$delegate;
        public static final Companion Companion;
        public static final SearchResultType FULL_TEXT;
        public static final SearchResultType HISTORY;
        public static final SearchResultType PREFIX;
        public static final SearchResultType READING_LIST;
        public static final SearchResultType SEMANTIC;
        public static final SearchResultType TAB_LIST;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return (KSerializer) SearchResultType.$cachedSerializer$delegate.getValue();
            }
        }

        static {
            SearchResultType searchResultType = new SearchResultType("PREFIX", 0);
            PREFIX = searchResultType;
            SearchResultType searchResultType2 = new SearchResultType("FULL_TEXT", 1);
            FULL_TEXT = searchResultType2;
            SearchResultType searchResultType3 = new SearchResultType("HISTORY", 2);
            HISTORY = searchResultType3;
            SearchResultType searchResultType4 = new SearchResultType("READING_LIST", 3);
            READING_LIST = searchResultType4;
            SearchResultType searchResultType5 = new SearchResultType("TAB_LIST", 4);
            TAB_LIST = searchResultType5;
            SearchResultType searchResultType6 = new SearchResultType("SEMANTIC", 5);
            SEMANTIC = searchResultType6;
            SearchResultType[] searchResultTypeArr = {searchResultType, searchResultType2, searchResultType3, searchResultType4, searchResultType5, searchResultType6};
            $VALUES = searchResultTypeArr;
            $ENTRIES = new EnumEntriesList(searchResultTypeArr);
            Companion = new Companion();
            $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(8));
        }

        public static SearchResultType valueOf(String str) {
            return (SearchResultType) Enum.valueOf(SearchResultType.class, str);
        }

        public static SearchResultType[] values() {
            return (SearchResultType[]) $VALUES.clone();
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(0)), ContextsKt.lazy(lazyThreadSafetyMode, new SearchResult$$ExternalSyntheticLambda0(7)), null, null};
    }

    public /* synthetic */ SearchResult(int i, PageTitle pageTitle, String str, SearchResultType searchResultType, List list, String str2, int i2) {
        if (7 != (i & 7)) {
            TuplesKt.throwMissingFieldException(i, 7, SearchResult$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.pageTitle = pageTitle;
        this.redirectFrom = str;
        this.type = searchResultType;
        if ((i & 8) == 0) {
            this.coordinates = null;
        } else {
            this.coordinates = list;
        }
        if ((i & 16) == 0) {
            this.snippet = null;
        } else {
            this.snippet = str2;
        }
        if ((i & 32) == 0) {
            this.indexInApiCall = 0;
        } else {
            this.indexInApiCall = i2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchResult)) {
            return false;
        }
        SearchResult searchResult = (SearchResult) obj;
        return Intrinsics.areEqual(this.pageTitle, searchResult.pageTitle) && Intrinsics.areEqual(this.redirectFrom, searchResult.redirectFrom) && this.type == searchResult.type && Intrinsics.areEqual(this.coordinates, searchResult.coordinates) && Intrinsics.areEqual(this.snippet, searchResult.snippet) && this.indexInApiCall == searchResult.indexInApiCall;
    }

    public final Location getLocation() {
        List list = this.coordinates;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Location location = new Location("");
        location.setLatitude(((MwQueryPage.Coordinates) list.get(0)).lat);
        location.setLongitude(((MwQueryPage.Coordinates) list.get(0)).lon);
        return location;
    }

    public final int hashCode() {
        int hashCode = this.pageTitle.hashCode() * 31;
        String str = this.redirectFrom;
        int hashCode2 = (this.type.hashCode() + ((hashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        List list = this.coordinates;
        int hashCode3 = (hashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.snippet;
        return ((hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.indexInApiCall;
    }

    public final String toString() {
        return "SearchResult(pageTitle=" + this.pageTitle + ", redirectFrom=" + this.redirectFrom + ", type=" + this.type + ", coordinates=" + this.coordinates + ", snippet=" + this.snippet + ", indexInApiCall=" + this.indexInApiCall + ")";
    }

    public SearchResult(PageTitle pageTitle, String str, SearchResultType searchResultType, List list, String str2, int i) {
        searchResultType.getClass();
        this.pageTitle = pageTitle;
        this.redirectFrom = str;
        this.type = searchResultType;
        this.coordinates = list;
        this.snippet = str2;
        this.indexInApiCall = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SearchResult(PageTitle pageTitle, SearchResultType searchResultType, int i) {
        this(pageTitle, null, searchResultType, null, null, 0);
        searchResultType.getClass();
    }
}
