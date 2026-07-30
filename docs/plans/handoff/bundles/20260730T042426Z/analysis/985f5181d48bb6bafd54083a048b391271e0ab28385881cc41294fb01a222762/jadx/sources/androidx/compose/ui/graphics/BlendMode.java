package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: BlendMode.kt */
/* loaded from: classes.dex */
public abstract class BlendMode {
    public static final Companion Companion = new Companion(null);
    private static final int Clear = m1253constructorimpl(0);
    private static final int Src = m1253constructorimpl(1);
    private static final int Dst = m1253constructorimpl(2);
    private static final int SrcOver = m1253constructorimpl(3);
    private static final int DstOver = m1253constructorimpl(4);
    private static final int SrcIn = m1253constructorimpl(5);
    private static final int DstIn = m1253constructorimpl(6);
    private static final int SrcOut = m1253constructorimpl(7);
    private static final int DstOut = m1253constructorimpl(8);
    private static final int SrcAtop = m1253constructorimpl(9);
    private static final int DstAtop = m1253constructorimpl(10);
    private static final int Xor = m1253constructorimpl(11);
    private static final int Plus = m1253constructorimpl(12);
    private static final int Modulate = m1253constructorimpl(13);
    private static final int Screen = m1253constructorimpl(14);
    private static final int Overlay = m1253constructorimpl(15);
    private static final int Darken = m1253constructorimpl(16);
    private static final int Lighten = m1253constructorimpl(17);
    private static final int ColorDodge = m1253constructorimpl(18);
    private static final int ColorBurn = m1253constructorimpl(19);
    private static final int Hardlight = m1253constructorimpl(20);
    private static final int Softlight = m1253constructorimpl(21);
    private static final int Difference = m1253constructorimpl(22);
    private static final int Exclusion = m1253constructorimpl(23);
    private static final int Multiply = m1253constructorimpl(24);
    private static final int Hue = m1253constructorimpl(25);
    private static final int Saturation = m1253constructorimpl(26);
    private static final int Color = m1253constructorimpl(27);
    private static final int Luminosity = m1253constructorimpl(28);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1253constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1254equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1255hashCodeimpl(int i) {
        return i;
    }

    /* compiled from: BlendMode.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getClear-0nO6VwU, reason: not valid java name */
        public final int m1257getClear0nO6VwU() {
            return BlendMode.Clear;
        }

        /* renamed from: getSrc-0nO6VwU, reason: not valid java name */
        public final int m1280getSrc0nO6VwU() {
            return BlendMode.Src;
        }

        /* renamed from: getDst-0nO6VwU, reason: not valid java name */
        public final int m1263getDst0nO6VwU() {
            return BlendMode.Dst;
        }

        /* renamed from: getSrcOver-0nO6VwU, reason: not valid java name */
        public final int m1284getSrcOver0nO6VwU() {
            return BlendMode.SrcOver;
        }

        /* renamed from: getDstOver-0nO6VwU, reason: not valid java name */
        public final int m1267getDstOver0nO6VwU() {
            return BlendMode.DstOver;
        }

        /* renamed from: getSrcIn-0nO6VwU, reason: not valid java name */
        public final int m1282getSrcIn0nO6VwU() {
            return BlendMode.SrcIn;
        }

        /* renamed from: getDstIn-0nO6VwU, reason: not valid java name */
        public final int m1265getDstIn0nO6VwU() {
            return BlendMode.DstIn;
        }

        /* renamed from: getSrcOut-0nO6VwU, reason: not valid java name */
        public final int m1283getSrcOut0nO6VwU() {
            return BlendMode.SrcOut;
        }

        /* renamed from: getDstOut-0nO6VwU, reason: not valid java name */
        public final int m1266getDstOut0nO6VwU() {
            return BlendMode.DstOut;
        }

        /* renamed from: getSrcAtop-0nO6VwU, reason: not valid java name */
        public final int m1281getSrcAtop0nO6VwU() {
            return BlendMode.SrcAtop;
        }

        /* renamed from: getDstAtop-0nO6VwU, reason: not valid java name */
        public final int m1264getDstAtop0nO6VwU() {
            return BlendMode.DstAtop;
        }

        /* renamed from: getXor-0nO6VwU, reason: not valid java name */
        public final int m1285getXor0nO6VwU() {
            return BlendMode.Xor;
        }

        /* renamed from: getPlus-0nO6VwU, reason: not valid java name */
        public final int m1276getPlus0nO6VwU() {
            return BlendMode.Plus;
        }

        /* renamed from: getModulate-0nO6VwU, reason: not valid java name */
        public final int m1273getModulate0nO6VwU() {
            return BlendMode.Modulate;
        }

