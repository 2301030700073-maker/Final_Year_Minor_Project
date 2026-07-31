package org.wikipedia.gallery;

import coil3.util.ContextsKt;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonElement;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ImageInfo {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public Map captions;
    public final List codecs;
    public final String commonsUrl;
    public final List derivatives;
    public final String descriptionShortUrl;
    public final int height;
    public final ExtMetadata metadata;
    public final String mime;
    public final String name;
    public final String originalUrl;
    public final List plainMetadata;
    public final String shortName;
    public final int size;
    public String source;
    public final int thumbHeight;
    public final String thumbUrl;
    public final int thumbWidth;
    public final String timestamp;
    public final String user;
    public final int width;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ImageInfo$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Derivative {
        public static final Companion Companion = new Companion();
        public final long bandwidth;
        public final int height;
        public final String shorttitle;
        public final String src;
        public final String title;
        public final String type;
        public final int width;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ImageInfo$Derivative$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Derivative(int i, String str, String str2, String str3, String str4, int i2, int i3, long j) {
            if ((i & 1) == 0) {
                this.src = "";
            } else {
                this.src = str;
            }
            if ((i & 2) == 0) {
                this.type = "";
            } else {
                this.type = str2;
            }
            if ((i & 4) == 0) {
                this.title = null;
            } else {
                this.title = str3;
            }
            if ((i & 8) == 0) {
                this.shorttitle = null;
            } else {
                this.shorttitle = str4;
            }
            if ((i & 16) == 0) {
                this.width = 0;
            } else {
                this.width = i2;
            }
            if ((i & 32) == 0) {
                this.height = 0;
            } else {
                this.height = i3;
            }
            if ((i & 64) == 0) {
                this.bandwidth = 0L;
            } else {
                this.bandwidth = j;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class MetadataItem {
        public static final Companion Companion = new Companion();
        public final String name;
        public final JsonElement value;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return ImageInfo$MetadataItem$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ MetadataItem(int i, String str, JsonElement jsonElement) {
            this.name = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.value = null;
            } else {
                this.value = jsonElement;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, ContextsKt.lazy(lazyThreadSafetyMode, new Tab$$ExternalSyntheticLambda0(12)), null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Tab$$ExternalSyntheticLambda0(13)), ContextsKt.lazy(lazyThreadSafetyMode, new Tab$$ExternalSyntheticLambda0(14)), null, null, null, null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Tab$$ExternalSyntheticLambda0(15)), null, null, null, null, null, null};
    }

    public /* synthetic */ ImageInfo(int i, String str, Map map, String str2, String str3, List list, List list2, String str4, String str5, String str6, int i2, int i3, String str7, String str8, List list3, ExtMetadata extMetadata, String str9, String str10, int i4, int i5, int i6) {
        if ((i & 1) == 0) {
            this.source = "";
        } else {
            this.source = str;
        }
        if ((i & 2) == 0) {
            this.captions = EmptyMap.INSTANCE;
        } else {
            this.captions = map;
        }
        if ((i & 4) == 0) {
            this.shortName = null;
        } else {
            this.shortName = str2;
        }
        if ((i & 8) == 0) {
            this.descriptionShortUrl = null;
        } else {
            this.descriptionShortUrl = str3;
        }
        int i7 = i & 16;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (i7 == 0) {
            this.derivatives = emptyList;
        } else {
            this.derivatives = list;
        }
        if ((i & 32) == 0) {
            this.codecs = null;
        } else {
            this.codecs = list2;
        }
        if ((i & 64) == 0) {
            this.name = null;
        } else {
            this.name = str4;
        }
        if ((i & 128) == 0) {
            this.commonsUrl = "";
        } else {
            this.commonsUrl = str5;
        }
        if ((i & 256) == 0) {
            this.thumbUrl = "";
        } else {
            this.thumbUrl = str6;
        }
        if ((i & 512) == 0) {
            this.thumbWidth = 0;
        } else {
            this.thumbWidth = i2;
        }
        if ((i & 1024) == 0) {
            this.thumbHeight = 0;
        } else {
            this.thumbHeight = i3;
        }
        if ((i & 2048) == 0) {
            this.originalUrl = "";
        } else {
            this.originalUrl = str7;
        }
        this.mime = (i & 4096) == 0 ? "*/*" : str8;
        if ((i & 8192) == 0) {
            this.plainMetadata = emptyList;
        } else {
            this.plainMetadata = list3;
        }
        if ((i & 16384) == 0) {
            this.metadata = null;
        } else {
            this.metadata = extMetadata;
        }
        if ((32768 & i) == 0) {
            this.user = "";
        } else {
            this.user = str9;
        }
        if ((65536 & i) == 0) {
            this.timestamp = "";
        } else {
            this.timestamp = str10;
        }
        if ((131072 & i) == 0) {
            this.size = 0;
        } else {
            this.size = i4;
        }
        if ((262144 & i) == 0) {
            this.width = 0;
        } else {
            this.width = i5;
        }
        if ((i & 524288) == 0) {
            this.height = 0;
        } else {
            this.height = i6;
        }
    }

    public final Derivative getBestDerivativeForSize() {
        Derivative derivative = null;
        for (Derivative derivative2 : this.derivatives) {
            int i = derivative2.width;
            String str = derivative2.type;
            if (1 <= i && i < 1280 && (derivative == null || i > derivative.width)) {
                if (!StringsKt.contains(str, "ogg", false) && !StringsKt.contains(str, "ogv", false)) {
                    derivative = derivative2;
                }
            }
        }
        return derivative;
    }

    public ImageInfo() {
        this.source = "";
        this.captions = EmptyMap.INSTANCE;
        EmptyList emptyList = EmptyList.INSTANCE;
        this.derivatives = emptyList;
        this.commonsUrl = "";
        this.thumbUrl = "";
        this.originalUrl = "";
        this.mime = "*/*";
        this.plainMetadata = emptyList;
        this.user = "";
        this.timestamp = "";
    }
}
