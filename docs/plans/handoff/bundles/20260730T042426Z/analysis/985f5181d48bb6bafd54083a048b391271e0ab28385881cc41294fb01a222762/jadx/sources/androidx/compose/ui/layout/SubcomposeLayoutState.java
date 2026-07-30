package androidx.compose.ui.layout;

import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: SubcomposeLayout.kt */
/* loaded from: classes.dex */
public final class SubcomposeLayoutState {
    public static final int $stable = 8;
    private LayoutNodeSubcompositionsState _state;
    private final Function2 setCompositionContext;
    private final Function2 setMeasurePolicy;
    private final Function2 setRoot;
    private final SubcomposeSlotReusePolicy slotReusePolicy;

    public SubcomposeLayoutState(SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        this.slotReusePolicy = subcomposeSlotReusePolicy;
        this.setRoot = new Function2() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setRoot$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (SubcomposeLayoutState) obj2);
                return Unit.INSTANCE;
            }

            public final void invoke(LayoutNode layoutNode, SubcomposeLayoutState subcomposeLayoutState) {
                LayoutNodeSubcompositionsState state;
                LayoutNodeSubcompositionsState state2;
                SubcomposeSlotReusePolicy subcomposeSlotReusePolicy2;
                SubcomposeSlotReusePolicy subcomposeSlotReusePolicy3;
                SubcomposeLayoutState subcomposeLayoutState2 = SubcomposeLayoutState.this;
                LayoutNodeSubcompositionsState subcompositionsState$ui_release = layoutNode.getSubcompositionsState$ui_release();
                if (subcompositionsState$ui_release == null) {
                    subcomposeSlotReusePolicy3 = SubcomposeLayoutState.this.slotReusePolicy;
                    subcompositionsState$ui_release = new LayoutNodeSubcompositionsState(layoutNode, subcomposeSlotReusePolicy3);
                    layoutNode.setSubcompositionsState$ui_release(subcompositionsState$ui_release);
                }
                subcomposeLayoutState2._state = subcompositionsState$ui_release;
                state = SubcomposeLayoutState.this.getState();
                state.makeSureStateIsConsistent();
                state2 = SubcomposeLayoutState.this.getState();
                subcomposeSlotReusePolicy2 = SubcomposeLayoutState.this.slotReusePolicy;
                state2.setSlotReusePolicy(subcomposeSlotReusePolicy2);
            }
        };
        this.setCompositionContext = new Function2() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setCompositionContext$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (CompositionContext) obj2);
                return Unit.INSTANCE;
            }

            public final void invoke(LayoutNode layoutNode, CompositionContext compositionContext) {
                LayoutNodeSubcompositionsState state;
                state = SubcomposeLayoutState.this.getState();
                state.setCompositionContext(compositionContext);
            }
        };
        this.setMeasurePolicy = new Function2() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setMeasurePolicy$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((LayoutNode) obj, (Function2) obj2);
                return Unit.INSTANCE;
            }

            public final void invoke(LayoutNode layoutNode, Function2 function2) {
                LayoutNodeSubcompositionsState state;
                state = SubcomposeLayoutState.this.getState();
                layoutNode.setMeasurePolicy(state.createMeasurePolicy(function2));
            }
        };
    }

    public SubcomposeLayoutState() {
        this(NoOpSubcomposeSlotReusePolicy.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutNodeSubcompositionsState getState() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this._state;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        throw new IllegalArgumentException("SubcomposeLayoutState is not attached to SubcomposeLayout");
    }

    public final Function2 getSetRoot$ui_release() {
        return this.setRoot;
    }

    public final Function2 getSetCompositionContext$ui_release() {
        return this.setCompositionContext;
    }

    public final Function2 getSetMeasurePolicy$ui_release() {
        return this.setMeasurePolicy;
    }

    public final PrecomposedSlotHandle precompose(Object obj, Function2 function2) {
        return getState().precompose(obj, function2);
    }

    public final void forceRecomposeChildren$ui_release() {
        getState().forceRecomposeChildren();
    }

    /* compiled from: SubcomposeLayout.kt */
    public interface PrecomposedSlotHandle {
        void dispose();

        int getPlaceablesCount();

        /* renamed from: premeasure-0kLqBqw */
        void mo1762premeasure0kLqBqw(int i, long j);

        void traverseDescendants(Object obj, Function1 function1);

        /* compiled from: SubcomposeLayout.kt */
        /* renamed from: androidx.compose.ui.layout.SubcomposeLayoutState$PrecomposedSlotHandle$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static int $default$getPlaceablesCount(PrecomposedSlotHandle precomposedSlotHandle) {
                return 0;
            }

            /* renamed from: $default$premeasure-0kLqBqw, reason: not valid java name */
            public static void m1793$default$premeasure0kLqBqw(PrecomposedSlotHandle precomposedSlotHandle, int i, long j) {
            }

            public static void $default$traverseDescendants(PrecomposedSlotHandle precomposedSlotHandle, Object obj, Function1 function1) {
            }
        }
    }
}
