package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.http.StatusLine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ClickableNode extends AbstractClickableNode {
    public PointerInputChange downEvent;
    public IndirectPointerInputChange indirectDownEvent;

    public final void cancelInput(boolean z) {
        if (z) {
            this.indirectDownEvent = null;
        } else {
            this.downEvent = null;
        }
        handlePressInteractionCancel(z);
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void onCancelIndirectPointerInput() {
        cancelInput(true);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        super.onCancelPointerInput();
        cancelInput(false);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    /* renamed from: onClickKeyDownEvent-ZmokQxo */
    public final boolean mo31onClickKeyDownEventZmokQxo(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    /* renamed from: onClickKeyUpEvent-ZmokQxo */
    public final void mo32onClickKeyUpEventZmokQxo(KeyEvent keyEvent) {
        this.onClick.invoke();
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void onIndirectPointerEvent(StatusLine statusLine, PointerEventPass pointerEventPass) {
        ArrayList arrayList = (ArrayList) statusLine.protocol;
        initializeIndicationAndInteractionSourceIfNeeded();
        if (this.enabled && this.gestureNode == null) {
            GestureNode gestureNode = new GestureNode(this);
            delegate(gestureNode);
            this.gestureNode = gestureNode;
        }
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass != PointerEventPass.Final || this.indirectDownEvent == null) {
                return;
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) arrayList.get(i);
                if (indirectPointerInputChange.isConsumed && indirectPointerInputChange != this.indirectDownEvent) {
                    cancelInput(true);
                    return;
                }
            }
            return;
        }
        if (this.indirectDownEvent == null) {
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (ScrollableKt.changedToDownIgnoreConsumed((IndirectPointerInputChange) arrayList.get(i2))) {
                    IndirectPointerInputChange indirectPointerInputChange2 = (IndirectPointerInputChange) arrayList.get(0);
                    indirectPointerInputChange2.isConsumed = true;
                    this.indirectDownEvent = indirectPointerInputChange2;
                    if (this.enabled) {
                        handlePressInteractionStart(indirectPointerInputChange2);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        int size3 = arrayList.size();
        for (int i3 = 0; i3 < size3; i3++) {
            IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) arrayList.get(i3);
            if (indirectPointerInputChange3.isConsumed || !indirectPointerInputChange3.previousPressed || indirectPointerInputChange3.pressed) {
                float touchSlop = ((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).getTouchSlop();
                int size4 = arrayList.size();
                for (int i4 = 0; i4 < size4; i4++) {
                    IndirectPointerInputChange indirectPointerInputChange4 = (IndirectPointerInputChange) arrayList.get(i4);
                    long j = indirectPointerInputChange4.position;
                    IndirectPointerInputChange indirectPointerInputChange5 = this.indirectDownEvent;
                    indirectPointerInputChange5.getClass();
                    boolean z = Math.abs(Offset.m384getDistanceimpl(Offset.m385minusMKHz9U(j, indirectPointerInputChange5.position))) > touchSlop;
                    if (indirectPointerInputChange4.isConsumed || z) {
                        cancelInput(true);
                        return;
                    }
                }
                return;
            }
        }
        ((IndirectPointerInputChange) arrayList.get(0)).isConsumed = true;
        if (this.enabled) {
            IndirectPointerInputChange indirectPointerInputChange6 = this.indirectDownEvent;
            indirectPointerInputChange6.getClass();
            m30handlePressInteractionRelease3MmeM6k(indirectPointerInputChange6.position, true);
            this.onClick.invoke();
        }
        this.indirectDownEvent = null;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo34onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        super.mo34onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass != PointerEventPass.Final || this.downEvent == null) {
                return;
            }
            List list = pointerEvent.changes;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                PointerInputChange pointerInputChange = (PointerInputChange) list.get(i);
                if (pointerInputChange.isConsumed() && pointerInputChange != this.downEvent) {
                    cancelInput(false);
                    return;
                }
            }
            return;
        }
        if (this.downEvent == null) {
            if (TapGestureDetectorKt.isChangedToDown(pointerEvent, true, false)) {
                PointerInputChange pointerInputChange2 = (PointerInputChange) pointerEvent.changes.get(0);
                pointerInputChange2.consume();
                this.downEvent = pointerInputChange2;
                if (this.enabled) {
                    handlePressInteractionStart(pointerInputChange2);
                    return;
                }
                return;
            }
            return;
        }
        List list2 = pointerEvent.changes;
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (!PointerId.changedToUp((PointerInputChange) list2.get(i2))) {
                long m28getExtendedTouchPaddinghWWAJMo = m28getExtendedTouchPaddinghWWAJMo(j);
                int size3 = list2.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    PointerInputChange pointerInputChange3 = (PointerInputChange) list2.get(i3);
                    if (pointerInputChange3.isConsumed() || PointerId.m506isOutOfBoundsjwHxaWs(pointerInputChange3, j, m28getExtendedTouchPaddinghWWAJMo)) {
                        cancelInput(false);
                        return;
                    }
                }
                return;
            }
        }
        ((PointerInputChange) list2.get(0)).consume();
        if (this.enabled) {
            PointerInputChange pointerInputChange4 = this.downEvent;
            pointerInputChange4.getClass();
            m30handlePressInteractionRelease3MmeM6k(pointerInputChange4.position, false);
            this.onClick.invoke();
        }
        this.downEvent = null;
    }
}
