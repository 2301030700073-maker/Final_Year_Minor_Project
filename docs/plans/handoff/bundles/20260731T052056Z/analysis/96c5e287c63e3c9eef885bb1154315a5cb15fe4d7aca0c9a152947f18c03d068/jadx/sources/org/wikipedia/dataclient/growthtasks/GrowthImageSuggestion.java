package org.wikipedia.dataclient.growthtasks;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class GrowthImageSuggestion {
    public final String datasetId;
    public final List images;
    public final int titleNamespace;
    public final String titleText;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(18))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return GrowthImageSuggestion$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ImageItem {
        public final String displayFilename;
        public final String image;
        public final ImageMetadata metadata;
        public final List projects;
        public final String source;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(20)), null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return GrowthImageSuggestion$ImageItem$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ImageItem(int i, String str, String str2, String str3, List list, ImageMetadata imageMetadata) {
            if ((i & 1) == 0) {
                this.image = "";
            } else {
                this.image = str;
            }
            if ((i & 2) == 0) {
                this.displayFilename = "";
            } else {
                this.displayFilename = str2;
            }
            if ((i & 4) == 0) {
                this.source = "";
            } else {
                this.source = str3;
            }
            if ((i & 8) == 0) {
                this.projects = EmptyList.INSTANCE;
            } else {
                this.projects = list;
            }
            if ((i & 16) == 0) {
                this.metadata = null;
            } else {
                this.metadata = imageMetadata;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ImageMetadata {
        public final String author;
        public final String caption;
        public final List categories;
        public final String contentLanguageName;
        public final String date;
        public final String description;
        public final String descriptionUrl;
        public final String fullUrl;
        public final String license;
        public final String mediaType;
        public final int originalHeight;
        public final int originalWidth;
        public final String reason;
        public final String thumbUrl;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(21)), null, null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return GrowthImageSuggestion$ImageMetadata$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ImageMetadata(int i, String str, String str2, String str3, int i2, int i3, String str4, String str5, String str6, String str7, String str8, String str9, List list, String str10, String str11) {
            if ((i & 1) == 0) {
                this.descriptionUrl = "";
            } else {
                this.descriptionUrl = str;
            }
            if ((i & 2) == 0) {
                this.thumbUrl = "";
            } else {
                this.thumbUrl = str2;
            }
            if ((i & 4) == 0) {
                this.fullUrl = "";
            } else {
                this.fullUrl = str3;
            }
            if ((i & 8) == 0) {
                this.originalWidth = 0;
            } else {
                this.originalWidth = i2;
            }
            if ((i & 16) == 0) {
                this.originalHeight = 0;
            } else {
                this.originalHeight = i3;
            }
            if ((i & 32) == 0) {
                this.mediaType = "";
            } else {
                this.mediaType = str4;
            }
            if ((i & 64) == 0) {
                this.description = "";
            } else {
                this.description = str5;
            }
            if ((i & 128) == 0) {
                this.author = "";
            } else {
                this.author = str6;
            }
            if ((i & 256) == 0) {
                this.license = "";
            } else {
                this.license = str7;
            }
            if ((i & 512) == 0) {
                this.date = "";
            } else {
                this.date = str8;
            }
            if ((i & 1024) == 0) {
                this.caption = "";
            } else {
                this.caption = str9;
            }
            if ((i & 2048) == 0) {
                this.categories = EmptyList.INSTANCE;
            } else {
                this.categories = list;
            }
            if ((i & 4096) == 0) {
                this.reason = "";
            } else {
                this.reason = str10;
            }
            if ((i & 8192) == 0) {
                this.contentLanguageName = "";
            } else {
                this.contentLanguageName = str11;
            }
        }
    }

    public /* synthetic */ GrowthImageSuggestion(int i, int i2, String str, String str2, List list) {
        this.titleNamespace = (i & 1) == 0 ? 0 : i2;
        if ((i & 2) == 0) {
            this.titleText = "";
        } else {
            this.titleText = str;
        }
        if ((i & 4) == 0) {
            this.datasetId = "";
        } else {
            this.datasetId = str2;
        }
        if ((i & 8) == 0) {
            this.images = EmptyList.INSTANCE;
        } else {
            this.images = list;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class AddImageFeedbackBody {
        public final boolean accepted;
        public final String caption;
        public final long editRevId;
        public final String filename;
        public final List reasons;
        public final Integer sectionNumber;
        public final String sectionTitle;
        public final String token;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(19)), null, null, null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return GrowthImageSuggestion$AddImageFeedbackBody$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ AddImageFeedbackBody(int i, String str, long j, String str2, boolean z, List list, String str3, String str4, Integer num) {
            if ((i & 1) == 0) {
                this.token = "";
            } else {
                this.token = str;
            }
            if ((i & 2) == 0) {
                this.editRevId = 0L;
            } else {
                this.editRevId = j;
            }
            if ((i & 4) == 0) {
                this.filename = "";
            } else {
                this.filename = str2;
            }
            if ((i & 8) == 0) {
                this.accepted = false;
            } else {
                this.accepted = z;
            }
            if ((i & 16) == 0) {
                this.reasons = EmptyList.INSTANCE;
            } else {
                this.reasons = list;
            }
            if ((i & 32) == 0) {
                this.caption = null;
            } else {
                this.caption = str3;
            }
            if ((i & 64) == 0) {
                this.sectionTitle = null;
            } else {
                this.sectionTitle = str4;
            }
            if ((i & 128) == 0) {
                this.sectionNumber = null;
            } else {
                this.sectionNumber = num;
            }
        }

        public AddImageFeedbackBody(String str, long j, String str2, boolean z, List list, String str3) {
            str.getClass();
            str2.getClass();
            this.token = str;
            this.editRevId = j;
            this.filename = str2;
            this.accepted = z;
            this.reasons = list;
            this.caption = str3;
            this.sectionTitle = null;
            this.sectionNumber = null;
        }
    }
}
