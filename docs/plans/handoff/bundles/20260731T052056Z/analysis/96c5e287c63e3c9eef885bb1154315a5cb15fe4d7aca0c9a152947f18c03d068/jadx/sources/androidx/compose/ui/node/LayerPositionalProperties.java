package androidx.compose.ui.node;

import androidx.compose.ui.graphics.TransformOrigin;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
