package androidx.compose.foundation.gestures;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DragEvent {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DragCancelled extends DragEvent {
        public static final DragCancelled INSTANCE = new DragCancelled();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DragDelta extends DragEvent {
        public final long delta;
        public final boolean isIndirectPointerEvent;

        public DragDelta(long j, boolean z) {
            this.delta = j;
            this.isIndirectPointerEvent = z;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DragStarted extends DragEvent {
        public final long startPoint;

        public DragStarted(long j) {
            this.startPoint = j;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DragStopped extends DragEvent {
        public final boolean isIndirectPointerEvent;
        public final long velocity;

        public DragStopped(long j, boolean z) {
            this.velocity = j;
            this.isIndirectPointerEvent = z;
        }
    }
}
