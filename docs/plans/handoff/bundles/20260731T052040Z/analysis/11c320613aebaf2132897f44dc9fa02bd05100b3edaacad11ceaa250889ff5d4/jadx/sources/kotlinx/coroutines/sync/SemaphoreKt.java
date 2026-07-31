package kotlinx.coroutines.sync;

import com.google.common.base.Joiner;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SemaphoreKt {
    public static final int MAX_SPIN_CYCLES = InlineList.systemProp$default(100, 12, "kotlinx.coroutines.semaphore.maxSpinCycles");
    public static final Joiner PERMIT = new Joiner("PERMIT", 2);
    public static final Joiner TAKEN = new Joiner("TAKEN", 2);
    public static final Joiner BROKEN = new Joiner("BROKEN", 2);
    public static final Joiner CANCELLED = new Joiner("CANCELLED", 2);
    public static final int SEGMENT_SIZE = InlineList.systemProp$default(16, 12, "kotlinx.coroutines.semaphore.segmentSize");
}
