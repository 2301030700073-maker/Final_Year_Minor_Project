package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ImageBitmap.kt */
/* loaded from: classes.dex */
public final class ImageBitmapConfig {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Argb8888 = m1349constructorimpl(0);
    private static final int Alpha8 = m1349constructorimpl(1);
    private static final int Rgb565 = m1349constructorimpl(2);
    private static final int F16 = m1349constructorimpl(3);
    private static final int Gpu = m1349constructorimpl(4);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ImageBitmapConfig m1348boximpl(int i) {
        return new ImageBitmapConfig(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1349constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1350equalsimpl(int i, Object obj) {
        return (obj instanceof ImageBitmapConfig) && i == ((ImageBitmapConfig) obj).m1354unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1351equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1352hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m1350equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1352hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1354unboximpl() {
        return this.value;
    }

    /* compiled from: ImageBitmap.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getArgb8888-_sVssgQ, reason: not valid java name */
        public final int m1356getArgb8888_sVssgQ() {
            return ImageBitmapConfig.Argb8888;
        }

        /* renamed from: getAlpha8-_sVssgQ, reason: not valid java name */
        public final int m1355getAlpha8_sVssgQ() {
            return ImageBitmapConfig.Alpha8;
        }

        /* renamed from: getRgb565-_sVssgQ, reason: not valid java name */
        public final int m1359getRgb565_sVssgQ() {
            return ImageBitmapConfig.Rgb565;
        }

        /* renamed from: getF16-_sVssgQ, reason: not valid java name */
        public final int m1357getF16_sVssgQ() {
            return ImageBitmapConfig.F16;
        }

        /* renamed from: getGpu-_sVssgQ, reason: not valid java name */
        public final int m1358getGpu_sVssgQ() {
            return ImageBitmapConfig.Gpu;
        }
    }

    private /* synthetic */ ImageBitmapConfig(int i) {
        this.value = i;
    }

    public String toString() {
        return m1353toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1353toStringimpl(int i) {
        return m1351equalsimpl0(i, Argb8888) ? "Argb8888" : m1351equalsimpl0(i, Alpha8) ? "Alpha8" : m1351equalsimpl0(i, Rgb565) ? "Rgb565" : m1351equalsimpl0(i, F16) ? "F16" : m1351equalsimpl0(i, Gpu) ? "Gpu" : "Unknown";
    }
}
