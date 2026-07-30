package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.node.MotionReferencePlacementDelegate;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* compiled from: Placeable.kt */
/* loaded from: classes.dex */
public abstract class Placeable implements Measured {
    private long apparentToRealOffset;
    private int height;
    private long measuredSize = IntSizeKt.IntSize(0, 0);
    private long measurementConstraints;
    private int width;

    public /* synthetic */ Object getParentData() {
        return Measured.CC.$default$getParentData(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: placeAt-f8xVGno */
    public abstract void mo1752placeAtf8xVGno(long j, float f, Function1 function1);

    public Placeable() {
        long j;
        j = PlaceableKt.DefaultConstraints;
        this.measurementConstraints = j;
        this.apparentToRealOffset = IntOffset.Companion.m2472getZeronOccac();
    }

    public final int getWidth() {
        return this.width;
    }

    public final int getHeight() {
        return this.height;
    }

    public int getMeasuredWidth() {
        return IntSize.m2484getWidthimpl(this.measuredSize);
    }

    public int getMeasuredHeight() {
        return IntSize.m2483getHeightimpl(this.measuredSize);
    }

    /* renamed from: getMeasuredSize-YbymL2g, reason: not valid java name */
    protected final long m1768getMeasuredSizeYbymL2g() {
        return this.measuredSize;
    }

    /* renamed from: setMeasuredSize-ozmzZPI, reason: not valid java name */
    protected final void m1771setMeasuredSizeozmzZPI(long j) {
        if (IntSize.m2482equalsimpl0(this.measuredSize, j)) {
            return;
        }
        this.measuredSize = j;
        onMeasuredSizeChanged();
    }

    private final void onMeasuredSizeChanged() {
        this.width = RangesKt.coerceIn(IntSize.m2484getWidthimpl(this.measuredSize), Constraints.m2399getMinWidthimpl(this.measurementConstraints), Constraints.m2397getMaxWidthimpl(this.measurementConstraints));
        this.height = RangesKt.coerceIn(IntSize.m2483getHeightimpl(this.measuredSize), Constraints.m2398getMinHeightimpl(this.measurementConstraints), Constraints.m2396getMaxHeightimpl(this.measurementConstraints));
        this.apparentToRealOffset = IntOffsetKt.IntOffset((this.width - IntSize.m2484getWidthimpl(this.measuredSize)) / 2, (this.height - IntSize.m2483getHeightimpl(this.measuredSize)) / 2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: placeAt-f8xVGno, reason: not valid java name */
    public void mo1770placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        mo1752placeAtf8xVGno(j, f, (Function1) null);
    }

    /* renamed from: getMeasurementConstraints-msEJaDk, reason: not valid java name */
    protected final long m1769getMeasurementConstraintsmsEJaDk() {
        return this.measurementConstraints;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: setMeasurementConstraints-BRTryo0, reason: not valid java name */
    public final void m1772setMeasurementConstraintsBRTryo0(long j) {
        if (Constraints.m2391equalsimpl0(this.measurementConstraints, j)) {
            return;
        }
        this.measurementConstraints = j;
        onMeasuredSizeChanged();
    }

    /* renamed from: getApparentToRealOffset-nOcc-ac, reason: not valid java name */
    protected final long m1767getApparentToRealOffsetnOccac() {
        return this.apparentToRealOffset;
    }

    /* compiled from: Placeable.kt */
    public static abstract class PlacementScope {
        private boolean motionFrameOfReferencePlacement;

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract LayoutDirection getParentLayoutDirection();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract int getParentWidth();

        /* renamed from: placeRelative-70tqf50$default, reason: not valid java name */
        public static /* synthetic */ void m1774placeRelative70tqf50$default(PlacementScope placementScope, Placeable placeable, long j, float f, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelative-70tqf50");
            }
            if ((i & 2) != 0) {
                f = 0.0f;
            }
            placementScope.m1780placeRelative70tqf50(placeable, j, f);
        }

        public static /* synthetic */ void placeRelative$default(PlacementScope placementScope, Placeable placeable, int i, int i2, float f, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelative");
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            placementScope.placeRelative(placeable, i, i2, f);
        }

        public final void placeRelative(Placeable placeable, int i, int i2, float f) {
            long IntOffset = IntOffsetKt.IntOffset(i, i2);
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset, placeable.apparentToRealOffset), f, (Function1) null);
            } else {
                long IntOffset2 = IntOffsetKt.IntOffset((getParentWidth() - placeable.getWidth()) - IntOffset.m2465getXimpl(IntOffset), IntOffset.m2466getYimpl(IntOffset));
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset2, placeable.apparentToRealOffset), f, (Function1) null);
            }
        }

        public static /* synthetic */ void place$default(PlacementScope placementScope, Placeable placeable, int i, int i2, float f, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: place");
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            placementScope.place(placeable, i, i2, f);
        }

        public final void place(Placeable placeable, int i, int i2, float f) {
            long IntOffset = IntOffsetKt.IntOffset(i, i2);
            handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset, placeable.apparentToRealOffset), f, (Function1) null);
        }

        /* renamed from: place-70tqf50$default, reason: not valid java name */
        public static /* synthetic */ void m1773place70tqf50$default(PlacementScope placementScope, Placeable placeable, long j, float f, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: place-70tqf50");
            }
            if ((i & 2) != 0) {
                f = 0.0f;
            }
            placementScope.m1779place70tqf50(placeable, j, f);
        }

        /* renamed from: placeRelativeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static /* synthetic */ void m1775placeRelativeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, float f, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM");
            }
            if ((i & 2) != 0) {
                f = 0.0f;
            }
            float f2 = f;
            if ((i & 4) != 0) {
                function1 = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.m1781placeRelativeWithLayeraW9wM(placeable, j, f2, function1);
        }

        public static /* synthetic */ void placeRelativeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2, float f, Function1 function1, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer");
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            float f2 = f;
            if ((i3 & 8) != 0) {
                function1 = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.placeRelativeWithLayer(placeable, i, i2, f2, function1);
        }

        public final void placeRelativeWithLayer(Placeable placeable, int i, int i2, float f, Function1 function1) {
            long IntOffset = IntOffsetKt.IntOffset(i, i2);
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset, placeable.apparentToRealOffset), f, function1);
            } else {
                long IntOffset2 = IntOffsetKt.IntOffset((getParentWidth() - placeable.getWidth()) - IntOffset.m2465getXimpl(IntOffset), IntOffset.m2466getYimpl(IntOffset));
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset2, placeable.apparentToRealOffset), f, function1);
            }
        }

        public static /* synthetic */ void placeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i, int i2, float f, Function1 function1, int i3, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer");
            }
            if ((i3 & 4) != 0) {
                f = 0.0f;
            }
            float f2 = f;
            if ((i3 & 8) != 0) {
                function1 = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.placeWithLayer(placeable, i, i2, f2, function1);
        }

        public final void placeWithLayer(Placeable placeable, int i, int i2, float f, Function1 function1) {
            long IntOffset = IntOffsetKt.IntOffset(i, i2);
            handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset, placeable.apparentToRealOffset), f, function1);
        }

        /* renamed from: placeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static /* synthetic */ void m1777placeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, float f, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM");
            }
            if ((i & 2) != 0) {
                f = 0.0f;
            }
            float f2 = f;
            if ((i & 4) != 0) {
                function1 = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.m1783placeWithLayeraW9wM(placeable, j, f2, function1);
        }

        /* renamed from: placeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static /* synthetic */ void m1778placeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, GraphicsLayer graphicsLayer, float f, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM");
            }
            if ((i & 4) != 0) {
                f = 0.0f;
            }
            placementScope.m1784placeWithLayeraW9wM(placeable, j, graphicsLayer, f);
        }

        /* renamed from: placeRelativeWithLayer-aW-9-wM$default, reason: not valid java name */
        public static /* synthetic */ void m1776placeRelativeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j, GraphicsLayer graphicsLayer, float f, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM");
            }
            if ((i & 4) != 0) {
                f = 0.0f;
            }
            placementScope.m1782placeRelativeWithLayeraW9wM(placeable, j, graphicsLayer, f);
        }

        /* renamed from: placeRelative-70tqf50, reason: not valid java name */
        public final void m1780placeRelative70tqf50(Placeable placeable, long j, float f) {
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(j, placeable.apparentToRealOffset), f, (Function1) null);
            } else {
                long IntOffset = IntOffsetKt.IntOffset((getParentWidth() - placeable.getWidth()) - IntOffset.m2465getXimpl(j), IntOffset.m2466getYimpl(j));
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset, placeable.apparentToRealOffset), f, (Function1) null);
            }
        }

        /* renamed from: placeRelativeWithLayer-aW-9-wM, reason: not valid java name */
        public final void m1781placeRelativeWithLayeraW9wM(Placeable placeable, long j, float f, Function1 function1) {
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(j, placeable.apparentToRealOffset), f, function1);
            } else {
                long IntOffset = IntOffsetKt.IntOffset((getParentWidth() - placeable.getWidth()) - IntOffset.m2465getXimpl(j), IntOffset.m2466getYimpl(j));
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset, placeable.apparentToRealOffset), f, function1);
            }
        }

        /* renamed from: placeRelativeWithLayer-aW-9-wM, reason: not valid java name */
        public final void m1782placeRelativeWithLayeraW9wM(Placeable placeable, long j, GraphicsLayer graphicsLayer, float f) {
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1770placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(j, placeable.apparentToRealOffset), f, graphicsLayer);
            } else {
                long IntOffset = IntOffsetKt.IntOffset((getParentWidth() - placeable.getWidth()) - IntOffset.m2465getXimpl(j), IntOffset.m2466getYimpl(j));
                handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo1770placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(IntOffset, placeable.apparentToRealOffset), f, graphicsLayer);
            }
        }

        /* renamed from: place-70tqf50, reason: not valid java name */
        public final void m1779place70tqf50(Placeable placeable, long j, float f) {
            handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(j, placeable.apparentToRealOffset), f, (Function1) null);
        }

        /* renamed from: placeWithLayer-aW-9-wM, reason: not valid java name */
        public final void m1783placeWithLayeraW9wM(Placeable placeable, long j, float f, Function1 function1) {
            handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo1752placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(j, placeable.apparentToRealOffset), f, function1);
        }

        /* renamed from: placeWithLayer-aW-9-wM, reason: not valid java name */
        public final void m1784placeWithLayeraW9wM(Placeable placeable, long j, GraphicsLayer graphicsLayer, float f) {
            handleMotionFrameOfReferencePlacement(placeable);
            placeable.mo1770placeAtf8xVGno(IntOffset.m2469plusqkQi6aY(j, placeable.apparentToRealOffset), f, graphicsLayer);
        }

        public final void withMotionFrameOfReferencePlacement(Function1 function1) {
            this.motionFrameOfReferencePlacement = true;
            function1.invoke(this);
            this.motionFrameOfReferencePlacement = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final void handleMotionFrameOfReferencePlacement(Placeable placeable) {
            if (placeable instanceof MotionReferencePlacementDelegate) {
                ((MotionReferencePlacementDelegate) placeable).setPlacedUnderMotionFrameOfReference(this.motionFrameOfReferencePlacement);
            }
        }
    }
}
