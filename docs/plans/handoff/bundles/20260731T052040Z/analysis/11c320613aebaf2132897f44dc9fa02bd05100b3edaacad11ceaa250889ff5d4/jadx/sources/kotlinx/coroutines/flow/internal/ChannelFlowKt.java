package kotlinx.coroutines.flow.internal;

import com.google.common.base.Joiner;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ChannelFlowKt {
    public static final Continuation[] EMPTY_RESUMES = new Continuation[0];
    public static final Joiner NULL = new Joiner("NULL", 2);
    public static final Joiner UNINITIALIZED = new Joiner("UNINITIALIZED", 2);

    /* JADX WARN: Removed duplicated region for block: B:23:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
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
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L46
            if (r1 != r3) goto L40
            java.lang.Object r5 = r0.L$7
            kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$1 r5 = (kotlinx.coroutines.flow.internal.ChannelFlowKt$withContextUndispatched$1) r5
            java.lang.Object r5 = r0.L$6
            java.lang.Object r6 = r0.L$4
            kotlin.coroutines.CoroutineContext r6 = (kotlin.coroutines.CoroutineContext) r6
            java.lang.Object r7 = r0.L$3
            kotlin.jvm.functions.Function2 r7 = (kotlin.jvm.functions.Function2) r7
            java.lang.Object r7 = r0.L$0
            kotlin.coroutines.CoroutineContext r7 = (kotlin.coroutines.CoroutineContext) r7
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L3a
            r7 = r5
            r5 = r6
            goto L85
        L3a:
            r7 = move-exception
            r4 = r7
            r7 = r5
            r5 = r6
            r6 = r4
            goto L89
        L40:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L46:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r7 = kotlinx.coroutines.internal.InlineList.updateThreadContext(r5, r7)
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L75
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L75
            r0.L$2 = r2     // Catch: java.lang.Throwable -> L75
            r0.L$3 = r8     // Catch: java.lang.Throwable -> L75
            r0.L$4 = r5     // Catch: java.lang.Throwable -> L75
            r0.L$5 = r2     // Catch: java.lang.Throwable -> L75
            r0.L$6 = r7     // Catch: java.lang.Throwable -> L75
            r0.L$7 = r0     // Catch: java.lang.Throwable -> L75
            r9 = 0
            r0.I$0 = r9     // Catch: java.lang.Throwable -> L75
            r0.I$1 = r9     // Catch: java.lang.Throwable -> L75
            r0.label = r3     // Catch: java.lang.Throwable -> L75
            kotlinx.coroutines.flow.internal.StackFrameContinuation r9 = new kotlinx.coroutines.flow.internal.StackFrameContinuation     // Catch: java.lang.Throwable -> L75
            r9.<init>(r0, r5)     // Catch: java.lang.Throwable -> L75
            boolean r0 = androidx.compose.ui.Modifier.CC.m182m(r8)     // Catch: java.lang.Throwable -> L75
            if (r0 != 0) goto L77
            java.lang.Object r6 = kotlin.text.UStringsKt.wrapWithContinuationImpl(r8, r6, r9)     // Catch: java.lang.Throwable -> L75
        L73:
            r9 = r6
            goto L80
        L75:
            r6 = move-exception
            goto L89
        L77:
            r0 = 2
            kotlin.jvm.internal.TypeIntrinsics.beforeCheckcastToFunctionOfArity(r0, r8)     // Catch: java.lang.Throwable -> L75
            java.lang.Object r6 = r8.invoke(r6, r9)     // Catch: java.lang.Throwable -> L75
            goto L73
        L80:
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r6) goto L85
            return r6
        L85:
            kotlinx.coroutines.internal.InlineList.restoreThreadContext(r5, r7)
            return r9
        L89:
            kotlinx.coroutines.internal.InlineList.restoreThreadContext(r5, r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlowKt.withContextUndispatched(kotlin.coroutines.CoroutineContext, java.lang.Object, java.lang.Object, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
