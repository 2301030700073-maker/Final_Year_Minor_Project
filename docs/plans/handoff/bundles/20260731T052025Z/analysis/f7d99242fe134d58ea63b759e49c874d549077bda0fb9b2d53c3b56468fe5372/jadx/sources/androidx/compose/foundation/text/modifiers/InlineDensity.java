package androidx.compose.foundation.text.modifiers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InlineDensity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Unspecified = m293constructorimpl(Float.NaN, Float.NaN);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m293constructorimpl(float f, float f2) {
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m294toStringimpl(long j) {
        return "InlineDensity(density=" + Float.intBitsToFloat((int) (j >> 32)) + ", fontScale=" + Float.intBitsToFloat((int) (j & 4294967295L)) + ')';
    }
}
