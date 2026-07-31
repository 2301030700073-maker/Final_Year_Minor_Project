package androidx.camera.camera2.pipe.compat;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.InputStream$Config;
import androidx.camera.camera2.pipe.OutputStream$Config;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.sqlite.SQLite;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPSessionFactory implements CaptureSessionFactory {
    public final CameraGraph$Config graphConfig;
    public final StreamGraphImpl streamGraph;
    public final Threads threads;

    public AndroidPSessionFactory(Threads threads, CameraGraph$Config cameraGraph$Config, StreamGraphImpl streamGraphImpl) {
        threads.getClass();
        cameraGraph$Config.getClass();
        this.threads = threads;
        this.graphConfig = cameraGraph$Config;
        this.streamGraph = streamGraphImpl;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public final CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDeviceWrapper, Map map, CaptureSessionState captureSessionState) {
        int i;
        ArrayList arrayList;
        cameraDeviceWrapper.getClass();
        map.getClass();
        captureSessionState.getClass();
        CameraGraph$Config cameraGraph$Config = this.graphConfig;
        int i2 = cameraGraph$Config.sessionMode;
        if (i2 == 0) {
            i = 0;
        } else if (i2 == 1) {
            i = 1;
        } else {
            if (i2 == 2) {
                DBUtil$$ExternalSyntheticBUOutline0.m$1(SQLite.m818toStringimpl(cameraGraph$Config.sessionMode), "Unsupported session mode: ");
                return null;
            }
            i = i2;
        }
        OutputConfigurations buildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(cameraGraph$Config, this.streamGraph, map);
        ArrayList arrayList2 = buildOutputConfigurations.all;
        boolean isEmpty = arrayList2.isEmpty();
        CaptureSessionFactory.Result.Failed failed = CaptureSessionFactory.Result.Failed.INSTANCE;
        if (isEmpty) {
            Log.w("CXCP", "Failed to create OutputConfigurations for " + cameraGraph$Config);
            captureSessionState.onSessionFinalized();
            return failed;
        }
        ArrayList arrayList3 = cameraGraph$Config.input;
        if (arrayList3 != null) {
            arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                OutputStream$Config outputStream$Config = (OutputStream$Config) CollectionsKt.single(((InputStream$Config) it.next()).stream.outputs);
                arrayList.add(new InputConfigData(outputStream$Config.size.getWidth(), outputStream$Config.size.getHeight(), outputStream$Config.format));
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (((InputConfigData) it2.next()).format != ((InputConfigData) arrayList.get(0)).format) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("All InputStream.Config objects must have the same format for multi resolution");
                    return null;
                }
            }
        }
        if (cameraDeviceWrapper.createCaptureSession(new SessionConfigData(i, arrayList, arrayList2, (Executor) this.threads._camera2Executor.getValue(), captureSessionState, cameraGraph$Config.sessionTemplate, cameraGraph$Config.sessionParameters))) {
            return new CaptureSessionFactory.Result.Success(buildOutputConfigurations.deferred, buildOutputConfigurations.outputSurfaceMap);
        }
        Log.w("CXCP", "Failed to create capture session from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
        captureSessionState.onSessionFinalized();
        return failed;
    }
}
