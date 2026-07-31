package androidx.compose.foundation.text.selection;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    
        if (r10.lock(r9) == r0) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0085 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r4v6, types: [kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.label
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L2c
            if (r1 == r4) goto L23
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L14
            kotlin.ResultKt.throwOnFailure(r10)
            return r10
        L14:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r5
        L1a:
            kotlinx.coroutines.sync.Mutex r1 = r9.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L20
            goto L65
        L20:
            r9 = move-exception
            goto L86
        L23:
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl r1 = r9.L$1
            kotlinx.coroutines.sync.Mutex r4 = r9.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r4
            goto L40
        L2c:
            kotlin.ResultKt.throwOnFailure(r10)
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl r1 = r9.this$0
            kotlinx.coroutines.sync.MutexImpl r10 = r1.mutex
            r9.L$0 = r10
            r9.L$1 = r1
            r9.label = r4
            java.lang.Object r4 = r10.lock(r9)
            if (r4 != r0) goto L40
            goto L84
        L40:
            android.view.textclassifier.TextClassifier r4 = r1.textClassificationSession     // Catch: java.lang.Throwable -> L4b
            if (r4 == 0) goto L4e
            boolean r6 = r4.isDestroyed()     // Catch: java.lang.Throwable -> L4b
            if (r6 == 0) goto L6a
            goto L4e
        L4b:
            r9 = move-exception
            r1 = r10
            goto L86
        L4e:
            coil3.disk.DiskLruCache$launchCleanup$1 r4 = new coil3.disk.DiskLruCache$launchCleanup$1     // Catch: java.lang.Throwable -> L4b
            r4.<init>(r3, r1, r5)     // Catch: java.lang.Throwable -> L4b
            r9.L$0 = r10     // Catch: java.lang.Throwable -> L4b
            r9.L$1 = r5     // Catch: java.lang.Throwable -> L4b
            r9.label = r3     // Catch: java.lang.Throwable -> L4b
            r6 = 300(0x12c, double:1.48E-321)
            java.lang.Object r1 = kotlinx.coroutines.AwaitKt.withTimeoutOrNull(r6, r4, r9)     // Catch: java.lang.Throwable -> L4b
            if (r1 != r0) goto L62
            goto L84
        L62:
            r8 = r1
            r1 = r10
            r10 = r8
        L65:
            android.view.textclassifier.TextClassifier r4 = androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0.m25m(r10)     // Catch: java.lang.Throwable -> L20
            r10 = r1
        L6a:
            r10.unlock(r5)
            androidx.datastore.core.SimpleActor$offer$2 r10 = new androidx.datastore.core.SimpleActor$offer$2
            kotlin.jvm.functions.Function2 r1 = r9.$block
            r3 = 16
            r10.<init>(r4, r1, r5, r3)
            r9.L$0 = r5
            r9.L$1 = r5
            r9.label = r2
            r1 = 200(0xc8, double:9.9E-322)
            java.lang.Object r9 = kotlinx.coroutines.AwaitKt.withTimeoutOrNull(r1, r10, r9)
            if (r9 != r0) goto L85
        L84:
            return r0
        L85:
            return r9
        L86:
            r1.unlock(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
