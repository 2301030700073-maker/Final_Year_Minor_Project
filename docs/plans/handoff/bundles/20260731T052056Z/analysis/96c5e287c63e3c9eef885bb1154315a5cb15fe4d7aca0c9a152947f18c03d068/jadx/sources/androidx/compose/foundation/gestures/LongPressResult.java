package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LongPressResult {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Canceled extends LongPressResult {
        public static final Canceled INSTANCE = new Canceled();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Released extends LongPressResult {
        public final PointerInputChange finalUpChange;

        public Released(PointerInputChange pointerInputChange) {
            this.finalUpChange = pointerInputChange;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Success extends LongPressResult {
        public static final Success INSTANCE = new Success();
    }
}
