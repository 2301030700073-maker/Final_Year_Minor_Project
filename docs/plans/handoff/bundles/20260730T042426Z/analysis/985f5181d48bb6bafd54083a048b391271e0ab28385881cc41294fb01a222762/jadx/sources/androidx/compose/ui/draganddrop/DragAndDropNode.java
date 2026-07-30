package androidx.compose.ui.draganddrop;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: DragAndDropNode.kt */
/* loaded from: classes.dex */
public final class DragAndDropNode extends Modifier.Node implements TraversableNode, DragAndDropModifierNode {
    private DragAndDropModifierNode lastChildDragAndDropModifierNode;
    private final Function1 onDragAndDropStart;
    private DragAndDropTarget thisDragAndDropTarget;
    private final Object traverseKey = Companion.DragAndDropTraversableKey.INSTANCE;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public DragAndDropNode(Function1 function1) {
        this.onDragAndDropStart = function1;
    }

    /* compiled from: DragAndDropNode.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* compiled from: DragAndDropNode.kt */
        private static final class DragAndDropTraversableKey {
            public static final DragAndDropTraversableKey INSTANCE = new DragAndDropTraversableKey();

            private DragAndDropTraversableKey() {
            }
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return this.traverseKey;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.thisDragAndDropTarget = null;
        this.lastChildDragAndDropModifierNode = null;
    }

