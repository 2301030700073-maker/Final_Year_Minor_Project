package androidx.compose.animation.core;

import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class VisibilityThresholdsKt {
    public static final Map VisibilityThresholdMap;

    static {
        Float valueOf = Float.valueOf(1.0f);
        Pair pair = new Pair(ArcSplineKt.IntToVector, valueOf);
        Pair pair2 = new Pair(ArcSplineKt.IntSizeToVector, valueOf);
        Pair pair3 = new Pair(ArcSplineKt.IntOffsetToVector, valueOf);
        Pair pair4 = new Pair(ArcSplineKt.FloatToVector, Float.valueOf(0.01f));
        Pair pair5 = new Pair(ArcSplineKt.RectToVector, valueOf);
        Pair pair6 = new Pair(ArcSplineKt.SizeToVector, valueOf);
        Pair pair7 = new Pair(ArcSplineKt.OffsetToVector, valueOf);
        TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.DpToVector;
        Float valueOf2 = Float.valueOf(0.4f);
        VisibilityThresholdMap = MapsKt__MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, pair7, new Pair(twoWayConverterImpl, valueOf2), new Pair(ArcSplineKt.DpOffsetToVector, valueOf2));
    }
}
