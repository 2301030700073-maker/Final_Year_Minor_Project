package androidx.camera.camera2.impl;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseCameraState$updateAsync$1 extends ContinuationImpl {
    public Ref$ObjectRef L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ UseCaseCameraState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraState$updateAsync$1(UseCaseCameraState useCaseCameraState, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = useCaseCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.m24updateAsyncTp9XwKQ(null, null, null, null, null, this);
    }
}