        /* renamed from: getScreen-0nO6VwU, reason: not valid java name */
        public final int m1278getScreen0nO6VwU() {
            return BlendMode.Screen;
        }

        /* renamed from: getOverlay-0nO6VwU, reason: not valid java name */
        public final int m1275getOverlay0nO6VwU() {
            return BlendMode.Overlay;
        }

        /* renamed from: getDarken-0nO6VwU, reason: not valid java name */
        public final int m1261getDarken0nO6VwU() {
            return BlendMode.Darken;
        }

        /* renamed from: getLighten-0nO6VwU, reason: not valid java name */
        public final int m1271getLighten0nO6VwU() {
            return BlendMode.Lighten;
        }

        /* renamed from: getColorDodge-0nO6VwU, reason: not valid java name */
        public final int m1260getColorDodge0nO6VwU() {
            return BlendMode.ColorDodge;
        }

        /* renamed from: getColorBurn-0nO6VwU, reason: not valid java name */
        public final int m1259getColorBurn0nO6VwU() {
            return BlendMode.ColorBurn;
        }

        /* renamed from: getHardlight-0nO6VwU, reason: not valid java name */
        public final int m1269getHardlight0nO6VwU() {
            return BlendMode.Hardlight;
        }

        /* renamed from: getSoftlight-0nO6VwU, reason: not valid java name */
        public final int m1279getSoftlight0nO6VwU() {
            return BlendMode.Softlight;
        }

        /* renamed from: getDifference-0nO6VwU, reason: not valid java name */
        public final int m1262getDifference0nO6VwU() {
            return BlendMode.Difference;
        }

        /* renamed from: getExclusion-0nO6VwU, reason: not valid java name */
        public final int m1268getExclusion0nO6VwU() {
            return BlendMode.Exclusion;
        }

        /* renamed from: getMultiply-0nO6VwU, reason: not valid java name */
        public final int m1274getMultiply0nO6VwU() {
            return BlendMode.Multiply;
        }

        /* renamed from: getHue-0nO6VwU, reason: not valid java name */
        public final int m1270getHue0nO6VwU() {
            return BlendMode.Hue;
        }

        /* renamed from: getSaturation-0nO6VwU, reason: not valid java name */
        public final int m1277getSaturation0nO6VwU() {
            return BlendMode.Saturation;
        }

        /* renamed from: getColor-0nO6VwU, reason: not valid java name */
        public final int m1258getColor0nO6VwU() {
            return BlendMode.Color;
        }

        /* renamed from: getLuminosity-0nO6VwU, reason: not valid java name */
        public final int m1272getLuminosity0nO6VwU() {
            return BlendMode.Luminosity;
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1256toStringimpl(int i) {
        return m1254equalsimpl0(i, Clear) ? "Clear" : m1254equalsimpl0(i, Src) ? "Src" : m1254equalsimpl0(i, Dst) ? "Dst" : m1254equalsimpl0(i, SrcOver) ? "SrcOver" : m1254equalsimpl0(i, DstOver) ? "DstOver" : m1254equalsimpl0(i, SrcIn) ? "SrcIn" : m1254equalsimpl0(i, DstIn) ? "DstIn" : m1254equalsimpl0(i, SrcOut) ? "SrcOut" : m1254equalsimpl0(i, DstOut) ? "DstOut" : m1254equalsimpl0(i, SrcAtop) ? "SrcAtop" : m1254equalsimpl0(i, DstAtop) ? "DstAtop" : m1254equalsimpl0(i, Xor) ? "Xor" : m1254equalsimpl0(i, Plus) ? "Plus" : m1254equalsimpl0(i, Modulate) ? "Modulate" : m1254equalsimpl0(i, Screen) ? "Screen" : m1254equalsimpl0(i, Overlay) ? "Overlay" : m1254equalsimpl0(i, Darken) ? "Darken" : m1254equalsimpl0(i, Lighten) ? "Lighten" : m1254equalsimpl0(i, ColorDodge) ? "ColorDodge" : m1254equalsimpl0(i, ColorBurn) ? "ColorBurn" : m1254equalsimpl0(i, Hardlight) ? "HardLight" : m1254equalsimpl0(i, Softlight) ? "Softlight" : m1254equalsimpl0(i, Difference) ? "Difference" : m1254equalsimpl0(i, Exclusion) ? "Exclusion" : m1254equalsimpl0(i, Multiply) ? "Multiply" : m1254equalsimpl0(i, Hue) ? "Hue" : m1254equalsimpl0(i, Saturation) ? "Saturation" : m1254equalsimpl0(i, Color) ? "Color" : m1254equalsimpl0(i, Luminosity) ? "Luminosity" : "Unknown";
    }
}
