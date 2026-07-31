package androidx.compose.ui.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubcomposeLayoutState {
    public LayoutNodeSubcompositionsState _state;
    public final SubcomposeSlotReusePolicy slotReusePolicy;
    public final SubcomposeLayoutState$setRoot$1 setRoot = new Function2() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setRoot$1
        {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            LayoutNode layoutNode = (LayoutNode) obj;
            SubcomposeLayoutState subcomposeLayoutState = SubcomposeLayoutState.this;
            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNode.subcompositionsState;
            if (layoutNodeSubcompositionsState == null) {
                layoutNodeSubcompositionsState = new LayoutNodeSubcompositionsState(layoutNode, subcomposeLayoutState.slotReusePolicy);
                layoutNode.subcompositionsState = layoutNodeSubcompositionsState;
            }
            subcomposeLayoutState._state = layoutNodeSubcompositionsState;
            SubcomposeLayoutState.this.getState().makeSureStateIsConsistent();
            LayoutNodeSubcompositionsState state = SubcomposeLayoutState.this.getState();
            SubcomposeSlotReusePolicy subcomposeSlotReusePolicy = SubcomposeLayoutState.this.slotReusePolicy;
            if (state.slotReusePolicy != subcomposeSlotReusePolicy) {
                state.slotReusePolicy = subcomposeSlotReusePolicy;
                state.markActiveNodesAsReused(false);
                LayoutNode.requestRemeasure$ui$default(state.root, false, 7);
            }
            return Unit.INSTANCE;
        }
    };
    public final SubcomposeLayoutState$setCompositionContext$1 setCompositionContext = new Function2() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setCompositionContext$1
        {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            SubcomposeLayoutState.this.getState().compositionContext = (CompositionContext) obj2;
            return Unit.INSTANCE;
        }
    };
    public final SubcomposeLayoutState$setMeasurePolicy$1 setMeasurePolicy = new Function2() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setMeasurePolicy$1
        {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            final Function2 function2 = (Function2) obj2;
            final LayoutNodeSubcompositionsState state = SubcomposeLayoutState.this.getState();
            ((LayoutNode) obj).setMeasurePolicy(new LayoutNode.NoIntrinsicsMeasurePolicy(state.NoIntrinsicsMessage) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo8measure3p2s80s(MeasureScope measureScope, List list, long j) {
                    final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                    LayoutNodeSubcompositionsState.Scope scope = layoutNodeSubcompositionsState.scope;
                    scope.layoutDirection = measureScope.getLayoutDirection();
                    scope.density = measureScope.getDensity();
                    scope.fontScale = measureScope.getFontScale();
                    boolean isLookingAhead = measureScope.isLookingAhead();
                    Function2 function22 = function2;
                    if (isLookingAhead || layoutNodeSubcompositionsState.root.lookaheadRoot == null) {
                        layoutNodeSubcompositionsState.currentIndex = 0;
                        final MeasureResult measureResult = (MeasureResult) function22.invoke(scope, new Constraints(j));
                        final int i = layoutNodeSubcompositionsState.currentIndex;
                        final int i2 = 1;
                        return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1
                            @Override // androidx.compose.ui.layout.MeasureResult
                            public final Map getAlignmentLines() {
                                switch (i2) {
                                }
                                return measureResult.getAlignmentLines();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public final int getHeight() {
                                switch (i2) {
                                }
                                return measureResult.getHeight();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public final Function1 getRulers() {
                                switch (i2) {
                                }
                                return measureResult.getRulers();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public final int getWidth() {
                                switch (i2) {
                                }
                                return measureResult.getWidth();
                            }

                            @Override // androidx.compose.ui.layout.MeasureResult
                            public final void placeChildren() {
                                int i3 = i2;
                                MeasureResult measureResult2 = measureResult;
                                int i4 = i;
                                LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                                switch (i3) {
                                    case 0:
                                        layoutNodeSubcompositionsState2.currentApproachIndex = i4;
                                        measureResult2.placeChildren();
                                        MutableVector mutableVector = layoutNodeSubcompositionsState2.slotIdsOfCompositionsNeededInApproach;
                                        MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState2.approachPrecomposeSlotHandleMap;
                                        long[] jArr = mutableScatterMap.metadata;
                                        int length = jArr.length - 2;
                                        if (length >= 0) {
                                            int i5 = 0;
                                            while (true) {
                                                long j2 = jArr[i5];
                                                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i6 = 8 - ((~(i5 - length)) >>> 31);
                                                    for (int i7 = 0; i7 < i6; i7++) {
                                                        if ((255 & j2) < 128) {
                                                            int i8 = (i5 << 3) + i7;
                                                            Object obj3 = mutableScatterMap.keys[i8];
                                                            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = (SubcomposeLayoutState.PrecomposedSlotHandle) mutableScatterMap.values[i8];
                                                            int indexOf = mutableVector.indexOf(obj3);
                                                            if (indexOf < 0 || indexOf >= layoutNodeSubcompositionsState2.currentApproachIndex) {
                                                                if (indexOf >= 0) {
                                                                    Object[] objArr = mutableVector.content;
                                                                    Object obj4 = objArr[indexOf];
                                                                    objArr[indexOf] = RulerKt.UnspecifiedSlotId;
                                                                }
                                                                if (layoutNodeSubcompositionsState2.precomposeMap.contains(obj3)) {
                                                                    precomposedSlotHandle.dispose();
                                                                }
                                                                mutableScatterMap.removeValueAt(i8);
                                                            }
                                                        }
                                                        j2 >>= 8;
                                                    }
                                                    if (i6 != 8) {
                                                    }
                                                }
                                                if (i5 != length) {
                                                    i5++;
                                                }
                                            }
                                        }
                                        layoutNodeSubcompositionsState2.disposeOrReuseStartingFromIndex(layoutNodeSubcompositionsState2.currentIndex);
                                        break;
                                    default:
                                        layoutNodeSubcompositionsState2.currentIndex = i4;
                                        measureResult2.placeChildren();
                                        if (layoutNodeSubcompositionsState2.root.lookaheadRoot == null) {
                                            layoutNodeSubcompositionsState2.disposeOrReuseStartingFromIndex(layoutNodeSubcompositionsState2.currentIndex);
                                            break;
                                        }
                                        break;
                                }
                            }
                        };
                    }
                    layoutNodeSubcompositionsState.currentApproachIndex = 0;
                    final MeasureResult measureResult2 = (MeasureResult) function22.invoke(layoutNodeSubcompositionsState.approachMeasureScope, new Constraints(j));
                    final int i3 = layoutNodeSubcompositionsState.currentApproachIndex;
                    final int i4 = 0;
                    return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1
                        @Override // androidx.compose.ui.layout.MeasureResult
                        public final Map getAlignmentLines() {
                            switch (i4) {
                            }
                            return measureResult2.getAlignmentLines();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public final int getHeight() {
                            switch (i4) {
                            }
                            return measureResult2.getHeight();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public final Function1 getRulers() {
                            switch (i4) {
                            }
                            return measureResult2.getRulers();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public final int getWidth() {
                            switch (i4) {
                            }
                            return measureResult2.getWidth();
                        }

                        @Override // androidx.compose.ui.layout.MeasureResult
                        public final void placeChildren() {
                            int i32 = i4;
                            MeasureResult measureResult22 = measureResult2;
                            int i42 = i3;
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = layoutNodeSubcompositionsState;
                            switch (i32) {
                                case 0:
                                    layoutNodeSubcompositionsState2.currentApproachIndex = i42;
                                    measureResult22.placeChildren();
                                    MutableVector mutableVector = layoutNodeSubcompositionsState2.slotIdsOfCompositionsNeededInApproach;
                                    MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState2.approachPrecomposeSlotHandleMap;
                                    long[] jArr = mutableScatterMap.metadata;
                                    int length = jArr.length - 2;
                                    if (length >= 0) {
                                        int i5 = 0;
                                        while (true) {
                                            long j2 = jArr[i5];
                                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i6 = 8 - ((~(i5 - length)) >>> 31);
                                                for (int i7 = 0; i7 < i6; i7++) {
                                                    if ((255 & j2) < 128) {
                                                        int i8 = (i5 << 3) + i7;
                                                        Object obj3 = mutableScatterMap.keys[i8];
                                                        SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = (SubcomposeLayoutState.PrecomposedSlotHandle) mutableScatterMap.values[i8];
                                                        int indexOf = mutableVector.indexOf(obj3);
                                                        if (indexOf < 0 || indexOf >= layoutNodeSubcompositionsState2.currentApproachIndex) {
                                                            if (indexOf >= 0) {
                                                                Object[] objArr = mutableVector.content;
                                                                Object obj4 = objArr[indexOf];
                                                                objArr[indexOf] = RulerKt.UnspecifiedSlotId;
                                                            }
                                                            if (layoutNodeSubcompositionsState2.precomposeMap.contains(obj3)) {
                                                                precomposedSlotHandle.dispose();
                                                            }
                                                            mutableScatterMap.removeValueAt(i8);
                                                        }
                                                    }
                                                    j2 >>= 8;
                                                }
                                                if (i6 != 8) {
                                                }
                                            }
                                            if (i5 != length) {
                                                i5++;
                                            }
                                        }
                                    }
                                    layoutNodeSubcompositionsState2.disposeOrReuseStartingFromIndex(layoutNodeSubcompositionsState2.currentIndex);
                                    break;
                                default:
                                    layoutNodeSubcompositionsState2.currentIndex = i42;
                                    measureResult22.placeChildren();
                                    if (layoutNodeSubcompositionsState2.root.lookaheadRoot == null) {
                                        layoutNodeSubcompositionsState2.disposeOrReuseStartingFromIndex(layoutNodeSubcompositionsState2.currentIndex);
                                        break;
                                    }
                                    break;
                            }
                        }
                    };
                }
            });
            return Unit.INSTANCE;
        }
    };

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface PrecomposedSlotHandle {
        void dispose();

        int getPlaceablesCount();

        /* renamed from: premeasure-0kLqBqw */
        void mo301premeasure0kLqBqw(int i, long j);

        void traverseDescendants(DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.layout.SubcomposeLayoutState$setRoot$1] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.ui.layout.SubcomposeLayoutState$setCompositionContext$1] */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.ui.layout.SubcomposeLayoutState$setMeasurePolicy$1] */
    public SubcomposeLayoutState(SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        this.slotReusePolicy = subcomposeSlotReusePolicy;
    }

    public final LayoutNodeSubcompositionsState getState() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this._state;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("SubcomposeLayoutState is not attached to SubcomposeLayout");
        return null;
    }
}
