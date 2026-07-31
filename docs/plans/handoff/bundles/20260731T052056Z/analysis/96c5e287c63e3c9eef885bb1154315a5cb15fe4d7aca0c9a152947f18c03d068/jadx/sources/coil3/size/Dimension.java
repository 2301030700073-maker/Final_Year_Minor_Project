package coil3.size;

import androidx.compose.animation.core.Animation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Dimension {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Pixels implements Dimension {
        public final int px;

        public /* synthetic */ Pixels(int i) {
            this.px = i;
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static void m784constructorimpl(int i) {
            if (i > 0) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m("px must be > 0.");
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Pixels) {
                return this.px == ((Pixels) obj).px;
            }
            return false;
        }

        public final int hashCode() {
            return this.px;
        }

        public final String toString() {
            return Animation.CC.m(this.px, "Pixels(px=", ")");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Undefined implements Dimension {
        public static final Undefined INSTANCE = new Undefined();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Undefined);
        }

        public final int hashCode() {
            return -2093724603;
        }

        public final String toString() {
            return "Undefined";
        }
    }
}
