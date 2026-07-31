package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonElement;
import org.wikipedia.dataclient.mwapi.MwServiceError;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class UserInfo extends MwServiceError.BlockInfo {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final boolean anon;
    public final boolean canCreate;
    public final List canCreateError;
    public final int editCount;
    public final List groups;
    public final int id;
    public final String latestContrib;
    public final boolean messages;
    public final String name;
    public final Options options;
    public final String regDate;
    public final String registration;
    public final List rights;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return UserInfo$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Options {
        public static final Companion Companion = new Companion();
        public final JsonElement fundraisingOptIn;
        public final JsonElement watchDefault;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return UserInfo$Options$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Options(int i, JsonElement jsonElement, JsonElement jsonElement2) {
            if ((i & 1) == 0) {
                this.watchDefault = null;
            } else {
                this.watchDefault = jsonElement;
            }
            if ((i & 2) == 0) {
                this.fundraisingOptIn = null;
            } else {
                this.fundraisingOptIn = jsonElement2;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, null, null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(13)), null, null, null, null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(14)), null, ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(15)), null};
    }

    public /* synthetic */ UserInfo(int i, int i2, int i3, String str, String str2, String str3, String str4, int i4, List list, String str5, String str6, String str7, int i5, String str8, boolean z, boolean z2, List list2, boolean z3, List list3, Options options) {
        super(i, i2, i3, str, str2, str3, str4);
        if ((i & 64) == 0) {
            this.id = 0;
        } else {
            this.id = i4;
        }
        if ((i & 128) == 0) {
            this.groups = null;
        } else {
            this.groups = list;
        }
        if ((i & 256) == 0) {
            this.latestContrib = null;
        } else {
            this.latestContrib = str5;
        }
        if ((i & 512) == 0) {
            this.regDate = null;
        } else {
            this.regDate = str6;
        }
        if ((i & 1024) == 0) {
            this.registration = null;
        } else {
            this.registration = str7;
        }
        if ((i & 2048) == 0) {
            this.editCount = -1;
        } else {
            this.editCount = i5;
        }
        if ((i & 4096) == 0) {
            this.name = "";
        } else {
            this.name = str8;
        }
        if ((i & 8192) == 0) {
            this.anon = false;
        } else {
            this.anon = z;
        }
        if ((i & 16384) == 0) {
            this.messages = false;
        } else {
            this.messages = z2;
        }
        this.rights = (32768 & i) == 0 ? EmptyList.INSTANCE : list2;
        if ((65536 & i) == 0) {
            this.canCreate = false;
        } else {
            this.canCreate = z3;
        }
        if ((131072 & i) == 0) {
            this.canCreateError = null;
        } else {
            this.canCreateError = list3;
        }
        if ((i & 262144) == 0) {
            this.options = null;
        } else {
            this.options = options;
        }
    }

    public final Date getRegistrationDate() {
        Date date = new Date(0L);
        String str = this.regDate;
        if (str != null && str.length() != 0) {
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            return DateUtil.iso8601DateParse(str);
        }
        String str2 = this.registration;
        if (str2 == null || str2.length() == 0) {
            return date;
        }
        ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
        return DateUtil.iso8601DateParse(str2);
    }
}
