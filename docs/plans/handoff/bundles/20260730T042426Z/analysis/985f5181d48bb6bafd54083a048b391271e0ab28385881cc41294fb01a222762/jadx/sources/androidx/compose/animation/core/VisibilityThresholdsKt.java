package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;

/* compiled from: VisibilityThresholds.kt */
/* loaded from: classes.dex */
public abstract class VisibilityThresholdsKt {
    private static final Rect rectVisibilityThreshold;
    private static final Map visibilityThresholdMap;

    public static final int getVisibilityThreshold(IntCompanionObject intCompanionObject) {
        return 1;
    }

    static {
        Float valueOf = Float.valueOf(0.5f);
        rectVisibilityThreshold = new Rect(0.5f, 0.5f, 0.5f, 0.5f);
        TwoWayConverter vectorConverter = VectorConvertersKt.getVectorConverter(IntCompanionObject.INSTANCE);
        Float valueOf2 = Float.valueOf(1.0f);
        Pair pair = TuplesKt.to(vectorConverter, valueOf2);
        Pair pair2 = TuplesKt.to(VectorConvertersKt.getVectorConverter(IntSize.Companion), valueOf2);
        Pair pair3 = TuplesKt.to(VectorConvertersKt.getVectorConverter(IntOffset.Companion), valueOf2);
        Pair pair4 = TuplesKt.to(VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), Float.valueOf(0.01f));
        Pair pair5 = TuplesKt.to(VectorConvertersKt.getVectorConverter(Rect.Companion), valueOf);
        Pair pair6 = TuplesKt.to(VectorConvertersKt.getVectorConverter(Size.Companion), valueOf);
        Pair pair7 = TuplesKt.to(VectorConvertersKt.getVectorConverter(Offset.Companion), valueOf);
        TwoWayConverter vectorConverter2 = VectorConvertersKt.getVectorConverter(Dp.Companion);
        Float valueOf3 = Float.valueOf(0.1f);
        visibilityThresholdMap = MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, pair7, TuplesKt.to(vectorConverter2, valueOf3), TuplesKt.to(VectorConvertersKt.getVectorConverter(DpOffset.Companion), valueOf3));
    }

    public static final long getVisibilityThreshold(IntOffset.Companion companion) {
        return IntOffsetKt.IntOffset(1, 1);
    }

    public static final long getVisibilityThreshold(Offset.Companion companion) {
        return OffsetKt.Offset(0.5f, 0.5f);
    }

    public static final long getVisibilityThreshold(Size.Companion companion) {
        return SizeKt.Size(0.5f, 0.5f);
    }

    public static final long getVisibilityThreshold(IntSize.Companion companion) {
        return IntSizeKt.IntSize(1, 1);
    }

    public static final Rect getVisibilityThreshold(Rect.Companion companion) {
        return rectVisibilityThreshold;
    }

    public static final Map getVisibilityThresholdMap() {
        return visibilityThresholdMap;
    }

    public static final float getVisibilityThreshold(Dp.Companion companion) {
        return Dp.m2424constructorimpl(0.1f);
    }
}
