package androidx.compose.foundation.gestures;

import android.view.KeyEvent;
import androidx.compose.animation.SplineBasedDecayKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Scrollable.kt */
/* loaded from: classes.dex */
final class ScrollableNode extends DragGestureNode implements ObserverModifierNode, CompositionLocalConsumerModifierNode, FocusPropertiesModifierNode, KeyInputModifierNode, SemanticsModifierNode {
    private final ContentInViewNode contentInViewNode;
    private final DefaultFlingBehavior defaultFlingBehavior;
    private FlingBehavior flingBehavior;
    private final ScrollableNestedScrollConnection nestedScrollConnection;
    private final NestedScrollDispatcher nestedScrollDispatcher;
    private OverscrollEffect overscrollEffect;
    private Function2 scrollByAction;
    private Function2 scrollByOffsetAction;
    private ScrollConfig scrollConfig;
    private final ScrollableContainerNode scrollableContainerNode;
    private final ScrollingLogic scrollingLogic;
    private final boolean shouldAutoInvalidate;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return SemanticsModifierNode.CC.$default$getShouldClearDescendantSemantics(this);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return SemanticsModifierNode.CC.$default$getShouldMergeDescendantSemantics(this);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* renamed from: onDragStarted-k-4lQ0M */
    public void mo189onDragStartedk4lQ0M(long j) {
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onPreKeyEvent-ZmokQxo */
    public boolean mo88onPreKeyEventZmokQxo(KeyEvent keyEvent) {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.foundation.gestures.FlingBehavior] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ScrollableNode(androidx.compose.foundation.gestures.ScrollableState r13, androidx.compose.foundation.OverscrollEffect r14, androidx.compose.foundation.gestures.FlingBehavior r15, androidx.compose.foundation.gestures.Orientation r16, boolean r17, boolean r18, androidx.compose.foundation.interaction.MutableInteractionSource r19, androidx.compose.foundation.gestures.BringIntoViewSpec r20) {
        /*
            r12 = this;
            r0 = r12
            r8 = r16
            r9 = r17
            kotlin.jvm.functions.Function1 r1 = androidx.compose.foundation.gestures.ScrollableKt.access$getCanDragCalculation$p()
            r2 = r19
            r12.<init>(r1, r9, r2, r8)
            r1 = r14
            r0.overscrollEffect = r1
            r1 = r15
            r0.flingBehavior = r1
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher r10 = new androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher
            r10.<init>()
            r0.nestedScrollDispatcher = r10
            androidx.compose.foundation.gestures.ScrollableContainerNode r1 = new androidx.compose.foundation.gestures.ScrollableContainerNode
            r1.<init>(r9)
            androidx.compose.ui.node.DelegatableNode r1 = r12.delegate(r1)
            androidx.compose.foundation.gestures.ScrollableContainerNode r1 = (androidx.compose.foundation.gestures.ScrollableContainerNode) r1
            r0.scrollableContainerNode = r1
            androidx.compose.foundation.gestures.DefaultFlingBehavior r1 = new androidx.compose.foundation.gestures.DefaultFlingBehavior
            androidx.compose.foundation.gestures.ScrollableKt$UnityDensity$1 r2 = androidx.compose.foundation.gestures.ScrollableKt.access$getUnityDensity$p()
            androidx.compose.animation.core.DecayAnimationSpec r2 = androidx.compose.animation.SplineBasedDecayKt.splineBasedDecay(r2)
            r3 = 0
            r4 = 2
            r1.<init>(r2, r3, r4, r3)
            r0.defaultFlingBehavior = r1
            androidx.compose.foundation.OverscrollEffect r3 = r0.overscrollEffect
            androidx.compose.foundation.gestures.FlingBehavior r2 = r0.flingBehavior
            if (r2 != 0) goto L41
            r4 = r1
            goto L42
        L41:
            r4 = r2
        L42:
            androidx.compose.foundation.gestures.ScrollingLogic r11 = new androidx.compose.foundation.gestures.ScrollingLogic
            r1 = r11
            r2 = r13
            r5 = r16
            r6 = r18
            r7 = r10
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r0.scrollingLogic = r11
            androidx.compose.foundation.gestures.ScrollableNestedScrollConnection r1 = new androidx.compose.foundation.gestures.ScrollableNestedScrollConnection
            r1.<init>(r11, r9)
            r0.nestedScrollConnection = r1
            androidx.compose.foundation.gestures.ContentInViewNode r2 = new androidx.compose.foundation.gestures.ContentInViewNode
            r3 = r18
            r4 = r20
            r2.<init>(r8, r11, r3, r4)
            androidx.compose.ui.node.DelegatableNode r2 = r12.delegate(r2)
            androidx.compose.foundation.gestures.ContentInViewNode r2 = (androidx.compose.foundation.gestures.ContentInViewNode) r2
            r0.contentInViewNode = r2
            androidx.compose.ui.node.DelegatableNode r1 = androidx.compose.ui.input.nestedscroll.NestedScrollNodeKt.nestedScrollModifierNode(r1, r10)
            r12.delegate(r1)
            androidx.compose.ui.focus.FocusTargetModifierNode r1 = androidx.compose.ui.focus.FocusTargetModifierNodeKt.FocusTargetModifierNode()
            r12.delegate(r1)
            androidx.compose.foundation.relocation.BringIntoViewResponderNode r1 = new androidx.compose.foundation.relocation.BringIntoViewResponderNode
            r1.<init>(r2)
            r12.delegate(r1)
            androidx.compose.foundation.FocusedBoundsObserverNode r1 = new androidx.compose.foundation.FocusedBoundsObserverNode
            androidx.compose.foundation.gestures.ScrollableNode$1 r2 = new androidx.compose.foundation.gestures.ScrollableNode$1
            r2.<init>()
            r1.<init>(r2)
            r12.delegate(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableNode.<init>(androidx.compose.foundation.gestures.ScrollableState, androidx.compose.foundation.OverscrollEffect, androidx.compose.foundation.gestures.FlingBehavior, androidx.compose.foundation.gestures.Orientation, boolean, boolean, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.foundation.gestures.BringIntoViewSpec):void");
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public Object drag(Function2 function2, Continuation continuation) {
        ScrollingLogic scrollingLogic = this.scrollingLogic;
        Object scroll = scrollingLogic.scroll(MutatePriority.UserInput, new ScrollableNode$drag$2$1(function2, scrollingLogic, null), continuation);
        return scroll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scroll : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    /* renamed from: onDragStopped-TH1AsA0 */
    public void mo190onDragStoppedTH1AsA0(long j) {
        BuildersKt__Builders_commonKt.launch$default(this.nestedScrollDispatcher.getCoroutineScope(), null, null, new ScrollableNode$onDragStopped$1(this, j, null), 3, null);
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public boolean startDragImmediately() {
        return this.scrollingLogic.shouldScrollImmediately();
    }

    public final void update(ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, boolean z2, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource, BringIntoViewSpec bringIntoViewSpec) {
        boolean z3;
        Function1 function1;
        if (getEnabled() != z) {
            this.nestedScrollConnection.setEnabled(z);
            this.scrollableContainerNode.update(z);
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z4 = z3;
        boolean update = this.scrollingLogic.update(scrollableState, orientation, overscrollEffect, z2, flingBehavior == null ? this.defaultFlingBehavior : flingBehavior, this.nestedScrollDispatcher);
        this.contentInViewNode.update(orientation, z2, bringIntoViewSpec);
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        function1 = ScrollableKt.CanDragCalculation;
        update(function1, z, mutableInteractionSource, this.scrollingLogic.isVertical() ? Orientation.Vertical : Orientation.Horizontal, update);
        if (z4) {
            clearScrollSemanticsActions();
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateDefaultFlingBehavior();
        this.scrollConfig = AndroidScrollable_androidKt.platformScrollConfig(this);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        updateDefaultFlingBehavior();
    }

    private final void updateDefaultFlingBehavior() {
        ObserverModifierNodeKt.observeReads(this, new Function0() { // from class: androidx.compose.foundation.gestures.ScrollableNode$updateDefaultFlingBehavior$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m225invoke();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m225invoke() {
                DefaultFlingBehavior defaultFlingBehavior;
                Density density = (Density) CompositionLocalConsumerModifierNodeKt.currentValueOf(ScrollableNode.this, CompositionLocalsKt.getLocalDensity());
                defaultFlingBehavior = ScrollableNode.this.defaultFlingBehavior;
                defaultFlingBehavior.setFlingDecay(SplineBasedDecayKt.splineBasedDecay(density));
            }
        });
    }

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public void applyFocusProperties(FocusProperties focusProperties) {
        focusProperties.setCanFocus(false);
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onKeyEvent-ZmokQxo */
    public boolean mo86onKeyEventZmokQxo(KeyEvent keyEvent) {
        long Offset;
        if (getEnabled()) {
            long m1634getKeyZmokQxo = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
            Key.Companion companion = Key.Companion;
            if ((Key.m1607equalsimpl0(m1634getKeyZmokQxo, companion.m1620getPageDownEK5gGoQ()) || Key.m1607equalsimpl0(KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent), companion.m1621getPageUpEK5gGoQ())) && KeyEventType.m1630equalsimpl0(KeyEvent_androidKt.m1635getTypeZmokQxo(keyEvent), KeyEventType.Companion.m1631getKeyDownCS__XNY()) && !KeyEvent_androidKt.m1638isCtrlPressedZmokQxo(keyEvent)) {
                if (this.scrollingLogic.isVertical()) {
                    int m2483getHeightimpl = IntSize.m2483getHeightimpl(this.contentInViewNode.m176getViewportSizeYbymL2g$foundation_release());
                    Offset = OffsetKt.Offset(0.0f, Key.m1607equalsimpl0(KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent), companion.m1621getPageUpEK5gGoQ()) ? m2483getHeightimpl : -m2483getHeightimpl);
                } else {
                    int m2484getWidthimpl = IntSize.m2484getWidthimpl(this.contentInViewNode.m176getViewportSizeYbymL2g$foundation_release());
                    Offset = OffsetKt.Offset(Key.m1607equalsimpl0(KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent), companion.m1621getPageUpEK5gGoQ()) ? m2484getWidthimpl : -m2484getWidthimpl, 0.0f);
                }
                BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new ScrollableNode$onKeyEvent$1(this, Offset, null), 3, null);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public void mo87onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        List changes = pointerEvent.getChanges();
        int size = changes.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            if (((Boolean) getCanDrag().invoke((PointerInputChange) changes.get(i))).booleanValue()) {
                super.mo87onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
                break;
            }
            i++;
        }
        if (pointerEventPass == PointerEventPass.Main && PointerEventType.m1668equalsimpl0(pointerEvent.m1663getType7fucELk(), PointerEventType.Companion.m1674getScroll7fucELk())) {
            m223processMouseWheelEventO0kMr_c(pointerEvent, j);
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (getEnabled() && (this.scrollByAction == null || this.scrollByOffsetAction == null)) {
            setScrollSemanticsActions();
        }
        Function2 function2 = this.scrollByAction;
        if (function2 != null) {
            SemanticsPropertiesKt.scrollBy$default(semanticsPropertyReceiver, null, function2, 1, null);
        }
        Function2 function22 = this.scrollByOffsetAction;
        if (function22 != null) {
            SemanticsPropertiesKt.scrollByOffset(semanticsPropertyReceiver, function22);
        }
    }

    private final void setScrollSemanticsActions() {
        this.scrollByAction = new Function2() { // from class: androidx.compose.foundation.gestures.ScrollableNode$setScrollSemanticsActions$1
            {
                super(2);
            }

            /* compiled from: Scrollable.kt */
            /* renamed from: androidx.compose.foundation.gestures.ScrollableNode$setScrollSemanticsActions$1$1, reason: invalid class name */
            static final class AnonymousClass1 extends SuspendLambda implements Function2 {
                final /* synthetic */ float $x;
                final /* synthetic */ float $y;
                int label;
                final /* synthetic */ ScrollableNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(ScrollableNode scrollableNode, float f, float f2, Continuation continuation) {
                    super(2, continuation);
                    this.this$0 = scrollableNode;
                    this.$x = f;
                    this.$y = f2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new AnonymousClass1(this.this$0, this.$x, this.$y, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    ScrollingLogic scrollingLogic;
                    Object m218semanticsScrollByd4ec7I;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        scrollingLogic = this.this$0.scrollingLogic;
                        long Offset = OffsetKt.Offset(this.$x, this.$y);
                        this.label = 1;
                        m218semanticsScrollByd4ec7I = ScrollableKt.m218semanticsScrollByd4ec7I(scrollingLogic, Offset, this);
                        if (m218semanticsScrollByd4ec7I == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                return invoke(((Number) obj).floatValue(), ((Number) obj2).floatValue());
            }

            public final Boolean invoke(float f, float f2) {
                BuildersKt__Builders_commonKt.launch$default(ScrollableNode.this.getCoroutineScope(), null, null, new AnonymousClass1(ScrollableNode.this, f, f2, null), 3, null);
                return Boolean.TRUE;
            }
        };
        this.scrollByOffsetAction = new ScrollableNode$setScrollSemanticsActions$2(this, null);
    }

    private final void clearScrollSemanticsActions() {
        this.scrollByAction = null;
        this.scrollByOffsetAction = null;
    }

    /* renamed from: processMouseWheelEvent-O0kMr_c, reason: not valid java name */
    private final void m223processMouseWheelEventO0kMr_c(PointerEvent pointerEvent, long j) {
        List changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            if (((PointerInputChange) changes.get(i)).isConsumed()) {
                return;
            }
        }
        ScrollConfig scrollConfig = this.scrollConfig;
        Intrinsics.checkNotNull(scrollConfig);
        BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new ScrollableNode$processMouseWheelEvent$2$1(this, scrollConfig.mo169calculateMouseWheelScroll8xgXZGE(DelegatableNodeKt.requireDensity(this), pointerEvent, j), null), 3, null);
        List changes2 = pointerEvent.getChanges();
        int size2 = changes2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((PointerInputChange) changes2.get(i2)).consume();
        }
    }
}
