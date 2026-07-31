package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SpacerKt;
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
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TopAppBarMeasurePolicy implements MeasurePolicy {
    public final PaddingValues contentPadding;
    public final float height;
    public final FloatProducer scrolledOffset;

    public TopAppBarMeasurePolicy(FloatProducer floatProducer, float f, PaddingValues paddingValues) {
        this.scrolledOffset = floatProducer;
        this.height = f;
        this.contentPadding = paddingValues;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        int mo58roundToPx0680j_4 = intrinsicMeasureScope.mo58roundToPx0680j_4(this.height);
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
        return Math.max(mo58roundToPx0680j_4, valueOf != null ? valueOf.intValue() : 0);
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
    public final MeasureResult mo8measure3p2s80s(MeasureScope measureScope, List list, final long j) {
        int i;
        int i2;
        final TopAppBarMeasurePolicy topAppBarMeasurePolicy = this;
        int size = list.size();
        int i3 = 0;
        while (i3 < size) {
            Measurable measurable = (Measurable) list.get(i3);
            if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable), "navigationIcon")) {
                final Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(Constraints.m427copyZbe2FdA$default(0, 0, 0, j, 14));
                int size2 = list.size();
                int i4 = 0;
                while (i4 < size2) {
                    Measurable measurable2 = (Measurable) list.get(i4);
                    if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable2), "actionIcons")) {
                        final Placeable mo292measureBRTryo02 = measurable2.mo292measureBRTryo0(Constraints.m427copyZbe2FdA$default(0, 0, 0, j, 14));
                        LayoutDirection layoutDirection = measureScope.getLayoutDirection();
                        PaddingValues paddingValues = topAppBarMeasurePolicy.contentPadding;
                        float calculateStartPadding = SpacerKt.calculateStartPadding(paddingValues, layoutDirection);
                        float calculateEndPadding = SpacerKt.calculateEndPadding(paddingValues, measureScope.getLayoutDirection());
                        int max = Math.max(measureScope.mo58roundToPx0680j_4(AppBarKt.TopAppBarTitleInset), mo292measureBRTryo0.width);
                        if (Constraints.m434getMaxWidthimpl(j) == Integer.MAX_VALUE) {
                            i = Constraints.m434getMaxWidthimpl(j);
                        } else {
                            int m434getMaxWidthimpl = (((Constraints.m434getMaxWidthimpl(j) - max) - mo292measureBRTryo02.width) - measureScope.mo58roundToPx0680j_4(calculateStartPadding)) - measureScope.mo58roundToPx0680j_4(calculateEndPadding);
                            i = m434getMaxWidthimpl < 0 ? 0 : m434getMaxWidthimpl;
                        }
                        int i5 = i;
                        int size3 = list.size();
                        int i6 = 0;
                        while (i6 < size3) {
                            Measurable measurable3 = (Measurable) list.get(i6);
                            if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable3), "title")) {
                                final Placeable mo292measureBRTryo03 = measurable3.mo292measureBRTryo0(Constraints.m427copyZbe2FdA$default(0, i5, 0, j, 12));
                                HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.LastBaseline;
                                final int i7 = mo292measureBRTryo03.get(horizontalAlignmentLine) != Integer.MIN_VALUE ? mo292measureBRTryo03.get(horizontalAlignmentLine) : 0;
                                float invoke = topAppBarMeasurePolicy.scrolledOffset.invoke();
                                int roundToInt = Float.isNaN(invoke) ? 0 : MathKt.roundToInt(invoke);
                                final int max2 = Math.max(measureScope.mo58roundToPx0680j_4(topAppBarMeasurePolicy.height), mo292measureBRTryo03.height) + measureScope.mo58roundToPx0680j_4(paddingValues.mo86calculateTopPaddingD9Ej5fM()) + measureScope.mo58roundToPx0680j_4(paddingValues.mo83calculateBottomPaddingD9Ej5fM());
                                if (Constraints.m433getMaxHeightimpl(j) == Integer.MAX_VALUE) {
                                    i2 = max2;
                                } else {
                                    int i8 = roundToInt + max2;
                                    i2 = i8 >= 0 ? i8 : 0;
                                }
                                int mo58roundToPx0680j_4 = measureScope.mo58roundToPx0680j_4(paddingValues.mo86calculateTopPaddingD9Ej5fM());
                                int mo58roundToPx0680j_42 = measureScope.mo58roundToPx0680j_4(paddingValues.mo83calculateBottomPaddingD9Ej5fM());
                                final int mo58roundToPx0680j_43 = measureScope.mo58roundToPx0680j_4(SpacerKt.calculateStartPadding(paddingValues, measureScope.getLayoutDirection()));
                                final int mo58roundToPx0680j_44 = measureScope.mo58roundToPx0680j_4(SpacerKt.calculateEndPadding(paddingValues, measureScope.getLayoutDirection()));
                                final int i9 = (mo58roundToPx0680j_4 + i2) - mo58roundToPx0680j_42;
                                return measureScope.layout(Constraints.m434getMaxWidthimpl(j), i2, EmptyMap.INSTANCE, new Function1(mo58roundToPx0680j_43, i9, mo292measureBRTryo03, mo292measureBRTryo02, j, mo58roundToPx0680j_44, topAppBarMeasurePolicy, i7, max2) { // from class: androidx.compose.material3.TopAppBarMeasurePolicy$$ExternalSyntheticLambda0
                                    public final /* synthetic */ int f$1;
                                    public final /* synthetic */ int f$2;
                                    public final /* synthetic */ Placeable f$3;
                                    public final /* synthetic */ Placeable f$4;
                                    public final /* synthetic */ long f$5;
                                    public final /* synthetic */ int f$6;

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        int m434getMaxWidthimpl2;
                                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                                        Placeable placeable = Placeable.this;
                                        int i10 = placeable.height;
                                        int i11 = this.f$2;
                                        int i12 = this.f$1;
                                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, i12, (i11 - i10) / 2);
                                        int max3 = Math.max(Owner.CC.m357$default$roundToPx0680j_4(placementScope, AppBarKt.TopAppBarTitleInset), placeable.width);
                                        Placeable placeable2 = this.f$4;
                                        int i13 = placeable2.width;
                                        Placeable placeable3 = this.f$3;
                                        int i14 = placeable3.width;
                                        long j2 = this.f$5;
                                        int round = Math.round((1.0f - 1.0f) * ((Constraints.m434getMaxWidthimpl(j2) - i14) / 2.0f));
                                        if (round >= max3) {
                                            if (placeable3.width + round > Constraints.m434getMaxWidthimpl(j2) - i13) {
                                                m434getMaxWidthimpl2 = (Constraints.m434getMaxWidthimpl(j2) - i13) - (placeable3.width + round);
                                            }
                                            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, round, (i11 - placeable3.height) / 2);
                                            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, (Constraints.m434getMaxWidthimpl(j2) - placeable2.width) - this.f$6, (i11 - placeable2.height) / 2);
                                            return Unit.INSTANCE;
                                        }
                                        m434getMaxWidthimpl2 = max3 - round;
                                        round += m434getMaxWidthimpl2 + i12;
                                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, round, (i11 - placeable3.height) / 2);
                                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, (Constraints.m434getMaxWidthimpl(j2) - placeable2.width) - this.f$6, (i11 - placeable2.height) / 2);
                                        return Unit.INSTANCE;
                                    }
                                });
                            }
                            i6++;
                            topAppBarMeasurePolicy = this;
                        }
                        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                        LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                        return null;
                    }
                    i4++;
                    topAppBarMeasurePolicy = this;
                }
                ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                LayoutNode$$ExternalSyntheticBUOutline0.m322m();
                return null;
            }
            i3++;
            topAppBarMeasurePolicy = this;
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        LayoutNode$$ExternalSyntheticBUOutline0.m322m();
        return null;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        int mo58roundToPx0680j_4 = intrinsicMeasureScope.mo58roundToPx0680j_4(this.height);
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
        return Math.max(mo58roundToPx0680j_4, valueOf != null ? valueOf.intValue() : 0);
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
