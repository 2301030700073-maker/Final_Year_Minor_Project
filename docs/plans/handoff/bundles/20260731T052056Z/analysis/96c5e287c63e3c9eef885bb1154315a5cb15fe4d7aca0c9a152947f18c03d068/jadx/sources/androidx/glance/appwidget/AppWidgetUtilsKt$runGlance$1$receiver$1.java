package androidx.glance.appwidget;

import androidx.work.OperationKt;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerCoroutine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AppWidgetUtilsKt$runGlance$1$receiver$1 implements CoroutineContext.Element {
    public final /* synthetic */ ProducerCoroutine $$this$channelFlow;
    public final /* synthetic */ AtomicReference $contentCoroutine;

    public AppWidgetUtilsKt$runGlance$1$receiver$1(AtomicReference atomicReference, ProducerCoroutine producerCoroutine) {
        this.$contentCoroutine = atomicReference;
        this.$$this$channelFlow = producerCoroutine;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return OperationKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return ContentReceiver$Key.$$INSTANCE;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return OperationKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return OperationKt.plus(this, coroutineContext);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.coroutines.intrinsics.CoroutineSingletons provideContent(kotlin.jvm.functions.Function2 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1$provideContent$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1$provideContent$1 r0 = (androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1$provideContent$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1$provideContent$1 r0 = new androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1$provideContent$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 == r4) goto L2a
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2a:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L62
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.label = r4
            kotlinx.coroutines.CancellableContinuationImpl r7 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)
            r7.<init>(r4, r0)
            r7.initCancellability()
            androidx.compose.ui.node.NodeChainKt$fillVector$1 r0 = new androidx.compose.ui.node.NodeChainKt$fillVector$1
            r2 = 29
            kotlinx.coroutines.channels.ProducerCoroutine r4 = r5.$$this$channelFlow
            r0.<init>(r2, r4)
            r7.invokeOnCancellation(r0)
            java.util.concurrent.atomic.AtomicReference r5 = r5.$contentCoroutine
            java.lang.Object r5 = r5.getAndSet(r7)
            kotlinx.coroutines.CancellableContinuation r5 = (kotlinx.coroutines.CancellableContinuation) r5
            if (r5 == 0) goto L58
            r5.cancel(r3)
        L58:
            r4.mo757trySendJP2dKIU(r6)
            java.lang.Object r5 = r7.getResult()
            if (r5 != r1) goto L62
            return r1
        L62:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1.provideContent(kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }
}
