package com.skydoves.landscapist;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageLoadKt$executeImageLoading$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function1 $executeImageRequest;
    public /* synthetic */ Object L$0;
    public FlowCollector L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageLoadKt$executeImageLoading$1(Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$executeImageRequest = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ImageLoadKt$executeImageLoading$1 imageLoadKt$executeImageLoading$1 = new ImageLoadKt$executeImageLoading$1(this.$executeImageRequest, continuation);
        imageLoadKt$executeImageLoading$1.L$0 = obj;
        return imageLoadKt$executeImageLoading$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImageLoadKt$executeImageLoading$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.emitAll(r7, (kotlinx.coroutines.flow.Flow) r8, r0) == r6) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0055, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r8 == r6) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0035, code lost:
    
        if (r0.emit(r8, r7) == r6) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.L$0
            kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
            int r1 = r7.label
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L28
            if (r1 == r4) goto L24
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L18
            kotlin.ResultKt.throwOnFailure(r8)
            goto L56
        L18:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r5
        L1e:
            kotlinx.coroutines.flow.FlowCollector r0 = r7.L$1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L47
        L24:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L38
        L28:
            kotlin.ResultKt.throwOnFailure(r8)
            com.skydoves.landscapist.ImageLoadState$Loading r8 = com.skydoves.landscapist.ImageLoadState.Loading.INSTANCE
            r7.L$0 = r0
            r7.label = r4
            java.lang.Object r8 = r0.emit(r8, r7)
            if (r8 != r6) goto L38
            goto L55
        L38:
            r7.L$0 = r5
            r7.L$1 = r0
            r7.label = r3
            kotlin.jvm.functions.Function1 r8 = r7.$executeImageRequest
            java.lang.Object r8 = r8.invoke(r7)
            if (r8 != r6) goto L47
            goto L55
        L47:
            kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8
            r7.L$0 = r5
            r7.L$1 = r5
            r7.label = r2
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.emitAll(r7, r8, r0)
            if (r7 != r6) goto L56
        L55:
            return r6
        L56:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.ImageLoadKt$executeImageLoading$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
