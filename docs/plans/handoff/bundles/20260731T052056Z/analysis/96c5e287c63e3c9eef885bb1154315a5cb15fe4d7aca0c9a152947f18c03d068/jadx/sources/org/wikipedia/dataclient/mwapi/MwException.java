package org.wikipedia.dataclient.mwapi;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public class MwException extends RuntimeException {
    public static final Companion Companion = new Companion();
    public final MwServiceError error;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MwException$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ MwException(int i, MwServiceError mwServiceError) {
        if (1 == (i & 1)) {
            this.error = mwServiceError;
        } else {
            TuplesKt.throwMissingFieldException(i, 1, MwException$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.error.getMessage();
    }

    public MwException(MwServiceError mwServiceError) {
        mwServiceError.getClass();
        this.error = mwServiceError;
    }
}
