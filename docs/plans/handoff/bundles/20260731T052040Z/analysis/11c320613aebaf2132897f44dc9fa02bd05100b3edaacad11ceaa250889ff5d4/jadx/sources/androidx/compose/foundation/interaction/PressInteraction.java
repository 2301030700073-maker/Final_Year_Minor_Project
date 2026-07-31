package androidx.compose.foundation.interaction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface PressInteraction extends Interaction {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Cancel implements PressInteraction {
        public final Press press;

        public Cancel(Press press) {
            this.press = press;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Press implements PressInteraction {
        public final long pressPosition;

        public Press(long j) {
            this.pressPosition = j;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Release implements PressInteraction {
        public final Press press;

        public Release(Press press) {
            this.press = press;
        }
    }
}
