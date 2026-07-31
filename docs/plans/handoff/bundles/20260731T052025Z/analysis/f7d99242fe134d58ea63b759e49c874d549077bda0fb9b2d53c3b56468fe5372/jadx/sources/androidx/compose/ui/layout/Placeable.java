package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.node.MotionReferencePlacementDelegate;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        this.width = RangesKt.coerceIn((int) (this.measuredSize >> 32), Constraints.m736getMinWidthimpl(this.measurementConstraints), Constraints.m734getMaxWidthimpl(this.measurementConstraints));
        this.height = RangesKt.coerceIn((int) (this.measuredSize & 4294967295L), Constraints.m735getMinHeightimpl(this.measurementConstraints), Constraints.m733getMaxHeightimpl(this.measurementConstraints));
        int i = this.width;
        long j = this.measuredSize;
        this.apparentToRealOffset = (((i - ((int) (j >> 32))) / 2) << 32) | (4294967295L & ((r0 - ((int) (j & 4294967295L))) / 2));
    }

    /* renamed from: placeAt-f8xVGno, reason: not valid java name */
    public void mo589placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        mo575placeAtf8xVGno(j, f, (Function1) null);
    }

    /* renamed from: placeAt-f8xVGno */
    public abstract void mo575placeAtf8xVGno(long j, float f, Function1 function1);

    /* renamed from: setMeasuredSize-ozmzZPI, reason: not valid java name */
    public final void m590setMeasuredSizeozmzZPI(long j) {
        if (IntSize.m768equalsimpl0(this.measuredSize, j)) {
            return;
        }
        this.measuredSize = j;
        onMeasuredSizeChanged();
    }

    /* renamed from: setMeasurementConstraints-BRTryo0, reason: not valid java name */
    public final void m591setMeasurementConstraintsBRTryo0(long j) {
        if (Constraints.m728equalsimpl0(this.measurementConstraints, j)) {
            return;
        }
        this.measurementConstraints = j;
        onMeasuredSizeChanged();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        public static void m592place70tqf50$default(PlacementScope placementScope, Placeable placeable, long j) {
            placementScope.getClass();
            access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
            placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j, placeable.apparentToRealOffset), 0.0f, (Function1) null);
        }

        public static void placeRelative$default(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            long j = (i << 32) | (i2 & 4294967295L);
            if (placementScope.getParentLayoutDirection() == LayoutDirection.Ltr || placementScope.getParentWidth() == 0) {
                access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j, placeable.apparentToRealOffset), 0.0f, (Function1) null);
            } else {
                int parentWidth = (placementScope.getParentWidth() - placeable.width) - ((int) (j >> 32));
                access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY((parentWidth << 32) | (((int) (j & 4294967295L)) & 4294967295L), placeable.apparentToRealOffset), 0.0f, (Function1) null);
            }
        }

        public static void placeRelativeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2) {
            int i3 = PlaceableKt.$r8$clinit;
            RootMeasurePolicy$measure$1 rootMeasurePolicy$measure$1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            long j = (i << 32) | (i2 & 4294967295L);
            if (placementScope.getParentLayoutDirection() == LayoutDirection.Ltr || placementScope.getParentWidth() == 0) {
                access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j, placeable.apparentToRealOffset), 0.0f, rootMeasurePolicy$measure$1);
            } else {
                int parentWidth = (placementScope.getParentWidth() - placeable.width) - ((int) (j >> 32));
                access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY((parentWidth << 32) | (((int) (j & 4294967295L)) & 4294967295L), placeable.apparentToRealOffset), 0.0f, rootMeasurePolicy$measure$1);
            }
        }

        public static void placeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2, Function1 function1, int i3) {
            if ((i3 & 8) != 0) {
                int i4 = PlaceableKt.$r8$clinit;
                function1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            }
            placementScope.getClass();
            access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
            placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY((i2 & 4294967295L) | (i << 32), placeable.apparentToRealOffset), 0.0f, function1);
        }

        /* renamed from: placeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static void m593placeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j) {
            int i = PlaceableKt.$r8$clinit;
            RootMeasurePolicy$measure$1 rootMeasurePolicy$measure$1 = RootMeasurePolicy$measure$1.INSTANCE$1;
            placementScope.getClass();
            access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
            placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j, placeable.apparentToRealOffset), 0.0f, rootMeasurePolicy$measure$1);
        }

        public float current(VerticalRuler verticalRuler) {
            return Float.NaN;
        }

        public abstract LayoutDirection getParentLayoutDirection();

        public abstract int getParentWidth();

        public final void place(Placeable placeable, int i, int i2, float f) {
            access$handleMotionFrameOfReferencePlacement(this, placeable);
            placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY((i2 & 4294967295L) | (i << 32), placeable.apparentToRealOffset), f, (Function1) null);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public final /* synthetic */ int mo171roundToPx0680j_4(float f) {
            return Modifier.CC.m388$default$roundToPx0680j_4(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public final /* synthetic */ float mo172toDpGaN1DYA(long j) {
            return Modifier.CC.m389$default$toDpGaN1DYA(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo174toDpu2uoSUM(int i) {
            return i / getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDpSize-k-rfVVM */
        public final /* synthetic */ long mo175toDpSizekrfVVM(long j) {
            return Modifier.CC.m390$default$toDpSizekrfVVM(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public final /* synthetic */ float mo176toPxR2X_6o(long j) {
            return Modifier.CC.m391$default$toPxR2X_6o(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public final float mo177toPx0680j_4(float f) {
            return getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public final /* synthetic */ long mo178toSizeXkaWNTQ(long j) {
            return Modifier.CC.m392$default$toSizeXkaWNTQ(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-0xMU5do */
        public final /* synthetic */ long mo179toSp0xMU5do(float f) {
            return Modifier.CC.m393$default$toSp0xMU5do(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public final long mo180toSpkPz2Gy4(float f) {
            return Modifier.CC.m393$default$toSp0xMU5do(this, f / getDensity());
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo173toDpu2uoSUM(float f) {
            return f / getDensity();
        }
    }
}
