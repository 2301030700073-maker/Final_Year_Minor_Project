package androidx.compose.ui.layout;

import androidx.collection.Values;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentScale$Companion$Fit$1 implements SubcomposeSlotReusePolicy, ContentScale {
    public static final ContentScale$Companion$Fit$1 INSTANCE = new ContentScale$Companion$Fit$1(1);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ContentScale$Companion$Fit$1(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean areCompatible(Object obj, Object obj2) {
        return false;
    }

    @Override // androidx.compose.ui.layout.ContentScale
    /* renamed from: computeScaleFactor-H7hwNQA */
    public long mo570computeScaleFactorH7hwNQA(long j, long j2) {
        float min;
        float min2;
        switch (this.$r8$classId) {
            case 0:
                min = Math.min(Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)) / Float.intBitsToFloat((int) (j & 4294967295L)));
                long floatToRawIntBits = (Float.floatToRawIntBits(min) << 32) | (Float.floatToRawIntBits(min) & 4294967295L);
                int i = ScaleFactor.$r8$clinit;
                return floatToRawIntBits;
            case 1:
            default:
                if (Float.intBitsToFloat((int) (j >> 32)) <= Float.intBitsToFloat((int) (j2 >> 32)) && Float.intBitsToFloat((int) (j & 4294967295L)) <= Float.intBitsToFloat((int) (j2 & 4294967295L))) {
                    long floatToRawIntBits2 = (Float.floatToRawIntBits(1.0f) << 32) | (Float.floatToRawIntBits(1.0f) & 4294967295L);
                    int i2 = ScaleFactor.$r8$clinit;
                    return floatToRawIntBits2;
                }
                min2 = Math.min(Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)) / Float.intBitsToFloat((int) (j & 4294967295L)));
                long floatToRawIntBits3 = (Float.floatToRawIntBits(min2) << 32) | (Float.floatToRawIntBits(min2) & 4294967295L);
                int i3 = ScaleFactor.$r8$clinit;
                return floatToRawIntBits3;
            case 2:
                float max = Math.max(Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)) / Float.intBitsToFloat((int) (j & 4294967295L)));
                long floatToRawIntBits4 = (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max) & 4294967295L);
                int i4 = ScaleFactor.$r8$clinit;
                return floatToRawIntBits4;
        }
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void getSlotsToRetain(Values values) {
        values.clear();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 4:
                return "ReusedSlotId";
            default:
                return super.toString();
        }
    }
}
