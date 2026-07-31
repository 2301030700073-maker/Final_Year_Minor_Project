package kotlinx.coroutines.channels;

import com.google.common.base.Joiner;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BufferedChannelKt {
    public static final ChannelSegment NULL_SEGMENT = new ChannelSegment(-1, null, null, 0);
    public static final int SEGMENT_SIZE = InlineList.systemProp$default(32, 12, "kotlinx.coroutines.bufferedChannel.segmentSize");
    public static final int EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS = InlineList.systemProp$default(10000, 12, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations");
    public static final Joiner BUFFERED = new Joiner("BUFFERED", 2);
    public static final Joiner IN_BUFFER = new Joiner("SHOULD_BUFFER", 2);
    public static final Joiner RESUMING_BY_RCV = new Joiner("S_RESUMING_BY_RCV", 2);
    public static final Joiner RESUMING_BY_EB = new Joiner("RESUMING_BY_EB", 2);
    public static final Joiner POISONED = new Joiner("POISONED", 2);
    public static final Joiner DONE_RCV = new Joiner("DONE_RCV", 2);
    public static final Joiner INTERRUPTED_SEND = new Joiner("INTERRUPTED_SEND", 2);
    public static final Joiner INTERRUPTED_RCV = new Joiner("INTERRUPTED_RCV", 2);
    public static final Joiner CHANNEL_CLOSED = new Joiner("CHANNEL_CLOSED", 2);
    public static final Joiner SUSPEND = new Joiner("SUSPEND", 2);
    public static final Joiner SUSPEND_NO_WAITER = new Joiner("SUSPEND_NO_WAITER", 2);
    public static final Joiner FAILED = new Joiner("FAILED", 2);
    public static final Joiner NO_RECEIVE_RESULT = new Joiner("NO_RECEIVE_RESULT", 2);
    public static final Joiner CLOSE_HANDLER_CLOSED = new Joiner("CLOSE_HANDLER_CLOSED", 2);
    public static final Joiner CLOSE_HANDLER_INVOKED = new Joiner("CLOSE_HANDLER_INVOKED", 2);
    public static final Joiner NO_CLOSE_CAUSE = new Joiner("NO_CLOSE_CAUSE", 2);

    public static final boolean tryResume0(CancellableContinuation cancellableContinuation, Object obj, Function3 function3) {
        Joiner tryResume = cancellableContinuation.tryResume(obj, function3);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }
}
