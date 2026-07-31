package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.MotionReferencePlacementDelegate;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.functions.Function1;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Placeable {
    public int height;
    public int width;
    public long measuredSize = 0;
    public long measurementConstraints = PlaceableKt.DefaultConstraints;
    public long apparentToRealOffset = 0;

    public abstract int get(AlignmentLine alignmentLine);

    public int getMeasuredHeight() {
        return (int) (this.measuredSize & 4294967295L);
    }

    public int getMeasuredWidth() {
        return (int) (this.measuredSize >> 32);
    }

    public Object getParentData() {
        return null;
    }

    public final void onMeasuredSizeChanged() {
        this.width = RegexKt.coerceIn((int) (this.measuredSize >> 32), Constraints.m683getMinWidthimpl(this.measurementConstraints), Constraints.m681getMaxWidthimpl(this.measurementConstraints));
        this.height = RegexKt.coerceIn((int) (this.measuredSize & 4294967295L), Constraints.m682getMinHeightimpl(this.measurementConstraints), Constraints.m680getMaxHeightimpl(this.measurementConstraints));
        int i = this.width;
        long j = this.measuredSize;
        this.apparentToRealOffset = (((i - ((int) (j >> 32))) / 2) << 32) | (4294967295L & ((r0 - ((int) (j & 4294967295L))) / 2));
    }

    /* renamed from: placeAt-f8xVGno, reason: not valid java name */
    public void mo530placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        mo516placeAtf8xVGno(j, f, (Function1) null);
    }

    /* renamed from: placeAt-f8xVGno */
    public abstract void mo516placeAtf8xVGno(long j, float f, Function1 function1);

    /* renamed from: setMeasuredSize-ozmzZPI, reason: not valid java name */
    public final void m531setMeasuredSizeozmzZPI(long j) {
        if (IntSize.m721equalsimpl0(this.measuredSize, j)) {
            return;
        }
        this.measuredSize = j;
        onMeasuredSizeChanged();
    }

    /* renamed from: setMeasurementConstraints-BRTryo0, reason: not valid java name */
    public final void m532setMeasurementConstraintsBRTryo0(long j) {
        if (Constraints.m675equalsimpl0(this.measurementConstraints, j)) {
            return;
        }
        this.measurementConstraints = j;
        onMeasuredSizeChanged();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class PlacementScope implements Density {
        public boolean motionFrameOfReferencePlacement;

        public static void place$default(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            placementScope.handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY((i2 & 4294967295L) | (i << 32), placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, (Function1) null);
        }

        /* renamed from: place-70tqf50$default, reason: not valid java name */
        public static void m533place70tqf50$default(PlacementScope placementScope, Placeable placeable, long j) {
            placementScope.handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY(j, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, (Function1) null);
        }

        public static void placeRelative$default(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            long j = (i << 32) | (i2 & 4294967295L);
            if (placementScope.getParentLayoutDirection() == LayoutDirection.Ltr || placementScope.getParentWidth() == 0) {
                placementScope.handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY(j, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, (Function1) null);
            } else {
                int parentWidth = (placementScope.getParentWidth() - placeable.width) - ((int) (j >> 32));
                placementScope.handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY((parentWidth << 32) | (((int) (j & 4294967295L)) & 4294967295L), placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, (Function1) null);
            }
        }

        public static void placeRelativeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            int i3 = PlaceableKt.$r8$clinit;
            RootMeasurePolicy$measure$1 rootMeasurePolicy$measure$1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            long j = (i << 32) | (i2 & 4294967295L);
            if (placementScope.getParentLayoutDirection() == LayoutDirection.Ltr || placementScope.getParentWidth() == 0) {
                placementScope.handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY(j, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, rootMeasurePolicy$measure$1);
            } else {
                int parentWidth = (placementScope.getParentWidth() - placeable.width) - ((int) (j >> 32));
                placementScope.handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY((parentWidth << 32) | (((int) (j & 4294967295L)) & 4294967295L), placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, rootMeasurePolicy$measure$1);
            }
        }

        /* renamed from: placeRelativeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static void m534placeRelativeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j) {
            int i = PlaceableKt.$r8$clinit;
            RootMeasurePolicy$measure$1 rootMeasurePolicy$measure$1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            if (placementScope.getParentLayoutDirection() == LayoutDirection.Ltr || placementScope.getParentWidth() == 0) {
                placementScope.handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY(j, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, rootMeasurePolicy$measure$1);
            } else {
                int parentWidth = (placementScope.getParentWidth() - placeable.width) - ((int) (j >> 32));
                placementScope.handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY((((int) (j & 4294967295L)) & 4294967295L) | (parentWidth << 32), placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, rootMeasurePolicy$measure$1);
            }
        }

        public static void placeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2, Function1 function1, int i3) {
            if ((i3 & 8) != 0) {
                int i4 = PlaceableKt.$r8$clinit;
                function1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            }
            placementScope.handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY((i2 & 4294967295L) | (i << 32), placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, function1);
        }

        /* renamed from: placeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static void m536placeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j) {
            int i = PlaceableKt.$r8$clinit;
            RootMeasurePolicy$measure$1 rootMeasurePolicy$measure$1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            placementScope.handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY(j, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, rootMeasurePolicy$measure$1);
        }

        public float current(VerticalRuler verticalRuler) {
            return Float.NaN;
        }

        public abstract LayoutDirection getParentLayoutDirection();

        public abstract int getParentWidth();

        /* JADX WARN: Multi-variable type inference failed */
        public final void handleMotionFrameOfReferencePlacement(Placeable placeable) {
            if (placeable instanceof MotionReferencePlacementDelegate) {
                ((MotionReferencePlacementDelegate) placeable).updatePlacedUnderMotionFrameOfReference(this.motionFrameOfReferencePlacement);
            }
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx--R2X_6o */
        public final int mo80roundToPxR2X_6o(long j) {
            return Math.round(mo86toPxR2X_6o(j));
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public final /* synthetic */ int mo81roundToPx0680j_4(float f) {
            return Modifier.CC.m334$default$roundToPx0680j_4(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public final /* synthetic */ float mo82toDpGaN1DYA(long j) {
            return Modifier.CC.m335$default$toDpGaN1DYA(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo84toDpu2uoSUM(int i) {
            return i / getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDpSize-k-rfVVM */
        public final /* synthetic */ long mo85toDpSizekrfVVM(long j) {
            return Modifier.CC.m336$default$toDpSizekrfVVM(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public final /* synthetic */ float mo86toPxR2X_6o(long j) {
            return Modifier.CC.m337$default$toPxR2X_6o(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public final float mo87toPx0680j_4(float f) {
            return getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public final /* synthetic */ long mo88toSizeXkaWNTQ(long j) {
            return Modifier.CC.m338$default$toSizeXkaWNTQ(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public final long mo89toSpkPz2Gy4(float f) {
            return Modifier.CC.m339$default$toSp0xMU5do(this, f / getDensity());
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo83toDpu2uoSUM(float f) {
            return f / getDensity();
        }

        /* renamed from: placeRelativeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static void m535placeRelativeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, GraphicsLayer graphicsLayer) {
            if (placementScope.getParentLayoutDirection() != LayoutDirection.Ltr && placementScope.getParentWidth() != 0) {
                int parentWidth = (placementScope.getParentWidth() - placeable.width) - ((int) (j >> 32));
                placementScope.handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo530placeAtf8xVGno(IntOffset.m717plusqkQi6aY((((int) (j & 4294967295L)) & 4294967295L) | (parentWidth << 32), placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, graphicsLayer);
                return;
            }
            placementScope.handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo530placeAtf8xVGno(IntOffset.m717plusqkQi6aY(j, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, graphicsLayer);
        }
    }
}
