package com.skydoves.landscapist;

import com.skydoves.landscapist.ImageLoadState;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageLoadKt$executeImageLoading$2 extends SuspendLambda implements Function3 {
    public /* synthetic */ FlowCollector L$0;
    public int label;

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        ImageLoadKt$executeImageLoading$2 imageLoadKt$executeImageLoading$2 = new ImageLoadKt$executeImageLoading$2(3, (Continuation) obj3);
        imageLoadKt$executeImageLoading$2.L$0 = (FlowCollector) obj;
        return imageLoadKt$executeImageLoading$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector = this.L$0;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ImageLoadState.Failure failure = new ImageLoadState.Failure(null, null);
            this.L$0 = null;
            this.label = 1;
            Object emit = flowCollector.emit(failure, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (emit == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