    public boolean acceptDragAndDropTransfer(final DragAndDropEvent dragAndDropEvent) {
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        DragAndDropNodeKt.traverseSelfAndDescendants(this, new Function1() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$acceptDragAndDropTransfer$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final TraversableNode$Companion$TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
                DragAndDropTarget dragAndDropTarget;
                Function1 function1;
                DragAndDropTarget dragAndDropTarget2;
                if (dragAndDropNode.isAttached()) {
                    dragAndDropTarget = dragAndDropNode.thisDragAndDropTarget;
                    if (!(dragAndDropTarget == null)) {
                        InlineClassHelperKt.throwIllegalStateException("DragAndDropTarget self reference must be null at the start of a drag and drop session");
                    }
                    function1 = dragAndDropNode.onDragAndDropStart;
                    dragAndDropNode.thisDragAndDropTarget = (DragAndDropTarget) function1.invoke(DragAndDropEvent.this);
                    dragAndDropTarget2 = dragAndDropNode.thisDragAndDropTarget;
                    boolean z = dragAndDropTarget2 != null;
                    if (z) {
                        DelegatableNodeKt.requireOwner(this).getDragAndDropManager().registerNodeInterest(dragAndDropNode);
                    }
                    Ref$BooleanRef ref$BooleanRef2 = ref$BooleanRef;
                    ref$BooleanRef2.element = ref$BooleanRef2.element || z;
                    return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                }
                return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
            }
        });
        return ref$BooleanRef.element;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onStarted(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
        if (dragAndDropTarget == null) {
            DragAndDropModifierNode dragAndDropModifierNode = this.lastChildDragAndDropModifierNode;
            if (dragAndDropModifierNode != null) {
                dragAndDropModifierNode.onStarted(dragAndDropEvent);
                return;
            }
            return;
        }
        dragAndDropTarget.onStarted(dragAndDropEvent);
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onEntered(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
        if (dragAndDropTarget == null) {
            DragAndDropModifierNode dragAndDropModifierNode = this.lastChildDragAndDropModifierNode;
            if (dragAndDropModifierNode != null) {
                dragAndDropModifierNode.onEntered(dragAndDropEvent);
                return;
            }
            return;
        }
        dragAndDropTarget.onEntered(dragAndDropEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMoved(final androidx.compose.ui.draganddrop.DragAndDropEvent r4) {
        /*
            r3 = this;
            androidx.compose.ui.draganddrop.DragAndDropModifierNode r0 = r3.lastChildDragAndDropModifierNode
            if (r0 == 0) goto L11
            long r1 = androidx.compose.ui.draganddrop.DragAndDrop_androidKt.getPositionInRoot(r4)
            boolean r1 = androidx.compose.ui.draganddrop.DragAndDropNodeKt.m1081access$containsUv8p0NA(r0, r1)
            r2 = 1
            if (r1 != r2) goto L11
            r1 = r0
            goto L30
        L11:
            androidx.compose.ui.Modifier$Node r1 = r3.getNode()
            boolean r1 = r1.isAttached()
            if (r1 != 0) goto L1d
            r1 = 0
            goto L2e
        L1d:
            kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef
            r1.<init>()
            androidx.compose.ui.draganddrop.DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1 r2 = new androidx.compose.ui.draganddrop.DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1
            r2.<init>()
            androidx.compose.ui.node.TraversableNodeKt.traverseDescendants(r3, r2)
            java.lang.Object r1 = r1.element
            androidx.compose.ui.node.TraversableNode r1 = (androidx.compose.ui.node.TraversableNode) r1
        L2e:
            androidx.compose.ui.draganddrop.DragAndDropModifierNode r1 = (androidx.compose.ui.draganddrop.DragAndDropModifierNode) r1
        L30:
            if (r1 == 0) goto L3f
            if (r0 != 0) goto L3f
            androidx.compose.ui.draganddrop.DragAndDropNodeKt.access$dispatchEntered(r1, r4)
            androidx.compose.ui.draganddrop.DragAndDropTarget r0 = r3.thisDragAndDropTarget
            if (r0 == 0) goto L6c
            r0.onExited(r4)
            goto L6c
        L3f:
            if (r1 != 0) goto L4e
            if (r0 == 0) goto L4e
            androidx.compose.ui.draganddrop.DragAndDropTarget r2 = r3.thisDragAndDropTarget
            if (r2 == 0) goto L4a
            androidx.compose.ui.draganddrop.DragAndDropNodeKt.access$dispatchEntered(r2, r4)
        L4a:
            r0.onExited(r4)
            goto L6c
        L4e:
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            if (r2 != 0) goto L5f
            if (r1 == 0) goto L59
            androidx.compose.ui.draganddrop.DragAndDropNodeKt.access$dispatchEntered(r1, r4)
        L59:
            if (r0 == 0) goto L6c
            r0.onExited(r4)
            goto L6c
        L5f:
            if (r1 == 0) goto L65
            r1.onMoved(r4)
            goto L6c
        L65:
            androidx.compose.ui.draganddrop.DragAndDropTarget r0 = r3.thisDragAndDropTarget
            if (r0 == 0) goto L6c
            r0.onMoved(r4)
        L6c:
            r3.lastChildDragAndDropModifierNode = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.draganddrop.DragAndDropNode.onMoved(androidx.compose.ui.draganddrop.DragAndDropEvent):void");
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onExited(DragAndDropEvent dragAndDropEvent) {
        DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
        if (dragAndDropTarget != null) {
            dragAndDropTarget.onExited(dragAndDropEvent);
        }
        DragAndDropModifierNode dragAndDropModifierNode = this.lastChildDragAndDropModifierNode;
        if (dragAndDropModifierNode != null) {
            dragAndDropModifierNode.onExited(dragAndDropEvent);
        }
        this.lastChildDragAndDropModifierNode = null;
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public boolean onDrop(DragAndDropEvent dragAndDropEvent) {
        DragAndDropModifierNode dragAndDropModifierNode = this.lastChildDragAndDropModifierNode;
        if (dragAndDropModifierNode == null) {
            DragAndDropTarget dragAndDropTarget = this.thisDragAndDropTarget;
            if (dragAndDropTarget != null) {
                return dragAndDropTarget.onDrop(dragAndDropEvent);
            }
            return false;
        }
        return dragAndDropModifierNode.onDrop(dragAndDropEvent);
    }

    @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
    public void onEnded(final DragAndDropEvent dragAndDropEvent) {
        DragAndDropNodeKt.traverseSelfAndDescendants(this, new Function1() { // from class: androidx.compose.ui.draganddrop.DragAndDropNode$onEnded$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final TraversableNode$Companion$TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
                DragAndDropTarget dragAndDropTarget;
                if (dragAndDropNode.getNode().isAttached()) {
                    dragAndDropTarget = dragAndDropNode.thisDragAndDropTarget;
                    if (dragAndDropTarget != null) {
                        dragAndDropTarget.onEnded(DragAndDropEvent.this);
                    }
                    dragAndDropNode.thisDragAndDropTarget = null;
                    dragAndDropNode.lastChildDragAndDropModifierNode = null;
                    return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                }
                return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
            }
        });
    }
}
