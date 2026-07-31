package androidx.compose.material3;

import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.util.ListUtilsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TopAppBarMeasurePolicy implements MeasurePolicy {
    public final float height;
    public final FloatProducer scrolledOffset;

    public TopAppBarMeasurePolicy(FloatProducer floatProducer, float f) {
        this.scrolledOffset = floatProducer;
        this.height = f;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.height);
        if (list.isEmpty()) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(((Measurable) list.get(0)).maxIntrinsicHeight(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer valueOf2 = Integer.valueOf(((Measurable) list.get(i2)).maxIntrinsicHeight(i));
                    if (valueOf2.compareTo(valueOf) > 0) {
                        valueOf = valueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        return Math.max(mo171roundToPx0680j_4, valueOf != null ? valueOf.intValue() : 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += ((Measurable) list.get(i3)).maxIntrinsicWidth(i);
        }
        return i2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(final MeasureScope measureScope, List list, final long j) {
        int m734getMaxWidthimpl;
        final TopAppBarMeasurePolicy topAppBarMeasurePolicy = this;
        int size = list.size();
        final int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Measurable measurable = (Measurable) list.get(i2);
            if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable), "navigationIcon")) {
                final Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(Constraints.m727copyZbe2FdA$default(j, 0, 0, 0, 0, 14));
                int size2 = list.size();
                int i3 = 0;
                while (i3 < size2) {
                    Measurable measurable2 = (Measurable) list.get(i3);
                    if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable2), "actionIcons")) {
                        final Placeable mo571measureBRTryo02 = measurable2.mo571measureBRTryo0(Constraints.m727copyZbe2FdA$default(j, 0, 0, 0, 0, 14));
                        if (Constraints.m734getMaxWidthimpl(j) == Integer.MAX_VALUE) {
                            m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
                        } else {
                            m734getMaxWidthimpl = (Constraints.m734getMaxWidthimpl(j) - mo571measureBRTryo0.width) - mo571measureBRTryo02.width;
                            if (m734getMaxWidthimpl < 0) {
                                m734getMaxWidthimpl = 0;
                            }
                        }
                        int i4 = m734getMaxWidthimpl;
                        int size3 = list.size();
                        int i5 = 0;
                        while (i5 < size3) {
                            Measurable measurable3 = (Measurable) list.get(i5);
                            if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable3), "title")) {
                                final Placeable mo571measureBRTryo03 = measurable3.mo571measureBRTryo0(Constraints.m727copyZbe2FdA$default(j, 0, i4, 0, 0, 12));
                                HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.LastBaseline;
                                int i6 = mo571measureBRTryo03.get(horizontalAlignmentLine) != Integer.MIN_VALUE ? mo571measureBRTryo03.get(horizontalAlignmentLine) : 0;
                                float invoke = topAppBarMeasurePolicy.scrolledOffset.invoke();
                                int roundToInt = Float.isNaN(invoke) ? 0 : MathKt.roundToInt(invoke);
                                final int max = Math.max(measureScope.mo171roundToPx0680j_4(topAppBarMeasurePolicy.height), mo571measureBRTryo03.height);
                                if (Constraints.m733getMaxHeightimpl(j) == Integer.MAX_VALUE) {
                                    i = max;
                                } else {
                                    int i7 = roundToInt + max;
                                    if (i7 >= 0) {
                                        i = i7;
                                    }
                                }
                                final int i8 = i6;
                                return measureScope.layout(Constraints.m734getMaxWidthimpl(j), i, EmptyMap.INSTANCE, new Function1(i, mo571measureBRTryo03, mo571measureBRTryo02, j, measureScope, topAppBarMeasurePolicy, i8, max) { // from class: androidx.compose.material3.TopAppBarMeasurePolicy$$ExternalSyntheticLambda0
                                    public final /* synthetic */ int f$1;
                                    public final /* synthetic */ Placeable f$2;
                                    public final /* synthetic */ Placeable f$3;
                                    public final /* synthetic */ long f$4;
                                    public final /* synthetic */ MeasureScope f$5;

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        int m734getMaxWidthimpl2;
                                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                                        Placeable placeable = Placeable.this;
                                        int i9 = placeable.height;
                                        int i10 = this.f$1;
                                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, (i10 - i9) / 2);
                                        int max2 = Math.max(this.f$5.mo171roundToPx0680j_4(AppBarKt.TopAppBarTitleInset), placeable.width);
                                        Placeable placeable2 = this.f$3;
                                        int i11 = placeable2.width;
                                        Placeable placeable3 = this.f$2;
                                        int i12 = placeable3.width;
                                        long j2 = this.f$4;
                                        int round = Math.round((1.0f - 1.0f) * ((Constraints.m734getMaxWidthimpl(j2) - i12) / 2.0f));
                                        if (round >= max2) {
                                            if (placeable3.width + round > Constraints.m734getMaxWidthimpl(j2) - i11) {
                                                m734getMaxWidthimpl2 = (Constraints.m734getMaxWidthimpl(j2) - i11) - (placeable3.width + round);
                                            }
                                            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, round, (i10 - placeable3.height) / 2);
                                            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, Constraints.m734getMaxWidthimpl(j2) - placeable2.width, (i10 - placeable2.height) / 2);
                                            return Unit.INSTANCE;
                                        }
                                        m734getMaxWidthimpl2 = max2 - round;
                                        round += m734getMaxWidthimpl2;
                                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, round, (i10 - placeable3.height) / 2);
                                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, Constraints.m734getMaxWidthimpl(j2) - placeable2.width, (i10 - placeable2.height) / 2);
                                        return Unit.INSTANCE;
                                    }
                                });
                            }
                            i5++;
                            topAppBarMeasurePolicy = this;
                        }
                        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                        _UtilJvmKt$$ExternalSyntheticLambda0.m();
                        return null;
                    }
                    i3++;
                    topAppBarMeasurePolicy = this;
                }
                ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                _UtilJvmKt$$ExternalSyntheticLambda0.m();
                return null;
            }
            i2++;
            topAppBarMeasurePolicy = this;
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.height);
        if (list.isEmpty()) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(((Measurable) list.get(0)).minIntrinsicHeight(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer valueOf2 = Integer.valueOf(((Measurable) list.get(i2)).minIntrinsicHeight(i));
                    if (valueOf2.compareTo(valueOf) > 0) {
                        valueOf = valueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        return Math.max(mo171roundToPx0680j_4, valueOf != null ? valueOf.intValue() : 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += ((Measurable) list.get(i3)).minIntrinsicWidth(i);
        }
        return i2;
    }
}
