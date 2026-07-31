package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.database.AppDatabase$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class MwAuthManagerInfo {
    public final List requests;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AppDatabase$$ExternalSyntheticLambda0(25))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MwAuthManagerInfo$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Field {
        public static final Companion Companion = new Companion();
        public final String help;
        public final String label;
        public final boolean optional;
        public final boolean sensitive;
        public final String type;
        public final String value;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwAuthManagerInfo$Field$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Field(int i, String str, String str2, String str3, boolean z, boolean z2, String str4) {
            if ((i & 1) == 0) {
                this.type = null;
            } else {
                this.type = str;
            }
            if ((i & 2) == 0) {
                this.label = null;
            } else {
                this.label = str2;
            }
            if ((i & 4) == 0) {
                this.help = null;
            } else {
                this.help = str3;
            }
            if ((i & 8) == 0) {
                this.optional = false;
            } else {
                this.optional = z;
            }
            if ((i & 16) == 0) {
                this.sensitive = false;
            } else {
                this.sensitive = z2;
            }
            if ((i & 32) == 0) {
                this.value = null;
            } else {
                this.value = str4;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Request {
        public static final Lazy[] $childSerializers;
        public static final Companion Companion = new Companion();
        public final String account;
        public final Map fields;
        public final String id;
        public final Map metadata;
        public final String provider;
        public final String required;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwAuthManagerInfo$Request$$serializer.INSTANCE;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            $childSerializers = new Lazy[]{null, ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(26)), null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new AppDatabase$$ExternalSyntheticLambda0(27))};
        }

        public /* synthetic */ Request(int i, String str, Map map, String str2, String str3, String str4, Map map2) {
            if ((i & 1) == 0) {
                this.id = null;
            } else {
                this.id = str;
            }
            if ((i & 2) == 0) {
                this.metadata = null;
            } else {
                this.metadata = map;
            }
            if ((i & 4) == 0) {
                this.required = null;
            } else {
                this.required = str2;
            }
            if ((i & 8) == 0) {
                this.provider = null;
            } else {
                this.provider = str3;
            }
            if ((i & 16) == 0) {
                this.account = null;
            } else {
                this.account = str4;
            }
            if ((i & 32) == 0) {
                this.fields = null;
            } else {
                this.fields = map2;
            }
        }
    }

    public /* synthetic */ MwAuthManagerInfo(List list, int i) {
        if ((i & 1) == 0) {
            this.requests = null;
        } else {
            this.requests = list;
        }
    }
}
