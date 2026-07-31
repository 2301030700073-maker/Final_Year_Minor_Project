package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.params.InputConfiguration;
import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.InputStream$Config;
import androidx.camera.camera2.pipe.OutputStream$Config;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidMSessionFactory implements CaptureSessionFactory {
    public final /* synthetic */ int $r8$classId;
    public final CameraGraph$Config graphConfig;
    public final StreamGraphImpl streamGraph;

    public AndroidMSessionFactory(Threads threads, StreamGraphImpl streamGraphImpl, CameraGraph$Config cameraGraph$Config, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                threads.getClass();
                cameraGraph$Config.getClass();
                this.streamGraph = streamGraphImpl;
                this.graphConfig = cameraGraph$Config;
                break;
            default:
                threads.getClass();
                cameraGraph$Config.getClass();
                this.streamGraph = streamGraphImpl;
                this.graphConfig = cameraGraph$Config;
                break;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public final CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDeviceWrapper, Map map, CaptureSessionState captureSessionState) {
        boolean createReprocessableCaptureSessionByConfigurations;
        int i = this.$r8$classId;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        StreamGraphImpl streamGraphImpl = this.streamGraph;
        CameraGraph$Config cameraGraph$Config = this.graphConfig;
        CaptureSessionFactory.Result.Failed failed = CaptureSessionFactory.Result.Failed.INSTANCE;
        cameraDeviceWrapper.getClass();
        map.getClass();
        captureSessionState.getClass();
        switch (i) {
            case 0:
                ArrayList arrayList = cameraGraph$Config.input;
                if (arrayList != null) {
                    OutputStream$Config outputStream$Config = (OutputStream$Config) CollectionsKt.single(((InputStream$Config) CollectionsKt.single(arrayList)).stream.outputs);
                    InputConfiguration inputConfiguration = new InputConfiguration(outputStream$Config.size.getWidth(), outputStream$Config.size.getHeight(), outputStream$Config.format);
                    ArrayList arrayList2 = new ArrayList(map.size());
                    Iterator it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        arrayList2.add((Surface) ((Map.Entry) it.next()).getValue());
                    }
                    if (!cameraDeviceWrapper.createReprocessableCaptureSession(inputConfiguration, arrayList2, captureSessionState)) {
                        Log.w("CXCP", "Failed to create reprocessable captures session from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
                        captureSessionState.onSessionFinalized();
                        return failed;
                    }
                } else {
                    ArrayList arrayList3 = new ArrayList(map.size());
                    Iterator it2 = map.entrySet().iterator();
                    while (it2.hasNext()) {
                        arrayList3.add((Surface) ((Map.Entry) it2.next()).getValue());
                    }
                    if (!cameraDeviceWrapper.createCaptureSession(arrayList3, captureSessionState)) {
                        Log.w("CXCP", "Failed to create captures session from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
                        captureSessionState.onSessionFinalized();
                        return failed;
                    }
                }
                return new CaptureSessionFactory.Result.Success(emptyMap, CaptureSessionFactoryKt.access$buildSimpleOutputSurfaceMap(map, streamGraphImpl));
            default:
                OutputConfigurations buildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(cameraGraph$Config, streamGraphImpl, map);
                ArrayList arrayList4 = buildOutputConfigurations.all;
                if (arrayList4.isEmpty()) {
                    Log.w("CXCP", "Failed to create OutputConfigurations for " + cameraGraph$Config);
                    captureSessionState.onSessionFinalized();
                    return failed;
                }
                ArrayList arrayList5 = cameraGraph$Config.input;
                if (arrayList5 == null) {
                    createReprocessableCaptureSessionByConfigurations = cameraDeviceWrapper.createCaptureSessionByOutputConfigurations(arrayList4, captureSessionState);
                } else {
                    OutputStream$Config outputStream$Config2 = (OutputStream$Config) CollectionsKt.single(((InputStream$Config) CollectionsKt.single(arrayList5)).stream.outputs);
                    createReprocessableCaptureSessionByConfigurations = cameraDeviceWrapper.createReprocessableCaptureSessionByConfigurations(new InputConfigData(outputStream$Config2.size.getWidth(), outputStream$Config2.size.getHeight(), outputStream$Config2.format), arrayList4, captureSessionState);
                }
                if (createReprocessableCaptureSessionByConfigurations) {
                    return new CaptureSessionFactory.Result.Success(emptyMap, buildOutputConfigurations.outputSurfaceMap);
                }
                Log.w("CXCP", "Failed to create capture session from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
                captureSessionState.onSessionFinalized();
                return failed;
        }
    }
}
