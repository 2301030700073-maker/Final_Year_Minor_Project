package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonElement;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class TemplateDataResponse extends MwResponse {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final Map pages;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return TemplateDataResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class TemplateData {
        public static final Companion Companion = new Companion();
        public final String description;
        public final String format;
        public final boolean noTemplateData;
        public final JsonElement params;
        public final String title;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return TemplateDataResponse$TemplateData$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ TemplateData(int i, String str, String str2, JsonElement jsonElement, String str3, boolean z) {
            this.title = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.description = null;
            } else {
                this.description = str2;
            }
            if ((i & 4) == 0) {
                this.params = null;
            } else {
                this.params = jsonElement;
            }
            if ((i & 8) == 0) {
                this.format = null;
            } else {
                this.format = str3;
            }
            if ((i & 16) == 0) {
                this.noTemplateData = false;
            } else {
                this.noTemplateData = z;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(8)), null, ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(9))};
    }

    public /* synthetic */ TemplateDataResponse(int i, List list, String str, Map map) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.pages = null;
        } else {
            this.pages = map;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class TemplateDataParam {
        public static final Lazy[] $childSerializers;
        public static final Companion Companion = new Companion();
        public final List aliases;
        public final String autoValue;

        /* renamed from: default, reason: not valid java name */
        public final String f28default;
        public final JsonElement deprecated;
        public final String description;
        public final String example;
        public final String label;
        public final boolean required;
        public final boolean suggested;
        public final List suggestedValues;
        public final String type;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return TemplateDataResponse$TemplateDataParam$$serializer.INSTANCE;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            $childSerializers = new Lazy[]{null, null, null, null, null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(10)), ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(11)), null};
        }

        public /* synthetic */ TemplateDataParam(int i, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, String str6, List list, List list2, JsonElement jsonElement) {
            if ((i & 1) == 0) {
                this.label = null;
            } else {
                this.label = str;
            }
            if ((i & 2) == 0) {
                this.description = null;
            } else {
                this.description = str2;
            }
            if ((i & 4) == 0) {
                this.f28default = null;
            } else {
                this.f28default = str3;
            }
            if ((i & 8) == 0) {
                this.example = null;
            } else {
                this.example = str4;
            }
            if ((i & 16) == 0) {
                this.type = "";
            } else {
                this.type = str5;
            }
            if ((i & 32) == 0) {
                this.required = false;
            } else {
                this.required = z;
            }
            if ((i & 64) == 0) {
                this.suggested = false;
            } else {
                this.suggested = z2;
            }
            if ((i & 128) == 0) {
                this.autoValue = null;
            } else {
                this.autoValue = str6;
            }
            int i2 = i & 256;
            EmptyList emptyList = EmptyList.INSTANCE;
            if (i2 == 0) {
                this.suggestedValues = emptyList;
            } else {
                this.suggestedValues = list;
            }
            if ((i & 512) == 0) {
                this.aliases = emptyList;
            } else {
                this.aliases = list2;
            }
            if ((i & 1024) == 0) {
                this.deprecated = null;
            } else {
                this.deprecated = jsonElement;
            }
        }

        public TemplateDataParam() {
            this.type = "";
            EmptyList emptyList = EmptyList.INSTANCE;
            this.suggestedValues = emptyList;
            this.aliases = emptyList;
        }
    }
}
