package kotlinx.coroutines.sync;

import com.fsck.k9.mailstore.LocalStore;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SemaphoreKt {
    public static final LocalStore.AnonymousClass8 BROKEN;
    public static final LocalStore.AnonymousClass8 CANCELLED;
    public static final LocalStore.AnonymousClass8 PERMIT;
    public static final LocalStore.AnonymousClass8 TAKEN;
    public static final int MAX_SPIN_CYCLES = InlineList.systemProp$default(100, "kotlinx.coroutines.semaphore.maxSpinCycles", 12);
    public static final int SEGMENT_SIZE = InlineList.systemProp$default(16, "kotlinx.coroutines.semaphore.segmentSize", 12);

    static {
        int i = 4;
        boolean z = false;
        PERMIT = new LocalStore.AnonymousClass8(i, "PERMIT", z);
        TAKEN = new LocalStore.AnonymousClass8(i, "TAKEN", z);
        BROKEN = new LocalStore.AnonymousClass8(i, "BROKEN", z);
        CANCELLED = new LocalStore.AnonymousClass8(i, "CANCELLED", z);
    }
}
