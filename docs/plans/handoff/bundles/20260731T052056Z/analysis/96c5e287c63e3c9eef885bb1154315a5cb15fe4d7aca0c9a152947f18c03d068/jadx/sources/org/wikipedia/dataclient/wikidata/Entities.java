package org.wikipedia.dataclient.wikidata;

import coil3.util.ContextsKt;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyMap;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.dataclient.mwapi.MwResponse;
import org.wikipedia.dataclient.wikidata.Claims;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;
import org.wikipedia.json.JsonUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Entities extends MwResponse {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public Map entities;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Entities$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Entity {
        public static final Companion Companion = new Companion();
        public final JsonElement descriptions;
        public final String id;
        public final JsonElement labels;
        public final long lastRevId;
        public final JsonElement missing;
        public final JsonElement sitelinks;
        public final JsonElement statements;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Entities$Entity$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Entity(int i, String str, JsonElement jsonElement, JsonElement jsonElement2, JsonElement jsonElement3, JsonElement jsonElement4, JsonElement jsonElement5, long j) {
            this.id = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.labels = null;
            } else {
                this.labels = jsonElement;
            }
            if ((i & 4) == 0) {
                this.descriptions = null;
            } else {
                this.descriptions = jsonElement2;
            }
            if ((i & 8) == 0) {
                this.sitelinks = null;
            } else {
                this.sitelinks = jsonElement3;
            }
            if ((i & 16) == 0) {
                this.statements = null;
            } else {
                this.statements = jsonElement4;
            }
            if ((i & 32) == 0) {
                this.missing = null;
            } else {
                this.missing = jsonElement5;
            }
            if ((i & 64) == 0) {
                this.lastRevId = 0L;
            } else {
                this.lastRevId = j;
            }
        }

        public final Map getDescriptions() {
            JsonElement jsonElement = this.descriptions;
            if (jsonElement == null || (jsonElement instanceof JsonArray)) {
                return EmptyMap.INSTANCE;
            }
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, Label.Companion.serializer(), 1), jsonElement);
        }

        public final Map getLabels() {
            JsonElement jsonElement = this.labels;
            if (jsonElement == null || (jsonElement instanceof JsonArray)) {
                return EmptyMap.INSTANCE;
            }
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, Label.Companion.serializer(), 1), jsonElement);
        }

        public final Map getSiteLinks() {
            JsonElement jsonElement = this.sitelinks;
            if (jsonElement == null || (jsonElement instanceof JsonArray)) {
                return EmptyMap.INSTANCE;
            }
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, SiteLink.Companion.serializer(), 1), jsonElement);
        }

        public final Map getStatements() {
            JsonElement jsonElement = this.statements;
            if (jsonElement == null || (jsonElement instanceof JsonArray)) {
                return EmptyMap.INSTANCE;
            }
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, new HashSetSerializer(Claims.Claim.Companion.serializer(), 1), 1), jsonElement);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Label {
        public static final Companion Companion = new Companion();
        public final String language;
        public final String value;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Entities$Label$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Label(int i, String str, String str2) {
            if ((i & 1) == 0) {
                this.language = "";
            } else {
                this.language = str;
            }
            if ((i & 2) == 0) {
                this.value = "";
            } else {
                this.value = str2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class SiteLink {
        public static final Companion Companion = new Companion();
        public final String site;
        public final String title;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Entities$SiteLink$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ SiteLink(int i, String str, String str2) {
            if ((i & 1) == 0) {
                this.site = "";
            } else {
                this.site = str;
            }
            if ((i & 2) == 0) {
                this.title = "";
            } else {
                this.title = str2;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(5)), null, ContextsKt.lazy(lazyThreadSafetyMode, new Edit$$ExternalSyntheticLambda0(6))};
    }
}
