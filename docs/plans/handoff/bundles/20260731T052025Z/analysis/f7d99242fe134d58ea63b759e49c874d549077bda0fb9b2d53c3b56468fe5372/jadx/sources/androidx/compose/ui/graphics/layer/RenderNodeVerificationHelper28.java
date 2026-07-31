package androidx.compose.ui.graphics.layer;

import android.view.RenderNode;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class RenderNodeVerificationHelper28 {
    public static int getAmbientShadowColor(RenderNode renderNode) {
        return renderNode.getAmbientShadowColor();
    }

    public static int getSpotShadowColor(RenderNode renderNode) {
        return renderNode.getSpotShadowColor();
    }

    public static void setAmbientShadowColor(RenderNode renderNode, int i) {
        renderNode.setAmbientShadowColor(i);
    }

    public static void setSpotShadowColor(RenderNode renderNode, int i) {
        renderNode.setSpotShadowColor(i);
    }
}
