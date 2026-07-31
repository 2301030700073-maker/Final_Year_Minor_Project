package androidx.compose.ui.draganddrop;

import android.view.DragEvent;
import android.view.View;
import androidx.camera.view.PreviewView;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidDragAndDropManager implements View.OnDragListener, DragAndDropManager {
    public final ArraySet interestedTargets;
    public final AndroidDragAndDropManager$modifier$1 modifier;
    public final DragAndDropNode rootDragAndDropNode;

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.ui.draganddrop.AndroidDragAndDropManager$modifier$1] */
    public AndroidDragAndDropManager() {
        DragAndDropNode dragAndDropNode = new DragAndDropNode();
        dragAndDropNode.size = 0L;
        this.rootDragAndDropNode = dragAndDropNode;
        this.interestedTargets = new ArraySet(0);
        this.modifier = new ModifierNodeElement() { // from class: androidx.compose.ui.draganddrop.AndroidDragAndDropManager$modifier$1
            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final Modifier.Node create() {
                return AndroidDragAndDropManager.this.rootDragAndDropNode;
            }

            public final boolean equals(Object obj) {
                return obj == this;
            }

            public final int hashCode() {
                return AndroidDragAndDropManager.this.rootDragAndDropNode.hashCode();
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final /* bridge */ /* synthetic */ void update(Modifier.Node node) {
            }
        };
    }

    @Override // android.view.View.OnDragListener
    public final boolean onDrag(View view, DragEvent dragEvent) {
        PreviewView.AnonymousClass1 anonymousClass1 = new PreviewView.AnonymousClass1(20, dragEvent);
        int action = dragEvent.getAction();
        TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
        ArraySet arraySet = this.interestedTargets;
        DragAndDropNode dragAndDropNode = this.rootDragAndDropNode;
        switch (action) {
            case 1:
                Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                DragAndDropNode$acceptDragAndDropTransfer$1 dragAndDropNode$acceptDragAndDropTransfer$1 = new DragAndDropNode$acceptDragAndDropTransfer$1(anonymousClass1, dragAndDropNode, ref$BooleanRef);
                if (dragAndDropNode$acceptDragAndDropTransfer$1.invoke(dragAndDropNode) == traversableNode$Companion$TraverseDescendantsAction) {
                    HitTestResultKt.traverseDescendants(dragAndDropNode, dragAndDropNode$acceptDragAndDropTransfer$1);
                }
                boolean z = ref$BooleanRef.element;
                arraySet.getClass();
                ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator(arraySet);
                while (keyIterator.hasNext()) {
                    ((DragAndDropNode) keyIterator.next()).onStarted();
                }
                break;
            case 2:
                dragAndDropNode.onMoved(anonymousClass1);
                break;
            case 4:
                NodeChainKt$fillVector$1 nodeChainKt$fillVector$1 = new NodeChainKt$fillVector$1(5, anonymousClass1);
                if (nodeChainKt$fillVector$1.invoke(dragAndDropNode) == traversableNode$Companion$TraverseDescendantsAction) {
                    HitTestResultKt.traverseDescendants(dragAndDropNode, nodeChainKt$fillVector$1);
                }
                arraySet.clear();
                break;
            case 5:
                dragAndDropNode.onEntered();
                break;
            case 6:
                dragAndDropNode.onExited();
                break;
        }
        return false;
    }
}
