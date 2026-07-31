package org.wikipedia.dataclient.mwapi;

import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwAuthManagerInfo;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.page.Protection;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.settings.SiteInfo;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class MwQueryResult {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final List allUsers;
    public final List allmessages;
    public final MwAuthManagerInfo amInfo;
    public final SiteInfo.AutoCreateTempUser autoCreateTempUser;
    public final List converted;
    public final MarkReadResponse echomarkread;
    public final MarkReadResponse echomarkseen;
    public final UserInfo globalUserInfo;
    public final List magicwords;
    public final Map namespaces;
    public final NotificationList notifications;
    public final List pages;
    public final List recentChanges;
    public final List redirects;
    public final SiteInfo siteInfo;
    public final Tokens tokens;
    public final Map unreadNotificationWikis;
    public final List userContributions;
    public final UserInfo userInfo;
    public final List users;
    public final List watchlist;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MwQueryResult$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ConvertedTitle {
        public static final Companion Companion = new Companion();
        public final String from;
        public final String to;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$ConvertedTitle$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ConvertedTitle(int i, String str, String str2) {
            if ((i & 1) == 0) {
                this.from = null;
            } else {
                this.from = str;
            }
            if ((i & 2) == 0) {
                this.to = null;
            } else {
                this.to = str2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class MagicWord {
        public final List aliases;
        public final String name;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new MwQueryPage$$ExternalSyntheticLambda0(29))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$MagicWord$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ MagicWord(int i, String str, List list) {
            this.name = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.aliases = EmptyList.INSTANCE;
            } else {
                this.aliases = list;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class MarkReadResponse {
        public static final Companion Companion = new Companion();
        public final String result;
        public final String timestamp;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$MarkReadResponse$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ MarkReadResponse(int i, String str, String str2) {
            if ((i & 1) == 0) {
                this.timestamp = null;
            } else {
                this.timestamp = str;
            }
            if ((i & 2) == 0) {
                this.result = null;
            } else {
                this.result = str2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Message {
        public static final Companion Companion = new Companion();
        public final String content;
        public final boolean missing;
        public final String name;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$Message$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Message(int i, String str, String str2, boolean z) {
            if ((i & 1) == 0) {
                this.name = "";
            } else {
                this.name = str;
            }
            if ((i & 2) == 0) {
                this.content = "";
            } else {
                this.content = str2;
            }
            if ((i & 4) == 0) {
                this.missing = false;
            } else {
                this.missing = z;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Namespace {
        public static final Companion Companion = new Companion();
        public final int id;
        public final String name;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$Namespace$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Namespace(int i, int i2, String str) {
            this.id = (i & 1) == 0 ? 0 : i2;
            if ((i & 2) == 0) {
                this.name = "";
            } else {
                this.name = str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class NotificationList {
        public final String continueStr;
        public final int count;
        public final List list;
        public final int rawcount;
        public final Notification.SeenTime seenTime;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(1)), null, null, null, null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$NotificationList$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ NotificationList(int i, List list, Notification.SeenTime seenTime, int i2, int i3, String str) {
            if ((i & 1) == 0) {
                this.list = null;
            } else {
                this.list = list;
            }
            if ((i & 2) == 0) {
                this.seenTime = null;
            } else {
                this.seenTime = seenTime;
            }
            if ((i & 4) == 0) {
                this.count = 0;
            } else {
                this.count = i2;
            }
            if ((i & 8) == 0) {
                this.rawcount = 0;
            } else {
                this.rawcount = i3;
            }
            if ((i & 16) == 0) {
                this.continueStr = null;
            } else {
                this.continueStr = str;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class OresItem {
        public static final Companion Companion = new Companion();
        public final float falseProb;
        public final float trueProb;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$OresItem$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ OresItem(float f, float f2, int i) {
            if ((i & 1) == 0) {
                this.trueProb = RecyclerView.DECELERATION_RATE;
            } else {
                this.trueProb = f;
            }
            if ((i & 2) == 0) {
                this.falseProb = RecyclerView.DECELERATION_RATE;
            } else {
                this.falseProb = f2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class OresResult {
        public static final Companion Companion = new Companion();
        public final OresItem damaging;
        public final OresItem goodfaith;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$OresResult$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ OresResult(int i, OresItem oresItem, OresItem oresItem2) {
            if ((i & 1) == 0) {
                this.damaging = null;
            } else {
                this.damaging = oresItem;
            }
            if ((i & 2) == 0) {
                this.goodfaith = null;
            } else {
                this.goodfaith = oresItem2;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class RecentChange {
        public final boolean anon;
        public final boolean bot;
        public final long curRev;
        public final boolean isNew;
        public final SynchronizedLazyImpl joinedTags$delegate;
        public final boolean minor;
        public final int newlen;
        public final int ns;
        public final int oldlen;
        public final JsonElement oresscores;
        public final int pageid;
        public final String parsedComment;
        public final SynchronizedLazyImpl parsedDateTime$delegate;
        public final SynchronizedLazyImpl parsedInstant$delegate;
        public final long rcid;
        public final long revFrom;
        public final List tags;
        public final String timestamp;
        public final String title;
        public final String type;
        public final String user;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(2)), null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$RecentChange$$serializer.INSTANCE;
            }
        }

        public RecentChange(int i, String str, int i2, String str2, int i3, long j, long j2, long j3, String str3, boolean z, boolean z2, boolean z3, boolean z4, int i4, int i5, String str4, String str5, List list, JsonElement jsonElement) {
            if ((i & 1) == 0) {
                this.type = "";
            } else {
                this.type = str;
            }
            if ((i & 2) == 0) {
                this.ns = 0;
            } else {
                this.ns = i2;
            }
            if ((i & 4) == 0) {
                this.title = "";
            } else {
                this.title = str2;
            }
            if ((i & 8) == 0) {
                this.pageid = 0;
            } else {
                this.pageid = i3;
            }
            if ((i & 16) == 0) {
                this.curRev = 0L;
            } else {
                this.curRev = j;
            }
            if ((i & 32) == 0) {
                this.revFrom = 0L;
            } else {
                this.revFrom = j2;
            }
            if ((i & 64) == 0) {
                this.rcid = 0L;
            } else {
                this.rcid = j3;
            }
            if ((i & 128) == 0) {
                this.user = "";
            } else {
                this.user = str3;
            }
            if ((i & 256) == 0) {
                this.anon = false;
            } else {
                this.anon = z;
            }
            if ((i & 512) == 0) {
                this.bot = false;
            } else {
                this.bot = z2;
            }
            if ((i & 1024) == 0) {
                this.isNew = false;
            } else {
                this.isNew = z3;
            }
            if ((i & 2048) == 0) {
                this.minor = false;
            } else {
                this.minor = z4;
            }
            if ((i & 4096) == 0) {
                this.oldlen = 0;
            } else {
                this.oldlen = i4;
            }
            if ((i & 8192) == 0) {
                this.newlen = 0;
            } else {
                this.newlen = i5;
            }
            if ((i & 16384) == 0) {
                this.timestamp = "";
            } else {
                this.timestamp = str4;
            }
            if ((32768 & i) == 0) {
                this.parsedComment = "";
            } else {
                this.parsedComment = str5;
            }
            if ((65536 & i) == 0) {
                this.tags = null;
            } else {
                this.tags = list;
            }
            if ((i & 131072) == 0) {
                this.oresscores = null;
            } else {
                this.oresscores = jsonElement;
            }
            final int i6 = 0;
            this.parsedInstant$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.mwapi.MwQueryResult$RecentChange$$ExternalSyntheticLambda0
                public final /* synthetic */ MwQueryResult.RecentChange f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i7 = i6;
                    MwQueryResult.RecentChange recentChange = this.f$0;
                    switch (i7) {
                        case 0:
                            return Instant.parse(recentChange.timestamp);
                        case 1:
                            return LocalDateTime.ofInstant(recentChange.getParsedInstant(), ZoneId.systemDefault());
                        default:
                            List list2 = recentChange.tags;
                            String joinToString$default = list2 != null ? CollectionsKt.joinToString$default(list2, ", ", null, null, null, 62) : null;
                            return joinToString$default == null ? "" : joinToString$default;
                    }
                }
            });
            final int i7 = 1;
            this.parsedDateTime$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.mwapi.MwQueryResult$RecentChange$$ExternalSyntheticLambda0
                public final /* synthetic */ MwQueryResult.RecentChange f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i72 = i7;
                    MwQueryResult.RecentChange recentChange = this.f$0;
                    switch (i72) {
                        case 0:
                            return Instant.parse(recentChange.timestamp);
                        case 1:
                            return LocalDateTime.ofInstant(recentChange.getParsedInstant(), ZoneId.systemDefault());
                        default:
                            List list2 = recentChange.tags;
                            String joinToString$default = list2 != null ? CollectionsKt.joinToString$default(list2, ", ", null, null, null, 62) : null;
                            return joinToString$default == null ? "" : joinToString$default;
                    }
                }
            });
            final int i8 = 2;
            this.joinedTags$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: org.wikipedia.dataclient.mwapi.MwQueryResult$RecentChange$$ExternalSyntheticLambda0
                public final /* synthetic */ MwQueryResult.RecentChange f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i72 = i8;
                    MwQueryResult.RecentChange recentChange = this.f$0;
                    switch (i72) {
                        case 0:
                            return Instant.parse(recentChange.timestamp);
                        case 1:
                            return LocalDateTime.ofInstant(recentChange.getParsedInstant(), ZoneId.systemDefault());
                        default:
                            List list2 = recentChange.tags;
                            String joinToString$default = list2 != null ? CollectionsKt.joinToString$default(list2, ", ", null, null, null, 62) : null;
                            return joinToString$default == null ? "" : joinToString$default;
                    }
                }
            });
        }

        public final OresResult getOres() {
            JsonElement jsonElement = this.oresscores;
            if (jsonElement == null || (jsonElement instanceof JsonArray)) {
                return null;
            }
            JsonImpl jsonImpl = JsonUtil.json;
            jsonImpl.getClass();
            return (OresResult) jsonImpl.decodeFromJsonElement(OresResult.Companion.serializer(), jsonElement);
        }

        public final LocalDateTime getParsedDateTime() {
            Object value = this.parsedDateTime$delegate.getValue();
            value.getClass();
            return (LocalDateTime) value;
        }

        public final Instant getParsedInstant() {
            Object value = this.parsedInstant$delegate.getValue();
            value.getClass();
            return (Instant) value;
        }

        public final String toString() {
            return this.title;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Redirect {
        public static final Companion Companion = new Companion();
        public final String from;
        public final int index;
        public final String to;
        public final String toFragment;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$Redirect$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Redirect(int i, int i2, String str, String str2, String str3) {
            if ((i & 1) == 0) {
                this.toFragment = null;
            } else {
                this.toFragment = str;
            }
            this.index = (i & 2) == 0 ? 0 : i2;
            if ((i & 4) == 0) {
                this.from = null;
            } else {
                this.from = str2;
            }
            if ((i & 8) == 0) {
                this.to = null;
            } else {
                this.to = str3;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Tokens {
        public static final Companion Companion = new Companion();
        public final String createAccount;
        public final String csrf;
        public final String login;
        public final String rollback;
        public final String watch;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$Tokens$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Tokens(int i, String str, String str2, String str3, String str4, String str5) {
            if ((i & 1) == 0) {
                this.csrf = null;
            } else {
                this.csrf = str;
            }
            if ((i & 2) == 0) {
                this.createAccount = null;
            } else {
                this.createAccount = str2;
            }
            if ((i & 4) == 0) {
                this.login = null;
            } else {
                this.login = str3;
            }
            if ((i & 8) == 0) {
                this.watch = null;
            } else {
                this.watch = str4;
            }
            if ((i & 16) == 0) {
                this.rollback = null;
            } else {
                this.rollback = str5;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class WatchlistItem {
        public static final Companion Companion = new Companion();
        public final String comment;
        public final boolean isAnon;
        public final boolean isBot;
        public final boolean isMinor;
        public final boolean isNew;
        public final String logdisplay;
        public final String logtype;
        public final int newlen;
        public final int ns;
        public final long oldRevid;
        public final int oldlen;
        public final int pageId;
        public final String parsedComment;
        public final long revid;
        public final String timestamp;
        public final String title;
        public final String type;
        public final String user;
        public WikiSite wiki;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResult$WatchlistItem$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ WatchlistItem(int i, boolean z, boolean z2, boolean z3, boolean z4, long j, String str, String str2, String str3, int i2, long j2, int i3, String str4, String str5, String str6, String str7, int i4, int i5, WikiSite wikiSite, String str8) {
            if ((i & 1) == 0) {
                this.isNew = false;
            } else {
                this.isNew = z;
            }
            if ((i & 2) == 0) {
                this.isAnon = false;
            } else {
                this.isAnon = z2;
            }
            if ((i & 4) == 0) {
                this.isMinor = false;
            } else {
                this.isMinor = z3;
            }
            if ((i & 8) == 0) {
                this.isBot = false;
            } else {
                this.isBot = z4;
            }
            if ((i & 16) == 0) {
                this.oldRevid = 0L;
            } else {
                this.oldRevid = j;
            }
            if ((i & 32) == 0) {
                this.timestamp = null;
            } else {
                this.timestamp = str;
            }
            if ((i & 64) == 0) {
                this.comment = null;
            } else {
                this.comment = str2;
            }
            if ((i & 128) == 0) {
                this.type = "";
            } else {
                this.type = str3;
            }
            if ((i & 256) == 0) {
                this.pageId = 0;
            } else {
                this.pageId = i2;
            }
            if ((i & 512) == 0) {
                this.revid = 0L;
            } else {
                this.revid = j2;
            }
            if ((i & 1024) == 0) {
                this.ns = 0;
            } else {
                this.ns = i3;
            }
            if ((i & 2048) == 0) {
                this.title = "";
            } else {
                this.title = str4;
            }
            if ((i & 4096) == 0) {
                this.user = "";
            } else {
                this.user = str5;
            }
            if ((i & 8192) == 0) {
                this.logtype = "";
            } else {
                this.logtype = str6;
            }
            if ((i & 16384) == 0) {
                this.logdisplay = "";
            } else {
                this.logdisplay = str7;
            }
            if ((32768 & i) == 0) {
                this.oldlen = 0;
            } else {
                this.oldlen = i4;
            }
            if ((65536 & i) == 0) {
                this.newlen = 0;
            } else {
                this.newlen = i5;
            }
            if ((131072 & i) == 0) {
                this.wiki = null;
            } else {
                this.wiki = wikiSite;
            }
            if ((i & 262144) == 0) {
                this.parsedComment = "";
            } else {
                this.parsedComment = str8;
            }
        }

        public final Date getDate() {
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            String str = this.timestamp;
            if (str == null) {
                str = "";
            }
            return DateUtil.iso8601DateParse(str);
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(17)), null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(22)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(23)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(24)), null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(25)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(26)), null, null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(27)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(28)), null, null, ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(18)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(19)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(20)), ContextsKt.lazy(lazyThreadSafetyMode, new MwQueryPage$$ExternalSyntheticLambda0(21))};
    }

    public MwQueryResult(int i, UserInfo userInfo, Map map, MwAuthManagerInfo mwAuthManagerInfo, SiteInfo siteInfo, SiteInfo.AutoCreateTempUser autoCreateTempUser, List list, List list2, List list3, UserInfo userInfo2, List list4, List list5, Tokens tokens, MarkReadResponse markReadResponse, List list6, List list7, MarkReadResponse markReadResponse2, NotificationList notificationList, List list8, Map map2, List list9, List list10) {
        List<ConvertedTitle> list11;
        List list12;
        if ((i & 1) == 0) {
            this.userInfo = null;
        } else {
            this.userInfo = userInfo;
        }
        if ((i & 2) == 0) {
            this.unreadNotificationWikis = null;
        } else {
            this.unreadNotificationWikis = map;
        }
        if ((i & 4) == 0) {
            this.amInfo = null;
        } else {
            this.amInfo = mwAuthManagerInfo;
        }
        if ((i & 8) == 0) {
            this.siteInfo = null;
        } else {
            this.siteInfo = siteInfo;
        }
        if ((i & 16) == 0) {
            this.autoCreateTempUser = null;
        } else {
            this.autoCreateTempUser = autoCreateTempUser;
        }
        if ((i & 32) == 0) {
            this.recentChanges = null;
        } else {
            this.recentChanges = list;
        }
        int i2 = i & 64;
        List list13 = EmptyList.INSTANCE;
        if (i2 == 0) {
            this.userContributions = list13;
        } else {
            this.userContributions = list2;
        }
        if ((i & 128) == 0) {
            this.allUsers = null;
        } else {
            this.allUsers = list3;
        }
        if ((i & 256) == 0) {
            this.globalUserInfo = null;
        } else {
            this.globalUserInfo = userInfo2;
        }
        if ((i & 512) == 0) {
            this.redirects = null;
        } else {
            this.redirects = list4;
        }
        if ((i & 1024) == 0) {
            this.converted = null;
            list11 = null;
        } else {
            this.converted = list5;
            list11 = list5;
        }
        if ((i & 2048) == 0) {
            this.tokens = null;
        } else {
            this.tokens = tokens;
        }
        if ((i & 4096) == 0) {
            this.echomarkread = null;
        } else {
            this.echomarkread = markReadResponse;
        }
        if ((i & 8192) == 0) {
            this.users = null;
        } else {
            this.users = list6;
        }
        if ((i & 16384) == 0) {
            this.pages = null;
            list12 = null;
        } else {
            list12 = list7;
            this.pages = list12;
        }
        if ((32768 & i) == 0) {
            this.echomarkseen = null;
        } else {
            this.echomarkseen = markReadResponse2;
        }
        if ((65536 & i) == 0) {
            this.notifications = null;
        } else {
            this.notifications = notificationList;
        }
        this.watchlist = (131072 & i) != 0 ? list8 : list13;
        if ((262144 & i) == 0) {
            this.namespaces = null;
        } else {
            this.namespaces = map2;
        }
        if ((524288 & i) == 0) {
            this.allmessages = null;
        } else {
            this.allmessages = list9;
        }
        if ((i & 1048576) == 0) {
            this.magicwords = null;
        } else {
            this.magicwords = list10;
        }
        if (list11 != null && !list11.isEmpty() && list12 != null && !list12.isEmpty()) {
            for (ConvertedTitle convertedTitle : list11) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : list12) {
                    if (Intrinsics.areEqual(((MwQueryPage) obj).title, convertedTitle.to)) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    MwQueryPage mwQueryPage = (MwQueryPage) it.next();
                    mwQueryPage.convertedFrom = convertedTitle.from;
                    mwQueryPage.convertedTo = convertedTitle.to;
                }
            }
        }
        List<MwQueryPage> list14 = this.pages;
        List<Redirect> list15 = this.redirects;
        if (list15 == null || list15.isEmpty() || list14 == null || list14.isEmpty()) {
            return;
        }
        for (MwQueryPage mwQueryPage2 : list14) {
            for (Redirect redirect : list15) {
                if (Intrinsics.areEqual(mwQueryPage2.title, redirect.to)) {
                    mwQueryPage2.redirectFrom = redirect.from;
                    String str = redirect.toFragment;
                    if (str != null) {
                        mwQueryPage2.title = mwQueryPage2.title + "#" + str;
                    }
                }
            }
        }
    }

    public final String captchaId() {
        List list;
        Object obj;
        Map map;
        MwAuthManagerInfo.Field field;
        MwAuthManagerInfo mwAuthManagerInfo = this.amInfo;
        if (mwAuthManagerInfo != null && (list = mwAuthManagerInfo.requests) != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                Map map2 = ((MwAuthManagerInfo.Request) obj).fields;
                if (map2 != null && map2.containsKey("captchaId")) {
                    break;
                }
            }
            MwAuthManagerInfo.Request request = (MwAuthManagerInfo.Request) obj;
            if (request != null && (map = request.fields) != null && (field = (MwAuthManagerInfo.Field) map.get("captchaId")) != null) {
                return field.value;
            }
        }
        return null;
    }

    public final String csrfToken() {
        Tokens tokens = this.tokens;
        if (tokens != null) {
            return tokens.csrf;
        }
        return null;
    }

    public final MwQueryPage firstPage() {
        List list = this.pages;
        if (list != null) {
            return (MwQueryPage) CollectionsKt.firstOrNull(list);
        }
        return null;
    }

    public final boolean hasHCaptchaRequest() {
        List list;
        Object obj = null;
        MwAuthManagerInfo mwAuthManagerInfo = this.amInfo;
        if (mwAuthManagerInfo != null && (list = mwAuthManagerInfo.requests) != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                String str = ((MwAuthManagerInfo.Request) next).provider;
                if (str == null) {
                    str = "";
                }
                String lowerCase = str.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                if (StringsKt.contains(lowerCase, "hcaptcha", false)) {
                    obj = next;
                    break;
                }
            }
            obj = (MwAuthManagerInfo.Request) obj;
        }
        return obj != null;
    }

    public final boolean isEditProtected() {
        UserInfo userInfo;
        if (firstPage() == null || (userInfo = this.userInfo) == null) {
            return false;
        }
        MwQueryPage firstPage = firstPage();
        firstPage.getClass();
        for (Protection protection : firstPage.protection) {
            if (Intrinsics.areEqual(protection.type, "edit")) {
                List list = userInfo.groups;
                if (!(list != null ? CollectionsKt.toSet(list) : EmptySet.INSTANCE).contains(protection.level)) {
                    return true;
                }
            }
        }
        return false;
    }
}
