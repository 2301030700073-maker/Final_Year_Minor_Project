package androidx.camera.camera2.adapter;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.params.OutputConfiguration;
import android.view.Surface;
import android.window.OnBackInvokedDispatcher;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.internal.CameraUseCaseAdapter$$ExternalSyntheticLambda1;
import androidx.datastore.preferences.protobuf.Utf8;
import java.io.FileNotFoundException;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ZslControlImpl$$ExternalSyntheticLambda1 implements ImageReaderProxy.OnImageAvailableListener, Preview.SurfaceProvider {
    public /* synthetic */ ZslControlImpl$$ExternalSyntheticLambda1(Object obj) {
    }

    public static /* synthetic */ void m(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalStateException(sb.toString().toString());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public void onImageAvailable(ImageReaderProxy imageReaderProxy) {
        try {
            ImageProxy acquireLatestImage = imageReaderProxy.acquireLatestImage();
            StringBuilder sb = new StringBuilder("OnImageAvailableListener: mCurrentRequest ID = null, image.isNull = ");
            sb.append(acquireLatestImage == null);
            Utf8.SafeProcessor.d("CaptureNode", sb.toString());
            if (acquireLatestImage != null) {
                Validate.checkMainThread();
                Utf8.SafeProcessor.w("CaptureNode", "Discarding ImageProxy which was inadvertently acquired: " + acquireLatestImage);
                acquireLatestImage.close();
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // androidx.camera.core.Preview.SurfaceProvider
    public void onSurfaceRequested(SurfaceRequest surfaceRequest) {
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(surfaceRequest.mResolution.getWidth(), surfaceRequest.mResolution.getHeight());
        surfaceTexture.detachFromGLContext();
        Surface surface = new Surface(surfaceTexture);
        surfaceRequest.provideSurface(surface, Util.directExecutor(), new CameraUseCaseAdapter$$ExternalSyntheticLambda1(0, surface, surfaceTexture));
    }

    public static /* bridge */ /* synthetic */ Class m$1() {
        return OutputConfiguration.class;
    }

    public static /* bridge */ /* synthetic */ OutputConfiguration m(Object obj) {
        return (OutputConfiguration) obj;
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher m2m(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new FileNotFoundException(str + obj);
    }
}
