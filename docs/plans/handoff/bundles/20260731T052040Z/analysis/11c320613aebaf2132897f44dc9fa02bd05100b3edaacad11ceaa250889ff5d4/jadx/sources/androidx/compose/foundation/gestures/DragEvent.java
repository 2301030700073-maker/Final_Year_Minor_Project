package androidx.compose.foundation.gestures;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class DragEvent {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DragCancelled extends DragEvent {
        public static final DragCancelled INSTANCE = new DragCancelled();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DragDelta extends DragEvent {
        public final long delta;
        public final boolean isIndirectPointerEvent;

        public DragDelta(long j, boolean z) {
            this.delta = j;
            this.isIndirectPointerEvent = z;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DragStarted extends DragEvent {
        public final long startPoint;

        public DragStarted(long j) {
            this.startPoint = j;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DragStopped extends DragEvent {
        public final boolean isIndirectPointerEvent;
        public final long velocity;

        public DragStopped(long j, boolean z) {
            this.velocity = j;
            this.isIndirectPointerEvent = z;
        }
    }
}
