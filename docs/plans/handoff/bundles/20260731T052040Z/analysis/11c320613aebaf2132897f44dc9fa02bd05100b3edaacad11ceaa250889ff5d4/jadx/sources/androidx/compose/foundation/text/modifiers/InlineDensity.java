package androidx.compose.foundation.text.modifiers;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class InlineDensity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Unspecified = m117constructorimpl(Float.NaN, Float.NaN);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m117constructorimpl(float f, float f2) {
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m118toStringimpl(long j) {
        return "InlineDensity(density=" + Float.intBitsToFloat((int) (j >> 32)) + ", fontScale=" + Float.intBitsToFloat((int) (j & 4294967295L)) + ')';
    }
}
