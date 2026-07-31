package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class MwServiceError {
    public static final Companion Companion = new Companion();
    public final String code;
    public final Data data;
    public String html;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public class BlockInfo {
        public static final Companion Companion = new Companion();
        public final String blockExpiry;
        public final int blockId;
        public final String blockReason;
        public final String blockTimeStamp;
        public final String blockedBy;
        public final int blockedById;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwServiceError$BlockInfo$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ BlockInfo(int i, int i2, int i3, String str, String str2, String str3, String str4) {
            if ((i & 1) == 0) {
                this.blockedById = 0;
            } else {
                this.blockedById = i2;
            }
            if ((i & 2) == 0) {
                this.blockId = 0;
            } else {
                this.blockId = i3;
            }
            if ((i & 4) == 0) {
                this.blockedBy = "";
            } else {
                this.blockedBy = str;
            }
            if ((i & 8) == 0) {
                this.blockReason = "";
            } else {
                this.blockReason = str2;
            }
            if ((i & 16) == 0) {
                this.blockTimeStamp = "";
            } else {
                this.blockTimeStamp = str3;
            }
            if ((i & 32) == 0) {
                this.blockExpiry = "";
            } else {
                this.blockExpiry = str4;
            }
        }

        public static final /* synthetic */ void write$Self(BlockInfo blockInfo, UuidKt uuidKt, SerialDescriptor serialDescriptor) {
            String str = blockInfo.blockExpiry;
            String str2 = blockInfo.blockTimeStamp;
            String str3 = blockInfo.blockReason;
            String str4 = blockInfo.blockedBy;
            int i = blockInfo.blockId;
            int i2 = blockInfo.blockedById;
            if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || i2 != 0) {
                uuidKt.encodeIntElement(0, i2, serialDescriptor);
            }
            if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || i != 0) {
                uuidKt.encodeIntElement(1, i, serialDescriptor);
            }
            if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str4, "")) {
                uuidKt.encodeStringElement(serialDescriptor, 2, str4);
            }
            if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str3, "")) {
                uuidKt.encodeStringElement(serialDescriptor, 3, str3);
            }
            if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str2, "")) {
                uuidKt.encodeStringElement(serialDescriptor, 4, str2);
            }
            if (!uuidKt.shouldEncodeElementDefault(serialDescriptor) && Intrinsics.areEqual(str, "")) {
                return;
            }
            uuidKt.encodeStringElement(serialDescriptor, 5, str);
        }

        public final boolean isBlocked() {
            String str = this.blockExpiry;
            if (str.length() == 0) {
                return false;
            }
            Date date = new Date();
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            return DateUtil.iso8601DateParse(str).after(date);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MwServiceError$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Data {
        public final BlockInfo blockinfo;
        public final List messages;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(5)), null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwServiceError$Data$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Data(int i, List list, BlockInfo blockInfo) {
            if ((i & 1) == 0) {
                this.messages = null;
            } else {
                this.messages = list;
            }
            if ((i & 2) == 0) {
                this.blockinfo = null;
            } else {
                this.blockinfo = blockInfo;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Message {
        public static final Companion Companion = new Companion();
        public final String html;
        public final String name;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwServiceError$Message$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Message(int i, String str, String str2) {
            if (1 != (i & 1)) {
                TuplesKt.throwMissingFieldException(i, 1, MwServiceError$Message$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
            this.name = str;
            if ((i & 2) == 0) {
                this.html = "";
            } else {
                this.html = str2;
            }
        }
    }

    public MwServiceError(int i, String str, String str2, Data data) {
        Continuation continuation = null;
        if ((i & 1) == 0) {
            this.code = null;
            str = null;
        } else {
            this.code = str;
        }
        if ((i & 2) == 0) {
            this.html = null;
        } else {
            this.html = str2;
        }
        int i2 = 4;
        if ((i & 4) == 0) {
            this.data = null;
            data = null;
        } else {
            this.data = data;
        }
        if ("blocked".equals(str) || "autoblocked".equals(str)) {
            if ((data != null ? data.blockinfo : null) != null) {
                AwaitKt.runBlocking(new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 7), new PageActivity$onCreate$1$1$1(i2, this, continuation));
            }
        }
    }

    public final String getKey() {
        String str = this.code;
        return str == null ? "" : str;
    }

    public final String getMessage() {
        StringUtil stringUtil = StringUtil.INSTANCE;
        String str = this.html;
        if (str == null) {
            str = "";
        }
        return StringUtil.removeStyleTags(str);
    }

    public MwServiceError(String str, String str2) {
        this.code = str;
        this.html = str2;
        this.data = null;
        if ("blocked".equals(str)) {
            return;
        }
        "autoblocked".equals(str);
    }
}
