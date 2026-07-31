package org.wikipedia.dataclient.wikidata;

import coil3.util.ContextsKt;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyMap;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonElement;
import org.wikipedia.dataclient.mwapi.MwResponse;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Claims extends MwResponse {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final Map claims;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Claim {
        public static final Companion Companion = new Companion();
        public final String id;
        public final MainSnak mainSnak;
        public final String rank;
        public final String type;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Claims$Claim$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Claim(int i, String str, String str2, String str3, MainSnak mainSnak) {
            if ((i & 1) == 0) {
                this.type = null;
            } else {
                this.type = str;
            }
            if ((i & 2) == 0) {
                this.id = null;
            } else {
                this.id = str2;
            }
            if ((i & 4) == 0) {
                this.rank = null;
            } else {
                this.rank = str3;
            }
            if ((i & 8) == 0) {
                this.mainSnak = null;
            } else {
                this.mainSnak = mainSnak;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Claims$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class DataValue {
        public static final Companion Companion = new Companion();
        public final String type;
        public final JsonElement value;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Claims$DataValue$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ DataValue(int i, String str, JsonElement jsonElement) {
            if ((i & 1) == 0) {
                this.value = null;
            } else {
                this.value = jsonElement;
            }
            if ((i & 2) == 0) {
                this.type = null;
            } else {
                this.type = str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class EntityIdValue {
        public static final Companion Companion = new Companion();
        public final String id;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Claims$EntityIdValue$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ EntityIdValue(int i, String str) {
            if ((i & 1) == 0) {
                this.id = "";
            } else {
                this.id = str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class GlobeCoordinateValue {
        public static final Companion Companion = new Companion();
        public final double altitude;
        public final double latitude;
        public final double longitude;
        public final double precision;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Claims$GlobeCoordinateValue$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ GlobeCoordinateValue(int i, double d, double d2, double d3, double d4) {
            if ((i & 1) == 0) {
                this.latitude = 0.0d;
            } else {
                this.latitude = d;
            }
            if ((i & 2) == 0) {
                this.longitude = 0.0d;
            } else {
                this.longitude = d2;
            }
            if ((i & 4) == 0) {
                this.altitude = 0.0d;
            } else {
                this.altitude = d3;
            }
            if ((i & 8) == 0) {
                this.precision = 0.0d;
            } else {
                this.precision = d4;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class MainSnak {
        public static final Companion Companion = new Companion();
        public final String dataType;
        public final DataValue dataValue;
        public final String hash;
        public final String property;
        public final String snakType;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Claims$MainSnak$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ MainSnak(int i, String str, String str2, String str3, String str4, DataValue dataValue) {
            if ((i & 1) == 0) {
                this.snakType = null;
            } else {
                this.snakType = str;
            }
            if ((i & 2) == 0) {
                this.dataType = null;
            } else {
                this.dataType = str2;
            }
            if ((i & 4) == 0) {
                this.property = null;
            } else {
                this.property = str3;
            }
            if ((i & 8) == 0) {
                this.hash = null;
            } else {
                this.hash = str4;
            }
            if ((i & 16) == 0) {
                this.dataValue = null;
            } else {
                this.dataValue = dataValue;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class MonolingualTextValue {
        public static final Companion Companion = new Companion();
        public final String language;
        public final String text;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Claims$MonolingualTextValue$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ MonolingualTextValue(int i, String str, String str2) {
            this.language = (i & 1) == 0 ? null : str;
            if ((i & 2) == 0) {
                this.text = "";
            } else {
                this.text = str2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class TimeValue {
        public static final Companion Companion = new Companion();
        public final int after;
        public final int before;
        public final int precision;
        public final String time;
        public final int timezone;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Claims$TimeValue$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ TimeValue(int i, int i2, int i3, int i4, int i5, String str) {
            if ((i & 1) == 0) {
                this.timezone = 0;
            } else {
                this.timezone = i2;
            }
            if ((i & 2) == 0) {
                this.before = 0;
            } else {
                this.before = i3;
            }
            if ((i & 4) == 0) {
                this.after = 0;
            } else {
                this.after = i4;
            }
            if ((i & 8) == 0) {
                this.precision = 0;
            } else {
                this.precision = i5;
            }
            if ((i & 16) == 0) {
                this.time = "";
            } else {
                this.time = str;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(3)), null, ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(4))};
    }

    public /* synthetic */ Claims(int i, List list, String str, Map map) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.claims = EmptyMap.INSTANCE;
        } else {
            this.claims = map;
        }
    }
}
