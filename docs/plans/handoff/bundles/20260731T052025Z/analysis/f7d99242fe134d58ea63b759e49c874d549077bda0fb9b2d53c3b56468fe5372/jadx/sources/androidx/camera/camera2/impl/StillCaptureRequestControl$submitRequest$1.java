package androidx.camera.camera2.impl;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StillCaptureRequestControl$submitRequest$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ StillCaptureRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StillCaptureRequestControl$submitRequest$1(StillCaptureRequestControl stillCaptureRequestControl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = stillCaptureRequestControl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        StillCaptureRequestControl.access$submitRequest(this.this$0, null, null, this);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
