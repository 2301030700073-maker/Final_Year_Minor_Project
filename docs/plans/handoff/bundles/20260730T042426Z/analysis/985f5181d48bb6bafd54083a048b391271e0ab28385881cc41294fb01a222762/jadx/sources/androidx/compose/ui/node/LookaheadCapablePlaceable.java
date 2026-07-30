package androidx.compose.ui.node;

import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.collection.MutableObjectFloatMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.Ruler;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.FontScaling;
import androidx.compose.ui.unit.IntOffset;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LookaheadDelegate.kt */
/* loaded from: classes.dex */
public abstract class LookaheadCapablePlaceable extends Placeable implements MeasureScope, MotionReferencePlacementDelegate {
    public static final Companion Companion = new Companion(null);
    private static final Function1 onCommitAffectingRuler = new Function1() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((PlaceableResult) obj);
            return Unit.INSTANCE;
        }

        public final void invoke(PlaceableResult placeableResult) {
            if (placeableResult.isValidOwnerScope()) {
                placeableResult.getPlaceable().captureRulers(placeableResult);
            }
        }
    };
    private RulerScope _rulerScope;
    private boolean isPlacedUnderMotionFrameOfReference;
    private boolean isPlacingForAlignment;
    private boolean isShallowPlacing;
    private final Placeable.PlacementScope placementScope = PlaceableKt.PlacementScope(this);
    private MutableScatterMap rulerReaders;
    private MutableObjectFloatMap rulerValues;
    private MutableObjectFloatMap rulerValuesCache;

    public abstract int calculateAlignmentLine(AlignmentLine alignmentLine);

    public abstract LookaheadCapablePlaceable getChild();

    public abstract LayoutCoordinates getCoordinates();

    public abstract boolean getHasMeasureResult();

    public abstract LayoutNode getLayoutNode();

    public abstract MeasureResult getMeasureResult$ui_release();

    public abstract LookaheadCapablePlaceable getParent();

    /* renamed from: getPosition-nOcc-ac, reason: not valid java name */
    public abstract long mo1850getPositionnOccac();

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean isLookingAhead() {
        return false;
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public /* synthetic */ MeasureResult layout(int i, int i2, Map map, Function1 function1) {
        MeasureResult layout;
        layout = layout(i, i2, map, null, function1);
        return layout;
    }

    public abstract void replace$ui_release();

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public /* synthetic */ int mo207roundToPx0680j_4(float f) {
        return Density.CC.m2414$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* renamed from: toDp-GaN1DYA */
    public /* synthetic */ float mo208toDpGaN1DYA(long j) {
        return FontScaling.CC.m2457$default$toDpGaN1DYA(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public /* synthetic */ float mo209toDpu2uoSUM(float f) {
        float m2424constructorimpl;
        m2424constructorimpl = Dp.m2424constructorimpl(f / getDensity());
        return m2424constructorimpl;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public /* synthetic */ float mo210toDpu2uoSUM(int i) {
        float m2424constructorimpl;
        m2424constructorimpl = Dp.m2424constructorimpl(i / getDensity());
        return m2424constructorimpl;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public /* synthetic */ long mo211toDpSizekrfVVM(long j) {
        return Density.CC.m2417$default$toDpSizekrfVVM(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public /* synthetic */ float mo212toPxR2X_6o(long j) {
        return Density.CC.m2418$default$toPxR2X_6o(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public /* synthetic */ float mo213toPx0680j_4(float f) {
        return Density.CC.m2419$default$toPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public /* synthetic */ long mo214toSizeXkaWNTQ(long j) {
        return Density.CC.m2420$default$toSizeXkaWNTQ(this, j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* renamed from: toSp-0xMU5do */
    public /* synthetic */ long mo215toSp0xMU5do(float f) {
        return FontScaling.CC.m2458$default$toSp0xMU5do(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public /* synthetic */ long mo216toSpkPz2Gy4(float f) {
        long mo215toSp0xMU5do;
        mo215toSp0xMU5do = mo215toSp0xMU5do(mo209toDpu2uoSUM(f));
        return mo215toSp0xMU5do;
    }

    public boolean isPlacedUnderMotionFrameOfReference() {
        return this.isPlacedUnderMotionFrameOfReference;
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public void setPlacedUnderMotionFrameOfReference(boolean z) {
        this.isPlacedUnderMotionFrameOfReference = z;
    }

    public final RulerScope getRulerScope() {
        RulerScope rulerScope = this._rulerScope;
        return rulerScope == null ? new RulerScope() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$rulerScope$1
            @Override // androidx.compose.ui.unit.Density
            /* renamed from: roundToPx-0680j_4 */
            public /* synthetic */ int mo207roundToPx0680j_4(float f) {
                return Density.CC.m2414$default$roundToPx0680j_4(this, f);
            }

            @Override // androidx.compose.ui.unit.FontScaling
            /* renamed from: toDp-GaN1DYA */
            public /* synthetic */ float mo208toDpGaN1DYA(long j) {
                return FontScaling.CC.m2457$default$toDpGaN1DYA(this, j);
            }

            @Override // androidx.compose.ui.unit.Density
            /* renamed from: toDp-u2uoSUM */
            public /* synthetic */ float mo209toDpu2uoSUM(float f) {
                float m2424constructorimpl;
                m2424constructorimpl = Dp.m2424constructorimpl(f / getDensity());
                return m2424constructorimpl;
            }

            @Override // androidx.compose.ui.unit.Density
            /* renamed from: toDp-u2uoSUM */
            public /* synthetic */ float mo210toDpu2uoSUM(int i) {
                float m2424constructorimpl;
                m2424constructorimpl = Dp.m2424constructorimpl(i / getDensity());
                return m2424constructorimpl;
            }

            @Override // androidx.compose.ui.unit.Density
            /* renamed from: toDpSize-k-rfVVM */
            public /* synthetic */ long mo211toDpSizekrfVVM(long j) {
                return Density.CC.m2417$default$toDpSizekrfVVM(this, j);
            }

            @Override // androidx.compose.ui.unit.Density
            /* renamed from: toPx--R2X_6o */
            public /* synthetic */ float mo212toPxR2X_6o(long j) {
                return Density.CC.m2418$default$toPxR2X_6o(this, j);
            }

            @Override // androidx.compose.ui.unit.Density
            /* renamed from: toPx-0680j_4 */
            public /* synthetic */ float mo213toPx0680j_4(float f) {
                return Density.CC.m2419$default$toPx0680j_4(this, f);
            }

            @Override // androidx.compose.ui.unit.Density
            /* renamed from: toSize-XkaWNTQ */
            public /* synthetic */ long mo214toSizeXkaWNTQ(long j) {
                return Density.CC.m2420$default$toSizeXkaWNTQ(this, j);
            }

            @Override // androidx.compose.ui.unit.FontScaling
            /* renamed from: toSp-0xMU5do */
            public /* synthetic */ long mo215toSp0xMU5do(float f) {
                return FontScaling.CC.m2458$default$toSp0xMU5do(this, f);
            }

            @Override // androidx.compose.ui.unit.Density
            /* renamed from: toSp-kPz2Gy4 */
            public /* synthetic */ long mo216toSpkPz2Gy4(float f) {
                long mo215toSp0xMU5do;
                mo215toSp0xMU5do = mo215toSp0xMU5do(mo209toDpu2uoSUM(f));
                return mo215toSp0xMU5do;
            }

            @Override // androidx.compose.ui.unit.Density
            public float getDensity() {
                return LookaheadCapablePlaceable.this.getDensity();
            }

            @Override // androidx.compose.ui.unit.FontScaling
            public float getFontScale() {
                return LookaheadCapablePlaceable.this.getFontScale();
            }
        } : rulerScope;
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int get(AlignmentLine alignmentLine) {
        int calculateAlignmentLine;
        if (getHasMeasureResult() && (calculateAlignmentLine = calculateAlignmentLine(alignmentLine)) != Integer.MIN_VALUE) {
            return calculateAlignmentLine + IntOffset.m2466getYimpl(m1767getApparentToRealOffsetnOccac());
        }
        return Integer.MIN_VALUE;
    }

    public final boolean isShallowPlacing$ui_release() {
        return this.isShallowPlacing;
    }

    public final void setShallowPlacing$ui_release(boolean z) {
        this.isShallowPlacing = z;
    }

    public final boolean isPlacingForAlignment$ui_release() {
        return this.isPlacingForAlignment;
    }

    public final void setPlacingForAlignment$ui_release(boolean z) {
        this.isPlacingForAlignment = z;
    }

    public final Placeable.PlacementScope getPlacementScope() {
        return this.placementScope;
    }

    protected final void invalidateAlignmentLinesFromPositionChange(NodeCoordinator nodeCoordinator) {
        AlignmentLines alignmentLines;
        NodeCoordinator wrapped$ui_release = nodeCoordinator.getWrapped$ui_release();
        if (!Intrinsics.areEqual(wrapped$ui_release != null ? wrapped$ui_release.getLayoutNode() : null, nodeCoordinator.getLayoutNode())) {
            nodeCoordinator.getAlignmentLinesOwner().getAlignmentLines().onAlignmentsChanged();
            return;
        }
        AlignmentLinesOwner parentAlignmentLinesOwner = nodeCoordinator.getAlignmentLinesOwner().getParentAlignmentLinesOwner();
        if (parentAlignmentLinesOwner == null || (alignmentLines = parentAlignmentLinesOwner.getAlignmentLines()) == null) {
            return;
        }
        alignmentLines.onAlignmentsChanged();
    }

    private final LookaheadCapablePlaceable findAncestorRulerDefiner(Ruler ruler) {
        LookaheadCapablePlaceable parent;
        LookaheadCapablePlaceable lookaheadCapablePlaceable = this;
        while (true) {
            MutableObjectFloatMap mutableObjectFloatMap = lookaheadCapablePlaceable.rulerValues;
            if ((mutableObjectFloatMap != null && mutableObjectFloatMap.contains(ruler)) || (parent = lookaheadCapablePlaceable.getParent()) == null) {
                return lookaheadCapablePlaceable;
            }
            lookaheadCapablePlaceable = parent;
        }
    }

    private final void invalidateChildrenOfDefiningRuler(Ruler ruler) {
        MutableScatterMap mutableScatterMap = findAncestorRulerDefiner(ruler).rulerReaders;
        MutableScatterSet mutableScatterSet = mutableScatterMap != null ? (MutableScatterSet) mutableScatterMap.remove(ruler) : null;
        if (mutableScatterSet != null) {
            notifyRulerValueChange(mutableScatterSet);
        }
    }

    public final void captureRulers$ui_release(MeasureResult measureResult) {
        if (measureResult != null) {
            captureRulers(new PlaceableResult(measureResult, this));
            return;
        }
        MutableScatterMap mutableScatterMap = this.rulerReaders;
        if (mutableScatterMap != null) {
            Object[] objArr = mutableScatterMap.values;
            long[] jArr = mutableScatterMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                notifyRulerValueChange((MutableScatterSet) objArr[(i << 3) + i3]);
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        MutableScatterMap mutableScatterMap2 = this.rulerReaders;
        if (mutableScatterMap2 != null) {
            mutableScatterMap2.clear();
        }
        MutableObjectFloatMap mutableObjectFloatMap = this.rulerValues;
        if (mutableObjectFloatMap != null) {
            mutableObjectFloatMap.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void captureRulers(final PlaceableResult placeableResult) {
        LookaheadCapablePlaceable parent;
        MutableScatterSet mutableScatterSet;
        OwnerSnapshotObserver snapshotObserver;
        if (this.isPlacingForAlignment) {
            return;
        }
        Function1 rulers = placeableResult.getResult().getRulers();
        MutableScatterMap mutableScatterMap = this.rulerReaders;
        char c = 7;
        long j = -9187201950435737472L;
        int i = 0;
        if (rulers == null) {
            if (mutableScatterMap != null) {
                Object[] objArr = mutableScatterMap.values;
                long[] jArr = mutableScatterMap.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j2 = jArr[i2];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i3 = 8 - ((~(i2 - length)) >>> 31);
                            for (int i4 = 0; i4 < i3; i4++) {
                                if ((j2 & 255) < 128) {
                                    notifyRulerValueChange((MutableScatterSet) objArr[(i2 << 3) + i4]);
                                }
                                j2 >>= 8;
                            }
                            if (i3 != 8) {
                                break;
                            }
                        }
                        if (i2 == length) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                mutableScatterMap.clear();
                return;
            }
            return;
        }
        MutableObjectFloatMap mutableObjectFloatMap = this.rulerValuesCache;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i5 = 1;
        if (mutableObjectFloatMap == null) {
            mutableObjectFloatMap = new MutableObjectFloatMap(i, i5, defaultConstructorMarker);
            this.rulerValuesCache = mutableObjectFloatMap;
        }
        MutableObjectFloatMap mutableObjectFloatMap2 = this.rulerValues;
        if (mutableObjectFloatMap2 == null) {
            mutableObjectFloatMap2 = new MutableObjectFloatMap(i, i5, defaultConstructorMarker);
            this.rulerValues = mutableObjectFloatMap2;
        }
        mutableObjectFloatMap.putAll(mutableObjectFloatMap2);
        mutableObjectFloatMap2.clear();
        Owner owner$ui_release = getLayoutNode().getOwner$ui_release();
        if (owner$ui_release != null && (snapshotObserver = owner$ui_release.getSnapshotObserver()) != null) {
            snapshotObserver.observeReads$ui_release(placeableResult, onCommitAffectingRuler, new Function0() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$captureRulers$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m1851invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m1851invoke() {
                    Function1 rulers2 = PlaceableResult.this.getResult().getRulers();
                    if (rulers2 != null) {
                        rulers2.invoke(this.getRulerScope());
                    }
                }
            });
        }
        if (mutableScatterMap != null) {
            Object[] objArr2 = mutableObjectFloatMap.keys;
            float[] fArr = mutableObjectFloatMap.values;
            long[] jArr2 = mutableObjectFloatMap.metadata;
            int length2 = jArr2.length - 2;
            if (length2 >= 0) {
                int i6 = 0;
                while (true) {
                    long j3 = jArr2[i6];
                    if ((((~j3) << 7) & j3 & j) != j) {
                        int i7 = 8 - ((~(i6 - length2)) >>> 31);
                        for (int i8 = 0; i8 < i7; i8++) {
                            if ((j3 & 255) < 128) {
                                int i9 = (i6 << 3) + i8;
                                Object obj = objArr2[i9];
                                float f = fArr[i9];
                                ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
                                if (mutableObjectFloatMap2.getOrDefault(null, Float.NaN) != f && (mutableScatterSet = (MutableScatterSet) mutableScatterMap.remove(null)) != null) {
                                    notifyRulerValueChange(mutableScatterSet);
                                }
                            }
                            j3 >>= 8;
                        }
                        if (i7 != 8) {
                            break;
                        }
                    }
                    if (i6 == length2) {
                        break;
                    }
                    i6++;
                    j = -9187201950435737472L;
                }
            }
        }
        Object[] objArr3 = mutableObjectFloatMap2.keys;
        long[] jArr3 = mutableObjectFloatMap2.metadata;
        int length3 = jArr3.length - 2;
        if (length3 >= 0) {
            int i10 = 0;
            while (true) {
                long j4 = jArr3[i10];
                if ((((~j4) << c) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length3)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((j4 & 255) < 128) {
                            ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(objArr3[(i10 << 3) + i12]);
                            if (!mutableObjectFloatMap.contains(null) && (parent = getParent()) != null) {
                                parent.invalidateChildrenOfDefiningRuler(null);
                            }
                        }
                        j4 >>= 8;
                    }
                    if (i11 != 8) {
                        break;
                    }
                }
                if (i10 == length3) {
                    break;
                }
                i10++;
                c = 7;
            }
        }
        mutableObjectFloatMap.clear();
    }

    /* compiled from: LookaheadDelegate.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public MeasureResult layout(final int i, final int i2, final Map map, final Function1 function1, final Function1 function12) {
        if (!((i & (-16777216)) == 0 && ((-16777216) & i2) == 0)) {
            InlineClassHelperKt.throwIllegalStateException("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$layout$1
            @Override // androidx.compose.ui.layout.MeasureResult
            public int getWidth() {
                return i;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getHeight() {
                return i2;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public Map getAlignmentLines() {
                return map;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public Function1 getRulers() {
                return function1;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public void placeChildren() {
                function12.invoke(this.getPlacementScope());
            }
        };
    }

    private final void notifyRulerValueChange(MutableScatterSet mutableScatterSet) {
        LayoutNode layoutNode;
        Object[] objArr = mutableScatterSet.elements;
        long[] jArr = mutableScatterSet.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128 && (layoutNode = (LayoutNode) ((WeakReference) objArr[(i << 3) + i3]).get()) != null) {
                        if (isLookingAhead()) {
                            layoutNode.requestLookaheadRelayout$ui_release(false);
                        } else {
                            layoutNode.requestRelayout$ui_release(false);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }
}
