package androidx.compose.ui.draganddrop;

/* compiled from: DragAndDropManager.kt */
/* loaded from: classes.dex */
public interface DragAndDropManager {
    boolean isInterestedNode(DragAndDropModifierNode dragAndDropModifierNode);

    void registerNodeInterest(DragAndDropModifierNode dragAndDropModifierNode);
}
