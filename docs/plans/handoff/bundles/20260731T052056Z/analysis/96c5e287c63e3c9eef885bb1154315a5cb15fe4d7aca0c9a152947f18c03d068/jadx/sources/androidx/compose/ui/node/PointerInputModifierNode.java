package androidx.compose.ui.node;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface PointerInputModifierNode extends DelegatableNode {
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    long mo29getTouchBoundsExpansionRZrCHBk();

    void interceptOutOfBoundsChildEvents();

    void onCancelPointerInput();

    /* renamed from: onPointerEvent-H0pRuoY */
    void mo34onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j);

    void onViewConfigurationChange();

    boolean sharePointerInputWithSiblings();
}
