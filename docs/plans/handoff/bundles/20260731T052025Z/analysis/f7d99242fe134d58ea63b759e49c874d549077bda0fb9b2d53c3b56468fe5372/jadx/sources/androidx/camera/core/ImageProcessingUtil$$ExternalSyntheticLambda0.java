package androidx.camera.core;

import androidx.camera.core.ForwardingImageProxy;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageProcessingUtil$$ExternalSyntheticLambda0 implements ForwardingImageProxy.OnImageCloseListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ImageProxy f$1;

    public /* synthetic */ ImageProcessingUtil$$ExternalSyntheticLambda0(ImageProxy imageProxy, ImageProxy imageProxy2, int i) {
        this.$r8$classId = i;
        this.f$1 = imageProxy2;
    }

    @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
    public final void onImageClose(ForwardingImageProxy forwardingImageProxy) {
        int i = this.$r8$classId;
        ImageProxy imageProxy = this.f$1;
        switch (i) {
            case 0:
                int i2 = ImageProcessingUtil.sImageCount;
                if (imageProxy != null) {
                    imageProxy.close();
                    break;
                }
                break;
            default:
                int i3 = ImageProcessingUtil.sImageCount;
                imageProxy.close();
                break;
        }
    }
}
