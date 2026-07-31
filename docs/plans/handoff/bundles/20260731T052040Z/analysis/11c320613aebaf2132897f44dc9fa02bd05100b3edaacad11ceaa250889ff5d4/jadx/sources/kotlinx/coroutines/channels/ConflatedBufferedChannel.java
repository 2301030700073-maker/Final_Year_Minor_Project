package kotlinx.coroutines.channels;

import androidx.compose.ui.Modifier;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.channels.ChannelResult;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ConflatedBufferedChannel extends BufferedChannel {
    public final BufferOverflow onBufferOverflow;

    public ConflatedBufferedChannel(int i, BufferOverflow bufferOverflow) {
        super(i);
        this.onBufferOverflow = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m$1(Reflection.getOrCreateKotlinClass(BufferedChannel.class).getSimpleName(), " instead", "This implementation does not support suspension for senders, use ");
            throw null;
        }
        if (i >= 1) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("Buffered channel capacity must be at least 1, but ", i, " was specified"));
        throw null;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final boolean isConflatedDropOldest() {
        return this.onBufferOverflow == BufferOverflow.DROP_OLDEST;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object send(Object obj, Continuation continuation) {
        if (m693trySendImplMj0NB7M(obj, true) instanceof ChannelResult.Closed) {
            throw getSendException();
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public final Object mo691trySendJP2dKIU(Object obj) {
        return m693trySendImplMj0NB7M(obj, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b5, code lost:
    
        return r8;
     */
    /* renamed from: trySendImpl-Mj0NB7M, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m693trySendImplMj0NB7M(java.lang.Object r16, boolean r17) {
        /*
            r15 = this;
            kotlinx.coroutines.channels.BufferOverflow r1 = r15.onBufferOverflow
            kotlinx.coroutines.channels.BufferOverflow r2 = kotlinx.coroutines.channels.BufferOverflow.DROP_LATEST
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            if (r1 != r2) goto L17
            java.lang.Object r0 = super.mo691trySendJP2dKIU(r16)
            boolean r1 = r0 instanceof kotlinx.coroutines.channels.ChannelResult.Failed
            if (r1 == 0) goto L16
            boolean r1 = r0 instanceof kotlinx.coroutines.channels.ChannelResult.Closed
            if (r1 == 0) goto L15
            goto L16
        L15:
            return r8
        L16:
            return r0
        L17:
            com.google.common.base.Joiner r6 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.channels.BufferedChannel.sendSegment$volatile$FU
            java.lang.Object r1 = r1.get(r15)
            kotlinx.coroutines.channels.ChannelSegment r1 = (kotlinx.coroutines.channels.ChannelSegment) r1
        L21:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = kotlinx.coroutines.channels.BufferedChannel.sendersAndCloseStatus$volatile$FU
            long r2 = r2.getAndIncrement(r15)
            r4 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r4 = r4 & r2
            r7 = 0
            boolean r7 = r15.isClosed(r2, r7)
            int r9 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r10 = (long) r9
            long r2 = r4 / r10
            long r12 = r4 % r10
            int r12 = (int) r12
            long r13 = r1.id
            int r13 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r13 == 0) goto L53
            kotlinx.coroutines.channels.ChannelSegment r2 = r15.findSegmentSend(r2, r1)
            if (r2 != 0) goto L52
            if (r7 == 0) goto L21
            java.lang.Throwable r0 = r15.getSendException()
            kotlinx.coroutines.channels.ChannelResult$Closed r1 = new kotlinx.coroutines.channels.ChannelResult$Closed
            r1.<init>(r0)
            return r1
        L52:
            r1 = r2
        L53:
            r0 = r15
            r3 = r16
            r2 = r12
            int r12 = kotlinx.coroutines.channels.BufferedChannel.access$updateCellSend(r0, r1, r2, r3, r4, r6, r7)
            if (r12 == 0) goto Lb6
            r3 = 1
            if (r12 == r3) goto Lb5
            r3 = 2
            r13 = 0
            if (r12 == r3) goto L90
            r2 = 3
            if (r12 == r2) goto L89
            r2 = 4
            if (r12 == r2) goto L72
            r2 = 5
            if (r12 == r2) goto L6e
            goto L21
        L6e:
            r1.cleanPrev()
            goto L21
        L72:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = kotlinx.coroutines.channels.BufferedChannel.receivers$volatile$FU
            long r2 = r2.get(r15)
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 >= 0) goto L7f
            r1.cleanPrev()
        L7f:
            java.lang.Throwable r0 = r15.getSendException()
            kotlinx.coroutines.channels.ChannelResult$Closed r1 = new kotlinx.coroutines.channels.ChannelResult$Closed
            r1.<init>(r0)
            return r1
        L89:
            java.lang.String r0 = "unexpected"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r0)
            return r13
        L90:
            if (r7 == 0) goto L9f
            r1.onSlotCleaned()
            java.lang.Throwable r0 = r15.getSendException()
            kotlinx.coroutines.channels.ChannelResult$Closed r1 = new kotlinx.coroutines.channels.ChannelResult$Closed
            r1.<init>(r0)
            return r1
        L9f:
            boolean r3 = r6 instanceof kotlinx.coroutines.Waiter
            if (r3 == 0) goto La6
            r13 = r6
            kotlinx.coroutines.Waiter r13 = (kotlinx.coroutines.Waiter) r13
        La6:
            if (r13 == 0) goto Lad
            int r12 = r2 + r9
            r13.invokeOnCancellation(r1, r12)
        Lad:
            long r3 = r1.id
            long r3 = r3 * r10
            long r1 = (long) r2
            long r3 = r3 + r1
            r15.dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(r3)
        Lb5:
            return r8
        Lb6:
            r1.cleanPrev()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ConflatedBufferedChannel.m693trySendImplMj0NB7M(java.lang.Object, boolean):java.lang.Object");
    }
}
