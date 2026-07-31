package androidx.compose.ui.node;

import androidx.compose.ui.graphics.TransformOrigin;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayerPositionalProperties {
    public float rotationZ;
    public long transformOrigin;
    public float translationY;
    public float scaleX = 1.0f;
    public float scaleY = 1.0f;
    public float cameraDistance = 8.0f;

    public LayerPositionalProperties() {
        int i = TransformOrigin.$r8$clinit;
        this.transformOrigin = TransformOrigin.Center;
    }
}
