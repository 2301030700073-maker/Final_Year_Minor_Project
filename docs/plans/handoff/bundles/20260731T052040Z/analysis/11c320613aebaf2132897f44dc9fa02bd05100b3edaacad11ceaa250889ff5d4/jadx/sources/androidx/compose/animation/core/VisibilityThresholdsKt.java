package androidx.compose.animation.core;

import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class VisibilityThresholdsKt {
    public static final LinkedHashMap VisibilityThresholdMap;

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
        Pair[] pairArr = {pair, pair2, pair3, pair4, pair5, pair6, pair7, new Pair(twoWayConverterImpl, valueOf2), new Pair(ArcSplineKt.DpOffsetToVector, valueOf2)};
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(9));
        MapsKt__MapsKt.putAll(linkedHashMap, pairArr);
        VisibilityThresholdMap = linkedHashMap;
    }
}
