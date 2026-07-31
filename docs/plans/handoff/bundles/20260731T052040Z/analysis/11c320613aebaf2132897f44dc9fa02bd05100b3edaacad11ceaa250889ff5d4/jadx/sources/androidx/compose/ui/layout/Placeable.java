package androidx.compose.ui.layout;

import androidx.compose.ui.node.MotionReferencePlacementDelegate;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        this.width = RangesKt.coerceIn((int) (this.measuredSize >> 32), Constraints.m436getMinWidthimpl(this.measurementConstraints), Constraints.m434getMaxWidthimpl(this.measurementConstraints));
        this.height = RangesKt.coerceIn((int) (this.measuredSize & 4294967295L), Constraints.m435getMinHeightimpl(this.measurementConstraints), Constraints.m433getMaxHeightimpl(this.measurementConstraints));
        int i = this.width;
        long j = this.measuredSize;
        this.apparentToRealOffset = (((i - ((int) (j >> 32))) / 2) << 32) | (4294967295L & ((r0 - ((int) (j & 4294967295L))) / 2));
    }

    /* renamed from: placeAt-f8xVGno */
    public abstract void mo295placeAtf8xVGno(long j, float f, Function1 function1);

    /* renamed from: setMeasuredSize-ozmzZPI, reason: not valid java name */
    public final void m303setMeasuredSizeozmzZPI(long j) {
        if (IntSize.m449equalsimpl0(this.measuredSize, j)) {
            return;
        }
        this.measuredSize = j;
        onMeasuredSizeChanged();
    }

    /* renamed from: setMeasurementConstraints-BRTryo0, reason: not valid java name */
    public final void m304setMeasurementConstraintsBRTryo0(long j) {
        if (Constraints.m428equalsimpl0(this.measurementConstraints, j)) {
            return;
        }
        this.measurementConstraints = j;
        onMeasuredSizeChanged();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class PlacementScope implements Density {
        public boolean motionFrameOfReferencePlacement;

        /* JADX WARN: Multi-variable type inference failed */
        public static final void access$handleMotionFrameOfReferencePlacement(PlacementScope placementScope, Placeable placeable) {
            placementScope.getClass();
            if (placeable instanceof MotionReferencePlacementDelegate) {
                ((MotionReferencePlacementDelegate) placeable).updatePlacedUnderMotionFrameOfReference(placementScope.motionFrameOfReferencePlacement);
            }
        }

        /* renamed from: place-70tqf50$default, reason: not valid java name */
        public static void m305place70tqf50$default(PlacementScope placementScope, Placeable placeable, long j) {
            placementScope.getClass();
            access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
            placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(j, placeable.apparentToRealOffset), 0.0f, null);
        }

        public static void placeRelative$default(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            long j = (i << 32) | (i2 & 4294967295L);
            if (placementScope.getParentLayoutDirection() == LayoutDirection.Ltr || placementScope.getParentWidth() == 0) {
                access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(j, placeable.apparentToRealOffset), 0.0f, null);
            } else {
                int parentWidth = (placementScope.getParentWidth() - placeable.width) - ((int) (j >> 32));
                access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY((parentWidth << 32) | (((int) (j & 4294967295L)) & 4294967295L), placeable.apparentToRealOffset), 0.0f, null);
            }
        }

        public static void placeRelativeWithLayer$default(PlacementScope placementScope, Placeable placeable) {
            int i = PlaceableKt.$r8$clinit;
            RootMeasurePolicy$measure$1 rootMeasurePolicy$measure$1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            if (placementScope.getParentLayoutDirection() == LayoutDirection.Ltr || placementScope.getParentWidth() == 0) {
                access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(0L, placeable.apparentToRealOffset), 0.0f, rootMeasurePolicy$measure$1);
            } else {
                access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY((placementScope.getParentWidth() - placeable.width) << 32, placeable.apparentToRealOffset), 0.0f, rootMeasurePolicy$measure$1);
            }
        }

        public static void placeWithLayer$default(PlacementScope placementScope, Placeable placeable, Function1 function1) {
            placementScope.getClass();
            access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
            placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(0L, placeable.apparentToRealOffset), 0.0f, function1);
        }

        /* renamed from: placeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static void m306placeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j) {
            int i = PlaceableKt.$r8$clinit;
            RootMeasurePolicy$measure$1 rootMeasurePolicy$measure$1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            placementScope.getClass();
            access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
            placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(j, placeable.apparentToRealOffset), 0.0f, rootMeasurePolicy$measure$1);
        }

        public float current(Ruler ruler) {
            return Float.NaN;
        }

        public abstract LayoutDirection getParentLayoutDirection();

        public abstract int getParentWidth();

        public final void place(Placeable placeable, int i, int i2, float f) {
            access$handleMotionFrameOfReferencePlacement(this, placeable);
            placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY((i2 & 4294967295L) | (i << 32), placeable.apparentToRealOffset), f, null);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx--R2X_6o */
        public final int mo57roundToPxR2X_6o(long j) {
            return Math.round(mo62toPxR2X_6o(j));
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public final /* synthetic */ int mo58roundToPx0680j_4(float f) {
            return Owner.CC.m357$default$roundToPx0680j_4(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public final /* synthetic */ float mo59toDpGaN1DYA(long j) {
            return Owner.CC.m358$default$toDpGaN1DYA(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo61toDpu2uoSUM(int i) {
            return i / getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public final /* synthetic */ float mo62toPxR2X_6o(long j) {
            return Owner.CC.m360$default$toPxR2X_6o(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public final float mo63toPx0680j_4(float f) {
            return getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public final /* synthetic */ long mo64toSizeXkaWNTQ(long j) {
            return Owner.CC.m361$default$toSizeXkaWNTQ(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public final long mo65toSpkPz2Gy4(float f) {
            return Owner.CC.m362$default$toSp0xMU5do(this, f / getDensity());
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo60toDpu2uoSUM(float f) {
            return f / getDensity();
        }
    }
}
