package androidx.compose.runtime;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function0 $block;
    final /* synthetic */ SnapshotFlowManager $externalManager;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(SnapshotFlowManager snapshotFlowManager, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.$externalManager = snapshotFlowManager;
        this.$block = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 = new SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(this.$externalManager, this.$block, continuation);
        snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1.L$0 = obj;
        return snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ((SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0090 A[Catch: all -> 0x0022, TRY_LEAVE, TryCatch #0 {all -> 0x0022, blocks: (B:11:0x0039, B:12:0x0084, B:14:0x0073, B:18:0x0090, B:23:0x001e), top: B:2:0x0008 }] */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.properties.ObservableProperty] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object, kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r3v9, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.compose.runtime.SnapshotFlowManager, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v4, types: [androidx.compose.runtime.SnapshotFlowManager, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x008e -> B:14:0x0073). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00a1 -> B:14:0x0073). Please report as a decompilation issue!!! */
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
            if (r0 == 0) goto L3d
            if (r0 == r3) goto L10
            if (r0 == r2) goto L2b
            if (r0 != r1) goto L25
        L10:
            java.lang.Object r0 = r9.L$3
            java.lang.Object r3 = r9.L$2
            kotlinx.coroutines.channels.Channel r3 = (kotlinx.coroutines.channels.Channel) r3
            java.lang.Object r6 = r9.L$1
            androidx.compose.runtime.SnapshotFlowManager r6 = (androidx.compose.runtime.SnapshotFlowManager) r6
            java.lang.Object r7 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L22
            goto L73
        L22:
            r10 = move-exception
            goto La6
        L25:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r9)
            return r4
        L2b:
            java.lang.Object r0 = r9.L$3
            java.lang.Object r3 = r9.L$2
            kotlinx.coroutines.channels.Channel r3 = (kotlinx.coroutines.channels.Channel) r3
            java.lang.Object r6 = r9.L$1
            androidx.compose.runtime.SnapshotFlowManager r6 = (androidx.compose.runtime.SnapshotFlowManager) r6
            java.lang.Object r7 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L22
            goto L84
        L3d:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            r7 = r10
            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
            androidx.compose.runtime.SnapshotFlowManager r10 = r9.$externalManager
            if (r10 != 0) goto L55
            androidx.compose.runtime.SnapshotFlowManager r10 = new androidx.compose.runtime.SnapshotFlowManager
            r10.<init>()
            androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager r0 = new androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager
            r0.<init>()
            r10.managerImpl = r0
        L55:
            r6 = r10
            r10 = 6
            kotlinx.coroutines.channels.BufferedChannel r10 = kotlinx.coroutines.channels.ProduceKt.Channel$default(r3, r10, r4)
            kotlin.jvm.functions.Function0 r0 = r9.$block     // Catch: java.lang.Throwable -> La3
            java.lang.Object r0 = r6.runAndWatch$runtime(r10, r0)     // Catch: java.lang.Throwable -> La3
            r9.L$0 = r7     // Catch: java.lang.Throwable -> La3
            r9.L$1 = r6     // Catch: java.lang.Throwable -> La3
            r9.L$2 = r10     // Catch: java.lang.Throwable -> La3
            r9.L$3 = r0     // Catch: java.lang.Throwable -> La3
            r9.label = r3     // Catch: java.lang.Throwable -> La3
            java.lang.Object r3 = r7.emit(r0, r9)     // Catch: java.lang.Throwable -> La3
            if (r3 != r5) goto L72
            goto La0
        L72:
            r3 = r10
        L73:
            r9.L$0 = r7     // Catch: java.lang.Throwable -> L22
            r9.L$1 = r6     // Catch: java.lang.Throwable -> L22
            r9.L$2 = r3     // Catch: java.lang.Throwable -> L22
            r9.L$3 = r0     // Catch: java.lang.Throwable -> L22
            r9.label = r2     // Catch: java.lang.Throwable -> L22
            java.lang.Object r10 = r3.receive(r9)     // Catch: java.lang.Throwable -> L22
            if (r10 != r5) goto L84
            goto La0
        L84:
            kotlin.jvm.functions.Function0 r10 = r9.$block     // Catch: java.lang.Throwable -> L22
            java.lang.Object r10 = r6.runAndWatch$runtime(r3, r10)     // Catch: java.lang.Throwable -> L22
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r10, r0)     // Catch: java.lang.Throwable -> L22
            if (r8 != 0) goto L73
            r9.L$0 = r7     // Catch: java.lang.Throwable -> L22
            r9.L$1 = r6     // Catch: java.lang.Throwable -> L22
            r9.L$2 = r3     // Catch: java.lang.Throwable -> L22
            r9.L$3 = r10     // Catch: java.lang.Throwable -> L22
            r9.label = r1     // Catch: java.lang.Throwable -> L22
            java.lang.Object r0 = r7.emit(r10, r9)     // Catch: java.lang.Throwable -> L22
            if (r0 != r5) goto La1
        La0:
            return r5
        La1:
            r0 = r10
            goto L73
        La3:
            r0 = move-exception
            r3 = r10
            r10 = r0
        La6:
            kotlin.properties.ObservableProperty r0 = r6.managerImpl
            if (r0 == 0) goto Lad
            r0.reportSnapshotFlowCancellation$runtime(r3)
        Lad:
            androidx.compose.runtime.SnapshotFlowManager r9 = r9.$externalManager
            if (r9 != 0) goto Lc0
            kotlin.properties.ObservableProperty r9 = r6.managerImpl
            if (r9 == 0) goto Lb6
            goto Lbb
        Lb6:
            java.lang.String r0 = "Called dispose on a manager that has been disposed of"
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r0)
        Lbb:
            r9.dispose$runtime()
            r6.managerImpl = r4
        Lc0:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
