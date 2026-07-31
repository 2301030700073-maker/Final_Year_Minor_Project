package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.internal.Segment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChannelSegment extends Segment {
    public final BufferedChannel _channel;
    public final /* synthetic */ AtomicReferenceArray data;

    public ChannelSegment(long j, ChannelSegment channelSegment, BufferedChannel bufferedChannel, int i) {
        super(j, channelSegment, i);
        this._channel = bufferedChannel;
        this.data = new AtomicReferenceArray(BufferedChannelKt.SEGMENT_SIZE * 2);
    }

    public final boolean casState$kotlinx_coroutines_core(int i, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i2 = (i * 2) + 1;
        do {
            atomicReferenceArray = this.data;
            if (atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i2) == obj);
        return false;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final int getNumberOfSlots() {
        return BufferedChannelKt.SEGMENT_SIZE;
    }

    public final Object getState$kotlinx_coroutines_core(int i) {
        return this.data.get((i * 2) + 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0048, code lost:
    
        setElementLazy(r5, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x004b, code lost:
    
        if (r0 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x004d, code lost:
    
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0050, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCancellation(int r5, kotlin.coroutines.CoroutineContext r6) {
        /*
            r4 = this;
            int r6 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            if (r5 < r6) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r5 = r5 - r6
        La:
            int r6 = r5 * 2
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r4.data
            r1.get(r6)
        L11:
            java.lang.Object r6 = r4.getState$kotlinx_coroutines_core(r5)
            boolean r1 = r6 instanceof kotlinx.coroutines.Waiter
            kotlinx.coroutines.channels.BufferedChannel r2 = r4._channel
            r3 = 0
            if (r1 != 0) goto L51
            boolean r1 = r6 instanceof kotlinx.coroutines.channels.WaiterEB
            if (r1 == 0) goto L21
            goto L51
        L21:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.INTERRUPTED_SEND
            if (r6 == r1) goto L48
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.INTERRUPTED_RCV
            if (r6 != r1) goto L2a
            goto L48
        L2a:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.RESUMING_BY_EB
            if (r6 == r1) goto L11
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.RESUMING_BY_RCV
            if (r6 != r1) goto L33
            goto L11
        L33:
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.DONE_RCV
            if (r6 == r4) goto L6b
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r6 != r4) goto L3c
            goto L6b
        L3c:
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.channels.BufferedChannelKt.CHANNEL_CLOSED
            if (r6 != r4) goto L41
            goto L6b
        L41:
            java.lang.String r4 = "unexpected state: "
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$8(r4, r6)
            return
        L48:
            r4.setElementLazy(r5, r3)
            if (r0 == 0) goto L6b
            r2.getClass()
            return
        L51:
            if (r0 == 0) goto L56
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.INTERRUPTED_SEND
            goto L58
        L56:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.channels.BufferedChannelKt.INTERRUPTED_RCV
        L58:
            boolean r6 = r4.casState$kotlinx_coroutines_core(r5, r6, r1)
            if (r6 == 0) goto L11
            r4.setElementLazy(r5, r3)
            r6 = r0 ^ 1
            r4.onCancelledRequest(r5, r6)
            if (r0 == 0) goto L6b
            r2.getClass()
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelSegment.onCancellation(int, kotlin.coroutines.CoroutineContext):void");
    }

    public final void onCancelledRequest(int i, boolean z) {
        if (z) {
            BufferedChannel bufferedChannel = this._channel;
            bufferedChannel.getClass();
            bufferedChannel.waitExpandBufferCompletion$kotlinx_coroutines_core((this.id * BufferedChannelKt.SEGMENT_SIZE) + i);
        }
        onSlotCleaned();
    }

    public final void setElementLazy(int i, Object obj) {
        this.data.set(i * 2, obj);
    }

    public final void setState$kotlinx_coroutines_core(int i, Object obj) {
        this.data.set((i * 2) + 1, obj);
    }
}
