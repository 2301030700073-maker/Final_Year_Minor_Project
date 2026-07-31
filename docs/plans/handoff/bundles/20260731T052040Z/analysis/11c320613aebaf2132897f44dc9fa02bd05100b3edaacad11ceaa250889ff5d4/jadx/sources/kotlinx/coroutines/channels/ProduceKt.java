package kotlinx.coroutines.channels;

import com.google.android.exoplayer2.util.Log;
import kotlinx.coroutines.channels.Channel;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ProduceKt {
    public static BufferedChannel Channel$default(int i, int i2, BufferOverflow bufferOverflow) {
        int i3 = i2 & 2;
        BufferOverflow bufferOverflow2 = BufferOverflow.SUSPEND;
        if (i3 != 0) {
            bufferOverflow = bufferOverflow2;
        }
        if (i == -2) {
            if (bufferOverflow != bufferOverflow2) {
                return new ConflatedBufferedChannel(1, bufferOverflow);
            }
            Channel.Factory.getClass();
            return new BufferedChannel(Channel.Factory.CHANNEL_DEFAULT_CAPACITY);
        }
        if (i != -1) {
            return i != 0 ? i != Integer.MAX_VALUE ? bufferOverflow == bufferOverflow2 ? new BufferedChannel(i) : new ConflatedBufferedChannel(i, bufferOverflow) : new BufferedChannel(Log.LOG_LEVEL_OFF) : bufferOverflow == bufferOverflow2 ? new BufferedChannel(0) : new ConflatedBufferedChannel(1, bufferOverflow);
        }
        if (bufferOverflow == bufferOverflow2) {
            return new ConflatedBufferedChannel(1, BufferOverflow.DROP_OLDEST);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitClose(kotlinx.coroutines.channels.ProducerScope r4, kotlin.jvm.functions.Function0 r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = (kotlinx.coroutines.channels.ProduceKt$awaitClose$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L37
            if (r1 != r3) goto L31
            java.lang.Object r4 = r0.L$1
            r5 = r4
            kotlin.jvm.functions.Function0 r5 = (kotlin.jvm.functions.Function0) r5
            java.lang.Object r4 = r0.L$0
            kotlinx.coroutines.channels.ProducerScope r4 = (kotlinx.coroutines.channels.ProducerScope) r4
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2f
            goto L71
        L2f:
            r4 = move-exception
            goto L77
        L31:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r2
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.coroutines.CoroutineContext r6 = r0.getContext()
            kotlinx.coroutines.Job$Key r1 = kotlinx.coroutines.Job.Key.$$INSTANCE
            kotlin.coroutines.CoroutineContext$Element r6 = r6.get(r1)
            if (r6 != r4) goto L7b
            r0.L$0 = r4     // Catch: java.lang.Throwable -> L2f
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L2f
            r6 = 0
            r0.I$0 = r6     // Catch: java.lang.Throwable -> L2f
            r0.label = r3     // Catch: java.lang.Throwable -> L2f
            kotlinx.coroutines.CancellableContinuationImpl r6 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L2f
            kotlin.coroutines.Continuation r0 = kotlin.text.UStringsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L2f
            r6.<init>(r3, r0)     // Catch: java.lang.Throwable -> L2f
            r6.initCancellability()     // Catch: java.lang.Throwable -> L2f
            coil3.network.okhttp.internal.CallsKt$await$2$1 r0 = new coil3.network.okhttp.internal.CallsKt$await$2$1     // Catch: java.lang.Throwable -> L2f
            r1 = 3
            r0.<init>(r6, r1)     // Catch: java.lang.Throwable -> L2f
            kotlinx.coroutines.channels.ProducerCoroutine r4 = (kotlinx.coroutines.channels.ProducerCoroutine) r4     // Catch: java.lang.Throwable -> L2f
            kotlinx.coroutines.channels.BufferedChannel r4 = r4._channel     // Catch: java.lang.Throwable -> L2f
            r4.invokeOnClose(r0)     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r4 = r6.getResult()     // Catch: java.lang.Throwable -> L2f
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r6) goto L71
            return r6
        L71:
            r5.invoke()
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L77:
            r5.invoke()
            throw r4
        L7b:
            java.lang.String r4 = "awaitClose() can only be invoked from the producer context"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ProduceKt.awaitClose(kotlinx.coroutines.channels.ProducerScope, kotlin.jvm.functions.Function0, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
