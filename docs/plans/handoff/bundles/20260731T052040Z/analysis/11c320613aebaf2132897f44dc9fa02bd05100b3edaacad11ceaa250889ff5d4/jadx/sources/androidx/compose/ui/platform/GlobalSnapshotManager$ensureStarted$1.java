package androidx.compose.ui.platform;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GlobalSnapshotManager$ensureStarted$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Channel $channel;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalSnapshotManager$ensureStarted$1(Channel channel, Continuation continuation) {
        super(2, continuation);
        this.$channel = channel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new GlobalSnapshotManager$ensureStarted$1(this.$channel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((GlobalSnapshotManager$ensureStarted$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0034 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003d A[Catch: all -> 0x0016, TryCatch #1 {all -> 0x0016, blocks: (B:6:0x0012, B:7:0x0035, B:9:0x003d, B:10:0x004b, B:17:0x0059, B:19:0x0028, B:23:0x005c, B:26:0x0061, B:27:0x0062, B:34:0x0023, B:12:0x004c, B:14:0x0052), top: B:2:0x0006, inners: #0 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0032 -> B:7:0x0035). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 != r3) goto L18
            java.lang.Object r1 = r7.L$1
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r1 = (kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator) r1
            java.lang.Object r4 = r7.L$0
            kotlinx.coroutines.channels.Channel r4 = (kotlinx.coroutines.channels.Channel) r4
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L16
            goto L35
        L16:
            r7 = move-exception
            goto L69
        L18:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            return r2
        L1e:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.Channel r4 = r7.$channel
            kotlinx.coroutines.channels.BufferedChannel$BufferedChannelIterator r8 = r4.iterator()     // Catch: java.lang.Throwable -> L16
            r1 = r8
        L28:
            r7.L$0 = r4     // Catch: java.lang.Throwable -> L16
            r7.L$1 = r1     // Catch: java.lang.Throwable -> L16
            r7.label = r3     // Catch: java.lang.Throwable -> L16
            java.lang.Object r8 = r1.hasNext(r7)     // Catch: java.lang.Throwable -> L16
            if (r8 != r0) goto L35
            return r0
        L35:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L16
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L16
            if (r8 == 0) goto L63
            java.lang.Object r8 = r1.next()     // Catch: java.lang.Throwable -> L16
            kotlin.Unit r8 = (kotlin.Unit) r8     // Catch: java.lang.Throwable -> L16
            java.util.concurrent.atomic.AtomicBoolean r8 = androidx.compose.ui.platform.GlobalSnapshotManager.sent     // Catch: java.lang.Throwable -> L16
            r5 = 0
            r8.set(r5)     // Catch: java.lang.Throwable -> L16
            java.lang.Object r8 = androidx.compose.runtime.snapshots.SnapshotKt.lock     // Catch: java.lang.Throwable -> L16
            monitor-enter(r8)     // Catch: java.lang.Throwable -> L16
            androidx.compose.runtime.snapshots.GlobalSnapshot r6 = androidx.compose.runtime.snapshots.SnapshotKt.globalSnapshot     // Catch: java.lang.Throwable -> L60
            androidx.collection.MutableScatterSet r6 = r6.modified     // Catch: java.lang.Throwable -> L60
            if (r6 == 0) goto L59
            boolean r6 = r6.isNotEmpty()     // Catch: java.lang.Throwable -> L60
            if (r6 != r3) goto L59
            r5 = r3
        L59:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L16
            if (r5 == 0) goto L28
            androidx.compose.runtime.snapshots.SnapshotKt.access$advanceGlobalSnapshot()     // Catch: java.lang.Throwable -> L16
            goto L28
        L60:
            r7 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L16
            throw r7     // Catch: java.lang.Throwable -> L16
        L63:
            r4.cancel(r2)
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L69:
            throw r7     // Catch: java.lang.Throwable -> L6a
        L6a:
            r8 = move-exception
            boolean r0 = r7 instanceof java.util.concurrent.CancellationException
            if (r0 == 0) goto L72
            r2 = r7
            java.util.concurrent.CancellationException r2 = (java.util.concurrent.CancellationException) r2
        L72:
            if (r2 != 0) goto L7e
            java.lang.String r0 = "Channel was consumed, consumer had failed"
            java.util.concurrent.CancellationException r2 = new java.util.concurrent.CancellationException
            r2.<init>(r0)
            r2.initCause(r7)
        L7e:
            r4.cancel(r2)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
