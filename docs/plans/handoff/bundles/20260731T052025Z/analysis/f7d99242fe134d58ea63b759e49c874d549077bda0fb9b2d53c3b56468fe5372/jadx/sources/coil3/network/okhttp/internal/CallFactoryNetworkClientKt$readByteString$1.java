package coil3.network.okhttp.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "coil3.network.okhttp.internal.CallFactoryNetworkClientKt", f = "CallFactoryNetworkClient.kt", l = {39}, m = "readByteString", v = 1)
/* loaded from: classes.dex */
public final class CallFactoryNetworkClientKt$readByteString$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    public CallFactoryNetworkClientKt$readByteString$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object readByteString;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readByteString = CallFactoryNetworkClientKt.readByteString(null, this);
        return readByteString;
    }
}
