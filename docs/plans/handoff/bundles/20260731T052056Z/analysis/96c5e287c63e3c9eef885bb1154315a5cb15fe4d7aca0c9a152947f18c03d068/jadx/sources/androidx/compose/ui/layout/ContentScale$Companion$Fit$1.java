package androidx.compose.ui.layout;

import androidx.collection.Values;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public long mo511computeScaleFactorH7hwNQA(long j, long j2) {
        switch (this.$r8$classId) {
            case 0:
                float m537computeFillMinDimensioniLBOSCw = RulerKt.m537computeFillMinDimensioniLBOSCw(j, j2);
                long floatToRawIntBits = (Float.floatToRawIntBits(m537computeFillMinDimensioniLBOSCw) << 32) | (Float.floatToRawIntBits(m537computeFillMinDimensioniLBOSCw) & 4294967295L);
                int i = ScaleFactor.$r8$clinit;
                return floatToRawIntBits;
            case 1:
            default:
                if (Float.intBitsToFloat((int) (j >> 32)) <= Float.intBitsToFloat((int) (j2 >> 32)) && Float.intBitsToFloat((int) (j & 4294967295L)) <= Float.intBitsToFloat((int) (j2 & 4294967295L))) {
                    long floatToRawIntBits2 = (Float.floatToRawIntBits(1.0f) << 32) | (Float.floatToRawIntBits(1.0f) & 4294967295L);
                    int i2 = ScaleFactor.$r8$clinit;
                    return floatToRawIntBits2;
                }
                float m537computeFillMinDimensioniLBOSCw2 = RulerKt.m537computeFillMinDimensioniLBOSCw(j, j2);
                long floatToRawIntBits3 = (Float.floatToRawIntBits(m537computeFillMinDimensioniLBOSCw2) << 32) | (Float.floatToRawIntBits(m537computeFillMinDimensioniLBOSCw2) & 4294967295L);
                int i3 = ScaleFactor.$r8$clinit;
                return floatToRawIntBits3;
            case 2:
                float max = Math.max(Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)) / Float.intBitsToFloat((int) (j & 4294967295L)));
                long floatToRawIntBits4 = (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max) & 4294967295L);
                int i4 = ScaleFactor.$r8$clinit;
                return floatToRawIntBits4;
            case 3:
                float intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32));
                long floatToRawIntBits5 = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L);
                int i5 = ScaleFactor.$r8$clinit;
                return floatToRawIntBits5;
        }
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void getSlotsToRetain(Values values) {
        values.clear();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 5:
                return "ReusedSlotId";
            default:
                return super.toString();
        }
    }
}
