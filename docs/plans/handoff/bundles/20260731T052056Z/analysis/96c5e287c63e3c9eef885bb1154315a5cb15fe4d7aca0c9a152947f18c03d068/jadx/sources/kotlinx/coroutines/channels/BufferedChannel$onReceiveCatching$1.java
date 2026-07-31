package kotlinx.coroutines.channels;

import _COROUTINE.ArtificialStackFramesUnsafe;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.selects.SelectImplementation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BufferedChannel$onReceiveCatching$1 extends FunctionReferenceImpl implements Function3 {
    public static final BufferedChannel$onReceiveCatching$1 INSTANCE = new BufferedChannel$onReceiveCatching$1(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        ChannelSegment channelSegment;
        BufferedChannel bufferedChannel = (BufferedChannel) obj;
        SelectImplementation selectImplementation = (SelectImplementation) obj2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.sendersAndCloseStatus$volatile$FU;
        bufferedChannel.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(bufferedChannel, BufferedChannel.receiveSegment$volatile$FU$offset);
        while (true) {
            if (bufferedChannel.isClosedForReceive()) {
                selectImplementation.internalResult = BufferedChannelKt.CHANNEL_CLOSED;
                break;
            }
            long andIncrement = BufferedChannel.receivers$volatile$FU.getAndIncrement(bufferedChannel);
            long j = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = andIncrement / j;
            int i = (int) (andIncrement % j);
            if (channelSegment2.id != j2) {
                ChannelSegment findSegmentReceive = bufferedChannel.findSegmentReceive(j2, channelSegment2);
                if (findSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = findSegmentReceive;
                }
            } else {
                channelSegment = channelSegment2;
            }
            Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i, andIncrement, selectImplementation);
            ChannelSegment channelSegment3 = channelSegment;
            if (updateCellReceive == BufferedChannelKt.SUSPEND) {
                if (selectImplementation == null) {
                    selectImplementation = null;
                }
                if (selectImplementation != null) {
                    selectImplementation.disposableHandleOrSegment = channelSegment3;
                    selectImplementation.indexInSegment = i;
                }
            } else if (updateCellReceive == BufferedChannelKt.FAILED) {
                if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment3.cleanPrev();
                }
                channelSegment2 = channelSegment3;
            } else {
                if (updateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("unexpected");
                    return null;
                }
                channelSegment3.cleanPrev();
                selectImplementation.internalResult = updateCellReceive;
            }
        }
        return Unit.INSTANCE;
    }
}
