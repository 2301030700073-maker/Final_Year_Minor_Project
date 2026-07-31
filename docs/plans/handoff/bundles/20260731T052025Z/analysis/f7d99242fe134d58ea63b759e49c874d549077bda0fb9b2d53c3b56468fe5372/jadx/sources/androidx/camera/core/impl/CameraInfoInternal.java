package androidx.camera.core.impl;

import android.graphics.Rect;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.LegacySessionConfig;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.view.PreviewStreamStateObserver;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CameraInfoInternal extends CameraInfo {
    void addSessionCaptureCallback(Executor executor, PreviewStreamStateObserver.AnonymousClass2 anonymousClass2);

    Set getAvailableCapabilities();

    Object getCameraCharacteristics();

    String getCameraId();

    Quirks getCameraQuirks();

    CameraInfoInternal getImplementation();

    Rect getSensorRect();

    Set getSupportedDynamicRanges();

    Set getSupportedOutputFormats();

    List getSupportedResolutions(int i);

    boolean isPreviewStabilizationSupported();

    boolean isResolvedFeatureGroupSupported(ResolvedFeatureGroup resolvedFeatureGroup, LegacySessionConfig legacySessionConfig);

    boolean isVideoStabilizationSupported();

    void removeSessionCaptureCallback(CameraCaptureCallback cameraCaptureCallback);

    void setCameraUseCaseAdapterProvider(Dispatcher dispatcher);
}
