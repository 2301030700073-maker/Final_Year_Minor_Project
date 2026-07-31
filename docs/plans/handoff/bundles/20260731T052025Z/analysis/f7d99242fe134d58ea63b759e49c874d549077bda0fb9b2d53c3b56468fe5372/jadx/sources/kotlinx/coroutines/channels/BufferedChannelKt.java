package kotlinx.coroutines.channels;

import com.fsck.k9.mailstore.LocalStore;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BufferedChannelKt {
    public static final LocalStore.AnonymousClass8 BUFFERED;
    public static final LocalStore.AnonymousClass8 CHANNEL_CLOSED;
    public static final LocalStore.AnonymousClass8 CLOSE_HANDLER_CLOSED;
    public static final LocalStore.AnonymousClass8 CLOSE_HANDLER_INVOKED;
    public static final LocalStore.AnonymousClass8 DONE_RCV;
    public static final LocalStore.AnonymousClass8 FAILED;
    public static final LocalStore.AnonymousClass8 INTERRUPTED_RCV;
    public static final LocalStore.AnonymousClass8 INTERRUPTED_SEND;
    public static final LocalStore.AnonymousClass8 IN_BUFFER;
    public static final LocalStore.AnonymousClass8 NO_CLOSE_CAUSE;
    public static final LocalStore.AnonymousClass8 NO_RECEIVE_RESULT;
    public static final LocalStore.AnonymousClass8 POISONED;
    public static final LocalStore.AnonymousClass8 RESUMING_BY_EB;
    public static final LocalStore.AnonymousClass8 RESUMING_BY_RCV;
    public static final LocalStore.AnonymousClass8 SUSPEND;
    public static final LocalStore.AnonymousClass8 SUSPEND_NO_WAITER;
    public static final ChannelSegment NULL_SEGMENT = new ChannelSegment(-1, null, null, 0);
    public static final int SEGMENT_SIZE = InlineList.systemProp$default(32, "kotlinx.coroutines.bufferedChannel.segmentSize", 12);
    public static final int EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS = InlineList.systemProp$default(10000, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 12);

    static {
        int i = 4;
        boolean z = false;
        BUFFERED = new LocalStore.AnonymousClass8(i, "BUFFERED", z);
        IN_BUFFER = new LocalStore.AnonymousClass8(i, "SHOULD_BUFFER", z);
        RESUMING_BY_RCV = new LocalStore.AnonymousClass8(i, "S_RESUMING_BY_RCV", z);
        RESUMING_BY_EB = new LocalStore.AnonymousClass8(i, "RESUMING_BY_EB", z);
        POISONED = new LocalStore.AnonymousClass8(i, "POISONED", z);
        DONE_RCV = new LocalStore.AnonymousClass8(i, "DONE_RCV", z);
        INTERRUPTED_SEND = new LocalStore.AnonymousClass8(i, "INTERRUPTED_SEND", z);
        INTERRUPTED_RCV = new LocalStore.AnonymousClass8(i, "INTERRUPTED_RCV", z);
        CHANNEL_CLOSED = new LocalStore.AnonymousClass8(i, "CHANNEL_CLOSED", z);
        SUSPEND = new LocalStore.AnonymousClass8(i, "SUSPEND", z);
        SUSPEND_NO_WAITER = new LocalStore.AnonymousClass8(i, "SUSPEND_NO_WAITER", z);
        FAILED = new LocalStore.AnonymousClass8(i, "FAILED", z);
        NO_RECEIVE_RESULT = new LocalStore.AnonymousClass8(i, "NO_RECEIVE_RESULT", z);
        CLOSE_HANDLER_CLOSED = new LocalStore.AnonymousClass8(i, "CLOSE_HANDLER_CLOSED", z);
        CLOSE_HANDLER_INVOKED = new LocalStore.AnonymousClass8(i, "CLOSE_HANDLER_INVOKED", z);
        NO_CLOSE_CAUSE = new LocalStore.AnonymousClass8(i, "NO_CLOSE_CAUSE", z);
    }

    public static final boolean tryResume0(CancellableContinuation cancellableContinuation, Object obj, Function3 function3) {
        LocalStore.AnonymousClass8 tryResume = cancellableContinuation.tryResume(obj, function3);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }
}
