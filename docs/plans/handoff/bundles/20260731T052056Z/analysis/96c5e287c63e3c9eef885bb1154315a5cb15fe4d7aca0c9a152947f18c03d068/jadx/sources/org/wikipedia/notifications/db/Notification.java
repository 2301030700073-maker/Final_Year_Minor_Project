package org.wikipedia.notifications.db;

import coil3.util.ContextsKt;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.json.JsonObject;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Notification {
    public static final Companion Companion = new Companion();
    public Agent agent;
    public String category;
    public Contents contents;
    public long id;
    public String read;
    public long revid;
    public Timestamp timestamp;
    public Title title;
    public String type;
    public String wiki;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Agent {
        public static final Companion Companion = new Companion();
        public final int id;
        public final String name;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$Agent$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Agent(int i, int i2, String str) {
            this.id = (i & 1) == 0 ? 0 : i2;
            if ((i & 2) == 0) {
                this.name = "";
            } else {
                this.name = str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Notification$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Contents {
        public static final Companion Companion = new Companion();
        public final String body;
        public final String compactHeader;
        public final String header;
        public final String icon;
        public final String iconUrl;
        public final Links links;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$Contents$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Contents(int i, String str, String str2, String str3, String str4, String str5, Links links) {
            if ((i & 1) == 0) {
                this.icon = "";
            } else {
                this.icon = str;
            }
            if ((i & 2) == 0) {
                this.header = "";
            } else {
                this.header = str2;
            }
            if ((i & 4) == 0) {
                this.compactHeader = "";
            } else {
                this.compactHeader = str3;
            }
            if ((i & 8) == 0) {
                this.body = "";
            } else {
                this.body = str4;
            }
            if ((i & 16) == 0) {
                this.iconUrl = "";
            } else {
                this.iconUrl = str5;
            }
            if ((i & 32) == 0) {
                this.links = null;
            } else {
                this.links = links;
            }
        }

        public final String getIconUrl() {
            String str = this.iconUrl;
            str.getClass();
            try {
                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(str, "+", "%2B"), "UTF-8");
                decode.getClass();
                return decode;
            } catch (UnsupportedEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            } catch (IllegalArgumentException unused) {
                L.d("URL decoding failed. String was: ".concat(str));
                return str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Link {
        public static final Companion Companion = new Companion();
        public final String description;
        public final JsonElement icon;
        public final String label;
        public final String tooltip;
        public final String url;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$Link$$serializer.INSTANCE;
            }
        }

        public Link(int i, String str, String str2, String str3, String str4, JsonElement jsonElement) {
            if ((i & 1) == 0) {
                this.description = "";
            } else {
                this.description = str;
            }
            if ((i & 2) == 0) {
                this.url = "";
                str2 = "";
            } else {
                this.url = str2;
            }
            if ((i & 4) == 0) {
                this.label = "";
            } else {
                this.label = str3;
            }
            if ((i & 8) == 0) {
                this.tooltip = "";
            } else {
                this.tooltip = str4;
            }
            if ((i & 16) == 0) {
                this.icon = null;
            } else {
                this.icon = jsonElement;
            }
            str2.getClass();
            try {
                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(str2, "+", "%2B"), "UTF-8");
                decode.getClass();
                str2 = decode;
            } catch (UnsupportedEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                throw null;
            } catch (IllegalArgumentException unused) {
                L.d("URL decoding failed. String was: ".concat(str2));
            }
            this.url = str2;
            if (StringsKt__StringsJVMKt.startsWith(str2, "//", false)) {
                int indexOf$default = StringsKt.indexOf$default(str2, "//", 0, false, 2);
                this.url = indexOf$default >= 0 ? StringsKt.replaceRange(str2, indexOf$default, "//".length() + indexOf$default, "https://").toString() : str2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Links {
        public final JsonElement primary;
        public Link primaryLink;
        public final List secondary;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(23))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$Links$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Links(int i, Link link, JsonElement jsonElement, List list) {
            if ((i & 1) == 0) {
                this.primaryLink = null;
            } else {
                this.primaryLink = link;
            }
            if ((i & 2) == 0) {
                this.primary = null;
            } else {
                this.primary = jsonElement;
            }
            if ((i & 4) == 0) {
                this.secondary = null;
            } else {
                this.secondary = list;
            }
        }

        public final Link getPrimary() {
            JsonElement jsonElement;
            Link link = this.primaryLink;
            if (link != null || (jsonElement = this.primary) == null || !(jsonElement instanceof JsonObject)) {
                return link;
            }
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            Link link2 = (Link) jsonImpl.decodeFromJsonElement(Link.Companion.serializer(), jsonElement);
            this.primaryLink = link2;
            return link2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class SeenTime {
        public static final Companion Companion = new Companion();
        public final String alert;
        public final String message;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$SeenTime$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ SeenTime(int i, String str, String str2) {
            if ((i & 1) == 0) {
                this.alert = "";
            } else {
                this.alert = str;
            }
            if ((i & 2) == 0) {
                this.message = "";
            } else {
                this.message = str2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Source {
        public static final Companion Companion = new Companion();
        public final String base;
        public final String title;
        public final String url;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$Source$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Source(int i, String str, String str2, String str3) {
            if ((i & 1) == 0) {
                this.title = "";
            } else {
                this.title = str;
            }
            if ((i & 2) == 0) {
                this.url = "";
            } else {
                this.url = str2;
            }
            if ((i & 4) == 0) {
                this.base = "";
            } else {
                this.base = str3;
            }
        }

        public final String getUrl() {
            String str = this.url;
            str.getClass();
            try {
                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(str, "+", "%2B"), "UTF-8");
                decode.getClass();
                return decode;
            } catch (UnsupportedEncodingException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            } catch (IllegalArgumentException unused) {
                L.d("URL decoding failed. String was: ".concat(str));
                return str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Timestamp {
        public static final Companion Companion = new Companion();
        public final String utciso8601;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$Timestamp$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Timestamp(int i, String str) {
            if ((i & 1) == 0) {
                this.utciso8601 = null;
            } else {
                this.utciso8601 = str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Title {
        public static final Companion Companion = new Companion();
        public final String full;
        public final String namespace;
        public final int namespaceKey;
        public final String text;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$Title$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Title(int i, int i2, String str, String str2, String str3) {
            this.namespaceKey = (i & 1) == 0 ? 0 : i2;
            if ((i & 2) == 0) {
                this.full = "";
            } else {
                this.full = str;
            }
            if ((i & 4) == 0) {
                this.text = "";
            } else {
                this.text = str2;
            }
            if ((i & 8) == 0) {
                this.namespace = null;
            } else {
                this.namespace = str3;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class UnreadNotificationWikiItem {
        public static final Companion Companion = new Companion();
        public final Source source;
        public final int totalCount;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Notification$UnreadNotificationWikiItem$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ UnreadNotificationWikiItem(int i, int i2, Source source) {
            this.totalCount = (i & 1) == 0 ? 0 : i2;
            if ((i & 2) == 0) {
                this.source = null;
            } else {
                this.source = source;
            }
        }
    }

    public Notification(long j, String str, String str2, String str3, String str4, long j2, Title title, Agent agent, Timestamp timestamp, Contents contents) {
        str.getClass();
        str3.getClass();
        str4.getClass();
        this.id = j;
        this.wiki = str;
        this.read = str2;
        this.category = str3;
        this.type = str4;
        this.revid = j2;
        this.title = title;
        this.agent = agent;
        this.timestamp = timestamp;
        this.contents = contents;
    }

    public final Date date() {
        Timestamp timestamp = this.timestamp;
        if (timestamp == null) {
            return new Date();
        }
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        String str = timestamp.utciso8601;
        str.getClass();
        return DateUtil.iso8601DateParse(str);
    }

    public final boolean isUnread() {
        String str = this.read;
        return str == null || str.length() == 0;
    }

    public final String toString() {
        return String.valueOf(this.id);
    }
}
