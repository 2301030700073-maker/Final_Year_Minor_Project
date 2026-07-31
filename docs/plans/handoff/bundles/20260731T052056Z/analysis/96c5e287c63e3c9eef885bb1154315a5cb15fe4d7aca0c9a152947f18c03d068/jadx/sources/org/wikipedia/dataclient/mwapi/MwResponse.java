package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public abstract class MwResponse {
    public static final Lazy $cachedSerializer$delegate;
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final List errors;
    public final String servedBy;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) MwResponse.$cachedSerializer$delegate.getValue();
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(3)), null};
        $cachedSerializer$delegate = ContextsKt.lazy(lazyThreadSafetyMode, new Watch$$ExternalSyntheticLambda0(4));
    }

    public MwResponse(int i, String str, List list) {
        Object obj;
        Object obj2 = null;
        if ((i & 1) == 0) {
            this.errors = null;
            list = null;
        } else {
            this.errors = list;
        }
        if ((i & 2) == 0) {
            this.servedBy = null;
        } else {
            this.servedBy = str;
        }
        if (list == null || !(!list.isEmpty())) {
            return;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            MwServiceError mwServiceError = (MwServiceError) obj;
            if (StringsKt.contains(mwServiceError.getKey(), "blocked", false) || StringsKt__StringsJVMKt.startsWith(mwServiceError.getKey(), "abusefilter-", false)) {
                break;
            }
        }
        MwServiceError mwServiceError2 = (MwServiceError) obj;
        if (mwServiceError2 != null) {
            throw new MwException(mwServiceError2);
        }
        for (Object obj3 : this.errors) {
            MwServiceError mwServiceError3 = (MwServiceError) obj3;
            if (StringsKt.contains(mwServiceError3.getKey(), "assertuserfailed", false) || StringsKt.contains(mwServiceError3.getKey(), "notloggedin", false)) {
                obj2 = obj3;
                break;
            }
        }
        MwServiceError mwServiceError4 = (MwServiceError) obj2;
        if (mwServiceError4 == null) {
            throw new MwException((MwServiceError) CollectionsKt.first(this.errors));
        }
        throw new MwNotLoggedInException(mwServiceError4);
    }

    public static final /* synthetic */ void write$Self(MwResponse mwResponse, UuidKt uuidKt, SerialDescriptor serialDescriptor) {
        if (uuidKt.shouldEncodeElementDefault(serialDescriptor) || mwResponse.errors != null) {
            uuidKt.encodeNullableSerializableElement(serialDescriptor, 0, (KSerializer) $childSerializers[0].getValue(), mwResponse.errors);
        }
        if (!uuidKt.shouldEncodeElementDefault(serialDescriptor) && mwResponse.servedBy == null) {
            return;
        }
        uuidKt.encodeNullableSerializableElement(serialDescriptor, 1, StringSerializer.INSTANCE, mwResponse.servedBy);
    }
}
