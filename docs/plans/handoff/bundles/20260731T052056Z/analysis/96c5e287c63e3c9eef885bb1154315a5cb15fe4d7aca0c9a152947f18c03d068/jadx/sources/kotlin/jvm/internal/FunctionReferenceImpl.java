package kotlin.jvm.internal;

import kotlin.jvm.internal.CallableReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class FunctionReferenceImpl extends FunctionReference {
    public FunctionReferenceImpl(int i, Class cls, String str, String str2, int i2) {
        super(i, i2, cls, CallableReference.NoReceiver.INSTANCE, str, str2);
    }
}
