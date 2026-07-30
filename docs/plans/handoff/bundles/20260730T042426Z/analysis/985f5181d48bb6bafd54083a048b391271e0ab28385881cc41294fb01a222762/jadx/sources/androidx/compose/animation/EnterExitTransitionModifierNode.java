package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnterExitTransition.kt */
/* loaded from: classes.dex */
final class EnterExitTransitionModifierNode extends LayoutModifierNodeWithPassThroughIntrinsics {
    private Alignment currentAlignment;
    private EnterTransition enter;
    private ExitTransition exit;
    private GraphicsLayerBlockForEnterExit graphicsLayerBlock;
    private Function0 isEnabled;
    private boolean lookaheadConstraintsAvailable;
    private Transition.DeferredAnimation offsetAnimation;
    private Transition.DeferredAnimation sizeAnimation;
    private Transition.DeferredAnimation slideAnimation;
    private Transition transition;
    private long lookaheadSize = AnimationModifierKt.getInvalidSize();
    private long lookaheadConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
    private final Function1 sizeTransitionSpec = new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$sizeTransitionSpec$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final FiniteAnimationSpec invoke(Transition.Segment segment) {
            SpringSpec springSpec;
            EnterExitState enterExitState = EnterExitState.PreEnter;
            EnterExitState enterExitState2 = EnterExitState.Visible;
            FiniteAnimationSpec finiteAnimationSpec = null;
            if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
                ChangeSize changeSize = EnterExitTransitionModifierNode.this.getEnter().getData$animation_release().getChangeSize();
                if (changeSize != null) {
                    finiteAnimationSpec = changeSize.getAnimationSpec();
                }
            } else if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
                finiteAnimationSpec = EnterExitTransitionKt.DefaultSizeAnimationSpec;
            } else {
                ChangeSize changeSize2 = EnterExitTransitionModifierNode.this.getExit().getData$animation_release().getChangeSize();
                if (changeSize2 != null) {
                    finiteAnimationSpec = changeSize2.getAnimationSpec();
                }
            }
            if (finiteAnimationSpec != null) {
                return finiteAnimationSpec;
            }
            springSpec = EnterExitTransitionKt.DefaultSizeAnimationSpec;
            return springSpec;
        }
    };
    private final Function1 slideSpec = new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final FiniteAnimationSpec invoke(Transition.Segment segment) {
            SpringSpec springSpec;
            SpringSpec springSpec2;
            FiniteAnimationSpec animationSpec;
            SpringSpec springSpec3;
            FiniteAnimationSpec animationSpec2;
            EnterExitState enterExitState = EnterExitState.PreEnter;
            EnterExitState enterExitState2 = EnterExitState.Visible;
            if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
                Slide slide = EnterExitTransitionModifierNode.this.getEnter().getData$animation_release().getSlide();
                if (slide != null && (animationSpec2 = slide.getAnimationSpec()) != null) {
                    return animationSpec2;
                }
                springSpec3 = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                return springSpec3;
            }
            if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
                springSpec = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                return springSpec;
            }
            Slide slide2 = EnterExitTransitionModifierNode.this.getExit().getData$animation_release().getSlide();
            if (slide2 != null && (animationSpec = slide2.getAnimationSpec()) != null) {
                return animationSpec;
            }
            springSpec2 = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
            return springSpec2;
        }
    };

    /* compiled from: EnterExitTransition.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            try {
                iArr[EnterExitState.Visible.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnterExitState.PreEnter.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnterExitState.PostExit.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final void setTransition(Transition transition) {
        this.transition = transition;
    }

    public final void setSizeAnimation(Transition.DeferredAnimation deferredAnimation) {
        this.sizeAnimation = deferredAnimation;
    }

    public final void setOffsetAnimation(Transition.DeferredAnimation deferredAnimation) {
        this.offsetAnimation = deferredAnimation;
    }

    public final void setSlideAnimation(Transition.DeferredAnimation deferredAnimation) {
        this.slideAnimation = deferredAnimation;
    }

    public final EnterTransition getEnter() {
        return this.enter;
    }

    public final void setEnter(EnterTransition enterTransition) {
        this.enter = enterTransition;
    }

    public final ExitTransition getExit() {
        return this.exit;
    }

    public final void setExit(ExitTransition exitTransition) {
        this.exit = exitTransition;
    }

    public final void setEnabled(Function0 function0) {
        this.isEnabled = function0;
    }

    public final void setGraphicsLayerBlock(GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit) {
        this.graphicsLayerBlock = graphicsLayerBlockForEnterExit;
    }

    public EnterExitTransitionModifierNode(Transition transition, Transition.DeferredAnimation deferredAnimation, Transition.DeferredAnimation deferredAnimation2, Transition.DeferredAnimation deferredAnimation3, EnterTransition enterTransition, ExitTransition exitTransition, Function0 function0, GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit) {
        this.transition = transition;
        this.sizeAnimation = deferredAnimation;
        this.offsetAnimation = deferredAnimation2;
        this.slideAnimation = deferredAnimation3;
        this.enter = enterTransition;
        this.exit = exitTransition;
        this.isEnabled = function0;
        this.graphicsLayerBlock = graphicsLayerBlockForEnterExit;
    }

    /* renamed from: setLookaheadConstraints-BRTryo0, reason: not valid java name */
    private final void m38setLookaheadConstraintsBRTryo0(long j) {
        this.lookaheadConstraintsAvailable = true;
        this.lookaheadConstraints = j;
    }

    public final Alignment getAlignment() {
        Alignment alignment;
        if (this.transition.getSegment().isTransitioningTo(EnterExitState.PreEnter, EnterExitState.Visible)) {
            ChangeSize changeSize = this.enter.getData$animation_release().getChangeSize();
            if (changeSize == null || (alignment = changeSize.getAlignment()) == null) {
                ChangeSize changeSize2 = this.exit.getData$animation_release().getChangeSize();
                if (changeSize2 != null) {
                    return changeSize2.getAlignment();
                }
                return null;
            }
        } else {
            ChangeSize changeSize3 = this.exit.getData$animation_release().getChangeSize();
            if (changeSize3 == null || (alignment = changeSize3.getAlignment()) == null) {
                ChangeSize changeSize4 = this.enter.getData$animation_release().getChangeSize();
                if (changeSize4 != null) {
                    return changeSize4.getAlignment();
                }
                return null;
            }
        }
        return alignment;
    }

    /* renamed from: sizeByState-Uzc_VyU, reason: not valid java name */
    public final long m40sizeByStateUzc_VyU(EnterExitState enterExitState, long j) {
        Function1 size;
        Function1 size2;
        int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
        if (i == 1) {
            return j;
        }
        if (i == 2) {
            ChangeSize changeSize = this.enter.getData$animation_release().getChangeSize();
            return (changeSize == null || (size = changeSize.getSize()) == null) ? j : ((IntSize) size.invoke(IntSize.m2479boximpl(j))).m2487unboximpl();
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        ChangeSize changeSize2 = this.exit.getData$animation_release().getChangeSize();
        return (changeSize2 == null || (size2 = changeSize2.getSize()) == null) ? j : ((IntSize) size2.invoke(IntSize.m2479boximpl(j))).m2487unboximpl();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        this.lookaheadConstraintsAvailable = false;
        this.lookaheadSize = AnimationModifierKt.getInvalidSize();
    }

    /* renamed from: targetOffsetByState-oFUgxo0, reason: not valid java name */
    public final long m42targetOffsetByStateoFUgxo0(EnterExitState enterExitState, long j) {
        if (this.currentAlignment != null && getAlignment() != null && !Intrinsics.areEqual(this.currentAlignment, getAlignment())) {
            int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
            if (i == 1) {
                return IntOffset.Companion.m2472getZeronOccac();
            }
            if (i == 2) {
                return IntOffset.Companion.m2472getZeronOccac();
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            ChangeSize changeSize = this.exit.getData$animation_release().getChangeSize();
            if (changeSize != null) {
                long m2487unboximpl = ((IntSize) changeSize.getSize().invoke(IntSize.m2479boximpl(j))).m2487unboximpl();
                Alignment alignment = getAlignment();
                Intrinsics.checkNotNull(alignment);
                LayoutDirection layoutDirection = LayoutDirection.Ltr;
                long mo1074alignKFBX0sM = alignment.mo1074alignKFBX0sM(j, m2487unboximpl, layoutDirection);
                Alignment alignment2 = this.currentAlignment;
                Intrinsics.checkNotNull(alignment2);
                return IntOffset.m2468minusqkQi6aY(mo1074alignKFBX0sM, alignment2.mo1074alignKFBX0sM(j, m2487unboximpl, layoutDirection));
            }
            return IntOffset.Companion.m2472getZeronOccac();
        }
        return IntOffset.Companion.m2472getZeronOccac();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s, reason: not valid java name */
    public MeasureResult mo39measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        State animate;
        State animate2;
        if (this.transition.getCurrentState() == this.transition.getTargetState()) {
            this.currentAlignment = null;
        } else if (this.currentAlignment == null) {
            Alignment alignment = getAlignment();
            if (alignment == null) {
                alignment = Alignment.Companion.getTopStart();
            }
            this.currentAlignment = alignment;
        }
        if (measureScope.isLookingAhead()) {
            final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(j);
            long IntSize = IntSizeKt.IntSize(mo1751measureBRTryo0.getWidth(), mo1751measureBRTryo0.getHeight());
            this.lookaheadSize = IntSize;
            m38setLookaheadConstraintsBRTryo0(j);
            return MeasureScope.CC.layout$default(measureScope, IntSize.m2484getWidthimpl(IntSize), IntSize.m2483getHeightimpl(IntSize), null, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Placeable.PlacementScope) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(Placeable.PlacementScope placementScope) {
                    Placeable.PlacementScope.place$default(placementScope, Placeable.this, 0, 0, 0.0f, 4, null);
                }
            }, 4, null);
        }
        if (((Boolean) this.isEnabled.invoke()).booleanValue()) {
            final Function1 init = this.graphicsLayerBlock.init();
            final Placeable mo1751measureBRTryo02 = measurable.mo1751measureBRTryo0(j);
            long IntSize2 = IntSizeKt.IntSize(mo1751measureBRTryo02.getWidth(), mo1751measureBRTryo02.getHeight());
            final long j2 = AnimationModifierKt.m24isValidozmzZPI(this.lookaheadSize) ? this.lookaheadSize : IntSize2;
            Transition.DeferredAnimation deferredAnimation = this.sizeAnimation;
            State animate3 = deferredAnimation != null ? deferredAnimation.animate(this.sizeTransitionSpec, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$animSize$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return IntSize.m2479boximpl(m43invokeYEO4UFw((EnterExitState) obj));
                }

                /* renamed from: invoke-YEO4UFw, reason: not valid java name */
                public final long m43invokeYEO4UFw(EnterExitState enterExitState) {
                    return EnterExitTransitionModifierNode.this.m40sizeByStateUzc_VyU(enterExitState, j2);
                }
            }) : null;
            if (animate3 != null) {
                IntSize2 = ((IntSize) animate3.getValue()).m2487unboximpl();
            }
            long m2408constrain4WqzIAM = ConstraintsKt.m2408constrain4WqzIAM(j, IntSize2);
            Transition.DeferredAnimation deferredAnimation2 = this.offsetAnimation;
            final long m2472getZeronOccac = (deferredAnimation2 == null || (animate2 = deferredAnimation2.animate(new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$offsetDelta$1
                @Override // kotlin.jvm.functions.Function1
                public final FiniteAnimationSpec invoke(Transition.Segment segment) {
                    SpringSpec springSpec;
                    springSpec = EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                    return springSpec;
                }
            }, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$offsetDelta$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return IntOffset.m2459boximpl(m44invokeBjo55l4((EnterExitState) obj));
                }

                /* renamed from: invoke-Bjo55l4, reason: not valid java name */
                public final long m44invokeBjo55l4(EnterExitState enterExitState) {
                    return EnterExitTransitionModifierNode.this.m42targetOffsetByStateoFUgxo0(enterExitState, j2);
                }
            })) == null) ? IntOffset.Companion.m2472getZeronOccac() : ((IntOffset) animate2.getValue()).m2471unboximpl();
            Transition.DeferredAnimation deferredAnimation3 = this.slideAnimation;
            long m2472getZeronOccac2 = (deferredAnimation3 == null || (animate = deferredAnimation3.animate(this.slideSpec, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$slideOffset$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return IntOffset.m2459boximpl(m45invokeBjo55l4((EnterExitState) obj));
                }

                /* renamed from: invoke-Bjo55l4, reason: not valid java name */
                public final long m45invokeBjo55l4(EnterExitState enterExitState) {
                    return EnterExitTransitionModifierNode.this.m41slideTargetValueByStateoFUgxo0(enterExitState, j2);
                }
            })) == null) ? IntOffset.Companion.m2472getZeronOccac() : ((IntOffset) animate.getValue()).m2471unboximpl();
            Alignment alignment2 = this.currentAlignment;
            final long m2469plusqkQi6aY = IntOffset.m2469plusqkQi6aY(alignment2 != null ? alignment2.mo1074alignKFBX0sM(j2, m2408constrain4WqzIAM, LayoutDirection.Ltr) : IntOffset.Companion.m2472getZeronOccac(), m2472getZeronOccac2);
            return MeasureScope.CC.layout$default(measureScope, IntSize.m2484getWidthimpl(m2408constrain4WqzIAM), IntSize.m2483getHeightimpl(m2408constrain4WqzIAM), null, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Placeable.PlacementScope) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(Placeable.PlacementScope placementScope) {
                    placementScope.placeWithLayer(Placeable.this, IntOffset.m2465getXimpl(m2472getZeronOccac) + IntOffset.m2465getXimpl(m2469plusqkQi6aY), IntOffset.m2466getYimpl(m2472getZeronOccac) + IntOffset.m2466getYimpl(m2469plusqkQi6aY), 0.0f, init);
                }
            }, 4, null);
        }
        final Placeable mo1751measureBRTryo03 = measurable.mo1751measureBRTryo0(j);
        return MeasureScope.CC.layout$default(measureScope, mo1751measureBRTryo03.getWidth(), mo1751measureBRTryo03.getHeight(), null, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$3$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Placeable.PlacementScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Placeable.PlacementScope placementScope) {
                Placeable.PlacementScope.place$default(placementScope, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* renamed from: slideTargetValueByState-oFUgxo0, reason: not valid java name */
    public final long m41slideTargetValueByStateoFUgxo0(EnterExitState enterExitState, long j) {
        Function1 slideOffset;
        Function1 slideOffset2;
        Slide slide = this.enter.getData$animation_release().getSlide();
        long m2472getZeronOccac = (slide == null || (slideOffset2 = slide.getSlideOffset()) == null) ? IntOffset.Companion.m2472getZeronOccac() : ((IntOffset) slideOffset2.invoke(IntSize.m2479boximpl(j))).m2471unboximpl();
        Slide slide2 = this.exit.getData$animation_release().getSlide();
        long m2472getZeronOccac2 = (slide2 == null || (slideOffset = slide2.getSlideOffset()) == null) ? IntOffset.Companion.m2472getZeronOccac() : ((IntOffset) slideOffset.invoke(IntSize.m2479boximpl(j))).m2471unboximpl();
        int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
        if (i == 1) {
            return IntOffset.Companion.m2472getZeronOccac();
        }
        if (i == 2) {
            return m2472getZeronOccac;
        }
        if (i == 3) {
            return m2472getZeronOccac2;
        }
        throw new NoWhenBranchMatchedException();
    }
}
