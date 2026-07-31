package androidx.compose.ui.draganddrop;

import android.view.DragEvent;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        final DragAndDropEvent dragAndDropEvent = new DragAndDropEvent(dragEvent);
        int action = dragEvent.getAction();
        TraversableNode$Companion$TraverseDescendantsAction traversableNode$Companion$TraverseDescendantsAction = TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
        ArraySet arraySet = this.interestedTargets;
        final DragAndDropNode dragAndDropNode = this.rootDragAndDropNode;
        switch (action) {
            case 1:
                final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                Function1 function1 = new Function1() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$acceptDragAndDropTransfer$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DragAndDropNode dragAndDropNode2 = (DragAndDropNode) obj;
                        if (!dragAndDropNode2.isAttached) {
                            return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                        }
                        if (dragAndDropNode2.thisDragAndDropTarget != null) {
                            InlineClassHelperKt.throwIllegalStateException("DragAndDropTarget self reference must be null at the start of a drag and drop session");
                        }
                        dragAndDropNode2.thisDragAndDropTarget = null;
                        Ref$BooleanRef ref$BooleanRef2 = ref$BooleanRef;
                        ref$BooleanRef2.element = ref$BooleanRef2.element;
                        return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                    }
                };
                if (function1.invoke(dragAndDropNode) == traversableNode$Companion$TraverseDescendantsAction) {
                    HitTestResultKt.traverseDescendants(dragAndDropNode, function1);
                }
                boolean z = ref$BooleanRef.element;
                arraySet.getClass();
                ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator(arraySet);
                while (keyIterator.hasNext()) {
                    ((DragAndDropNode) keyIterator.next()).onStarted();
                }
                break;
            case 2:
                dragAndDropNode.onMoved(dragAndDropEvent);
                break;
            case 4:
                DragAndDropNode$onEnded$1 dragAndDropNode$onEnded$1 = new DragAndDropNode$onEnded$1(dragAndDropEvent);
                if (dragAndDropNode$onEnded$1.invoke(dragAndDropNode) == traversableNode$Companion$TraverseDescendantsAction) {
                    HitTestResultKt.traverseDescendants(dragAndDropNode, dragAndDropNode$onEnded$1);
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
