package androidx.camera.camera2.pipe.config;

import androidx.cardview.widget.CardView;
import dagger.internal.DoubleCheck;
import dagger.internal.Provider;
import de.cketti.changelog.XmlParser;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DaggerCameraPipeComponent$CameraGraphComponentImpl {
    public final CardView.AnonymousClass1 cameraGraphConfigModule;
    public final Provider cameraGraphImplProvider;
    public final Provider cameraGraphParametersImplProvider;
    public final Provider cameraGraphRequestListenersImplProvider;
    public final Provider controller3AProvider;
    public final Provider frameCaptureQueueProvider;
    public final Provider graphSessionLockProvider;
    public final Provider graphState3AProvider;
    public final Provider listener3AProvider;
    public final Provider provideCameraBackendProvider;
    public final Provider provideCameraGraphCoroutineScopeProvider;
    public final Provider provideCameraMetadataProvider;
    public final Provider provideFrameDistributorProvider;
    public final Provider provideRequestListenersProvider;
    public final Provider provideSurfaceGraphProvider;
    public final Provider provideSystemClockOffsetsProvider;
    public final ConnectionPool graphProcessorImplProvider = new ConnectionPool(23, false);
    public final ConnectionPool streamGraphImplProvider = new ConnectionPool(23, false);
    public final ConnectionPool provideCameraControllerProvider = new ConnectionPool(23, false);

    public DaggerCameraPipeComponent$CameraGraphComponentImpl(DaggerCameraPipeComponent$CameraPipeComponentImpl daggerCameraPipeComponent$CameraPipeComponentImpl, CardView.AnonymousClass1 anonymousClass1) {
        this.cameraGraphConfigModule = anonymousClass1;
        this.provideCameraBackendProvider = DoubleCheck.provider(new XmlParser(2, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.provideCameraMetadataProvider = DoubleCheck.provider(new XmlParser(1, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.listener3AProvider = DoubleCheck.provider(new XmlParser(4, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.provideSurfaceGraphProvider = DoubleCheck.provider(new XmlParser(9, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        ConnectionPool.setDelegate(this.provideCameraControllerProvider, DoubleCheck.provider(new XmlParser(8, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this)));
        ConnectionPool.setDelegate(this.streamGraphImplProvider, DoubleCheck.provider(new XmlParser(7, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this)));
        this.frameCaptureQueueProvider = DoubleCheck.provider(new XmlParser(10, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.provideSystemClockOffsetsProvider = DoubleCheck.provider(new XmlParser(11, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.provideFrameDistributorProvider = DoubleCheck.provider(new XmlParser(6, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.provideRequestListenersProvider = DoubleCheck.provider(new XmlParser(5, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        ConnectionPool.setDelegate(this.graphProcessorImplProvider, DoubleCheck.provider(new XmlParser(3, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this)));
        this.graphSessionLockProvider = DoubleCheck.provider(new XmlParser(13, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.provideCameraGraphCoroutineScopeProvider = DoubleCheck.provider(new XmlParser(14, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.cameraGraphParametersImplProvider = DoubleCheck.provider(new XmlParser(12, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.cameraGraphRequestListenersImplProvider = DoubleCheck.provider(new XmlParser(15, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.graphState3AProvider = DoubleCheck.provider(new XmlParser(17, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.controller3AProvider = DoubleCheck.provider(new XmlParser(16, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
        this.cameraGraphImplProvider = DoubleCheck.provider(new XmlParser(0, 4, daggerCameraPipeComponent$CameraPipeComponentImpl, this));
    }
}
