package androidx.compose.animation;

import androidx.compose.animation.EnterExitTransitionModifierNode;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.IntrinsicSizeModifier;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.draw.PainterNode$measure$1;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.glance.session.SessionWorkerKt$runSession$6;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public Transition transition;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1] */
    public EnterExitTransitionModifierNode(Transition transition, Transition.DeferredAnimation deferredAnimation, Transition.DeferredAnimation deferredAnimation2, EnterTransitionImpl enterTransitionImpl, ExitTransitionImpl exitTransitionImpl, Function0 function0, EnterExitTransitionKt$$ExternalSyntheticLambda0 enterExitTransitionKt$$ExternalSyntheticLambda0) {
        super(1);
        final int i = 1;
        this.transition = transition;
        this.sizeAnimation = deferredAnimation;
        this.offsetAnimation = deferredAnimation2;
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
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i3) {
                    case 0:
                        Transition.Segment segment = (Transition.Segment) obj;
                        EnterExitState enterExitState = EnterExitState.PreEnter;
                        EnterExitState enterExitState2 = EnterExitState.Visible;
                        if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
                            return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        }
                        if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
                            return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        }
                        TransitionData transitionData = enterExitTransitionModifierNode.exit.data;
                        return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                    default:
                        Transition.Segment segment2 = (Transition.Segment) obj;
                        EnterExitState enterExitState3 = EnterExitState.PreEnter;
                        EnterExitState enterExitState4 = EnterExitState.Visible;
                        Object obj2 = null;
                        if (segment2.isTransitioningTo(enterExitState3, enterExitState4)) {
                            ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                            if (changeSize != null) {
                                obj2 = changeSize.animationSpec;
                            }
                        } else if (segment2.isTransitioningTo(enterExitState4, EnterExitState.PostExit)) {
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
        new Function1(this) { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1
            public final /* synthetic */ EnterExitTransitionModifierNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i3) {
                    case 0:
                        Transition.Segment segment = (Transition.Segment) obj;
                        EnterExitState enterExitState = EnterExitState.PreEnter;
                        EnterExitState enterExitState2 = EnterExitState.Visible;
                        if (segment.isTransitioningTo(enterExitState, enterExitState2)) {
                            return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        }
                        if (!segment.isTransitioningTo(enterExitState2, EnterExitState.PostExit)) {
                            return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                        }
                        TransitionData transitionData = enterExitTransitionModifierNode.exit.data;
                        return EnterExitTransitionKt.DefaultOffsetAnimationSpec;
                    default:
                        Transition.Segment segment2 = (Transition.Segment) obj;
                        EnterExitState enterExitState3 = EnterExitState.PreEnter;
                        EnterExitState enterExitState4 = EnterExitState.Visible;
                        Object obj2 = null;
                        if (segment2.isTransitioningTo(enterExitState3, enterExitState4)) {
                            ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                            if (changeSize != null) {
                                obj2 = changeSize.animationSpec;
                            }
                        } else if (segment2.isTransitioningTo(enterExitState4, EnterExitState.PostExit)) {
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
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
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
            Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(j);
            long j2 = (mo512measureBRTryo0.width << 32) | (mo512measureBRTryo0.height & 4294967295L);
            this.lookaheadSize = j2;
            return measureScope.layout((int) (j2 >> 32), (int) (4294967295L & j2), emptyMap, new PainterNode$measure$1(mo512measureBRTryo0, 2));
        }
        final int i2 = 3;
        if (!((Boolean) this.isEnabled.invoke()).booleanValue()) {
            Placeable mo512measureBRTryo02 = measurable.mo512measureBRTryo0(j);
            return measureScope.layout(mo512measureBRTryo02.width, mo512measureBRTryo02.height, emptyMap, new PainterNode$measure$1(mo512measureBRTryo02, 3));
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

                /* JADX WARN: Code restructure failed: missing block: B:44:0x007f, code lost:
                
                    if (r7.data.fade != null) goto L40;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:45:0x0081, code lost:
                
                    r5 = 0.0f;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:49:0x008b, code lost:
                
                    if (r6.data.fade != null) goto L40;
                 */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r8) {
                    /*
                        r7 = this;
                        int r0 = r3
                        r1 = 0
                        r2 = 3
                        r3 = 2
                        r4 = 1
                        r5 = 1065353216(0x3f800000, float:1.0)
                        androidx.compose.animation.EnterTransitionImpl r6 = r1
                        androidx.compose.animation.ExitTransitionImpl r7 = r2
                        switch(r0) {
                            case 0: goto L93;
                            case 1: goto L6a;
                            case 2: goto L39;
                            default: goto Lf;
                        }
                    Lf:
                        androidx.compose.animation.EnterExitState r8 = (androidx.compose.animation.EnterExitState) r8
                        int[] r0 = androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2$WhenMappings.$EnumSwitchMapping$0
                        int r8 = r8.ordinal()
                        r8 = r0[r8]
                        if (r8 == r4) goto L34
                        if (r8 == r3) goto L2c
                        if (r8 != r2) goto L28
                        androidx.compose.animation.TransitionData r7 = r7.data
                        androidx.compose.animation.Scale r7 = r7.scale
                        if (r7 == 0) goto L34
                        float r5 = r7.scale
                        goto L34
                    L28:
                        coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
                        goto L38
                    L2c:
                        androidx.compose.animation.TransitionData r7 = r6.data
                        androidx.compose.animation.Scale r7 = r7.scale
                        if (r7 == 0) goto L34
                        float r5 = r7.scale
                    L34:
                        java.lang.Float r1 = java.lang.Float.valueOf(r5)
                    L38:
                        return r1
                    L39:
                        androidx.compose.animation.core.Transition$Segment r8 = (androidx.compose.animation.core.Transition.Segment) r8
                        androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PreEnter
                        androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.Visible
                        boolean r0 = r8.isTransitioningTo(r0, r1)
                        if (r0 == 0) goto L52
                        androidx.compose.animation.TransitionData r7 = r6.data
                        androidx.compose.animation.Scale r7 = r7.scale
                        if (r7 == 0) goto L4f
                        androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                        if (r7 != 0) goto L69
                    L4f:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto L69
                    L52:
                        androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PostExit
                        boolean r8 = r8.isTransitioningTo(r1, r0)
                        if (r8 == 0) goto L67
                        androidx.compose.animation.TransitionData r7 = r7.data
                        androidx.compose.animation.Scale r7 = r7.scale
                        if (r7 == 0) goto L64
                        androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                        if (r7 != 0) goto L69
                    L64:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto L69
                    L67:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    L69:
                        return r7
                    L6a:
                        androidx.compose.animation.EnterExitState r8 = (androidx.compose.animation.EnterExitState) r8
                        int[] r0 = androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2$WhenMappings.$EnumSwitchMapping$0
                        int r8 = r8.ordinal()
                        r8 = r0[r8]
                        if (r8 == r4) goto L8e
                        r0 = 0
                        if (r8 == r3) goto L87
                        if (r8 != r2) goto L83
                        androidx.compose.animation.TransitionData r7 = r7.data
                        androidx.compose.animation.Fade r7 = r7.fade
                        if (r7 == 0) goto L8e
                    L81:
                        r5 = r0
                        goto L8e
                    L83:
                        coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
                        goto L92
                    L87:
                        androidx.compose.animation.TransitionData r7 = r6.data
                        androidx.compose.animation.Fade r7 = r7.fade
                        if (r7 == 0) goto L8e
                        goto L81
                    L8e:
                        java.lang.Float r1 = java.lang.Float.valueOf(r5)
                    L92:
                        return r1
                    L93:
                        androidx.compose.animation.core.Transition$Segment r8 = (androidx.compose.animation.core.Transition.Segment) r8
                        androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PreEnter
                        androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.Visible
                        boolean r0 = r8.isTransitioningTo(r0, r1)
                        if (r0 == 0) goto Lac
                        androidx.compose.animation.TransitionData r7 = r6.data
                        androidx.compose.animation.Fade r7 = r7.fade
                        if (r7 == 0) goto La9
                        androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                        if (r7 != 0) goto Lc3
                    La9:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto Lc3
                    Lac:
                        androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PostExit
                        boolean r8 = r8.isTransitioningTo(r1, r0)
                        if (r8 == 0) goto Lc1
                        androidx.compose.animation.TransitionData r7 = r7.data
                        androidx.compose.animation.Fade r7 = r7.fade
                        if (r7 == 0) goto Lbe
                        androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                        if (r7 != 0) goto Lc3
                    Lbe:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto Lc3
                    Lc1:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    Lc3:
                        return r7
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
                        r1 = 0
                        r2 = 3
                        r3 = 2
                        r4 = 1
                        r5 = 1065353216(0x3f800000, float:1.0)
                        androidx.compose.animation.EnterTransitionImpl r6 = r1
                        androidx.compose.animation.ExitTransitionImpl r7 = r2
                        switch(r0) {
                            case 0: goto L93;
                            case 1: goto L6a;
                            case 2: goto L39;
                            default: goto Lf;
                        }
                    Lf:
                        androidx.compose.animation.EnterExitState r8 = (androidx.compose.animation.EnterExitState) r8
                        int[] r0 = androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2$WhenMappings.$EnumSwitchMapping$0
                        int r8 = r8.ordinal()
                        r8 = r0[r8]
                        if (r8 == r4) goto L34
                        if (r8 == r3) goto L2c
                        if (r8 != r2) goto L28
                        androidx.compose.animation.TransitionData r7 = r7.data
                        androidx.compose.animation.Scale r7 = r7.scale
                        if (r7 == 0) goto L34
                        float r5 = r7.scale
                        goto L34
                    L28:
                        coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
                        goto L38
                    L2c:
                        androidx.compose.animation.TransitionData r7 = r6.data
                        androidx.compose.animation.Scale r7 = r7.scale
                        if (r7 == 0) goto L34
                        float r5 = r7.scale
                    L34:
                        java.lang.Float r1 = java.lang.Float.valueOf(r5)
                    L38:
                        return r1
                    L39:
                        androidx.compose.animation.core.Transition$Segment r8 = (androidx.compose.animation.core.Transition.Segment) r8
                        androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PreEnter
                        androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.Visible
                        boolean r0 = r8.isTransitioningTo(r0, r1)
                        if (r0 == 0) goto L52
                        androidx.compose.animation.TransitionData r7 = r6.data
                        androidx.compose.animation.Scale r7 = r7.scale
                        if (r7 == 0) goto L4f
                        androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                        if (r7 != 0) goto L69
                    L4f:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto L69
                    L52:
                        androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PostExit
                        boolean r8 = r8.isTransitioningTo(r1, r0)
                        if (r8 == 0) goto L67
                        androidx.compose.animation.TransitionData r7 = r7.data
                        androidx.compose.animation.Scale r7 = r7.scale
                        if (r7 == 0) goto L64
                        androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                        if (r7 != 0) goto L69
                    L64:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto L69
                    L67:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    L69:
                        return r7
                    L6a:
                        androidx.compose.animation.EnterExitState r8 = (androidx.compose.animation.EnterExitState) r8
                        int[] r0 = androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2$WhenMappings.$EnumSwitchMapping$0
                        int r8 = r8.ordinal()
                        r8 = r0[r8]
                        if (r8 == r4) goto L8e
                        r0 = 0
                        if (r8 == r3) goto L87
                        if (r8 != r2) goto L83
                        androidx.compose.animation.TransitionData r7 = r7.data
                        androidx.compose.animation.Fade r7 = r7.fade
                        if (r7 == 0) goto L8e
                    L81:
                        r5 = r0
                        goto L8e
                    L83:
                        coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
                        goto L92
                    L87:
                        androidx.compose.animation.TransitionData r7 = r6.data
                        androidx.compose.animation.Fade r7 = r7.fade
                        if (r7 == 0) goto L8e
                        goto L81
                    L8e:
                        java.lang.Float r1 = java.lang.Float.valueOf(r5)
                    L92:
                        return r1
                    L93:
                        androidx.compose.animation.core.Transition$Segment r8 = (androidx.compose.animation.core.Transition.Segment) r8
                        androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PreEnter
                        androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.Visible
                        boolean r0 = r8.isTransitioningTo(r0, r1)
                        if (r0 == 0) goto Lac
                        androidx.compose.animation.TransitionData r7 = r6.data
                        androidx.compose.animation.Fade r7 = r7.fade
                        if (r7 == 0) goto La9
                        androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                        if (r7 != 0) goto Lc3
                    La9:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto Lc3
                    Lac:
                        androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PostExit
                        boolean r8 = r8.isTransitioningTo(r1, r0)
                        if (r8 == 0) goto Lc1
                        androidx.compose.animation.TransitionData r7 = r7.data
                        androidx.compose.animation.Fade r7 = r7.fade
                        if (r7 == 0) goto Lbe
                        androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                        if (r7 != 0) goto Lc3
                    Lbe:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                        goto Lc3
                    Lc1:
                        androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    Lc3:
                        return r7
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
                    r1 = 0
                    r2 = 3
                    r3 = 2
                    r4 = 1
                    r5 = 1065353216(0x3f800000, float:1.0)
                    androidx.compose.animation.EnterTransitionImpl r6 = r1
                    androidx.compose.animation.ExitTransitionImpl r7 = r2
                    switch(r0) {
                        case 0: goto L93;
                        case 1: goto L6a;
                        case 2: goto L39;
                        default: goto Lf;
                    }
                Lf:
                    androidx.compose.animation.EnterExitState r8 = (androidx.compose.animation.EnterExitState) r8
                    int[] r0 = androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2$WhenMappings.$EnumSwitchMapping$0
                    int r8 = r8.ordinal()
                    r8 = r0[r8]
                    if (r8 == r4) goto L34
                    if (r8 == r3) goto L2c
                    if (r8 != r2) goto L28
                    androidx.compose.animation.TransitionData r7 = r7.data
                    androidx.compose.animation.Scale r7 = r7.scale
                    if (r7 == 0) goto L34
                    float r5 = r7.scale
                    goto L34
                L28:
                    coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
                    goto L38
                L2c:
                    androidx.compose.animation.TransitionData r7 = r6.data
                    androidx.compose.animation.Scale r7 = r7.scale
                    if (r7 == 0) goto L34
                    float r5 = r7.scale
                L34:
                    java.lang.Float r1 = java.lang.Float.valueOf(r5)
                L38:
                    return r1
                L39:
                    androidx.compose.animation.core.Transition$Segment r8 = (androidx.compose.animation.core.Transition.Segment) r8
                    androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PreEnter
                    androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.Visible
                    boolean r0 = r8.isTransitioningTo(r0, r1)
                    if (r0 == 0) goto L52
                    androidx.compose.animation.TransitionData r7 = r6.data
                    androidx.compose.animation.Scale r7 = r7.scale
                    if (r7 == 0) goto L4f
                    androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                    if (r7 != 0) goto L69
                L4f:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto L69
                L52:
                    androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PostExit
                    boolean r8 = r8.isTransitioningTo(r1, r0)
                    if (r8 == 0) goto L67
                    androidx.compose.animation.TransitionData r7 = r7.data
                    androidx.compose.animation.Scale r7 = r7.scale
                    if (r7 == 0) goto L64
                    androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                    if (r7 != 0) goto L69
                L64:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto L69
                L67:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                L69:
                    return r7
                L6a:
                    androidx.compose.animation.EnterExitState r8 = (androidx.compose.animation.EnterExitState) r8
                    int[] r0 = androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2$WhenMappings.$EnumSwitchMapping$0
                    int r8 = r8.ordinal()
                    r8 = r0[r8]
                    if (r8 == r4) goto L8e
                    r0 = 0
                    if (r8 == r3) goto L87
                    if (r8 != r2) goto L83
                    androidx.compose.animation.TransitionData r7 = r7.data
                    androidx.compose.animation.Fade r7 = r7.fade
                    if (r7 == 0) goto L8e
                L81:
                    r5 = r0
                    goto L8e
                L83:
                    coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
                    goto L92
                L87:
                    androidx.compose.animation.TransitionData r7 = r6.data
                    androidx.compose.animation.Fade r7 = r7.fade
                    if (r7 == 0) goto L8e
                    goto L81
                L8e:
                    java.lang.Float r1 = java.lang.Float.valueOf(r5)
                L92:
                    return r1
                L93:
                    androidx.compose.animation.core.Transition$Segment r8 = (androidx.compose.animation.core.Transition.Segment) r8
                    androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PreEnter
                    androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.Visible
                    boolean r0 = r8.isTransitioningTo(r0, r1)
                    if (r0 == 0) goto Lac
                    androidx.compose.animation.TransitionData r7 = r6.data
                    androidx.compose.animation.Fade r7 = r7.fade
                    if (r7 == 0) goto La9
                    androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                    if (r7 != 0) goto Lc3
                La9:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto Lc3
                Lac:
                    androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PostExit
                    boolean r8 = r8.isTransitioningTo(r1, r0)
                    if (r8 == 0) goto Lc1
                    androidx.compose.animation.TransitionData r7 = r7.data
                    androidx.compose.animation.Fade r7 = r7.fade
                    if (r7 == 0) goto Lbe
                    androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                    if (r7 != 0) goto Lc3
                Lbe:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto Lc3
                Lc1:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                Lc3:
                    return r7
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
                    r1 = 0
                    r2 = 3
                    r3 = 2
                    r4 = 1
                    r5 = 1065353216(0x3f800000, float:1.0)
                    androidx.compose.animation.EnterTransitionImpl r6 = r1
                    androidx.compose.animation.ExitTransitionImpl r7 = r2
                    switch(r0) {
                        case 0: goto L93;
                        case 1: goto L6a;
                        case 2: goto L39;
                        default: goto Lf;
                    }
                Lf:
                    androidx.compose.animation.EnterExitState r8 = (androidx.compose.animation.EnterExitState) r8
                    int[] r0 = androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2$WhenMappings.$EnumSwitchMapping$0
                    int r8 = r8.ordinal()
                    r8 = r0[r8]
                    if (r8 == r4) goto L34
                    if (r8 == r3) goto L2c
                    if (r8 != r2) goto L28
                    androidx.compose.animation.TransitionData r7 = r7.data
                    androidx.compose.animation.Scale r7 = r7.scale
                    if (r7 == 0) goto L34
                    float r5 = r7.scale
                    goto L34
                L28:
                    coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
                    goto L38
                L2c:
                    androidx.compose.animation.TransitionData r7 = r6.data
                    androidx.compose.animation.Scale r7 = r7.scale
                    if (r7 == 0) goto L34
                    float r5 = r7.scale
                L34:
                    java.lang.Float r1 = java.lang.Float.valueOf(r5)
                L38:
                    return r1
                L39:
                    androidx.compose.animation.core.Transition$Segment r8 = (androidx.compose.animation.core.Transition.Segment) r8
                    androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PreEnter
                    androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.Visible
                    boolean r0 = r8.isTransitioningTo(r0, r1)
                    if (r0 == 0) goto L52
                    androidx.compose.animation.TransitionData r7 = r6.data
                    androidx.compose.animation.Scale r7 = r7.scale
                    if (r7 == 0) goto L4f
                    androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                    if (r7 != 0) goto L69
                L4f:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto L69
                L52:
                    androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PostExit
                    boolean r8 = r8.isTransitioningTo(r1, r0)
                    if (r8 == 0) goto L67
                    androidx.compose.animation.TransitionData r7 = r7.data
                    androidx.compose.animation.Scale r7 = r7.scale
                    if (r7 == 0) goto L64
                    androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                    if (r7 != 0) goto L69
                L64:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto L69
                L67:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                L69:
                    return r7
                L6a:
                    androidx.compose.animation.EnterExitState r8 = (androidx.compose.animation.EnterExitState) r8
                    int[] r0 = androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2$WhenMappings.$EnumSwitchMapping$0
                    int r8 = r8.ordinal()
                    r8 = r0[r8]
                    if (r8 == r4) goto L8e
                    r0 = 0
                    if (r8 == r3) goto L87
                    if (r8 != r2) goto L83
                    androidx.compose.animation.TransitionData r7 = r7.data
                    androidx.compose.animation.Fade r7 = r7.fade
                    if (r7 == 0) goto L8e
                L81:
                    r5 = r0
                    goto L8e
                L83:
                    coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
                    goto L92
                L87:
                    androidx.compose.animation.TransitionData r7 = r6.data
                    androidx.compose.animation.Fade r7 = r7.fade
                    if (r7 == 0) goto L8e
                    goto L81
                L8e:
                    java.lang.Float r1 = java.lang.Float.valueOf(r5)
                L92:
                    return r1
                L93:
                    androidx.compose.animation.core.Transition$Segment r8 = (androidx.compose.animation.core.Transition.Segment) r8
                    androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PreEnter
                    androidx.compose.animation.EnterExitState r1 = androidx.compose.animation.EnterExitState.Visible
                    boolean r0 = r8.isTransitioningTo(r0, r1)
                    if (r0 == 0) goto Lac
                    androidx.compose.animation.TransitionData r7 = r6.data
                    androidx.compose.animation.Fade r7 = r7.fade
                    if (r7 == 0) goto La9
                    androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                    if (r7 != 0) goto Lc3
                La9:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto Lc3
                Lac:
                    androidx.compose.animation.EnterExitState r0 = androidx.compose.animation.EnterExitState.PostExit
                    boolean r8 = r8.isTransitioningTo(r1, r0)
                    if (r8 == 0) goto Lc1
                    androidx.compose.animation.TransitionData r7 = r7.data
                    androidx.compose.animation.Fade r7 = r7.fade
                    if (r7 == 0) goto Lbe
                    androidx.compose.animation.core.FiniteAnimationSpec r7 = r7.animationSpec
                    if (r7 != 0) goto Lc3
                Lbe:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                    goto Lc3
                Lc1:
                    androidx.compose.animation.core.SpringSpec r7 = androidx.compose.animation.EnterExitTransitionKt.DefaultAlphaAndScaleSpring
                Lc3:
                    return r7
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
        final SessionWorkerKt$runSession$6 sessionWorkerKt$runSession$6 = new SessionWorkerKt$runSession$6(deferredAnimationData, animate, deferredAnimation3 != null ? deferredAnimation3.animate(CrossfadeKt$Crossfade$3$1.INSTANCE$8, new SessionWorkerKt$runSession$6(transformOrigin, enterTransitionImpl, exitTransitionImpl, i2)) : null, i);
        final Placeable mo512measureBRTryo03 = measurable.mo512measureBRTryo0(j);
        long j3 = (mo512measureBRTryo03.height & 4294967295L) | (mo512measureBRTryo03.width << c);
        final long j4 = !IntSize.m721equalsimpl0(this.lookaheadSize, -9223372034707292160L) ? this.lookaheadSize : j3;
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
                long j5;
                int i5;
                int i6 = i4;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i6) {
                    case 0:
                        int i7 = EnterExitTransitionModifierNode.WhenMappings.$EnumSwitchMapping$0[((EnterExitState) obj).ordinal()];
                        long j6 = j4;
                        if (i7 != 1) {
                            if (i7 == 2) {
                                ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                                if (changeSize != null && (function1 = changeSize.size) != null) {
                                    j6 = ((IntSize) function1.invoke(new IntSize(j6))).packedValue;
                                }
                            } else {
                                if (i7 != 3) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    return null;
                                }
                                ChangeSize changeSize2 = enterExitTransitionModifierNode.exit.data.changeSize;
                                if (changeSize2 != null && (function12 = changeSize2.size) != null) {
                                    j6 = ((IntSize) function12.invoke(new IntSize(j6))).packedValue;
                                }
                            }
                        }
                        return new IntSize(j6);
                    default:
                        EnterExitState enterExitState = (EnterExitState) obj;
                        if (enterExitTransitionModifierNode.currentAlignment != null && enterExitTransitionModifierNode.getAlignment() != null && !Intrinsics.areEqual(enterExitTransitionModifierNode.currentAlignment, enterExitTransitionModifierNode.getAlignment()) && (i5 = EnterExitTransitionModifierNode.WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()]) != 1 && i5 != 2) {
                            if (i5 != 3) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
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
                                long mo333alignKFBX0sM = alignment2.mo333alignKFBX0sM(j7, j8, layoutDirection);
                                Alignment alignment3 = enterExitTransitionModifierNode.currentAlignment;
                                alignment3.getClass();
                                j5 = IntOffset.m716minusqkQi6aY(mo333alignKFBX0sM, alignment3.mo333alignKFBX0sM(j7, j8, layoutDirection));
                                return new IntOffset(j5);
                            }
                        }
                        j5 = 0;
                        return new IntOffset(j5);
                }
            }
        }) : null;
        if (animate2 != null) {
            j3 = ((IntSize) animate2.getValue()).packedValue;
        }
        long m686constrain4WqzIAM = ConstraintsKt.m686constrain4WqzIAM(j, j3);
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
                long j52;
                int i5;
                int i6 = i3;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = this.this$0;
                switch (i6) {
                    case 0:
                        int i7 = EnterExitTransitionModifierNode.WhenMappings.$EnumSwitchMapping$0[((EnterExitState) obj).ordinal()];
                        long j6 = j4;
                        if (i7 != 1) {
                            if (i7 == 2) {
                                ChangeSize changeSize = enterExitTransitionModifierNode.enter.data.changeSize;
                                if (changeSize != null && (function1 = changeSize.size) != null) {
                                    j6 = ((IntSize) function1.invoke(new IntSize(j6))).packedValue;
                                }
                            } else {
                                if (i7 != 3) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    return null;
                                }
                                ChangeSize changeSize2 = enterExitTransitionModifierNode.exit.data.changeSize;
                                if (changeSize2 != null && (function12 = changeSize2.size) != null) {
                                    j6 = ((IntSize) function12.invoke(new IntSize(j6))).packedValue;
                                }
                            }
                        }
                        return new IntSize(j6);
                    default:
                        EnterExitState enterExitState = (EnterExitState) obj;
                        if (enterExitTransitionModifierNode.currentAlignment != null && enterExitTransitionModifierNode.getAlignment() != null && !Intrinsics.areEqual(enterExitTransitionModifierNode.currentAlignment, enterExitTransitionModifierNode.getAlignment()) && (i5 = EnterExitTransitionModifierNode.WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()]) != 1 && i5 != 2) {
                            if (i5 != 3) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
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
                                long mo333alignKFBX0sM = alignment2.mo333alignKFBX0sM(j7, j8, layoutDirection);
                                Alignment alignment3 = enterExitTransitionModifierNode.currentAlignment;
                                alignment3.getClass();
                                j52 = IntOffset.m716minusqkQi6aY(mo333alignKFBX0sM, alignment3.mo333alignKFBX0sM(j7, j8, layoutDirection));
                                return new IntOffset(j52);
                            }
                        }
                        j52 = 0;
                        return new IntOffset(j52);
                }
            }
        }).getValue()).packedValue : 0L;
        Alignment alignment2 = this.currentAlignment;
        final long m717plusqkQi6aY = IntOffset.m717plusqkQi6aY(alignment2 != null ? alignment2.mo333alignKFBX0sM(j4, m686constrain4WqzIAM, LayoutDirection.Ltr) : 0L, 0L);
        return measureScope.layout((int) (m686constrain4WqzIAM >> c), (int) (m686constrain4WqzIAM & 4294967295L), emptyMap, new Function1() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j6 = m717plusqkQi6aY;
                long j7 = j5;
                long j8 = ((((int) (j6 >> 32)) + ((int) (j7 >> 32))) << 32) | ((((int) (j6 & 4294967295L)) + ((int) (j7 & 4294967295L))) & 4294967295L);
                Placeable placeable = Placeable.this;
                ((Placeable.PlacementScope) obj).handleMotionFrameOfReferencePlacement(placeable);
                placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY(j8, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, sessionWorkerKt$runSession$6);
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.lookaheadSize = -9223372034707292160L;
    }
}
