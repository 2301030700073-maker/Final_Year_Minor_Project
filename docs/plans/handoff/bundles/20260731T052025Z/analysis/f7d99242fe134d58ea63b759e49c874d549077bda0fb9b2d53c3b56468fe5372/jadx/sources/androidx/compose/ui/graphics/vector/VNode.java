package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class VNode {
    public Function1 invalidateListener;

    public abstract void draw(DrawScope drawScope);

    public Function1 getInvalidateListener$ui() {
        return this.invalidateListener;
    }

    public final void invalidate() {
        Function1 invalidateListener$ui = getInvalidateListener$ui();
        if (invalidateListener$ui != null) {
            invalidateListener$ui.invoke(this);
        }
    }

    public void setInvalidateListener$ui(NodeChainKt$fillVector$1 nodeChainKt$fillVector$1) {
        this.invalidateListener = nodeChainKt$fillVector$1;
    }
}
