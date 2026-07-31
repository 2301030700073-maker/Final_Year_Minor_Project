package coil3.size;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Dimension {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Undefined implements Dimension {
        public static final Undefined INSTANCE = new Undefined();

        private Undefined() {
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof Undefined);
        }

        public int hashCode() {
            return -2093724603;
        }

        public String toString() {
            return "Undefined";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Pixels implements Dimension {
        private final int px;

        private /* synthetic */ Pixels(int i) {
            this.px = i;
        }

        /* renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Pixels m902boximpl(int i) {
            return new Pixels(i);
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m903constructorimpl(int i) {
            if (i > 0) {
                return i;
            }
            UriKt$$ExternalSyntheticBUOutline0.m("px must be > 0.");
            return 0;
        }

        /* renamed from: equals-impl, reason: not valid java name */
        public static boolean m904equalsimpl(int i, Object obj) {
            return (obj instanceof Pixels) && i == ((Pixels) obj).m908unboximpl();
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m905equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m907toStringimpl(int i) {
            return CameraDevices$CC.m(i, "Pixels(px=", ")");
        }

        public boolean equals(Object obj) {
            return m904equalsimpl(this.px, obj);
        }

        public final int getPx() {
            return this.px;
        }

        public int hashCode() {
            return m906hashCodeimpl(this.px);
        }

        public String toString() {
            return m907toStringimpl(this.px);
        }

        /* renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m908unboximpl() {
            return this.px;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m906hashCodeimpl(int i) {
            return i;
        }
    }
}
