package androidx.compose.ui.layout;

import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ContentScale$Companion$Fit$1 implements SubcomposeSlotReusePolicy {
    public static final ContentScale$Companion$Fit$1 INSTANCE = new ContentScale$Companion$Fit$1(1);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ContentScale$Companion$Fit$1(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean areCompatible(Object obj, Object obj2) {
        return false;
    }

    /* renamed from: computeScaleFactor-H7hwNQA, reason: not valid java name */
    public long m291computeScaleFactorH7hwNQA(long j, long j2) {
        float min = Math.min(Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)) / Float.intBitsToFloat((int) (j & 4294967295L)));
        long floatToRawIntBits = (Float.floatToRawIntBits(min) << 32) | (Float.floatToRawIntBits(min) & 4294967295L);
        int i = ScaleFactor.$r8$clinit;
        return floatToRawIntBits;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void getSlotsToRetain(SubcomposeSlotReusePolicy.SlotIdsSet slotIdsSet) {
        slotIdsSet.clear();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 3:
                return "ReusedSlotId";
            default:
                return super.toString();
        }
    }
}
