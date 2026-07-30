package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* compiled from: IntOffset.kt */
/* loaded from: classes.dex */
public abstract class IntOffsetKt {
    public static final long IntOffset(int i, int i2) {
        return IntOffset.m2460constructorimpl((i2 & BodyPartID.bodyIdMax) | (i << 32));
    }

    /* renamed from: plus-Nv-tHpc, reason: not valid java name */
    public static final long m2474plusNvtHpc(long j, long j2) {
        return OffsetKt.Offset(Offset.m1167getXimpl(j) + IntOffset.m2465getXimpl(j2), Offset.m1168getYimpl(j) + IntOffset.m2466getYimpl(j2));
    }

    /* renamed from: minus-Nv-tHpc, reason: not valid java name */
    public static final long m2473minusNvtHpc(long j, long j2) {
        return OffsetKt.Offset(Offset.m1167getXimpl(j) - IntOffset.m2465getXimpl(j2), Offset.m1168getYimpl(j) - IntOffset.m2466getYimpl(j2));
    }

    /* renamed from: round-k-4lQ0M, reason: not valid java name */
    public static final long m2475roundk4lQ0M(long j) {
        return IntOffset.m2460constructorimpl((Math.round(Offset.m1168getYimpl(j)) & BodyPartID.bodyIdMax) | (Math.round(Offset.m1167getXimpl(j)) << 32));
    }
}
