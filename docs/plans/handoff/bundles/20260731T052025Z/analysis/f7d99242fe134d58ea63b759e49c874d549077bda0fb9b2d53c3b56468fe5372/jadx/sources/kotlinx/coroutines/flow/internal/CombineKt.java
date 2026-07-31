package kotlinx.coroutines.flow.internal;

import com.fsck.k9.mailstore.LocalStore;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CombineKt {
    public static final Continuation[] EMPTY_RESUMES = new Continuation[0];
    public static final LocalStore.AnonymousClass8 NULL;
    public static final LocalStore.AnonymousClass8 UNINITIALIZED;

    static {
        int i = 4;
        boolean z = false;
        NULL = new LocalStore.AnonymousClass8(i, "NULL", z);
        UNINITIALIZED = new LocalStore.AnonymousClass8(i, "UNINITIALIZED", z);
    }

    public static final Object combineInternal(Continuation continuation, Function0 function0, Function3 function3, FlowCollector flowCollector, Flow[] flowArr) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(null, function0, function3, flowCollector, flowArr);
        FlowCoroutine flowCoroutine = new FlowCoroutine(continuation, continuation.getContext());
        Object startUndispatched = Base64.startUndispatched(flowCoroutine, true, flowCoroutine, combineKt$combineInternal$2);
        return startUndispatched == CoroutineSingletons.COROUTINE_SUSPENDED ? startUndispatched : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object withContextUndispatched(kotlin.coroutines.CoroutineContext r5, java.lang.Object r6, java.lang.Object r7, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$1 r0 = new kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L38
            if (r1 != r2) goto L31
            java.lang.Object r5 = r0.L$6
            kotlin.coroutines.CoroutineContext r6 = r0.L$4
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L2b
            r7 = r5
            r5 = r6
            goto L68
        L2b:
            r7 = move-exception
            r4 = r7
            r7 = r5
            r5 = r6
            r6 = r4
            goto L6c
        L31:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r5 = 0
            return r5
        L38:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r7 = kotlinx.coroutines.internal.InlineList.updateThreadContext(r5, r7)
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L58
            r0.L$4 = r5     // Catch: java.lang.Throwable -> L58
            r0.L$6 = r7     // Catch: java.lang.Throwable -> L58
            r0.label = r2     // Catch: java.lang.Throwable -> L58
            kotlinx.coroutines.flow.internal.StackFrameContinuation r9 = new kotlinx.coroutines.flow.internal.StackFrameContinuation     // Catch: java.lang.Throwable -> L58
            r9.<init>(r0, r5)     // Catch: java.lang.Throwable -> L58
            boolean r0 = androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3.m(r8)     // Catch: java.lang.Throwable -> L58
            if (r0 != 0) goto L5a
            java.lang.Object r6 = kotlinx.atomicfu.AtomicFU.wrapWithContinuationImpl(r8, r6, r9)     // Catch: java.lang.Throwable -> L58
        L56:
            r9 = r6
            goto L63
        L58:
            r6 = move-exception
            goto L6c
        L5a:
            r0 = 2
            kotlin.jvm.internal.TypeIntrinsics.beforeCheckcastToFunctionOfArity(r0, r8)     // Catch: java.lang.Throwable -> L58
            java.lang.Object r6 = r8.invoke(r6, r9)     // Catch: java.lang.Throwable -> L58
            goto L56
        L63:
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r6) goto L68
            return r6
        L68:
            kotlinx.coroutines.internal.InlineList.restoreThreadContext(r5, r7)
            return r9
        L6c:
            kotlinx.coroutines.internal.InlineList.restoreThreadContext(r5, r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt.withContextUndispatched(kotlin.coroutines.CoroutineContext, java.lang.Object, java.lang.Object, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
