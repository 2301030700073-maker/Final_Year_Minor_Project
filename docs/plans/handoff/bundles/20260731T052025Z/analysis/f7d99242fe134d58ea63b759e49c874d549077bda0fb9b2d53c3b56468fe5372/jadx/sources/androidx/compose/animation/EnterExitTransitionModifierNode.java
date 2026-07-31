package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.IntrinsicSizeModifier;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.draw.PainterNode$measure$1;
import androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EnterExitTransitionModifierNode extends IntrinsicSizeModifier {
    public Alignment currentAlignment;
    public EnterTransitionImpl enter;
    public ExitTransitionImpl exit;
    public EnterExitTransitionKt$$ExternalSyntheticLambda0 graphicsLayerBlock;
    public Function0 isEnabled;
    public long lookaheadSize;
    public Transition.DeferredAnimation offsetAnimation;
    public Transition.DeferredAnimation sizeAnimation;
    public final EnterExitTransitionModifierNode$slideSpec$1 sizeTransitionSpec;
    public Transition.DeferredAnimation slideAnimation;
    public final EnterExitTransitionModifierNode$slideSpec$1 slideSpec;
    public Transition transition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1] */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1] */
    public EnterExitTransitionModifierNode(Transition transition, Transition.DeferredAnimation deferredAnimation, Transition.DeferredAnimation deferredAnimation2, Transition.DeferredAnimation deferredAnimation3, EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, Function0 function0, EnterExitTransitionKt$$ExternalSyntheticLambda0 enterExitTransitionKt$$ExternalSyntheticLambda0) {
        super(1);
        final int i = 1;
        this.transition = transition;
        this.sizeAnimation = deferredAnimation;
        this.offsetAnimation = deferredAnimation2;
        this.slideAnimation = deferredAnimation3;
        this.enter = enterTransitionImpl;
        this.exit = exitTransitionImpl;
        this.isEnabled = function0;
        this.graphicsLayerBlock = enterExitTransitionKt$$ExternalSyntheticLambda0;
        this.lookaheadSize = -9223372034707292160L;
        final int i2 = 0;
        ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
        this.sizeTransitionSpec = new Function1(this) { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1
            public final /* synthetic */ EnterExitTransitionModifierNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i;
                EnterExitState enterExitState = EnterExitState.PostExit;
                EnterExitState enterExitState2 = EnterExitState.Visible;
                EnterExitState enterExitState3 = EnterExitState.PreEnter;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i3) {
                    case 0:
                        Transition.Segment segment = (Transition.Segment) obj;
                        if (segment.isTransitioningTo(enterExitState3, enterExitState2)) {
                            Slide slide = enterExitTransitionModifierNode.enter.data.slide;
                            return slide != null ? slide.animationSpec : EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        }
                        if (!segment.isTransitioningTo(enterExitState2, enterExitState)) {
                            return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        }
                        Slide slide2 = enterExitTransitionModifierNode.exit.data.slide;
                        return slide2 != null ? slide2.animationSpec : EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                    default:
                        Transition.Segment segment2 = (Transition.Segment) obj;
                        boolean isTransitioningTo = segment2.isTransitioningTo(enterExitState3, enterExitState2);
                        Object obj2 = null;
                        if (isTransitioningTo) {
                            ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                            if (changeSize != null) {
                                obj2 = changeSize.animationSpec;
                            }
                        } else if (segment2.isTransitioningTo(enterExitState2, enterExitState)) {
                            ChangeSize changeSize2 = enterExitTransitionModifierNode.exit.data.changeSize;
                            if (changeSize2 != null) {
                                obj2 = changeSize2.animationSpec;
                            }
                        } else {
                            obj2 = EnterExitTransitionKt.DefaultSizeAnimationSpec;
                        }
                        return obj2 == null ? EnterExitTransitionKt.DefaultSizeAnimationSpec : obj2;
                }
            }
        };
        this.slideSpec = new Function1(this) { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1
            public final /* synthetic */ EnterExitTransitionModifierNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                EnterExitState enterExitState = EnterExitState.PostExit;
                EnterExitState enterExitState2 = EnterExitState.Visible;
                EnterExitState enterExitState3 = EnterExitState.PreEnter;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i3) {
                    case 0:
                        Transition.Segment segment = (Transition.Segment) obj;
                        if (segment.isTransitioningTo(enterExitState3, enterExitState2)) {
                            Slide slide = enterExitTransitionModifierNode.enter.data.slide;
                            return slide != null ? slide.animationSpec : EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        }
                        if (!segment.isTransitioningTo(enterExitState2, enterExitState)) {
                            return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        }
                        Slide slide2 = enterExitTransitionModifierNode.exit.data.slide;
                        return slide2 != null ? slide2.animationSpec : EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                    default:
                        Transition.Segment segment2 = (Transition.Segment) obj;
                        boolean isTransitioningTo = segment2.isTransitioningTo(enterExitState3, enterExitState2);
                        Object obj2 = null;
                        if (isTransitioningTo) {
                            ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                            if (changeSize != null) {
                                obj2 = changeSize.animationSpec;
                            }
                        } else if (segment2.isTransitioningTo(enterExitState2, enterExitState)) {
                            ChangeSize changeSize2 = enterExitTransitionModifierNode.exit.data.changeSize;
                            if (changeSize2 != null) {
                                obj2 = changeSize2.animationSpec;
                            }
                        } else {
                            obj2 = EnterExitTransitionKt.DefaultSizeAnimationSpec;
                        }
                        return obj2 == null ? EnterExitTransitionKt.DefaultSizeAnimationSpec : obj2;
                }
            }
        };
    }

    public final Alignment getAlignment() {
        Alignment alignment;
        Alignment alignment2;
        if (this.transition.getSegment().isTransitioningTo(EnterExitState.PreEnter, EnterExitState.Visible)) {
            ChangeSize changeSize = this.enter.data.changeSize;
            if (changeSize != null && (alignment2 = changeSize.alignment) != null) {
                return alignment2;
            }
            ChangeSize changeSize2 = this.exit.data.changeSize;
            if (changeSize2 != null) {
                return changeSize2.alignment;
            }
            return null;
        }
        ChangeSize changeSize3 = this.exit.data.changeSize;
        if (changeSize3 != null && (alignment = changeSize3.alignment) != null) {
            return alignment;
        }
        ChangeSize changeSize4 = this.enter.data.changeSize;
        if (changeSize4 != null) {
            return changeSize4.alignment;
        }
        return null;
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        char c;
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData;
        TransformOrigin transformOrigin;
        if (this.transition.transitionState.getCurrentState() == this.transition.targetState$delegate.getValue()) {
            this.currentAlignment = null;
        } else if (this.currentAlignment == null) {
            Alignment alignment = getAlignment();
            if (alignment == null) {
                alignment = Alignment.Companion.TopStart;
            }
            this.currentAlignment = alignment;
        }
        boolean isLookingAhead = measureScope.isLookingAhead();
        final int i = 2;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (isLookingAhead) {
            Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(j);
            long j2 = (mo571measureBRTryo0.width << 32) | (mo571measureBRTryo0.height & 4294967295L);
            this.lookaheadSize = j2;
            return measureScope.layout((int) (j2 >> 32), (int) (4294967295L & j2), emptyMap, new PainterNode$measure$1(mo571measureBRTryo0, 2));
        }
        final int i2 = 3;
        if (!((Boolean) this.isEnabled.invoke()).booleanValue()) {
            Placeable mo571measureBRTryo02 = measurable.mo571measureBRTryo0(j);
            return measureScope.layout(mo571measureBRTryo02.width, mo571measureBRTryo02.height, emptyMap, new PainterNode$measure$1(mo571measureBRTryo02, 3));
        }
        EnterExitTransitionKt$$ExternalSyntheticLambda0 enterExitTransitionKt$$ExternalSyntheticLambda0 = this.graphicsLayerBlock;
        Transition.DeferredAnimation deferredAnimation = enterExitTransitionKt$$ExternalSyntheticLambda0.f$0;
        Transition.DeferredAnimation deferredAnimation2 = enterExitTransitionKt$$ExternalSyntheticLambda0.f$1;
        Transition transition = enterExitTransitionKt$$ExternalSyntheticLambda0.f$2;
        final EnterTransitionImpl enterTransitionImpl = enterExitTransitionKt$$ExternalSyntheticLambda0.f$3;
        TransitionData transitionData = enterTransitionImpl.data;
        final ExitTransitionImpl exitTransitionImpl = enterExitTransitionKt$$ExternalSyntheticLambda0.f$4;
        Transition.DeferredAnimation deferredAnimation3 = enterExitTransitionKt$$ExternalSyntheticLambda0.f$5;
        final int i3 = 1;
        final int i4 = 0;
        if (deferredAnimation != null) {
            c = ' ';
            deferredAnimationData = deferredAnimation.animate(new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                /* JADX WARN: Code restructure failed: missing block: B:41:0x0074, code lost:
                
                    if (r9.data.fade != null) goto L37;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:42:0x0076, code lost:
                
                    r7 = 0.0f;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:48:0x0080, code lost:
                
                    if (r8.data.fade != null) goto L37;
                 */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r10) {
                    /*
                        r9 = this;
                        int r0 = r3
                        androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.PostExit
                        androidx.compose.animation.EnterExitState r2 = androidx.compose.animation.EnterExitState.Visible
                        androidx.compose.animation.EnterExitState r3 = androidx.compose.animation.EnterExitState.PreEnter
                        r4 = 0
                        r5 = 2
                        r6 = 1
                        r7 = 1065353216(0x3f800000, float:1.0)
                        androidx.compose.animation.EnterTransitionImpl r8 = r1
                        androidx.compose.animation.ExitTransitionImpl r9 = r2
                        switch(r0) {
                            case 0: goto L88;
                            case 1: goto L63;
                            case 2: goto L3a;
                            default: goto L14;
                        }
                    L14:
                        androidx.compose.animation.EnterExitState r10 = (androidx.compose.animation.EnterExitState) r10
                        int r10 = r10.ordinal()
                        if (r10 == 0) goto L2d
                        if (r10 == r6) goto L35
                        if (r10 != r5) goto L29
                        androidx.compose.animation.TransitionData r9 = r9.data
                        androidx.compose.animation.Scale r9 = r9.scale
                        if (r9 == 0) goto L35
                        float r7 = r9.scale
                        goto L35
                    L29:
                        coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                        goto L39
                    L2d:
                        androidx.compose.animation.TransitionData r9 = r8.data
                        androidx.compose.animation.Scale r9 = r9.scale
                        if (r9 == 0) goto L35
                        float r7 = r9.scale
                    L35:
                        java.lang.Float r4 = java.lang.Float.valueOf(r7)
                    L39:
                        return r4
                    L3a:
                        androidx.compose.animation.core.Transition$Segment r10 = (androidx.compose.animation.core.Transition.Segment) r10
                        boolean r0 = r10.isTransitioningTo(r3, r2)
                        if (r0 == 0) goto L4e
                        androidx.compose.animation.TransitionData r9 = r8.data
                        androidx.compose.animation.Scale r9 = r9.scale
                        if (r9 == 0) goto L4b
                        androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                        goto L62
                    L4b:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto L62
                    L4e:
                        boolean r10 = r10.isTransitioningTo(r2, r1)
                        if (r10 == 0) goto L60
                        androidx.compose.animation.TransitionData r9 = r9.data
                        androidx.compose.animation.Scale r9 = r9.scale
                        if (r9 == 0) goto L5d
                        androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                        goto L62
                    L5d:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto L62
                    L60:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    L62:
                        return r9
                    L63:
                        androidx.compose.animation.EnterExitState r10 = (androidx.compose.animation.EnterExitState) r10
                        int r10 = r10.ordinal()
                        r0 = 0
                        if (r10 == 0) goto L7c
                        if (r10 == r6) goto L83
                        if (r10 != r5) goto L78
                        androidx.compose.animation.TransitionData r9 = r9.data
                        androidx.compose.animation.Fade r9 = r9.fade
                        if (r9 == 0) goto L83
                    L76:
                        r7 = r0
                        goto L83
                    L78:
                        coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                        goto L87
                    L7c:
                        androidx.compose.animation.TransitionData r9 = r8.data
                        androidx.compose.animation.Fade r9 = r9.fade
                        if (r9 == 0) goto L83
                        goto L76
                    L83:
                        java.lang.Float r4 = java.lang.Float.valueOf(r7)
                    L87:
                        return r4
                    L88:
                        androidx.compose.animation.core.Transition$Segment r10 = (androidx.compose.animation.core.Transition.Segment) r10
                        boolean r0 = r10.isTransitioningTo(r3, r2)
                        if (r0 == 0) goto L9d
                        androidx.compose.animation.TransitionData r9 = r8.data
                        androidx.compose.animation.Fade r9 = r9.fade
                        if (r9 == 0) goto L9a
                        androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                        if (r9 != 0) goto Lb2
                    L9a:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto Lb2
                    L9d:
                        boolean r10 = r10.isTransitioningTo(r2, r1)
                        if (r10 == 0) goto Lb0
                        androidx.compose.animation.TransitionData r9 = r9.data
                        androidx.compose.animation.Fade r9 = r9.fade
                        if (r9 == 0) goto Lad
                        androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                        if (r9 != 0) goto Lb2
                    Lad:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto Lb2
                    Lb0:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    Lb2:
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1.invoke(java.lang.Object):java.lang.Object");
                }
            }, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    /*
                        this = this;
                        int r0 = r3
                        androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.PostExit
                        androidx.compose.animation.EnterExitState r2 = androidx.compose.animation.EnterExitState.Visible
                        androidx.compose.animation.EnterExitState r3 = androidx.compose.animation.EnterExitState.PreEnter
                        r4 = 0
                        r5 = 2
                        r6 = 1
                        r7 = 1065353216(0x3f800000, float:1.0)
                        androidx.compose.animation.EnterTransitionImpl r8 = r1
                        androidx.compose.animation.ExitTransitionImpl r9 = r2
                        switch(r0) {
                            case 0: goto L88;
                            case 1: goto L63;
                            case 2: goto L3a;
                            default: goto L14;
                        }
                    L14:
                        androidx.compose.animation.EnterExitState r10 = (androidx.compose.animation.EnterExitState) r10
                        int r10 = r10.ordinal()
                        if (r10 == 0) goto L2d
                        if (r10 == r6) goto L35
                        if (r10 != r5) goto L29
                        androidx.compose.animation.TransitionData r9 = r9.data
                        androidx.compose.animation.Scale r9 = r9.scale
                        if (r9 == 0) goto L35
                        float r7 = r9.scale
                        goto L35
                    L29:
                        coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                        goto L39
                    L2d:
                        androidx.compose.animation.TransitionData r9 = r8.data
                        androidx.compose.animation.Scale r9 = r9.scale
                        if (r9 == 0) goto L35
                        float r7 = r9.scale
                    L35:
                        java.lang.Float r4 = java.lang.Float.valueOf(r7)
                    L39:
                        return r4
                    L3a:
                        androidx.compose.animation.core.Transition$Segment r10 = (androidx.compose.animation.core.Transition.Segment) r10
                        boolean r0 = r10.isTransitioningTo(r3, r2)
                        if (r0 == 0) goto L4e
                        androidx.compose.animation.TransitionData r9 = r8.data
                        androidx.compose.animation.Scale r9 = r9.scale
                        if (r9 == 0) goto L4b
                        androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                        goto L62
                    L4b:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto L62
                    L4e:
                        boolean r10 = r10.isTransitioningTo(r2, r1)
                        if (r10 == 0) goto L60
                        androidx.compose.animation.TransitionData r9 = r9.data
                        androidx.compose.animation.Scale r9 = r9.scale
                        if (r9 == 0) goto L5d
                        androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                        goto L62
                    L5d:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto L62
                    L60:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    L62:
                        return r9
                    L63:
                        androidx.compose.animation.EnterExitState r10 = (androidx.compose.animation.EnterExitState) r10
                        int r10 = r10.ordinal()
                        r0 = 0
                        if (r10 == 0) goto L7c
                        if (r10 == r6) goto L83
                        if (r10 != r5) goto L78
                        androidx.compose.animation.TransitionData r9 = r9.data
                        androidx.compose.animation.Fade r9 = r9.fade
                        if (r9 == 0) goto L83
                    L76:
                        r7 = r0
                        goto L83
                    L78:
                        coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                        goto L87
                    L7c:
                        androidx.compose.animation.TransitionData r9 = r8.data
                        androidx.compose.animation.Fade r9 = r9.fade
                        if (r9 == 0) goto L83
                        goto L76
                    L83:
                        java.lang.Float r4 = java.lang.Float.valueOf(r7)
                    L87:
                        return r4
                    L88:
                        androidx.compose.animation.core.Transition$Segment r10 = (androidx.compose.animation.core.Transition.Segment) r10
                        boolean r0 = r10.isTransitioningTo(r3, r2)
                        if (r0 == 0) goto L9d
                        androidx.compose.animation.TransitionData r9 = r8.data
                        androidx.compose.animation.Fade r9 = r9.fade
                        if (r9 == 0) goto L9a
                        androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                        if (r9 != 0) goto Lb2
                    L9a:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto Lb2
                    L9d:
                        boolean r10 = r10.isTransitioningTo(r2, r1)
                        if (r10 == 0) goto Lb0
                        androidx.compose.animation.TransitionData r9 = r9.data
                        androidx.compose.animation.Fade r9 = r9.fade
                        if (r9 == 0) goto Lad
                        androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                        if (r9 != 0) goto Lb2
                    Lad:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto Lb2
                    Lb0:
                        androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    Lb2:
                        return r9
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1.invoke(java.lang.Object):java.lang.Object");
                }
            });
        } else {
            c = ' ';
            deferredAnimationData = null;
        }
        Transition.DeferredAnimation.DeferredAnimationData animate = deferredAnimation2 != null ? deferredAnimation2.animate(new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                /*
                    this = this;
                    int r0 = r3
                    androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.PostExit
                    androidx.compose.animation.EnterExitState r2 = androidx.compose.animation.EnterExitState.Visible
                    androidx.compose.animation.EnterExitState r3 = androidx.compose.animation.EnterExitState.PreEnter
                    r4 = 0
                    r5 = 2
                    r6 = 1
                    r7 = 1065353216(0x3f800000, float:1.0)
                    androidx.compose.animation.EnterTransitionImpl r8 = r1
                    androidx.compose.animation.ExitTransitionImpl r9 = r2
                    switch(r0) {
                        case 0: goto L88;
                        case 1: goto L63;
                        case 2: goto L3a;
                        default: goto L14;
                    }
                L14:
                    androidx.compose.animation.EnterExitState r10 = (androidx.compose.animation.EnterExitState) r10
                    int r10 = r10.ordinal()
                    if (r10 == 0) goto L2d
                    if (r10 == r6) goto L35
                    if (r10 != r5) goto L29
                    androidx.compose.animation.TransitionData r9 = r9.data
                    androidx.compose.animation.Scale r9 = r9.scale
                    if (r9 == 0) goto L35
                    float r7 = r9.scale
                    goto L35
                L29:
                    coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                    goto L39
                L2d:
                    androidx.compose.animation.TransitionData r9 = r8.data
                    androidx.compose.animation.Scale r9 = r9.scale
                    if (r9 == 0) goto L35
                    float r7 = r9.scale
                L35:
                    java.lang.Float r4 = java.lang.Float.valueOf(r7)
                L39:
                    return r4
                L3a:
                    androidx.compose.animation.core.Transition$Segment r10 = (androidx.compose.animation.core.Transition.Segment) r10
                    boolean r0 = r10.isTransitioningTo(r3, r2)
                    if (r0 == 0) goto L4e
                    androidx.compose.animation.TransitionData r9 = r8.data
                    androidx.compose.animation.Scale r9 = r9.scale
                    if (r9 == 0) goto L4b
                    androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                    goto L62
                L4b:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto L62
                L4e:
                    boolean r10 = r10.isTransitioningTo(r2, r1)
                    if (r10 == 0) goto L60
                    androidx.compose.animation.TransitionData r9 = r9.data
                    androidx.compose.animation.Scale r9 = r9.scale
                    if (r9 == 0) goto L5d
                    androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                    goto L62
                L5d:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto L62
                L60:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                L62:
                    return r9
                L63:
                    androidx.compose.animation.EnterExitState r10 = (androidx.compose.animation.EnterExitState) r10
                    int r10 = r10.ordinal()
                    r0 = 0
                    if (r10 == 0) goto L7c
                    if (r10 == r6) goto L83
                    if (r10 != r5) goto L78
                    androidx.compose.animation.TransitionData r9 = r9.data
                    androidx.compose.animation.Fade r9 = r9.fade
                    if (r9 == 0) goto L83
                L76:
                    r7 = r0
                    goto L83
                L78:
                    coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                    goto L87
                L7c:
                    androidx.compose.animation.TransitionData r9 = r8.data
                    androidx.compose.animation.Fade r9 = r9.fade
                    if (r9 == 0) goto L83
                    goto L76
                L83:
                    java.lang.Float r4 = java.lang.Float.valueOf(r7)
                L87:
                    return r4
                L88:
                    androidx.compose.animation.core.Transition$Segment r10 = (androidx.compose.animation.core.Transition.Segment) r10
                    boolean r0 = r10.isTransitioningTo(r3, r2)
                    if (r0 == 0) goto L9d
                    androidx.compose.animation.TransitionData r9 = r8.data
                    androidx.compose.animation.Fade r9 = r9.fade
                    if (r9 == 0) goto L9a
                    androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                    if (r9 != 0) goto Lb2
                L9a:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto Lb2
                L9d:
                    boolean r10 = r10.isTransitioningTo(r2, r1)
                    if (r10 == 0) goto Lb0
                    androidx.compose.animation.TransitionData r9 = r9.data
                    androidx.compose.animation.Fade r9 = r9.fade
                    if (r9 == 0) goto Lad
                    androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                    if (r9 != 0) goto Lb2
                Lad:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto Lb2
                Lb0:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                Lb2:
                    return r9
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1.invoke(java.lang.Object):java.lang.Object");
            }
        }, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                /*
                    this = this;
                    int r0 = r3
                    androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.PostExit
                    androidx.compose.animation.EnterExitState r2 = androidx.compose.animation.EnterExitState.Visible
                    androidx.compose.animation.EnterExitState r3 = androidx.compose.animation.EnterExitState.PreEnter
                    r4 = 0
                    r5 = 2
                    r6 = 1
                    r7 = 1065353216(0x3f800000, float:1.0)
                    androidx.compose.animation.EnterTransitionImpl r8 = r1
                    androidx.compose.animation.ExitTransitionImpl r9 = r2
                    switch(r0) {
                        case 0: goto L88;
                        case 1: goto L63;
                        case 2: goto L3a;
                        default: goto L14;
                    }
                L14:
                    androidx.compose.animation.EnterExitState r10 = (androidx.compose.animation.EnterExitState) r10
                    int r10 = r10.ordinal()
                    if (r10 == 0) goto L2d
                    if (r10 == r6) goto L35
                    if (r10 != r5) goto L29
                    androidx.compose.animation.TransitionData r9 = r9.data
                    androidx.compose.animation.Scale r9 = r9.scale
                    if (r9 == 0) goto L35
                    float r7 = r9.scale
                    goto L35
                L29:
                    coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                    goto L39
                L2d:
                    androidx.compose.animation.TransitionData r9 = r8.data
                    androidx.compose.animation.Scale r9 = r9.scale
                    if (r9 == 0) goto L35
                    float r7 = r9.scale
                L35:
                    java.lang.Float r4 = java.lang.Float.valueOf(r7)
                L39:
                    return r4
                L3a:
                    androidx.compose.animation.core.Transition$Segment r10 = (androidx.compose.animation.core.Transition.Segment) r10
                    boolean r0 = r10.isTransitioningTo(r3, r2)
                    if (r0 == 0) goto L4e
                    androidx.compose.animation.TransitionData r9 = r8.data
                    androidx.compose.animation.Scale r9 = r9.scale
                    if (r9 == 0) goto L4b
                    androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                    goto L62
                L4b:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto L62
                L4e:
                    boolean r10 = r10.isTransitioningTo(r2, r1)
                    if (r10 == 0) goto L60
                    androidx.compose.animation.TransitionData r9 = r9.data
                    androidx.compose.animation.Scale r9 = r9.scale
                    if (r9 == 0) goto L5d
                    androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                    goto L62
                L5d:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto L62
                L60:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                L62:
                    return r9
                L63:
                    androidx.compose.animation.EnterExitState r10 = (androidx.compose.animation.EnterExitState) r10
                    int r10 = r10.ordinal()
                    r0 = 0
                    if (r10 == 0) goto L7c
                    if (r10 == r6) goto L83
                    if (r10 != r5) goto L78
                    androidx.compose.animation.TransitionData r9 = r9.data
                    androidx.compose.animation.Fade r9 = r9.fade
                    if (r9 == 0) goto L83
                L76:
                    r7 = r0
                    goto L83
                L78:
                    coil3.UriKt$$ExternalSyntheticBUOutline0.m857m()
                    goto L87
                L7c:
                    androidx.compose.animation.TransitionData r9 = r8.data
                    androidx.compose.animation.Fade r9 = r9.fade
                    if (r9 == 0) goto L83
                    goto L76
                L83:
                    java.lang.Float r4 = java.lang.Float.valueOf(r7)
                L87:
                    return r4
                L88:
                    androidx.compose.animation.core.Transition$Segment r10 = (androidx.compose.animation.core.Transition.Segment) r10
                    boolean r0 = r10.isTransitioningTo(r3, r2)
                    if (r0 == 0) goto L9d
                    androidx.compose.animation.TransitionData r9 = r8.data
                    androidx.compose.animation.Fade r9 = r9.fade
                    if (r9 == 0) goto L9a
                    androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                    if (r9 != 0) goto Lb2
                L9a:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto Lb2
                L9d:
                    boolean r10 = r10.isTransitioningTo(r2, r1)
                    if (r10 == 0) goto Lb0
                    androidx.compose.animation.TransitionData r9 = r9.data
                    androidx.compose.animation.Fade r9 = r9.fade
                    if (r9 == 0) goto Lad
                    androidx.compose.animation.core.FiniteAnimationSpec r9 = r9.animationSpec
                    if (r9 != 0) goto Lb2
                Lad:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto Lb2
                Lb0:
                    androidx.compose.animation.core.SpringSpec r9 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                Lb2:
                    return r9
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1.invoke(java.lang.Object):java.lang.Object");
            }
        }) : null;
        if (transition.transitionState.getCurrentState() == EnterExitState.PreEnter) {
            Scale scale = transitionData.scale;
            if (scale != null) {
                transformOrigin = new TransformOrigin(scale.transformOrigin);
            } else {
                Scale scale2 = exitTransitionImpl.data.scale;
                if (scale2 != null) {
                    transformOrigin = new TransformOrigin(scale2.transformOrigin);
                }
                transformOrigin = null;
            }
        } else {
            Scale scale3 = exitTransitionImpl.data.scale;
            if (scale3 != null) {
                transformOrigin = new TransformOrigin(scale3.transformOrigin);
            } else {
                Scale scale4 = transitionData.scale;
                if (scale4 != null) {
                    transformOrigin = new TransformOrigin(scale4.transformOrigin);
                }
                transformOrigin = null;
            }
        }
        final FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1 = new FocusOwnerImpl$focusSearch$1(deferredAnimationData, animate, deferredAnimation3 != null ? deferredAnimation3.animate(CrossfadeKt$Crossfade$3$1.INSTANCE$8, new FocusOwnerImpl$focusSearch$1(transformOrigin, enterTransitionImpl, exitTransitionImpl, i2)) : null, i);
        final Placeable mo571measureBRTryo03 = measurable.mo571measureBRTryo0(j);
        long j3 = (mo571measureBRTryo03.width << c) | (mo571measureBRTryo03.height & 4294967295L);
        final long j4 = !IntSize.m768equalsimpl0(this.lookaheadSize, -9223372034707292160L) ? this.lookaheadSize : j3;
        Transition.DeferredAnimation deferredAnimation4 = this.sizeAnimation;
        Transition.DeferredAnimation.DeferredAnimationData animate2 = deferredAnimation4 != null ? deferredAnimation4.animate(this.sizeTransitionSpec, new Function1(this) { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$animSize$1
            public final /* synthetic */ EnterExitTransitionModifierNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Function1 function1;
                Function1 function12;
                int ordinal;
                int i5 = i4;
                long j5 = 0;
                long j6 = j4;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i5) {
                    case 0:
                        int ordinal2 = ((EnterExitState) obj).ordinal();
                        if (ordinal2 == 0) {
                            ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                            if (changeSize != null && (function1 = changeSize.size) != null) {
                                j6 = ((IntSize) function1.invoke(new IntSize(j6))).packedValue;
                            }
                        } else if (ordinal2 != 1) {
                            if (ordinal2 != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            ChangeSize changeSize2 = enterExitTransitionModifierNode.exit.data.changeSize;
                            if (changeSize2 != null && (function12 = changeSize2.size) != null) {
                                j6 = ((IntSize) function12.invoke(new IntSize(j6))).packedValue;
                            }
                        }
                        return new IntSize(j6);
                    case 1:
                        EnterExitState enterExitState = (EnterExitState) obj;
                        if (enterExitTransitionModifierNode.currentAlignment != null && enterExitTransitionModifierNode.getAlignment() != null && !Intrinsics.areEqual(enterExitTransitionModifierNode.currentAlignment, enterExitTransitionModifierNode.getAlignment()) && (ordinal = enterExitState.ordinal()) != 0 && ordinal != 1) {
                            if (ordinal != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            ChangeSize changeSize3 = enterExitTransitionModifierNode.exit.data.changeSize;
                            if (changeSize3 != null) {
                                Function1 function13 = changeSize3.size;
                                long j7 = j4;
                                long j8 = ((IntSize) function13.invoke(new IntSize(j7))).packedValue;
                                Alignment alignment2 = enterExitTransitionModifierNode.getAlignment();
                                alignment2.getClass();
                                LayoutDirection layoutDirection = LayoutDirection.Ltr;
                                long mo387alignKFBX0sM = alignment2.mo387alignKFBX0sM(j7, j8, layoutDirection);
                                Alignment alignment3 = enterExitTransitionModifierNode.currentAlignment;
                                alignment3.getClass();
                                j5 = IntOffset.m753minusqkQi6aY(mo387alignKFBX0sM, alignment3.mo387alignKFBX0sM(j7, j8, layoutDirection));
                            }
                        }
                        return new IntOffset(j5);
                    default:
                        EnterExitState enterExitState2 = (EnterExitState) obj;
                        Slide slide = enterExitTransitionModifierNode.enter.data.slide;
                        long j9 = slide != null ? ((IntOffset) slide.slideOffset.invoke(new IntSize(j6))).packedValue : 0L;
                        Slide slide2 = enterExitTransitionModifierNode.exit.data.slide;
                        long j10 = slide2 != null ? ((IntOffset) slide2.slideOffset.invoke(new IntSize(j6))).packedValue : 0L;
                        int ordinal3 = enterExitState2.ordinal();
                        if (ordinal3 == 0) {
                            j5 = j9;
                        } else if (ordinal3 != 1) {
                            if (ordinal3 != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            j5 = j10;
                        }
                        return new IntOffset(j5);
                }
            }
        }) : null;
        if (animate2 != null) {
            j3 = ((IntSize) animate2.getValue()).packedValue;
        }
        long m738constrain4WqzIAM = ConstraintsKt.m738constrain4WqzIAM(j, j3);
        Transition.DeferredAnimation deferredAnimation5 = this.offsetAnimation;
        final long j5 = deferredAnimation5 != null ? ((IntOffset) deferredAnimation5.animate(CrossfadeKt$Crossfade$3$1.INSTANCE$9, new Function1(this) { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$animSize$1
            public final /* synthetic */ EnterExitTransitionModifierNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Function1 function1;
                Function1 function12;
                int ordinal;
                int i5 = i3;
                long j52 = 0;
                long j6 = j4;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i5) {
                    case 0:
                        int ordinal2 = ((EnterExitState) obj).ordinal();
                        if (ordinal2 == 0) {
                            ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                            if (changeSize != null && (function1 = changeSize.size) != null) {
                                j6 = ((IntSize) function1.invoke(new IntSize(j6))).packedValue;
                            }
                        } else if (ordinal2 != 1) {
                            if (ordinal2 != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            ChangeSize changeSize2 = enterExitTransitionModifierNode.exit.data.changeSize;
                            if (changeSize2 != null && (function12 = changeSize2.size) != null) {
                                j6 = ((IntSize) function12.invoke(new IntSize(j6))).packedValue;
                            }
                        }
                        return new IntSize(j6);
                    case 1:
                        EnterExitState enterExitState = (EnterExitState) obj;
                        if (enterExitTransitionModifierNode.currentAlignment != null && enterExitTransitionModifierNode.getAlignment() != null && !Intrinsics.areEqual(enterExitTransitionModifierNode.currentAlignment, enterExitTransitionModifierNode.getAlignment()) && (ordinal = enterExitState.ordinal()) != 0 && ordinal != 1) {
                            if (ordinal != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            ChangeSize changeSize3 = enterExitTransitionModifierNode.exit.data.changeSize;
                            if (changeSize3 != null) {
                                Function1 function13 = changeSize3.size;
                                long j7 = j4;
                                long j8 = ((IntSize) function13.invoke(new IntSize(j7))).packedValue;
                                Alignment alignment2 = enterExitTransitionModifierNode.getAlignment();
                                alignment2.getClass();
                                LayoutDirection layoutDirection = LayoutDirection.Ltr;
                                long mo387alignKFBX0sM = alignment2.mo387alignKFBX0sM(j7, j8, layoutDirection);
                                Alignment alignment3 = enterExitTransitionModifierNode.currentAlignment;
                                alignment3.getClass();
                                j52 = IntOffset.m753minusqkQi6aY(mo387alignKFBX0sM, alignment3.mo387alignKFBX0sM(j7, j8, layoutDirection));
                            }
                        }
                        return new IntOffset(j52);
                    default:
                        EnterExitState enterExitState2 = (EnterExitState) obj;
                        Slide slide = enterExitTransitionModifierNode.enter.data.slide;
                        long j9 = slide != null ? ((IntOffset) slide.slideOffset.invoke(new IntSize(j6))).packedValue : 0L;
                        Slide slide2 = enterExitTransitionModifierNode.exit.data.slide;
                        long j10 = slide2 != null ? ((IntOffset) slide2.slideOffset.invoke(new IntSize(j6))).packedValue : 0L;
                        int ordinal3 = enterExitState2.ordinal();
                        if (ordinal3 == 0) {
                            j52 = j9;
                        } else if (ordinal3 != 1) {
                            if (ordinal3 != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            j52 = j10;
                        }
                        return new IntOffset(j52);
                }
            }
        }).getValue()).packedValue : 0L;
        Transition.DeferredAnimation deferredAnimation6 = this.slideAnimation;
        long j6 = deferredAnimation6 != null ? ((IntOffset) deferredAnimation6.animate(this.slideSpec, new Function1(this) { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$animSize$1
            public final /* synthetic */ EnterExitTransitionModifierNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Function1 function1;
                Function1 function12;
                int ordinal;
                int i5 = i;
                long j52 = 0;
                long j62 = j4;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i5) {
                    case 0:
                        int ordinal2 = ((EnterExitState) obj).ordinal();
                        if (ordinal2 == 0) {
                            ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                            if (changeSize != null && (function1 = changeSize.size) != null) {
                                j62 = ((IntSize) function1.invoke(new IntSize(j62))).packedValue;
                            }
                        } else if (ordinal2 != 1) {
                            if (ordinal2 != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            ChangeSize changeSize2 = enterExitTransitionModifierNode.exit.data.changeSize;
                            if (changeSize2 != null && (function12 = changeSize2.size) != null) {
                                j62 = ((IntSize) function12.invoke(new IntSize(j62))).packedValue;
                            }
                        }
                        return new IntSize(j62);
                    case 1:
                        EnterExitState enterExitState = (EnterExitState) obj;
                        if (enterExitTransitionModifierNode.currentAlignment != null && enterExitTransitionModifierNode.getAlignment() != null && !Intrinsics.areEqual(enterExitTransitionModifierNode.currentAlignment, enterExitTransitionModifierNode.getAlignment()) && (ordinal = enterExitState.ordinal()) != 0 && ordinal != 1) {
                            if (ordinal != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            ChangeSize changeSize3 = enterExitTransitionModifierNode.exit.data.changeSize;
                            if (changeSize3 != null) {
                                Function1 function13 = changeSize3.size;
                                long j7 = j4;
                                long j8 = ((IntSize) function13.invoke(new IntSize(j7))).packedValue;
                                Alignment alignment2 = enterExitTransitionModifierNode.getAlignment();
                                alignment2.getClass();
                                LayoutDirection layoutDirection = LayoutDirection.Ltr;
                                long mo387alignKFBX0sM = alignment2.mo387alignKFBX0sM(j7, j8, layoutDirection);
                                Alignment alignment3 = enterExitTransitionModifierNode.currentAlignment;
                                alignment3.getClass();
                                j52 = IntOffset.m753minusqkQi6aY(mo387alignKFBX0sM, alignment3.mo387alignKFBX0sM(j7, j8, layoutDirection));
                            }
                        }
                        return new IntOffset(j52);
                    default:
                        EnterExitState enterExitState2 = (EnterExitState) obj;
                        Slide slide = enterExitTransitionModifierNode.enter.data.slide;
                        long j9 = slide != null ? ((IntOffset) slide.slideOffset.invoke(new IntSize(j62))).packedValue : 0L;
                        Slide slide2 = enterExitTransitionModifierNode.exit.data.slide;
                        long j10 = slide2 != null ? ((IntOffset) slide2.slideOffset.invoke(new IntSize(j62))).packedValue : 0L;
                        int ordinal3 = enterExitState2.ordinal();
                        if (ordinal3 == 0) {
                            j52 = j9;
                        } else if (ordinal3 != 1) {
                            if (ordinal3 != 2) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            }
                            j52 = j10;
                        }
                        return new IntOffset(j52);
                }
            }
        }).getValue()).packedValue : 0L;
        Alignment alignment2 = this.currentAlignment;
        final long m754plusqkQi6aY = IntOffset.m754plusqkQi6aY(alignment2 != null ? alignment2.mo387alignKFBX0sM(j4, m738constrain4WqzIAM, LayoutDirection.Ltr) : 0L, j6);
        return measureScope.layout((int) (m738constrain4WqzIAM >> c), (int) (m738constrain4WqzIAM & 4294967295L), emptyMap, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                long j7 = m754plusqkQi6aY;
                long j8 = j5;
                placementScope.getClass();
                long j9 = ((((int) (j7 >> 32)) + ((int) (j8 >> 32))) << 32) | ((((int) (j7 & 4294967295L)) + ((int) (j8 & 4294967295L))) & 4294967295L);
                Placeable placeable = Placeable.this;
                Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(j9, placeable.apparentToRealOffset), 0.0f, focusOwnerImpl$focusSearch$1);
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.lookaheadSize = -9223372034707292160L;
    }
}
