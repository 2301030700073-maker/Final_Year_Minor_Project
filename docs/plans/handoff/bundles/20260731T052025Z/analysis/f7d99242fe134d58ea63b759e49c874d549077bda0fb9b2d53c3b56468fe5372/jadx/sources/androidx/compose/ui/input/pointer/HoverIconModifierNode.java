package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draganddrop.DragAndDropNode$acceptDragAndDropTransfer$1;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidComposeView$focusSearch$searchResult$1;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class HoverIconModifierNode extends Modifier.Node implements TraversableNode, PointerInputModifierNode, CompositionLocalConsumerModifierNode {
    public boolean cursorInBoundsOfNode;
    public DpTouchBoundsExpansion dpTouchBoundsExpansion;
    public AndroidPointerIconType icon;

    public HoverIconModifierNode(AndroidPointerIconType androidPointerIconType, DpTouchBoundsExpansion dpTouchBoundsExpansion) {
        this.dpTouchBoundsExpansion = dpTouchBoundsExpansion;
        this.icon = androidPointerIconType;
    }

    public final void displayIcon() {
        AndroidPointerIconType androidPointerIconType;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        HitTestResultKt.traverseAncestors(this, new HoverIconModifierNode$findOverridingAncestorNode$1(1));
        HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) ref$ObjectRef.element;
        if (hoverIconModifierNode == null || (androidPointerIconType = hoverIconModifierNode.icon) == null) {
            androidPointerIconType = this.icon;
        }
        displayIcon(androidPointerIconType);
    }

    public abstract void displayIcon(PointerIcon pointerIcon);

    public final void displayIconIfDescendantsDoNotHavePriority() {
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = true;
        HitTestResultKt.traverseDescendants(this, new DragAndDropNode$acceptDragAndDropTransfer$1(ref$BooleanRef));
        if (ref$BooleanRef.element) {
            displayIcon();
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    public final long mo115getTouchBoundsExpansionRZrCHBk() {
        if (this.dpTouchBoundsExpansion == null) {
            return TouchBoundsExpansion.None;
        }
        Density density = HitTestResultKt.requireLayoutNode(this).density;
        int i = TouchBoundsExpansion.$r8$clinit;
        return TouchBoundsExpansion.Companion.pack$ui(density.mo171roundToPx0680j_4(10.0f), density.mo171roundToPx0680j_4(40.0f), density.mo171roundToPx0680j_4(10.0f), density.mo171roundToPx0680j_4(40.0f));
    }

    /* renamed from: isRelevantPointerType-uerMTgs, reason: not valid java name */
    public abstract boolean mo562isRelevantPointerTypeuerMTgs(int i);

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        onExit();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        onExit();
    }

    public final void onExit() {
        if (this.cursorInBoundsOfNode) {
            this.cursorInBoundsOfNode = false;
            if (this.isAttached) {
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                HitTestResultKt.traverseAncestors(this, new AndroidComposeView$focusSearch$searchResult$1(2, ref$ObjectRef));
                HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) ref$ObjectRef.element;
                if (hoverIconModifierNode != null) {
                    hoverIconModifierNode.displayIcon();
                } else {
                    displayIcon(null);
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo120onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        if (pointerEventPass == PointerEventPass.Main) {
            List list = pointerEvent.changes;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (mo562isRelevantPointerTypeuerMTgs(((PointerInputChange) list.get(i)).type)) {
                    int i2 = pointerEvent.type;
                    if (i2 == 4) {
                        this.cursorInBoundsOfNode = true;
                        displayIconIfDescendantsDoNotHavePriority();
                        return;
                    } else {
                        if (i2 == 5) {
                            onExit();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean sharePointerInputWithSiblings() {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ void interceptOutOfBoundsChildEvents() {
    }
}
