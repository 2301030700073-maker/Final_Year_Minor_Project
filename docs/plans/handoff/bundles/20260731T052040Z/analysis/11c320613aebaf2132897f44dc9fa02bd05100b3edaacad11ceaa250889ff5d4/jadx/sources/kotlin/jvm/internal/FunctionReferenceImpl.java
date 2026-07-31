package kotlin.jvm.internal;

import kotlin.jvm.internal.CallableReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class FunctionReferenceImpl extends FunctionReference {
    public FunctionReferenceImpl(int i, Class cls, String str, String str2, int i2) {
        super(i, i2, cls, CallableReference.NoReceiver.INSTANCE, str, str2);
    }
}
