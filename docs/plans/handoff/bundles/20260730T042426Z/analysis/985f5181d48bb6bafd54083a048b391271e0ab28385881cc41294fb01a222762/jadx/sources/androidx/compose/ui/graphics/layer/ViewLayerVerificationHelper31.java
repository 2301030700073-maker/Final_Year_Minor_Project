package androidx.compose.ui.graphics.layer;

import android.view.View;
import androidx.compose.ui.graphics.RenderEffect;

/* compiled from: GraphicsViewLayer.android.kt */
/* loaded from: classes.dex */
final class ViewLayerVerificationHelper31 {
    public static final ViewLayerVerificationHelper31 INSTANCE = new ViewLayerVerificationHelper31();

    private ViewLayerVerificationHelper31() {
    }

    public final void setRenderEffect(View view, RenderEffect renderEffect) {
        view.setRenderEffect(null);
    }
}
