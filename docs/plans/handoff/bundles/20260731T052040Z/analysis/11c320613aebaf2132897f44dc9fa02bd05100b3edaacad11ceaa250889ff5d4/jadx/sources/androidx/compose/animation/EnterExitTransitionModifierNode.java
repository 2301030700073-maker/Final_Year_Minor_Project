package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EnterExitTransitionModifierNode extends LayoutModifierNodeWithPassThroughIntrinsics {
    public BiasAlignment currentAlignment;
    public EnterTransition enter;
    public ExitTransition exit;
    public EnterExitTransitionKt$$ExternalSyntheticLambda0 graphicsLayerBlock;
    public Function0 isEnabled;
    public long lookaheadSize;
    public Transition transition;

    /* JADX WARN: Type inference failed for: r2v22, types: [androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1] */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo9measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        final TransformOrigin transformOrigin;
        Object currentState = this.transition.transitionState.getCurrentState();
        Object value = this.transition.targetState$delegate.getValue();
        EnterExitState enterExitState = EnterExitState.PreEnter;
        if (currentState == value) {
            this.currentAlignment = null;
        } else if (this.currentAlignment == null) {
            if (this.transition.getSegment().isTransitioningTo(enterExitState, EnterExitState.Visible)) {
                TransitionData transitionData = ((ExitTransitionImpl) this.exit).data;
            } else {
                TransitionData transitionData2 = ((ExitTransitionImpl) this.exit).data;
            }
            this.currentAlignment = Alignment.Companion.TopStart;
        }
        boolean isLookingAhead = measureScope.isLookingAhead();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (isLookingAhead) {
            final Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(j);
            long j2 = (mo292measureBRTryo0.height & 4294967295L) | (mo292measureBRTryo0.width << 32);
            this.lookaheadSize = j2;
            return measureScope.layout((int) (j2 >> 32), (int) (j2 & 4294967295L), emptyMap, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((Placeable.PlacementScope) obj).place(Placeable.this, 0, 0, 0.0f);
                    return Unit.INSTANCE;
                }
            });
        }
        if (!((Boolean) this.isEnabled.invoke()).booleanValue()) {
            final Placeable mo292measureBRTryo02 = measurable.mo292measureBRTryo0(j);
            return measureScope.layout(mo292measureBRTryo02.width, mo292measureBRTryo02.height, emptyMap, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$3$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((Placeable.PlacementScope) obj).place(Placeable.this, 0, 0, 0.0f);
                    return Unit.INSTANCE;
                }
            });
        }
        EnterExitTransitionKt$$ExternalSyntheticLambda0 enterExitTransitionKt$$ExternalSyntheticLambda0 = this.graphicsLayerBlock;
        Transition.DeferredAnimation deferredAnimation = enterExitTransitionKt$$ExternalSyntheticLambda0.f$0;
        Transition.DeferredAnimation deferredAnimation2 = enterExitTransitionKt$$ExternalSyntheticLambda0.f$1;
        Transition transition = enterExitTransitionKt$$ExternalSyntheticLambda0.f$2;
        final EnterTransition enterTransition = enterExitTransitionKt$$ExternalSyntheticLambda0.f$3;
        final ExitTransition exitTransition = enterExitTransitionKt$$ExternalSyntheticLambda0.f$4;
        Transition.DeferredAnimation deferredAnimation3 = enterExitTransitionKt$$ExternalSyntheticLambda0.f$5;
        final Transition.DeferredAnimation.DeferredAnimationData animate = deferredAnimation != null ? deferredAnimation.animate(new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState2 = EnterExitState.PreEnter;
                EnterExitState enterExitState3 = EnterExitState.Visible;
                if (segment.isTransitioningTo(enterExitState2, enterExitState3)) {
                    Fade fade = ((EnterTransitionImpl) EnterTransition.this).data.fade;
                    return fade != null ? fade.animationSpec : EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
                }
                if (!segment.isTransitioningTo(enterExitState3, EnterExitState.PostExit)) {
                    return EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
                }
                Fade fade2 = ((ExitTransitionImpl) exitTransition).data.fade;
                return fade2 != null ? fade2.animationSpec : EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
            }
        }, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
            
                if (((androidx.compose.animation.EnterTransitionImpl) r1).data.fade != null) goto L16;
             */
            /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
            
                if (((androidx.compose.animation.ExitTransitionImpl) r2).data.fade != null) goto L16;
             */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke(java.lang.Object r4) {
                /*
                    r3 = this;
                    androidx.compose.animation.EnterExitState r4 = (androidx.compose.animation.EnterExitState) r4
                    int r4 = r4.ordinal()
                    r0 = 0
                    r1 = 1065353216(0x3f800000, float:1.0)
                    if (r4 == 0) goto L23
                    r2 = 1
                    if (r4 == r2) goto L1c
                    r2 = 2
                    if (r4 != r2) goto L1e
                    androidx.compose.animation.ExitTransition r3 = r2
                    androidx.compose.animation.ExitTransitionImpl r3 = (androidx.compose.animation.ExitTransitionImpl) r3
                    androidx.compose.animation.TransitionData r3 = r3.data
                    androidx.compose.animation.Fade r3 = r3.fade
                    if (r3 == 0) goto L1c
                    goto L2d
                L1c:
                    r0 = r1
                    goto L2d
                L1e:
                    coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m()
                    r3 = 0
                    return r3
                L23:
                    androidx.compose.animation.EnterTransition r3 = androidx.compose.animation.EnterTransition.this
                    androidx.compose.animation.EnterTransitionImpl r3 = (androidx.compose.animation.EnterTransitionImpl) r3
                    androidx.compose.animation.TransitionData r3 = r3.data
                    androidx.compose.animation.Fade r3 = r3.fade
                    if (r3 == 0) goto L1c
                L2d:
                    java.lang.Float r3 = java.lang.Float.valueOf(r0)
                    return r3
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2.invoke(java.lang.Object):java.lang.Object");
            }
        }) : null;
        final Transition.DeferredAnimation.DeferredAnimationData animate2 = deferredAnimation2 != null ? deferredAnimation2.animate(new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState2 = EnterExitState.PreEnter;
                EnterExitState enterExitState3 = EnterExitState.Visible;
                if (segment.isTransitioningTo(enterExitState2, enterExitState3)) {
                    Scale scale = ((EnterTransitionImpl) EnterTransition.this).data.scale;
                    return scale != null ? scale.animationSpec : EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
                }
                if (!segment.isTransitioningTo(enterExitState3, EnterExitState.PostExit)) {
                    return EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
                }
                Scale scale2 = ((ExitTransitionImpl) exitTransition).data.scale;
                return scale2 != null ? scale2.animationSpec : EnterExitTransitionKt.DefaultAlphaAndScaleSpring;
            }
        }, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int ordinal = ((EnterExitState) obj).ordinal();
                float f = 1.0f;
                if (ordinal == 0) {
                    Scale scale = ((EnterTransitionImpl) EnterTransition.this).data.scale;
                    if (scale != null) {
                        f = scale.scale;
                    }
                } else if (ordinal != 1) {
                    if (ordinal != 2) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    Scale scale2 = ((ExitTransitionImpl) exitTransition).data.scale;
                    if (scale2 != null) {
                        f = scale2.scale;
                    }
                }
                return Float.valueOf(f);
            }
        }) : null;
        if (transition.transitionState.getCurrentState() == enterExitState) {
            Scale scale = ((EnterTransitionImpl) enterTransition).data.scale;
            if (scale != null) {
                transformOrigin = new TransformOrigin(scale.transformOrigin);
            } else {
                Scale scale2 = ((ExitTransitionImpl) exitTransition).data.scale;
                if (scale2 != null) {
                    transformOrigin = new TransformOrigin(scale2.transformOrigin);
                }
                transformOrigin = null;
            }
        } else {
            Scale scale3 = ((ExitTransitionImpl) exitTransition).data.scale;
            if (scale3 != null) {
                transformOrigin = new TransformOrigin(scale3.transformOrigin);
            } else {
                Scale scale4 = ((EnterTransitionImpl) enterTransition).data.scale;
                if (scale4 != null) {
                    transformOrigin = new TransformOrigin(scale4.transformOrigin);
                }
                transformOrigin = null;
            }
        }
        final Transition.DeferredAnimation.DeferredAnimationData animate3 = deferredAnimation3 != null ? deferredAnimation3.animate(AnimatedContentKt$AnimatedContent$4$1.INSTANCE$5, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int ordinal = ((EnterExitState) obj).ordinal();
                TransformOrigin transformOrigin2 = null;
                if (ordinal == 0) {
                    Scale scale5 = ((EnterTransitionImpl) enterTransition).data.scale;
                    if (scale5 != null) {
                        transformOrigin2 = new TransformOrigin(scale5.transformOrigin);
                    } else {
                        Scale scale6 = ((ExitTransitionImpl) exitTransition).data.scale;
                        if (scale6 != null) {
                            transformOrigin2 = new TransformOrigin(scale6.transformOrigin);
                        }
                    }
                } else if (ordinal == 1) {
                    transformOrigin2 = TransformOrigin.this;
                } else {
                    if (ordinal != 2) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    Scale scale7 = ((ExitTransitionImpl) exitTransition).data.scale;
                    if (scale7 != null) {
                        transformOrigin2 = new TransformOrigin(scale7.transformOrigin);
                    } else {
                        Scale scale8 = ((EnterTransitionImpl) enterTransition).data.scale;
                        if (scale8 != null) {
                            transformOrigin2 = new TransformOrigin(scale8.transformOrigin);
                        }
                    }
                }
                return new TransformOrigin(transformOrigin2 != null ? transformOrigin2.packedValue : TransformOrigin.Center);
            }
        }) : null;
        final ?? r2 = new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                State state = animate;
                reusableGraphicsLayerScope.setAlpha(state != null ? ((Number) state.getValue()).floatValue() : 1.0f);
                State state2 = animate2;
                reusableGraphicsLayerScope.setScaleX(state2 != null ? ((Number) state2.getValue()).floatValue() : 1.0f);
                State state3 = animate2;
                reusableGraphicsLayerScope.setScaleY(state3 != null ? ((Number) state3.getValue()).floatValue() : 1.0f);
                State state4 = animate3;
                reusableGraphicsLayerScope.m252setTransformOrigin__ExYCQ(state4 != null ? ((TransformOrigin) state4.getValue()).packedValue : TransformOrigin.Center);
                return Unit.INSTANCE;
            }
        };
        final Placeable mo292measureBRTryo03 = measurable.mo292measureBRTryo0(j);
        long j3 = (mo292measureBRTryo03.height & 4294967295L) | (mo292measureBRTryo03.width << 32);
        long j4 = !IntSize.m449equalsimpl0(this.lookaheadSize, -9223372034707292160L) ? this.lookaheadSize : j3;
        long m438constrain4WqzIAM = ConstraintsKt.m438constrain4WqzIAM(j, j3);
        BiasAlignment biasAlignment = this.currentAlignment;
        final long j5 = 0;
        final long m447plusqkQi6aY = IntOffset.m447plusqkQi6aY(biasAlignment != null ? biasAlignment.m178alignKFBX0sM(j4, m438constrain4WqzIAM, LayoutDirection.Ltr) : 0L, 0L);
        return measureScope.layout((int) (m438constrain4WqzIAM >> 32), (int) (m438constrain4WqzIAM & 4294967295L), emptyMap, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Placeable placeable = Placeable.this;
                long j6 = m447plusqkQi6aY;
                long j7 = j5;
                Function1 function1 = r2;
                placementScope.getClass();
                Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(((((int) (j6 >> 32)) + ((int) (j7 >> 32))) << 32) | ((((int) (j6 & 4294967295L)) + ((int) (j7 & 4294967295L))) & 4294967295L), placeable.apparentToRealOffset), 0.0f, function1);
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.lookaheadSize = -9223372034707292160L;
    }
}
