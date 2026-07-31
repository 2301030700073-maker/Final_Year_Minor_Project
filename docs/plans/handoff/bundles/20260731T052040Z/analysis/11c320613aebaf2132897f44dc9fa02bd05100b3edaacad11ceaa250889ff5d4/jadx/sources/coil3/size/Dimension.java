package coil3.size;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Dimension {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Pixels implements Dimension {
        public final int px;

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
            return Modifier.CC.m("Pixels(px=", this.px, ")");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
