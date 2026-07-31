package androidx.compose.ui.node;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface PointerInputModifierNode extends DelegatableNode {
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    long mo12getTouchBoundsExpansionRZrCHBk();

    boolean interceptOutOfBoundsChildEvents();

    void onCancelPointerInput();

    /* renamed from: onPointerEvent-H0pRuoY */
    void mo17onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j);

    void onViewConfigurationChange();

    boolean sharePointerInputWithSiblings();
}
