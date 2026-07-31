package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class MwQueryPage {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final Map actions;
    public final List categories;
    public String convertedFrom;
    public String convertedTo;
    public final List coordinates;
    public final String description;
    public final String descriptionSource;
    public final String difficulty;
    public final JsonElement editintro;
    public final EntityTerms entityTerms;
    public final String extract;
    public final List growthimagesuggestiondata;
    public final List imageInfo;
    public final String imagerepository;
    public final int index;
    public final List langlinks;
    public final long lastrevid;
    public final int ns;
    public final int pageId;
    public final PageProps pageProps;
    public final Map pageViewsMap;
    public final List protection;
    public final List qualityGateIds;
    public String redirectFrom;
    public final List revisions;
    public final String sectionTitle;
    public final String snippet;
    public final String tasktype;
    public final Thumbnail thumbnail;
    public String title;
    public final Map varianttitles;
    public final List videoInfo;
    public final boolean watched;
    public final String watchlistExpiry;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class CategoryResponse {
        public static final Companion Companion = new Companion();
        public final int ns;
        public final String title;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryPage$CategoryResponse$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ CategoryResponse(int i, int i2, String str) {
            if (3 != (i & 3)) {
                TuplesKt.throwMissingFieldException(i, 3, MwQueryPage$CategoryResponse$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.ns = i2;
            this.title = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CategoryResponse)) {
                return false;
            }
            CategoryResponse categoryResponse = (CategoryResponse) obj;
            return this.ns == categoryResponse.ns && Intrinsics.areEqual(this.title, categoryResponse.title);
        }

        public final int hashCode() {
            return this.title.hashCode() + (this.ns * 31);
        }

        public final String toString() {
            return "CategoryResponse(ns=" + this.ns + ", title=" + this.title + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MwQueryPage$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Coordinates {
        public static final Companion Companion = new Companion();
        public final double lat;
        public final double lon;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryPage$Coordinates$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Coordinates(double d, double d2, int i) {
            if ((i & 1) == 0) {
                this.lat = 0.0d;
            } else {
                this.lat = d;
            }
            if ((i & 2) == 0) {
                this.lon = 0.0d;
            } else {
                this.lon = d2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class EntityTerms {
        public static final Lazy[] $childSerializers;
        public static final Companion Companion = new Companion();
        public final List alias;
        public final List description;
        public final List label;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryPage$EntityTerms$$serializer.INSTANCE;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(12)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(13)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(14))};
        }

        public /* synthetic */ EntityTerms(int i, List list, List list2, List list3) {
            int i2 = i & 1;
            EmptyList emptyList = EmptyList.INSTANCE;
            if (i2 == 0) {
                this.alias = emptyList;
            } else {
                this.alias = list;
            }
            if ((i & 2) == 0) {
                this.label = emptyList;
            } else {
                this.label = list2;
            }
            if ((i & 4) == 0) {
                this.description = emptyList;
            } else {
                this.description = list3;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class LangLink {
        public static final Companion Companion = new Companion();
        public final String lang;
        public final String title;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryPage$LangLink$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ LangLink(int i, String str, String str2) {
            if ((i & 1) == 0) {
                this.lang = "";
            } else {
                this.lang = str;
            }
            if ((i & 2) == 0) {
                this.title = "";
            } else {
                this.title = str2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class PageProps {
        public static final Companion Companion = new Companion();
        public final String disambiguation;
        public final String displayTitle;
        public final String wikiBaseItem;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryPage$PageProps$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ PageProps(int i, String str, String str2, String str3) {
            this.wikiBaseItem = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.disambiguation = null;
            } else {
                this.disambiguation = str2;
            }
            if ((i & 4) == 0) {
                this.displayTitle = null;
            } else {
                this.displayTitle = str3;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class RevisionSlot {
        public static final Companion Companion = new Companion();
        public final String content;
        public final String contentformat;
        public final String contentmodel;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryPage$RevisionSlot$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ RevisionSlot(int i, String str, String str2, String str3) {
            this.content = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.contentformat = null;
            } else {
                this.contentformat = str2;
            }
            if ((i & 4) == 0) {
                this.contentmodel = null;
            } else {
                this.contentmodel = str3;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Thumbnail {
        public static final Companion Companion = new Companion();
        public final int height;
        public final String source;
        public final int width;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryPage$Thumbnail$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Thumbnail(int i, int i2, int i3, String str) {
            this.source = (i & 1) == 0 ? null : str;
            if ((i & 2) == 0) {
                this.width = 0;
            } else {
                this.width = i2;
            }
            if ((i & 4) == 0) {
                this.height = 0;
            } else {
                this.height = i3;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(0)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(5)), null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(6)), null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(7)), null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(8)), null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(9)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(10)), null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(11)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(1)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(2)), null, null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(3)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(4))};
    }

    public MwQueryPage(int i, int i2, String str, List list, List list2, String str2, Map map, int i3, PageProps pageProps, EntityTerms entityTerms, List list3, int i4, List list4, Thumbnail thumbnail, Map map2, Map map3, JsonElement jsonElement, int i5, String str3, List list5, List list6, List list7, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, boolean z, long j, String str12, String str13, List list8, List list9) {
        if ((i & 1) == 0) {
            this.descriptionSource = null;
        } else {
            this.descriptionSource = str;
        }
        if ((i & 2) == 0) {
            this.imageInfo = null;
        } else {
            this.imageInfo = list;
        }
        if ((i & 4) == 0) {
            this.videoInfo = null;
        } else {
            this.videoInfo = list2;
        }
        if ((i & 8) == 0) {
            this.watchlistExpiry = null;
        } else {
            this.watchlistExpiry = str2;
        }
        if ((i & 16) == 0) {
            this.pageViewsMap = EmptyMap.INSTANCE;
        } else {
            this.pageViewsMap = map;
        }
        if ((i & 32) == 0) {
            this.pageId = 0;
        } else {
            this.pageId = i3;
        }
        if ((i & 64) == 0) {
            this.pageProps = null;
        } else {
            this.pageProps = pageProps;
        }
        if ((i & 128) == 0) {
            this.entityTerms = null;
        } else {
            this.entityTerms = entityTerms;
        }
        if ((i & 256) == 0) {
            this.categories = null;
        } else {
            this.categories = list3;
        }
        if ((i & 512) == 0) {
            this.ns = 0;
        } else {
            this.ns = i4;
        }
        if ((i & 1024) == 0) {
            this.coordinates = null;
        } else {
            this.coordinates = list4;
        }
        if ((i & 2048) == 0) {
            this.thumbnail = null;
        } else {
            this.thumbnail = thumbnail;
        }
        if ((i & 4096) == 0) {
            this.varianttitles = null;
        } else {
            this.varianttitles = map2;
        }
        if ((i & 8192) == 0) {
            this.actions = null;
        } else {
            this.actions = map3;
        }
        if ((i & 16384) == 0) {
            this.editintro = null;
        } else {
            this.editintro = jsonElement;
        }
        if ((32768 & i) == 0) {
            this.index = 0;
        } else {
            this.index = i5;
        }
        this.title = (65536 & i) == 0 ? "" : str3;
        int i6 = 131072 & i;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (i6 == 0) {
            this.langlinks = emptyList;
        } else {
            this.langlinks = list5;
        }
        if ((262144 & i) == 0) {
            this.revisions = emptyList;
        } else {
            this.revisions = list6;
        }
        if ((524288 & i) == 0) {
            this.protection = emptyList;
        } else {
            this.protection = list7;
        }
        if ((1048576 & i) == 0) {
            this.extract = null;
        } else {
            this.extract = str4;
        }
        if ((2097152 & i) == 0) {
            this.snippet = null;
        } else {
            this.snippet = str5;
        }
        if ((4194304 & i) == 0) {
            this.sectionTitle = null;
        } else {
            this.sectionTitle = str6;
        }
        if ((8388608 & i) == 0) {
            this.description = null;
        } else {
            this.description = str7;
        }
        if ((16777216 & i) == 0) {
            this.imagerepository = null;
        } else {
            this.imagerepository = str8;
        }
        if ((33554432 & i) == 0) {
            this.redirectFrom = null;
        } else {
            this.redirectFrom = str9;
        }
        if ((67108864 & i) == 0) {
            this.convertedFrom = null;
        } else {
            this.convertedFrom = str10;
        }
        if ((134217728 & i) == 0) {
            this.convertedTo = null;
        } else {
            this.convertedTo = str11;
        }
        if ((268435456 & i) == 0) {
            this.watched = false;
        } else {
            this.watched = z;
        }
        this.lastrevid = (536870912 & i) == 0 ? 0L : j;
        if ((1073741824 & i) == 0) {
            this.tasktype = null;
        } else {
            this.tasktype = str12;
        }
        if ((i & Integer.MIN_VALUE) == 0) {
            this.difficulty = null;
        } else {
            this.difficulty = str13;
        }
        if ((i2 & 1) == 0) {
            this.qualityGateIds = null;
        } else {
            this.qualityGateIds = list8;
        }
        if ((i2 & 2) == 0) {
            this.growthimagesuggestiondata = null;
        } else {
            this.growthimagesuggestiondata = list9;
        }
    }

    public final String displayTitle(String str) {
        str.getClass();
        Map map = this.varianttitles;
        String str2 = map != null ? (String) map.get(str) : null;
        if (str2 == null) {
            str2 = "";
        }
        return str2.length() == 0 ? this.title : str2;
    }

    public final List getErrorForAction() {
        List list;
        Map map = this.actions;
        return (map == null || (list = (List) map.get("edit")) == null) ? EmptyList.INSTANCE : list;
    }

    public final ImageInfo imageInfo() {
        ImageInfo imageInfo;
        List list = this.imageInfo;
        if (list != null && (imageInfo = (ImageInfo) list.get(0)) != null) {
            return imageInfo;
        }
        List list2 = this.videoInfo;
        if (list2 != null) {
            return (ImageInfo) list2.get(0);
        }
        return null;
    }

    public final String thumbUrl() {
        Thumbnail thumbnail = this.thumbnail;
        if (thumbnail != null) {
            return thumbnail.source;
        }
        return null;
    }

    public MwQueryPage() {
        this.pageViewsMap = EmptyMap.INSTANCE;
        this.title = "";
        EmptyList emptyList = EmptyList.INSTANCE;
        this.langlinks = emptyList;
        this.revisions = emptyList;
        this.protection = emptyList;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Revision {
        public final String comment;
        public int diffSize;
        public final boolean isAnon;
        public final boolean isTemp;
        public final SynchronizedLazyImpl localDateTime$delegate;
        public final boolean minor;
        public final JsonElement oresscores;
        public final long parentRevId;
        public final String parsedcomment;
        public final long revId;
        public final int size;
        public final Map slots;
        public final String timeStamp;
        public final String user;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new MwQueryPage$$ExternalSyntheticLambda0(15)), null, null, null, null, null, null, null, null, null, null, null, null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryPage$Revision$$serializer.INSTANCE;
            }
        }

        public Revision(int i, Map map, boolean z, long j, long j2, boolean z2, boolean z3, String str, int i2, String str2, String str3, String str4, JsonElement jsonElement, int i3) {
            if ((i & 1) == 0) {
                this.slots = null;
            } else {
                this.slots = map;
            }
            if ((i & 2) == 0) {
                this.minor = false;
            } else {
                this.minor = z;
            }
            if ((i & 4) == 0) {
                this.revId = 0L;
            } else {
                this.revId = j;
            }
            if ((i & 8) == 0) {
                this.parentRevId = 0L;
            } else {
                this.parentRevId = j2;
            }
            if ((i & 16) == 0) {
                this.isAnon = false;
            } else {
                this.isAnon = z2;
            }
            if ((i & 32) == 0) {
                this.isTemp = false;
            } else {
                this.isTemp = z3;
            }
            if ((i & 64) == 0) {
                this.timeStamp = "";
            } else {
                this.timeStamp = str;
            }
            if ((i & 128) == 0) {
                this.size = 0;
            } else {
                this.size = i2;
            }
            if ((i & 256) == 0) {
                this.user = "";
            } else {
                this.user = str2;
            }
            if ((i & 512) == 0) {
                this.comment = "";
            } else {
                this.comment = str3;
            }
            if ((i & 1024) == 0) {
                this.parsedcomment = "";
            } else {
                this.parsedcomment = str4;
            }
            if ((i & 2048) == 0) {
                this.oresscores = null;
            } else {
                this.oresscores = jsonElement;
            }
            if ((i & 4096) == 0) {
                this.diffSize = 0;
            } else {
                this.diffSize = i3;
            }
            final int i4 = 0;
            this.localDateTime$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.mwapi.MwQueryPage$Revision$$ExternalSyntheticLambda1
                public final /* synthetic */ MwQueryPage.Revision f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i5 = i4;
                    MwQueryPage.Revision revision = this.f$0;
                    switch (i5) {
                        case 0:
                            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                            String str5 = revision.timeStamp;
                            str5.getClass();
                            LocalDateTime ofInstant = LocalDateTime.ofInstant(Instant.parse(str5), ZoneId.systemDefault());
                            ofInstant.getClass();
                            return ofInstant;
                        default:
                            ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                            String str6 = revision.timeStamp;
                            str6.getClass();
                            LocalDateTime ofInstant2 = LocalDateTime.ofInstant(Instant.parse(str6), ZoneId.systemDefault());
                            ofInstant2.getClass();
                            return ofInstant2;
                    }
                }
            });
        }

        public final String getContentFromSlot(String str) {
            RevisionSlot revisionSlot;
            Map map = this.slots;
            String str2 = (map == null || (revisionSlot = (RevisionSlot) map.get(str)) == null) ? null : revisionSlot.content;
            return str2 == null ? "" : str2;
        }

        public final MwQueryResult.OresResult getOres() {
            JsonElement jsonElement = this.oresscores;
            if (jsonElement == null || (jsonElement instanceof JsonArray)) {
                return null;
            }
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            return (MwQueryResult.OresResult) jsonImpl.decodeFromJsonElement(MwQueryResult.OresResult.Companion.serializer(), jsonElement);
        }

        public Revision() {
            this.timeStamp = "";
            this.user = "";
            this.comment = "";
            this.parsedcomment = "";
            final int i = 1;
            this.localDateTime$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.mwapi.MwQueryPage$Revision$$ExternalSyntheticLambda1
                public final /* synthetic */ MwQueryPage.Revision f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i5 = i;
                    MwQueryPage.Revision revision = this.f$0;
                    switch (i5) {
                        case 0:
                            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                            String str5 = revision.timeStamp;
                            str5.getClass();
                            LocalDateTime ofInstant = LocalDateTime.ofInstant(Instant.parse(str5), ZoneId.systemDefault());
                            ofInstant.getClass();
                            return ofInstant;
                        default:
                            ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                            String str6 = revision.timeStamp;
                            str6.getClass();
                            LocalDateTime ofInstant2 = LocalDateTime.ofInstant(Instant.parse(str6), ZoneId.systemDefault());
                            ofInstant2.getClass();
                            return ofInstant2;
                    }
                }
            });
        }
    }
}
