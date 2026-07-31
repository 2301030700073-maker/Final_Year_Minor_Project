package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.IntrinsicSizeModifier;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatedContentTransitionScopeImpl implements Transition.Segment {
    public Alignment contentAlignment;
    public final ParcelableSnapshotMutableState measuredSize$delegate = Updater.mutableStateOf$default(new IntSize(0));
    public final MutableScatterMap targetSizeMap;
    public final Transition transition;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00030\u0002¨\u0006\u0004"}, d2 = {"androidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierElement", "S", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl$SizeModifierNode;", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    final class SizeModifierElement<S> extends ModifierNodeElement {
        public final AnimatedContentTransitionScopeImpl scope;
        public final Transition.DeferredAnimation sizeAnimation;
        public final MutableState sizeTransform;

        public SizeModifierElement(Transition.DeferredAnimation deferredAnimation, MutableState mutableState, AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl) {
            this.sizeAnimation = deferredAnimation;
            this.sizeTransform = mutableState;
            this.scope = animatedContentTransitionScopeImpl;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node create() {
            SizeModifierNode sizeModifierNode = new SizeModifierNode(1);
            sizeModifierNode.sizeAnimation = this.sizeAnimation;
            sizeModifierNode.sizeTransform = this.sizeTransform;
            sizeModifierNode.scope = this.scope;
            sizeModifierNode.lastSize = -9223372034707292160L;
            return sizeModifierNode;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof SizeModifierElement)) {
                return false;
            }
            SizeModifierElement sizeModifierElement = (SizeModifierElement) obj;
            return Intrinsics.areEqual(sizeModifierElement.sizeAnimation, this.sizeAnimation) && sizeModifierElement.sizeTransform.equals(this.sizeTransform);
        }

        public final int hashCode() {
            int hashCode = this.scope.hashCode() * 31;
            Transition.DeferredAnimation deferredAnimation = this.sizeAnimation;
            return this.sizeTransform.hashCode() + ((hashCode + (deferredAnimation != null ? deferredAnimation.hashCode() : 0)) * 31);
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final void update(Modifier.Node node) {
            SizeModifierNode sizeModifierNode = (SizeModifierNode) node;
            sizeModifierNode.sizeAnimation = this.sizeAnimation;
            sizeModifierNode.sizeTransform = this.sizeTransform;
            sizeModifierNode.scope = this.scope;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SizeModifierNode extends IntrinsicSizeModifier {
        public long lastSize;
        public AnimatedContentTransitionScopeImpl scope;
        public Transition.DeferredAnimation sizeAnimation;
        public MutableState sizeTransform;

        @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
        /* renamed from: measure-3p2s80s, reason: not valid java name */
        public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
            final long j2;
            final Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(j);
            if (measureScope.isLookingAhead()) {
                j2 = (mo512measureBRTryo0.width << 32) | (mo512measureBRTryo0.height & 4294967295L);
            } else {
                Transition.DeferredAnimation deferredAnimation = this.sizeAnimation;
                int i = mo512measureBRTryo0.width;
                if (deferredAnimation == null) {
                    long j3 = (i << 32) | (mo512measureBRTryo0.height & 4294967295L);
                    this.lastSize = j3;
                    j2 = j3;
                } else {
                    final long j4 = (mo512measureBRTryo0.height & 4294967295L) | (i << 32);
                    final int i2 = 0;
                    final int i3 = 1;
                    Transition.DeferredAnimation.DeferredAnimationData animate = deferredAnimation.animate(new Function1(this) { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1
                        public final /* synthetic */ AnimatedContentTransitionScopeImpl.SizeModifierNode this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                            this.this$0 = this;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            FiniteAnimationSpec finiteAnimationSpec;
                            int i4 = i2;
                            long j5 = j4;
                            AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = this.this$0;
                            switch (i4) {
                                case 0:
                                    Transition.Segment segment = (Transition.Segment) obj;
                                    if (!Intrinsics.areEqual(segment.getInitialState(), sizeModifierNode.scope.getInitialState())) {
                                        State state = (State) sizeModifierNode.scope.targetSizeMap.get(segment.getInitialState());
                                        j5 = state != null ? ((IntSize) state.getValue()).packedValue : 0L;
                                    } else if (!IntSize.m721equalsimpl0(sizeModifierNode.lastSize, -9223372034707292160L)) {
                                        j5 = sizeModifierNode.lastSize;
                                    }
                                    State state2 = (State) sizeModifierNode.scope.targetSizeMap.get(segment.getTargetState());
                                    r1 = state2 != null ? ((IntSize) state2.getValue()).packedValue : 0L;
                                    SizeTransformImpl sizeTransformImpl = (SizeTransformImpl) sizeModifierNode.sizeTransform.getValue();
                                    return (sizeTransformImpl == null || (finiteAnimationSpec = (FiniteAnimationSpec) sizeTransformImpl.sizeAnimationSpec.invoke(new IntSize(j5), new IntSize(r1))) == null) ? ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5) : finiteAnimationSpec;
                                default:
                                    if (Intrinsics.areEqual(obj, sizeModifierNode.scope.getInitialState())) {
                                        r1 = IntSize.m721equalsimpl0(sizeModifierNode.lastSize, -9223372034707292160L) ? j5 : sizeModifierNode.lastSize;
                                    } else {
                                        State state3 = (State) sizeModifierNode.scope.targetSizeMap.get(obj);
                                        if (state3 != null) {
                                            r1 = ((IntSize) state3.getValue()).packedValue;
                                        }
                                    }
                                    return new IntSize(r1);
                            }
                        }
                    }, new Function1(this) { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1
                        public final /* synthetic */ AnimatedContentTransitionScopeImpl.SizeModifierNode this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                            this.this$0 = this;
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            FiniteAnimationSpec finiteAnimationSpec;
                            int i4 = i3;
                            long j5 = j4;
                            AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = this.this$0;
                            switch (i4) {
                                case 0:
                                    Transition.Segment segment = (Transition.Segment) obj;
                                    if (!Intrinsics.areEqual(segment.getInitialState(), sizeModifierNode.scope.getInitialState())) {
                                        State state = (State) sizeModifierNode.scope.targetSizeMap.get(segment.getInitialState());
                                        j5 = state != null ? ((IntSize) state.getValue()).packedValue : 0L;
                                    } else if (!IntSize.m721equalsimpl0(sizeModifierNode.lastSize, -9223372034707292160L)) {
                                        j5 = sizeModifierNode.lastSize;
                                    }
                                    State state2 = (State) sizeModifierNode.scope.targetSizeMap.get(segment.getTargetState());
                                    r1 = state2 != null ? ((IntSize) state2.getValue()).packedValue : 0L;
                                    SizeTransformImpl sizeTransformImpl = (SizeTransformImpl) sizeModifierNode.sizeTransform.getValue();
                                    return (sizeTransformImpl == null || (finiteAnimationSpec = (FiniteAnimationSpec) sizeTransformImpl.sizeAnimationSpec.invoke(new IntSize(j5), new IntSize(r1))) == null) ? ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5) : finiteAnimationSpec;
                                default:
                                    if (Intrinsics.areEqual(obj, sizeModifierNode.scope.getInitialState())) {
                                        r1 = IntSize.m721equalsimpl0(sizeModifierNode.lastSize, -9223372034707292160L) ? j5 : sizeModifierNode.lastSize;
                                    } else {
                                        State state3 = (State) sizeModifierNode.scope.targetSizeMap.get(obj);
                                        if (state3 != null) {
                                            r1 = ((IntSize) state3.getValue()).packedValue;
                                        }
                                    }
                                    return new IntSize(r1);
                            }
                        }
                    });
                    this.scope.getClass();
                    j2 = ((IntSize) animate.getValue()).packedValue;
                    this.lastSize = ((IntSize) animate.getValue()).packedValue;
                }
            }
            return measureScope.layout((int) (j2 >> 32), (int) (4294967295L & j2), EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Alignment alignment = AnimatedContentTransitionScopeImpl.SizeModifierNode.this.scope.contentAlignment;
                    Placeable.PlacementScope.m533place70tqf50$default((Placeable.PlacementScope) obj, mo512measureBRTryo0, alignment.mo333alignKFBX0sM((r0.height & 4294967295L) | (r0.width << 32), j2, LayoutDirection.Ltr));
                    return Unit.INSTANCE;
                }
            });
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void onReset() {
            this.lastSize = -9223372034707292160L;
        }
    }

    public AnimatedContentTransitionScopeImpl(Transition transition, Alignment alignment) {
        this.transition = transition;
        this.contentAlignment = alignment;
        long[] jArr = ScatterMapKt.EmptyGroup;
        this.targetSizeMap = new MutableScatterMap();
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public final Object getInitialState() {
        return this.transition.getSegment().getInitialState();
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public final Object getTargetState() {
        return this.transition.getSegment().getTargetState();
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public final boolean isTransitioningTo(Enum r2, Enum r3) {
        return Intrinsics.areEqual(r2, getInitialState()) && Intrinsics.areEqual(r3, getTargetState());
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ChildData implements ParentDataModifier {
        public final ParcelableSnapshotMutableState isTarget$delegate;

        public ChildData(boolean z) {
            this.isTarget$delegate = Updater.mutableStateOf$default(Boolean.valueOf(z));
        }

        @Override // androidx.compose.ui.Modifier
        public final boolean all(Function1 function1) {
            return ((Boolean) function1.invoke(this)).booleanValue();
        }

        @Override // androidx.compose.ui.Modifier
        public final Object foldIn(Object obj, Function2 function2) {
            return function2.invoke(obj, this);
        }

        @Override // androidx.compose.ui.Modifier
        public final /* synthetic */ Modifier then(Modifier modifier) {
            return Modifier.CC.$default$then(this, modifier);
        }

        @Override // androidx.compose.ui.layout.ParentDataModifier
        public final Object modifyParentData() {
            return this;
        }
    }
}
