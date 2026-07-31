package androidx.compose.material.ripple;

import androidx.cardview.widget.CardView;
import androidx.compose.ui.node.HitTestResultKt;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidRippleNode extends RippleNode {
    public RippleContainer rippleContainer;
    public RippleHostView rippleHostView;

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        RippleContainer rippleContainer = this.rippleContainer;
        if (rippleContainer != null) {
            this.rippleHostView = null;
            HitTestResultKt.invalidateDraw(this);
            CardView.AnonymousClass1 anonymousClass1 = rippleContainer.rippleHostMap;
            RippleHostView rippleHostView = (RippleHostView) ((LinkedHashMap) anonymousClass1.mCardBackground).get(this);
            if (rippleHostView != null) {
                rippleHostView.disposeRipple();
                LinkedHashMap linkedHashMap = (LinkedHashMap) anonymousClass1.mCardBackground;
                RippleHostView rippleHostView2 = (RippleHostView) linkedHashMap.get(this);
                if (rippleHostView2 != null) {
                }
                linkedHashMap.remove(this);
                rippleContainer.unusedRippleHosts.add(rippleHostView);
            }
        }
    }
}
