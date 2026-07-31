package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BufferedChannelKt {
    public static final ChannelSegment NULL_SEGMENT = new ChannelSegment(-1, null, null, 0);
    public static final int SEGMENT_SIZE = InlineList.systemProp$default(32, 12, "kotlinx.coroutines.bufferedChannel.segmentSize");
    public static final int EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS = InlineList.systemProp$default(10000, 12, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations");
    public static final Symbol BUFFERED = new Symbol(0, "BUFFERED");
    public static final Symbol IN_BUFFER = new Symbol(0, "SHOULD_BUFFER");
    public static final Symbol RESUMING_BY_RCV = new Symbol(0, "S_RESUMING_BY_RCV");
    public static final Symbol RESUMING_BY_EB = new Symbol(0, "RESUMING_BY_EB");
    public static final Symbol POISONED = new Symbol(0, "POISONED");
    public static final Symbol DONE_RCV = new Symbol(0, "DONE_RCV");
    public static final Symbol INTERRUPTED_SEND = new Symbol(0, "INTERRUPTED_SEND");
    public static final Symbol INTERRUPTED_RCV = new Symbol(0, "INTERRUPTED_RCV");
    public static final Symbol CHANNEL_CLOSED = new Symbol(0, "CHANNEL_CLOSED");
    public static final Symbol SUSPEND = new Symbol(0, "SUSPEND");
    public static final Symbol SUSPEND_NO_WAITER = new Symbol(0, "SUSPEND_NO_WAITER");
    public static final Symbol FAILED = new Symbol(0, "FAILED");
    public static final Symbol NO_RECEIVE_RESULT = new Symbol(0, "NO_RECEIVE_RESULT");
    public static final Symbol CLOSE_HANDLER_CLOSED = new Symbol(0, "CLOSE_HANDLER_CLOSED");
    public static final Symbol CLOSE_HANDLER_INVOKED = new Symbol(0, "CLOSE_HANDLER_INVOKED");
    public static final Symbol NO_CLOSE_CAUSE = new Symbol(0, "NO_CLOSE_CAUSE");
}
