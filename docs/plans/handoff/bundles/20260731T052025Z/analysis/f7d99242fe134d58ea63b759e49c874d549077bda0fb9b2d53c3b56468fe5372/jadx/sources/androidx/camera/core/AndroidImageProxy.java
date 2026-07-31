package androidx.camera.core;

import android.graphics.Matrix;
import android.media.Image;
import androidx.biometric.BiometricPrompt;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.TagBundle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidImageProxy implements ImageProxy {
    public final Image mImage;
    public final AutoValue_ImmutableImageInfo mImageInfo;
    public final BiometricPrompt[] mPlanes;

    public AndroidImageProxy(Image image) {
        this.mImage = image;
        Image.Plane[] planes = image.getPlanes();
        if (planes != null) {
            this.mPlanes = new BiometricPrompt[planes.length];
            for (int i = 0; i < planes.length; i++) {
                this.mPlanes[i] = new BiometricPrompt(21, planes[i]);
            }
        } else {
            this.mPlanes = new BiometricPrompt[0];
        }
        this.mImageInfo = new AutoValue_ImmutableImageInfo(TagBundle.EMPTY_TAGBUNDLE, image.getTimestamp(), 0, new Matrix(), 0);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.mImage.close();
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getFormat() {
        return this.mImage.getFormat();
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getHeight() {
        return this.mImage.getHeight();
    }

    @Override // androidx.camera.core.ImageProxy
    public final ImageInfo getImageInfo() {
        return this.mImageInfo;
    }

    @Override // androidx.camera.core.ImageProxy
    public final ImageProxy.PlaneProxy[] getPlanes() {
        return this.mPlanes;
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getWidth() {
        return this.mImage.getWidth();
    }
}
