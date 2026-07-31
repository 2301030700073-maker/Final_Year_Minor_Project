package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class MwQueryResponse extends MwResponse {
    public final boolean batchcomplete;
    public final Continuation continuation;
    public final MwQueryResult query;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new MwQueryPage$$ExternalSyntheticLambda0(16)), null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MwQueryResponse$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Continuation {
        public static final Companion Companion = new Companion();
        public final String continuation;
        public final String gcmContinuation;
        public final Integer gpsoffset;
        public final Integer gsroffset;
        public final String rcContinuation;
        public final String rvContinuation;
        public final Integer sroffset;
        public final String ucContinuation;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return MwQueryResponse$Continuation$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Continuation(int i, Integer num, Integer num2, Integer num3, String str, String str2, String str3, String str4, String str5) {
            if ((i & 1) == 0) {
                this.sroffset = null;
            } else {
                this.sroffset = num;
            }
            if ((i & 2) == 0) {
                this.gsroffset = null;
            } else {
                this.gsroffset = num2;
            }
            if ((i & 4) == 0) {
                this.gpsoffset = null;
            } else {
                this.gpsoffset = num3;
            }
            if ((i & 8) == 0) {
                this.continuation = null;
            } else {
                this.continuation = str;
            }
            if ((i & 16) == 0) {
                this.ucContinuation = null;
            } else {
                this.ucContinuation = str2;
            }
            if ((i & 32) == 0) {
                this.rcContinuation = null;
            } else {
                this.rcContinuation = str3;
            }
            if ((i & 64) == 0) {
                this.rvContinuation = null;
            } else {
                this.rvContinuation = str4;
            }
            if ((i & 128) == 0) {
                this.gcmContinuation = null;
            } else {
                this.gcmContinuation = str5;
            }
        }
    }

    public MwQueryResponse() {
        Object obj;
        Object obj2;
        if (this.errors == null || !(!r0.isEmpty())) {
            this.batchcomplete = true;
            return;
        }
        Iterator it = this.errors.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            MwServiceError mwServiceError = (MwServiceError) obj2;
            if (StringsKt.contains(mwServiceError.getKey(), "blocked", false) || StringsKt__StringsJVMKt.startsWith(mwServiceError.getKey(), "abusefilter-", false)) {
                break;
            }
        }
        MwServiceError mwServiceError2 = (MwServiceError) obj2;
        if (mwServiceError2 != null) {
            throw new MwException(mwServiceError2);
        }
        for (Object obj3 : this.errors) {
            MwServiceError mwServiceError3 = (MwServiceError) obj3;
            if (StringsKt.contains(mwServiceError3.getKey(), "assertuserfailed", false) || StringsKt.contains(mwServiceError3.getKey(), "notloggedin", false)) {
                obj = obj3;
                break;
            }
        }
        MwServiceError mwServiceError4 = (MwServiceError) obj;
        if (mwServiceError4 == null) {
            throw new MwException((MwServiceError) CollectionsKt.first(this.errors));
        }
        throw new MwNotLoggedInException(mwServiceError4);
    }

    public /* synthetic */ MwQueryResponse(int i, List list, String str, boolean z, Continuation continuation, MwQueryResult mwQueryResult) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.batchcomplete = true;
        } else {
            this.batchcomplete = z;
        }
        if ((i & 8) == 0) {
            this.continuation = null;
        } else {
            this.continuation = continuation;
        }
        if ((i & 16) == 0) {
            this.query = null;
        } else {
            this.query = mwQueryResult;
        }
    }
}
