package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.internal.Segment;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0048, code lost:
    
        setElementLazy(r7, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x004b, code lost:
    
        if (r1 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x004d, code lost:
    
        r4.getClass();
        r6 = r4.onUndeliveredElement;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0052, code lost:
    
        if (r6 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0054, code lost:
    
        kotlinx.coroutines.internal.InlineList.callUndeliveredElement(r6, r0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0057, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    @Override // kotlinx.coroutines.internal.Segment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCancellation(int r7, kotlin.coroutines.CoroutineContext r8) {
        /*
            r6 = this;
            int r0 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            if (r7 < r0) goto L6
            r1 = 1
            goto L7
        L6:
            r1 = 0
        L7:
            if (r1 == 0) goto La
            int r7 = r7 - r0
        La:
            int r0 = r7 * 2
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r6.data
            java.lang.Object r0 = r2.get(r0)
        L12:
            java.lang.Object r2 = r6.getState$kotlinx_coroutines_core(r7)
            boolean r3 = r2 instanceof kotlinx.coroutines.Waiter
            kotlinx.coroutines.channels.BufferedChannel r4 = r6._channel
            r5 = 0
            if (r3 != 0) goto L58
            boolean r3 = r2 instanceof kotlinx.coroutines.channels.WaiterEB
            if (r3 == 0) goto L22
            goto L58
        L22:
            com.fsck.k9.mailstore.LocalStore$8 r3 = kotlinx.coroutines.channels.BufferedChannelKt.INTERRUPTED_SEND
            if (r2 == r3) goto L48
            com.fsck.k9.mailstore.LocalStore$8 r3 = kotlinx.coroutines.channels.BufferedChannelKt.INTERRUPTED_RCV
            if (r2 != r3) goto L2b
            goto L48
        L2b:
            com.fsck.k9.mailstore.LocalStore$8 r3 = kotlinx.coroutines.channels.BufferedChannelKt.RESUMING_BY_EB
            if (r2 == r3) goto L12
            com.fsck.k9.mailstore.LocalStore$8 r3 = kotlinx.coroutines.channels.BufferedChannelKt.RESUMING_BY_RCV
            if (r2 != r3) goto L34
            goto L12
        L34:
            com.fsck.k9.mailstore.LocalStore$8 r6 = kotlinx.coroutines.channels.BufferedChannelKt.DONE_RCV
            if (r2 == r6) goto L79
            com.fsck.k9.mailstore.LocalStore$8 r6 = kotlinx.coroutines.channels.BufferedChannelKt.BUFFERED
            if (r2 != r6) goto L3d
            goto L79
        L3d:
            com.fsck.k9.mailstore.LocalStore$8 r6 = kotlinx.coroutines.channels.BufferedChannelKt.CHANNEL_CLOSED
            if (r2 != r6) goto L42
            goto L79
        L42:
            java.lang.String r6 = "unexpected state: "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r2, r6)
            return
        L48:
            r6.setElementLazy(r7, r5)
            if (r1 == 0) goto L79
            r4.getClass()
            kotlin.jvm.functions.Function1 r6 = r4.onUndeliveredElement
            if (r6 == 0) goto L79
            kotlinx.coroutines.internal.InlineList.callUndeliveredElement(r6, r0, r8)
            return
        L58:
            if (r1 == 0) goto L5d
            com.fsck.k9.mailstore.LocalStore$8 r3 = kotlinx.coroutines.channels.BufferedChannelKt.INTERRUPTED_SEND
            goto L5f
        L5d:
            com.fsck.k9.mailstore.LocalStore$8 r3 = kotlinx.coroutines.channels.BufferedChannelKt.INTERRUPTED_RCV
        L5f:
            boolean r2 = r6.casState$kotlinx_coroutines_core(r7, r2, r3)
            if (r2 == 0) goto L12
            r6.setElementLazy(r7, r5)
            r2 = r1 ^ 1
            r6.onCancelledRequest(r7, r2)
            if (r1 == 0) goto L79
            r4.getClass()
            kotlin.jvm.functions.Function1 r6 = r4.onUndeliveredElement
            if (r6 == 0) goto L79
            kotlinx.coroutines.internal.InlineList.callUndeliveredElement(r6, r0, r8)
        L79:
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
