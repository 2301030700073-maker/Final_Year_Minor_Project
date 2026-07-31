package androidx.compose.foundation.text.selection;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function2 $block;
    public Mutex L$0;
    public PlatformSelectionBehaviorsImpl L$1;
    public int label;
    public final /* synthetic */ PlatformSelectionBehaviorsImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.this$0 = platformSelectionBehaviorsImpl;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(this.this$0, this.$block, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x003d, code lost:
    
        if (r10.lock(r9) == r5) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0086 A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r3v6, types: [kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            int r0 = r9.label
            r1 = 3
            r2 = 2
            r3 = 1
            r4 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 == 0) goto L2c
            if (r0 == r3) goto L23
            if (r0 == r2) goto L1a
            if (r0 != r1) goto L14
            kotlin.ResultKt.throwOnFailure(r10)
            return r10
        L14:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r4
        L1a:
            kotlinx.coroutines.sync.Mutex r0 = r9.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L20
            goto L66
        L20:
            r9 = move-exception
            goto L87
        L23:
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl r0 = r9.L$1
            kotlinx.coroutines.sync.Mutex r3 = r9.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r3
            goto L40
        L2c:
            kotlin.ResultKt.throwOnFailure(r10)
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl r0 = r9.this$0
            kotlinx.coroutines.sync.MutexImpl r10 = r0.mutex
            r9.L$0 = r10
            r9.L$1 = r0
            r9.label = r3
            java.lang.Object r3 = r10.lock(r9)
            if (r3 != r5) goto L40
            goto L85
        L40:
            android.view.textclassifier.TextClassifier r3 = r0.textClassificationSession     // Catch: java.lang.Throwable -> L4b
            if (r3 == 0) goto L4e
            boolean r6 = r3.isDestroyed()     // Catch: java.lang.Throwable -> L4b
            if (r6 == 0) goto L6b
            goto L4e
        L4b:
            r9 = move-exception
            r0 = r10
            goto L87
        L4e:
            androidx.camera.camera2.pipe.core.WakeLock$release$2 r3 = new androidx.camera.camera2.pipe.core.WakeLock$release$2     // Catch: java.lang.Throwable -> L4b
            r6 = 6
            r3.<init>(r0, r4, r6)     // Catch: java.lang.Throwable -> L4b
            r9.L$0 = r10     // Catch: java.lang.Throwable -> L4b
            r9.L$1 = r4     // Catch: java.lang.Throwable -> L4b
            r9.label = r2     // Catch: java.lang.Throwable -> L4b
            r6 = 300(0x12c, double:1.48E-321)
            java.lang.Object r0 = kotlinx.coroutines.JobKt.withTimeoutOrNull(r6, r3, r9)     // Catch: java.lang.Throwable -> L4b
            if (r0 != r5) goto L63
            goto L85
        L63:
            r8 = r0
            r0 = r10
            r10 = r8
        L66:
            android.view.textclassifier.TextClassifier r3 = androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0.m94m(r10)     // Catch: java.lang.Throwable -> L20
            r10 = r0
        L6b:
            r10.unlock(r4)
            androidx.compose.material.ripple.RippleNode$onAttach$1 r10 = new androidx.compose.material.ripple.RippleNode$onAttach$1
            kotlin.jvm.functions.Function2 r0 = r9.$block
            r2 = 25
            r10.<init>(r3, r0, r4, r2)
            r9.L$0 = r4
            r9.L$1 = r4
            r9.label = r1
            r0 = 200(0xc8, double:9.9E-322)
            java.lang.Object r9 = kotlinx.coroutines.JobKt.withTimeoutOrNull(r0, r10, r9)
            if (r9 != r5) goto L86
        L85:
            return r5
        L86:
            return r9
        L87:
            r0.unlock(r4)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
