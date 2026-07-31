package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OuterPlacementScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.Ruler;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import java.util.Arrays;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LookaheadCapablePlaceable extends Placeable implements MotionReferencePlacementDelegate, MeasureScope {
    public ResettableRulerScope _rulerScope;
    public PlaceableResult cachedRulerPlaceableResult;
    public boolean isPlacedUnderMotionFrameOfReference;
    public boolean isPlacingForAlignment;
    public boolean isShallowPlacing;
    public final OuterPlacementScope placementScope = new OuterPlacementScope(this, 1);
    public MutableScatterMap rulerReaders;
    public RulerTrackingMap rulerValues;
    public Function1 rulersLambda;

    public static void invalidateAlignmentLinesFromPositionChange(NodeCoordinator nodeCoordinator) {
        LookaheadAlignmentLines lookaheadAlignmentLines;
        NodeCoordinator nodeCoordinator2 = nodeCoordinator.wrapped;
        LayoutNode layoutNode = nodeCoordinator.layoutNode;
        if (!Intrinsics.areEqual(nodeCoordinator2 != null ? nodeCoordinator2.layoutNode : null, layoutNode)) {
            layoutNode.layoutDelegate.measurePassDelegate.alignmentLines.onAlignmentsChanged();
            return;
        }
        AlignmentLinesOwner parentAlignmentLinesOwner = layoutNode.layoutDelegate.measurePassDelegate.getParentAlignmentLinesOwner();
        if (parentAlignmentLinesOwner == null || (lookaheadAlignmentLines = ((MeasurePassDelegate) parentAlignmentLinesOwner).alignmentLines) == null) {
            return;
        }
        lookaheadAlignmentLines.onAlignmentsChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addRulerReader(androidx.compose.ui.node.LayoutNode r32, androidx.compose.ui.layout.Ruler r33) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LookaheadCapablePlaceable.addRulerReader(androidx.compose.ui.node.LayoutNode, androidx.compose.ui.layout.Ruler):void");
    }

    public abstract int calculateAlignmentLine(AlignmentLine alignmentLine);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: captureRulers-OSxE8f4, reason: not valid java name */
    public final void m327captureRulersOSxE8f4(final PlaceableResult placeableResult, final long j, final long j2) {
        boolean z;
        char c;
        long j3;
        long j4;
        long j5;
        LayoutNode layoutNode;
        boolean z2;
        int i;
        char c2;
        long j6;
        OwnerSnapshotObserver snapshotObserver;
        MutableScatterMap mutableScatterMap = this.rulerReaders;
        RulerTrackingMap rulerTrackingMap = this.rulerValues;
        if (rulerTrackingMap == null) {
            rulerTrackingMap = new RulerTrackingMap();
            this.rulerValues = rulerTrackingMap;
        }
        RulerTrackingMap rulerTrackingMap2 = rulerTrackingMap;
        Owner owner = getLayoutNode().owner;
        if (owner != null && (snapshotObserver = ((AndroidComposeView) owner).getSnapshotObserver()) != null) {
            snapshotObserver.observer.observeReads(placeableResult, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$2, new Function0() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$captureRulers$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    LookaheadCapablePlaceable.this.getRulerScope().coordinatesAccessed = false;
                    LookaheadCapablePlaceable.this.getRulerScope().positionOnScreen = j;
                    LookaheadCapablePlaceable.this.getRulerScope().size = j2;
                    Function1 rulers = placeableResult.result.getRulers();
                    if (rulers != null) {
                        rulers.invoke(LookaheadCapablePlaceable.this.getRulerScope());
                    }
                    return Unit.INSTANCE;
                }
            });
        }
        boolean isLookingAhead = isLookingAhead();
        MutableScatterSet mutableScatterSet = (MutableScatterSet) rulerTrackingMap2.layoutNodes;
        MutableScatterSet mutableScatterSet2 = (MutableScatterSet) rulerTrackingMap2.newRulers;
        int i2 = rulerTrackingMap2.size;
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = ((byte[]) rulerTrackingMap2.accessFlags)[i3];
            if (b == 3) {
                Ruler ruler = ((Ruler[]) rulerTrackingMap2.rulers)[i3];
                ruler.getClass();
                mutableScatterSet2.plusAssign(ruler);
            } else if (b != 0 && mutableScatterMap != null) {
                Ruler ruler2 = ((Ruler[]) rulerTrackingMap2.rulers)[i3];
                ruler2.getClass();
                MutableScatterSet mutableScatterSet3 = (MutableScatterSet) mutableScatterMap.remove(ruler2);
                if (mutableScatterSet3 != null) {
                    mutableScatterSet.plusAssign((ScatterSet) mutableScatterSet3);
                }
            }
        }
        int i4 = rulerTrackingMap2.size;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            byte[] bArr = (byte[]) rulerTrackingMap2.accessFlags;
            if (bArr[i6] == 2) {
                i5++;
            } else if (i5 > 0) {
                Ruler[] rulerArr = (Ruler[]) rulerTrackingMap2.rulers;
                rulerArr[i6 - i5] = rulerArr[i6];
            }
            bArr[i6] = 2;
        }
        int i7 = rulerTrackingMap2.size;
        for (int i8 = i7 - i5; i8 < i7; i8++) {
            ((Ruler[]) rulerTrackingMap2.rulers)[i8] = null;
        }
        rulerTrackingMap2.size -= i5;
        LookaheadCapablePlaceable parent = getParent();
        Object[] objArr = mutableScatterSet2.elements;
        long[] jArr = mutableScatterSet2.metadata;
        int length = jArr.length - 2;
        char c3 = 7;
        long j7 = -9187201950435737472L;
        int i9 = 8;
        if (length >= 0) {
            j4 = 128;
            int i10 = 0;
            while (true) {
                long j8 = jArr[i10];
                j5 = 255;
                if ((((~j8) << c3) & j8 & j7) != j7) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    int i12 = 0;
                    while (i12 < i11) {
                        if ((j8 & 255) < 128) {
                            c2 = c3;
                            Ruler ruler3 = (Ruler) objArr[(i10 << 3) + i12];
                            j6 = j7;
                            LookaheadCapablePlaceable lookaheadCapablePlaceable = parent == null ? this : parent;
                            i = i9;
                            LookaheadCapablePlaceable lookaheadCapablePlaceable2 = lookaheadCapablePlaceable;
                            while (true) {
                                RulerTrackingMap rulerTrackingMap3 = lookaheadCapablePlaceable2.rulerValues;
                                if (rulerTrackingMap3 != null) {
                                    z2 = isLookingAhead;
                                    if (ArraysKt.contains((Ruler[]) rulerTrackingMap3.rulers, ruler3)) {
                                        break;
                                    }
                                } else {
                                    z2 = isLookingAhead;
                                }
                                LookaheadCapablePlaceable parent2 = lookaheadCapablePlaceable2.getParent();
                                if (parent2 == null) {
                                    break;
                                }
                                lookaheadCapablePlaceable2 = parent2;
                                isLookingAhead = z2;
                            }
                            MutableScatterMap mutableScatterMap2 = lookaheadCapablePlaceable2.rulerReaders;
                            MutableScatterSet mutableScatterSet4 = mutableScatterMap2 != null ? (MutableScatterSet) mutableScatterMap2.remove(ruler3) : null;
                            if (mutableScatterSet4 != null) {
                                lookaheadCapablePlaceable.notifyRulerValueChange(mutableScatterSet4);
                            }
                        } else {
                            z2 = isLookingAhead;
                            i = i9;
                            c2 = c3;
                            j6 = j7;
                        }
                        j8 >>= i;
                        i12++;
                        c3 = c2;
                        j7 = j6;
                        i9 = i;
                        isLookingAhead = z2;
                    }
                    z = isLookingAhead;
                    c = c3;
                    j3 = j7;
                    if (i11 != i9) {
                        break;
                    }
                } else {
                    z = isLookingAhead;
                    c = c3;
                    j3 = j7;
                }
                if (i10 == length) {
                    break;
                }
                i10++;
                c3 = c;
                j7 = j3;
                isLookingAhead = z;
                i9 = 8;
            }
        } else {
            z = isLookingAhead;
            c = 7;
            j3 = -9187201950435737472L;
            j4 = 128;
            j5 = 255;
        }
        mutableScatterSet2.clear();
        Object[] objArr2 = mutableScatterSet.elements;
        long[] jArr2 = mutableScatterSet.metadata;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i13 = 0;
            while (true) {
                long j9 = jArr2[i13];
                if ((((~j9) << c) & j9 & j3) != j3) {
                    int i14 = 8 - ((~(i13 - length2)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((j9 & j5) < j4 && (layoutNode = (LayoutNode) ((WeakReference) objArr2[(i13 << 3) + i15]).get()) != null) {
                            if (z) {
                                layoutNode.requestLookaheadRelayout$ui(false);
                            } else {
                                layoutNode.requestRelayout$ui(false);
                            }
                        }
                        j9 >>= 8;
                    }
                    if (i14 != 8) {
                        break;
                    }
                }
                if (i13 == length2) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        mutableScatterSet.clear();
    }

    public final void captureRulersIfNeeded$ui(MeasureResult measureResult) {
        long j;
        long j2;
        MutableScatterMap mutableScatterMap = this.rulerReaders;
        if (this.isPlacingForAlignment) {
            return;
        }
        Function1 rulers = measureResult.getRulers();
        if (rulers != null) {
            boolean z = this.rulersLambda != rulers;
            if (z || !getRulerScope().coordinatesAccessed) {
                j = 0;
                j2 = 9223372034707292159L;
            } else {
                LayoutCoordinates coordinates = getCoordinates();
                long m728roundk4lQ0M = Options.Companion.m728roundk4lQ0M(coordinates.mo299localToScreenMKHz9U(0L));
                long mo296getSizeYbymL2g = coordinates.mo296getSizeYbymL2g();
                j2 = m728roundk4lQ0M;
                j = mo296getSizeYbymL2g;
                z = (IntOffset.m445equalsimpl0(m728roundk4lQ0M, getRulerScope().positionOnScreen) && IntSize.m449equalsimpl0(mo296getSizeYbymL2g, getRulerScope().size)) ? false : true;
            }
            if (z) {
                PlaceableResult placeableResult = this.cachedRulerPlaceableResult;
                if (placeableResult != null) {
                    placeableResult.result = measureResult;
                } else {
                    placeableResult = new PlaceableResult(measureResult, this);
                    this.cachedRulerPlaceableResult = placeableResult;
                }
                m327captureRulersOSxE8f4(placeableResult, j2, j);
                this.rulersLambda = measureResult.getRulers();
                return;
            }
            return;
        }
        if (mutableScatterMap != null) {
            Object[] objArr = mutableScatterMap.values;
            long[] jArr = mutableScatterMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j3 = jArr[i];
                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j3) < 128) {
                                notifyRulerValueChange((MutableScatterSet) objArr[(i << 3) + i3]);
                            }
                            j3 >>= 8;
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
            mutableScatterMap.clear();
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    public final int get(AlignmentLine alignmentLine) {
        int calculateAlignmentLine;
        if (!getHasMeasureResult() || (calculateAlignmentLine = calculateAlignmentLine(alignmentLine)) == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        boolean z = alignmentLine instanceof VerticalAlignmentLine;
        long j = this.apparentToRealOffset;
        return calculateAlignmentLine + ((int) (z ? j >> 32 : 4294967295L & j));
    }

    public abstract LookaheadCapablePlaceable getChild();

    public abstract LayoutCoordinates getCoordinates();

    public abstract boolean getHasMeasureResult();

    public abstract LayoutNode getLayoutNode();

    public abstract MeasureResult getMeasureResult$ui();

    public abstract LookaheadCapablePlaceable getParent();

    /* renamed from: getPosition-nOcc-ac, reason: not valid java name */
    public abstract long mo328getPositionnOccac();

    public final ResettableRulerScope getRulerScope() {
        ResettableRulerScope resettableRulerScope = this._rulerScope;
        if (resettableRulerScope != null) {
            return resettableRulerScope;
        }
        ResettableRulerScope resettableRulerScope2 = new ResettableRulerScope();
        this._rulerScope = resettableRulerScope2;
        return resettableRulerScope2;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean isLookingAhead() {
        return false;
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult layout(final int i, final int i2, final Map map, final Function1 function1, final Function1 function12) {
        if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
            InlineClassHelperKt.throwIllegalStateException("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$layout$1
            @Override // androidx.compose.ui.layout.MeasureResult
            public final Map getAlignmentLines() {
                return map;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final int getHeight() {
                return i2;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final Function1 getRulers() {
                return function1;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final int getWidth() {
                return i;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void placeChildren() {
                function12.invoke(this.placementScope);
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void notifyRulerValueChange(MutableScatterSet mutableScatterSet) {
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
                            layoutNode.requestLookaheadRelayout$ui(false);
                        } else {
                            layoutNode.requestRelayout$ui(false);
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

    public abstract void replace$ui();

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

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void updatePlacedUnderMotionFrameOfReference(boolean z) {
        LookaheadCapablePlaceable parent = getParent();
        LayoutNode layoutNode = parent != null ? parent.getLayoutNode() : null;
        if (Intrinsics.areEqual(layoutNode, getLayoutNode())) {
            this.isPlacedUnderMotionFrameOfReference = z;
            return;
        }
        if ((layoutNode != null ? layoutNode.layoutDelegate.layoutState : null) != LayoutNode.LayoutState.LayingOut) {
            if ((layoutNode != null ? layoutNode.layoutDelegate.layoutState : null) != LayoutNode.LayoutState.LookaheadLayingOut) {
                return;
            }
        }
        this.isPlacedUnderMotionFrameOfReference = z;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo60toDpu2uoSUM(float f) {
        return f / getDensity();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ResettableRulerScope implements Density {
        public boolean coordinatesAccessed;
        public long positionOnScreen = 9223372034707292159L;
        public long size = 0;

        public ResettableRulerScope() {
        }

        public final LayoutCoordinates getCoordinates() {
            this.coordinatesAccessed = true;
            LookaheadCapablePlaceable lookaheadCapablePlaceable = LookaheadCapablePlaceable.this;
            LayoutCoordinates coordinates = lookaheadCapablePlaceable.getCoordinates();
            if (IntOffset.m445equalsimpl0(this.positionOnScreen, 9223372034707292159L)) {
                this.positionOnScreen = Options.Companion.m728roundk4lQ0M(coordinates.mo299localToScreenMKHz9U(0L));
                this.size = coordinates.mo296getSizeYbymL2g();
            }
            lookaheadCapablePlaceable.getLayoutNode().layoutDelegate.onCoordinatesUsed();
            return coordinates;
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getDensity() {
            return LookaheadCapablePlaceable.this.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getFontScale() {
            return LookaheadCapablePlaceable.this.getFontScale();
        }

        public final void provides(Ruler ruler, float f) {
            LookaheadCapablePlaceable lookaheadCapablePlaceable = LookaheadCapablePlaceable.this;
            RulerTrackingMap rulerTrackingMap = lookaheadCapablePlaceable.rulerValues;
            if (rulerTrackingMap == null) {
                rulerTrackingMap = new RulerTrackingMap();
                lookaheadCapablePlaceable.rulerValues = rulerTrackingMap;
            }
            int indexOf = ArraysKt.indexOf((Ruler[]) rulerTrackingMap.rulers, ruler);
            if (indexOf >= 0) {
                float[] fArr = (float[]) rulerTrackingMap.values;
                if (fArr[indexOf] != f) {
                    fArr[indexOf] = f;
                    ((byte[]) rulerTrackingMap.accessFlags)[indexOf] = 1;
                    return;
                } else {
                    byte[] bArr = (byte[]) rulerTrackingMap.accessFlags;
                    if (bArr[indexOf] == 2) {
                        bArr[indexOf] = 0;
                        return;
                    }
                    return;
                }
            }
            int i = rulerTrackingMap.size;
            Ruler[] rulerArr = (Ruler[]) rulerTrackingMap.rulers;
            if (i == rulerArr.length) {
                int i2 = i * 2;
                rulerTrackingMap.rulers = (Ruler[]) Arrays.copyOf(rulerArr, i2);
                rulerTrackingMap.values = Arrays.copyOf((float[]) rulerTrackingMap.values, i2);
                rulerTrackingMap.accessFlags = Arrays.copyOf((byte[]) rulerTrackingMap.accessFlags, i2);
            }
            ((Ruler[]) rulerTrackingMap.rulers)[i] = ruler;
            ((byte[]) rulerTrackingMap.accessFlags)[i] = 3;
            ((float[]) rulerTrackingMap.values)[i] = f;
            rulerTrackingMap.size++;
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
            return i / LookaheadCapablePlaceable.this.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public final /* synthetic */ float mo62toPxR2X_6o(long j) {
            return Owner.CC.m360$default$toPxR2X_6o(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public final float mo63toPx0680j_4(float f) {
            return LookaheadCapablePlaceable.this.getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public final /* synthetic */ long mo64toSizeXkaWNTQ(long j) {
            return Owner.CC.m361$default$toSizeXkaWNTQ(j, this);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public final long mo65toSpkPz2Gy4(float f) {
            return Owner.CC.m362$default$toSp0xMU5do(this, mo60toDpu2uoSUM(f));
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo60toDpu2uoSUM(float f) {
            return f / LookaheadCapablePlaceable.this.getDensity();
        }
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult layout(int i, int i2, Map map, Function1 function1) {
        return layout(i, i2, map, null, function1);
    }
}
