package androidx.compose.foundation.gestures;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DragEvent {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DragCancelled extends DragEvent {
        public static final DragCancelled INSTANCE = new DragCancelled();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DragDelta extends DragEvent {
        public final long delta;
        public final boolean isIndirectPointerEvent;

        public DragDelta(long j, boolean z) {
            this.delta = j;
            this.isIndirectPointerEvent = z;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DragStarted extends DragEvent {
        public final long startPoint;

        public DragStarted(long j) {
            this.startPoint = j;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DragStopped extends DragEvent {
        public final boolean isIndirectPointerEvent;
        public final long velocity;

        public DragStopped(long j, boolean z) {
            this.velocity = j;
            this.isIndirectPointerEvent = z;
        }
    }
}
