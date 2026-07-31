package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FocusTargetPropertiesNode extends Modifier.Node implements FocusPropertiesModifierNode {
    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void applyFocusProperties(FocusProperties focusProperties) {
        View embeddedView = AndroidView_androidKt.getEmbeddedView(this);
        focusProperties.setCanFocus(this.node.isAttached && AndroidView_androidKt.getEmbeddedView(this).hasFocusable());
        View findFocus = embeddedView.findFocus();
        if (findFocus != null) {
            focusProperties.setFocusRect(FocusInteropUtils_androidKt.calculateFocusRectRelativeTo(findFocus, embeddedView));
        }
    }
}
