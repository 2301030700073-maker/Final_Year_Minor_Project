package androidx.compose.ui.node;

import androidx.compose.ui.graphics.Canvas;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NodeCoordinator$invalidateParentLayer$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NodeCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ NodeCoordinator$invalidateParentLayer$1(NodeCoordinator nodeCoordinator, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = nodeCoordinator;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NodeCoordinator nodeCoordinator = this.this$0;
        switch (i) {
            case 0:
                NodeCoordinator nodeCoordinator2 = nodeCoordinator.wrappedBy;
                if (nodeCoordinator2 != null) {
                    nodeCoordinator2.invalidateLayer();
                    break;
                }
                break;
            default:
                Canvas canvas = nodeCoordinator.drawBlockCanvas;
                canvas.getClass();
                nodeCoordinator.drawContainedDrawModifiers(canvas, nodeCoordinator.drawBlockParentLayer);
                break;
        }
        return unit;
    }
}
