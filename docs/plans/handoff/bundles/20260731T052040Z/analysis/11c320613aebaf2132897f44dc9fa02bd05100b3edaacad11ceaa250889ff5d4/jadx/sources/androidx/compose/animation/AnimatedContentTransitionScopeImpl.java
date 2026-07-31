package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedContentTransitionScopeImpl implements Transition.Segment {
    public Alignment contentAlignment;
    public final ParcelableSnapshotMutableState measuredSize$delegate = Updater.mutableStateOf$default(new IntSize(0));
    public final MutableScatterMap targetSizeMap;
    public final Transition transition;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ChildData implements Modifier.Element {
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
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            SizeModifierNode sizeModifierNode = new SizeModifierNode();
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SizeModifierNode extends LayoutModifierNodeWithPassThroughIntrinsics {
        public long lastSize;
        public AnimatedContentTransitionScopeImpl scope;
        public Transition.DeferredAnimation sizeAnimation;
        public MutableState sizeTransform;

        @Override // androidx.compose.ui.node.LayoutModifierNode
        /* renamed from: measure-3p2s80s, reason: not valid java name */
        public final MeasureResult mo9measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
            final long j2;
            final Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(j);
            if (measureScope.isLookingAhead()) {
                j2 = (mo292measureBRTryo0.width << 32) | (mo292measureBRTryo0.height & 4294967295L);
            } else {
                Transition.DeferredAnimation deferredAnimation = this.sizeAnimation;
                int i = mo292measureBRTryo0.width;
                if (deferredAnimation == null) {
                    long j3 = (i << 32) | (mo292measureBRTryo0.height & 4294967295L);
                    this.lastSize = j3;
                    j2 = j3;
                } else {
                    final long j4 = (mo292measureBRTryo0.height & 4294967295L) | (i << 32);
                    Transition.DeferredAnimation.DeferredAnimationData animate = deferredAnimation.animate(new Function1() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            long j5;
                            FiniteAnimationSpec finiteAnimationSpec;
                            Transition.Segment segment = (Transition.Segment) obj;
                            boolean areEqual = Intrinsics.areEqual(segment.getInitialState(), AnimatedContentTransitionScopeImpl.SizeModifierNode.this.scope.getInitialState());
                            AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = AnimatedContentTransitionScopeImpl.SizeModifierNode.this;
                            if (areEqual) {
                                j5 = j4;
                                if (!IntSize.m449equalsimpl0(sizeModifierNode.lastSize, -9223372034707292160L)) {
                                    j5 = sizeModifierNode.lastSize;
                                }
                            } else {
                                State state = (State) sizeModifierNode.scope.targetSizeMap.get(segment.getInitialState());
                                j5 = state != null ? ((IntSize) state.getValue()).packedValue : 0L;
                            }
                            State state2 = (State) AnimatedContentTransitionScopeImpl.SizeModifierNode.this.scope.targetSizeMap.get(segment.getTargetState());
                            long j6 = state2 != null ? ((IntSize) state2.getValue()).packedValue : 0L;
                            SizeTransformImpl sizeTransformImpl = (SizeTransformImpl) AnimatedContentTransitionScopeImpl.SizeModifierNode.this.sizeTransform.getValue();
                            return (sizeTransformImpl == null || (finiteAnimationSpec = (FiniteAnimationSpec) sizeTransformImpl.sizeAnimationSpec.invoke(new IntSize(j5), new IntSize(j6))) == null) ? ArcSplineKt.spring$default(0.0f, 400.0f, null, 5) : finiteAnimationSpec;
                        }
                    }, new Function1() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            long j5;
                            boolean areEqual = Intrinsics.areEqual(obj, AnimatedContentTransitionScopeImpl.SizeModifierNode.this.scope.getInitialState());
                            AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = AnimatedContentTransitionScopeImpl.SizeModifierNode.this;
                            if (areEqual) {
                                j5 = j4;
                                if (!IntSize.m449equalsimpl0(sizeModifierNode.lastSize, -9223372034707292160L)) {
                                    j5 = sizeModifierNode.lastSize;
                                }
                            } else {
                                State state = (State) sizeModifierNode.scope.targetSizeMap.get(obj);
                                j5 = state != null ? ((IntSize) state.getValue()).packedValue : 0L;
                            }
                            return new IntSize(j5);
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
                    Placeable placeable = mo292measureBRTryo0;
                    Placeable.PlacementScope.m305place70tqf50$default((Placeable.PlacementScope) obj, mo292measureBRTryo0, ((BiasAlignment) alignment).m178alignKFBX0sM((placeable.width << 32) | (placeable.height & 4294967295L), j2, LayoutDirection.Ltr));
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
    public final boolean isTransitioningTo(Object obj, Object obj2) {
        return obj.equals(getInitialState()) && obj2.equals(getTargetState());
    }
}
