package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SemaphoreKt {
    public static final int MAX_SPIN_CYCLES = InlineList.systemProp$default(100, 12, "kotlinx.coroutines.semaphore.maxSpinCycles");
    public static final Symbol PERMIT = new Symbol(0, "PERMIT");
    public static final Symbol TAKEN = new Symbol(0, "TAKEN");
    public static final Symbol BROKEN = new Symbol(0, "BROKEN");
    public static final Symbol CANCELLED = new Symbol(0, "CANCELLED");
    public static final int SEGMENT_SIZE = InlineList.systemProp$default(16, 12, "kotlinx.coroutines.semaphore.segmentSize");
}
