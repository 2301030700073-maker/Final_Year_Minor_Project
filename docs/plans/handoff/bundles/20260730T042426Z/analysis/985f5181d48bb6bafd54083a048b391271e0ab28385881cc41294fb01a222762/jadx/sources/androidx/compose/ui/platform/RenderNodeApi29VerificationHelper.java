package androidx.compose.ui.platform;

import android.graphics.RenderNode;
import androidx.compose.ui.graphics.RenderEffect;

/* compiled from: RenderNodeApi29.android.kt */
/* loaded from: classes.dex */
final class RenderNodeApi29VerificationHelper {
    public static final RenderNodeApi29VerificationHelper INSTANCE = new RenderNodeApi29VerificationHelper();

    private RenderNodeApi29VerificationHelper() {
    }

    public final void setRenderEffect(RenderNode renderNode, RenderEffect renderEffect) {
        renderNode.setRenderEffect(null);
    }
}
