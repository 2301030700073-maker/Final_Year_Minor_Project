package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class VNode {
    public NodeChainKt$fillVector$1 invalidateListener;

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
