package androidx.camera.camera2.pipe.compat;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.sqlite.SQLite;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidExtensionSessionFactory implements CaptureSessionFactory {
    public final Camera2MetadataProvider camera2MetadataProvider;
    public final CameraGraph$Config graphConfig;
    public final StreamGraphImpl streamGraph;
    public final StrictMode strictMode;
    public final Threads threads;

    public AndroidExtensionSessionFactory(Threads threads, CameraGraph$Config cameraGraph$Config, StreamGraphImpl streamGraphImpl, Camera2MetadataProvider camera2MetadataProvider, StrictMode strictMode) {
        threads.getClass();
        cameraGraph$Config.getClass();
        camera2MetadataProvider.getClass();
        strictMode.getClass();
        this.threads = threads;
        this.graphConfig = cameraGraph$Config;
        this.streamGraph = streamGraphImpl;
        this.camera2MetadataProvider = camera2MetadataProvider;
        this.strictMode = strictMode;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public final CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDeviceWrapper, Map map, CaptureSessionState captureSessionState) {
        CameraExtensionMetadata cameraExtensionMetadata;
        cameraDeviceWrapper.getClass();
        map.getClass();
        captureSessionState.getClass();
        CameraGraph$Config cameraGraph$Config = this.graphConfig;
        if (cameraGraph$Config.sessionMode != 2) {
            Regex$$ExternalSyntheticBUOutline0.m$1(SQLite.m818toStringimpl(this.graphConfig.sessionMode), " for Extension CameraGraph", "Unsupported session mode: ");
            return null;
        }
        Object obj = cameraGraph$Config.sessionParameters.get(CameraPipeKeys.camera2ExtensionMode);
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        if (num == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("The CameraPipeKeys.camera2ExtensionMode must be set in the sessionParameters of the CameraGraph.Config when creating an Extension CameraGraph.");
            return null;
        }
        int intValue = num.intValue();
        if (this.graphConfig.input != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Reprocessing is not supported for Extensions");
            return null;
        }
        Camera2CameraMetadata camera2CameraMetadata = (Camera2CameraMetadata) ((Camera2MetadataCache) this.camera2MetadataProvider).m63awaitCameraMetadataEfqyGwQ(cameraDeviceWrapper.mo48getCameraIdDz_R5H8());
        Set set = (Set) camera2CameraMetadata._supportedExtensions.getValue();
        StrictMode strictMode = this.strictMode;
        if (!set.contains(Integer.valueOf(intValue))) {
            strictMode.getClass();
            Log.w("CXCP", cameraDeviceWrapper + " does not support extension mode " + intValue + ". Supported extensions are " + set);
        }
        if (this.graphConfig.postviewStream != null) {
            synchronized (camera2CameraMetadata.extensionCache) {
                cameraExtensionMetadata = (CameraExtensionMetadata) camera2CameraMetadata.extensionCache.get(Integer.valueOf(intValue));
            }
            if (cameraExtensionMetadata == null) {
                cameraExtensionMetadata = camera2CameraMetadata.metadataProvider.m62awaitCameraExtensionMetadata0r8Bogc(camera2CameraMetadata.camera, intValue);
                synchronized (camera2CameraMetadata.extensionCache) {
                    camera2CameraMetadata.extensionCache.put(Integer.valueOf(intValue), cameraExtensionMetadata);
                }
            }
            StrictMode strictMode2 = this.strictMode;
            if (!((Boolean) ((Camera2CameraExtensionMetadata) cameraExtensionMetadata)._isPostviewSupported.getValue()).booleanValue()) {
                strictMode2.getClass();
                Log.w("CXCP", cameraDeviceWrapper + " does not support Postview streams");
            }
            if (this.graphConfig.postviewStream.outputs.size() != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Postview streams can only have one OutputStream.config object");
                return null;
            }
        }
        OutputConfigurations buildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(this.graphConfig, this.streamGraph, map);
        if (buildOutputConfigurations.all.isEmpty()) {
            Log.w("CXCP", "Failed to create OutputConfigurations for " + this.graphConfig);
            captureSessionState.onSessionFinalized();
            return CaptureSessionFactory.Result.Failed.INSTANCE;
        }
        if (!buildOutputConfigurations.deferred.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Deferred output is not supported for Extensions");
            return null;
        }
        ExtensionSessionState extensionSessionState = new ExtensionSessionState(captureSessionState);
        ArrayList arrayList = buildOutputConfigurations.all;
        HandlerExecutor handlerExecutor = new HandlerExecutor(this.threads.getCamera2Handler(), 0);
        CameraGraph$Config cameraGraph$Config2 = this.graphConfig;
        if (cameraDeviceWrapper.createExtensionSession(new ExtensionSessionConfigData(arrayList, handlerExecutor, captureSessionState, cameraGraph$Config2.sessionTemplate, cameraGraph$Config2.sessionParameters, Integer.valueOf(intValue), extensionSessionState, buildOutputConfigurations.postviewOutput))) {
            return new CaptureSessionFactory.Result.Success(buildOutputConfigurations.deferred, buildOutputConfigurations.outputSurfaceMap);
        }
        Log.w("CXCP", "Failed to create ExtensionCaptureSession from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}
