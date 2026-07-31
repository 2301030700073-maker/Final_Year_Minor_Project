package androidx.compose.foundation.text.handwriting;

import androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StylusHandwritingNode extends DelegatingNode implements PointerInputModifierNode, FocusEventModifierNode, FocusRequesterModifierNode {
    public boolean focused;
    public Function0 onHandwritingSlopExceeded;
    public final SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNode;

    public StylusHandwritingNode(Function0 function0) {
        this.onHandwritingSlopExceeded = function0;
        LazyLayoutPagerKt$dragDirectionDetector$1 lazyLayoutPagerKt$dragDirectionDetector$1 = new LazyLayoutPagerKt$dragDirectionDetector$1(4, this);
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = new SuspendingPointerInputModifierNodeImpl(null, null, lazyLayoutPagerKt$dragDirectionDetector$1);
        delegate(suspendingPointerInputModifierNodeImpl);
        this.suspendingPointerInputModifierNode = suspendingPointerInputModifierNodeImpl;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    public final long mo29getTouchBoundsExpansionRZrCHBk() {
        Density density = HitTestResultKt.requireLayoutNode(this).density;
        StylusHandwritingKt.HandwritingBoundsExpansion.getClass();
        int i = TouchBoundsExpansion.$r8$clinit;
        return HitTestResultKt.pack$ui(density.mo81roundToPx0680j_4(10.0f), density.mo81roundToPx0680j_4(40.0f), density.mo81roundToPx0680j_4(10.0f), density.mo81roundToPx0680j_4(40.0f));
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        this.suspendingPointerInputModifierNode.onCancelPointerInput();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void onFocusEvent(FocusStateImpl focusStateImpl) {
        this.focused = focusStateImpl.isFocused();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo34onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.suspendingPointerInputModifierNode.mo34onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final boolean sharePointerInputWithSiblings() {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void interceptOutOfBoundsChildEvents() {
    }
}
