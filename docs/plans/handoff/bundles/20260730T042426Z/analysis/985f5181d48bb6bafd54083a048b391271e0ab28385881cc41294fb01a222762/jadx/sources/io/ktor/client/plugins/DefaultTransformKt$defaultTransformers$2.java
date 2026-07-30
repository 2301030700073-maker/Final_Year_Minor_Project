package io.ktor.client.plugins;

import io.ktor.client.statement.HttpResponseContainer;
import io.ktor.util.pipeline.PipelineContext;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: DefaultTransform.kt */
/* loaded from: classes.dex */
final class DefaultTransformKt$defaultTransformers$2 extends SuspendLambda implements Function3 {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    Object L$3;
    int label;

    DefaultTransformKt$defaultTransformers$2(Continuation continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(PipelineContext pipelineContext, HttpResponseContainer httpResponseContainer, Continuation continuation) {
        DefaultTransformKt$defaultTransformers$2 defaultTransformKt$defaultTransformers$2 = new DefaultTransformKt$defaultTransformers$2(continuation);
        defaultTransformKt$defaultTransformers$2.L$0 = pipelineContext;
        defaultTransformKt$defaultTransformers$2.L$1 = httpResponseContainer;
        return defaultTransformKt$defaultTransformers$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0264 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x015e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x015f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
