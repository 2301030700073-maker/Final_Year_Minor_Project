package androidx.compose.foundation.interaction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface PressInteraction extends Interaction {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Cancel implements PressInteraction {
        public final Press press;

        public Cancel(Press press) {
            this.press = press;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Press implements PressInteraction {
        public final long pressPosition;

        public Press(long j) {
            this.pressPosition = j;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Release implements PressInteraction {
        public final Press press;

        public Release(Press press) {
            this.press = press;
        }
    }
}
