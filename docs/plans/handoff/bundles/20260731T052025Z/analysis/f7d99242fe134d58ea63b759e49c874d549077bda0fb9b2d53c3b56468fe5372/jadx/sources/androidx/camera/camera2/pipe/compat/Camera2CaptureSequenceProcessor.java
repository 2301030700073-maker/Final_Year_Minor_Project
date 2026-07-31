package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.os.Trace;
import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.media.AndroidImageWriter;
import androidx.camera.core.impl.Config;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlinx.atomicfu.AtomicInt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2CaptureSequenceProcessor {
    public final boolean awaitRepeatingRequestOnDisconnect;
    public final int debugId;
    public boolean disconnected;
    public final AndroidImageWriter imageWriter;
    public Camera2CaptureSequence lastSingleRepeatingRequestSequence;
    public final Object lock;
    public final Map outputToSurfaceMap;
    public final CameraCaptureSessionWrapper session;
    public final StreamGraphImpl streamGraph;
    public final Map streamToSurfaceMap;
    public final StrictMode strictMode;
    public final int template;
    public final Threads threads;

    public Camera2CaptureSequenceProcessor(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Threads threads, int i, Map map, Map map2, StreamGraphImpl streamGraphImpl, StrictMode strictMode, boolean z) {
        cameraCaptureSessionWrapper.getClass();
        threads.getClass();
        map.getClass();
        map2.getClass();
        strictMode.getClass();
        this.session = cameraCaptureSessionWrapper;
        this.threads = threads;
        this.template = i;
        this.streamToSurfaceMap = map;
        this.outputToSurfaceMap = map2;
        this.streamGraph = streamGraphImpl;
        this.strictMode = strictMode;
        this.awaitRepeatingRequestOnDisconnect = z;
        AtomicInt atomicInt = Camera2CaptureSequenceProcessorKt.captureSequenceProcessorDebugIds;
        atomicInt.getClass();
        this.debugId = AtomicInt.FU.incrementAndGet(atomicInt);
        this.lock = new Object();
        List list = streamGraphImpl.inputs;
        AndroidImageWriter androidImageWriter = null;
        if (!list.isEmpty()) {
            StreamGraphImpl.InputStreamImpl inputStreamImpl = (StreamGraphImpl.InputStreamImpl) CollectionsKt.first(list);
            Surface inputSurface = cameraCaptureSessionWrapper.getInputSurface();
            if (inputSurface == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("inputSurface is required to create instance of imageWriter.");
                throw null;
            }
            try {
                androidImageWriter = OAuthBearer.m941createU86x6Zg(inputSurface, inputStreamImpl.id, new StreamFormat(inputStreamImpl.format), threads.getCamera2Handler());
            } catch (RuntimeException e) {
                Log.e("CXCP", "Failed to create ImageWriter for session " + this.session + "! Reprocessing will not be supported!", e);
            }
            if (androidImageWriter != null) {
                Log.d("CXCP", "Created ImageWriter " + androidImageWriter + " for session " + this.session);
            }
        }
        this.imageWriter = androidImageWriter;
    }

    public static final void access$awaitRepeatingRequestStarted(Camera2CaptureSequenceProcessor camera2CaptureSequenceProcessor, Camera2CaptureSequence camera2CaptureSequence) {
        Log.d("CXCP", "Waiting for the last repeating request sequence: " + camera2CaptureSequence);
        if (((Unit) camera2CaptureSequenceProcessor.threads.runBlockingCheckedOrNull(2000L, new DataStoreImpl$doWithWriteFileLock$2(camera2CaptureSequence, null, 2))) == null) {
            Log.e("CXCP", camera2CaptureSequenceProcessor + "#close: awaitStarted on last repeating request timed out, lastSingleRepeatingRequestSequence = " + camera2CaptureSequence);
        }
    }

    public final void abortCaptures() {
        synchronized (this.lock) {
            Log.d("CXCP", this + "#abortCaptures");
            this.session.abortCaptures();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:181:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x057b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.camera2.pipe.compat.Camera2CaptureSequence build$1(boolean r35, java.util.List r36, java.util.Map r37, java.util.Map r38, java.util.Map r39, androidx.biometric.BiometricPrompt r40, java.util.List r41) {
        /*
            Method dump skipped, instructions count: 1414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor.build$1(boolean, java.util.List, java.util.Map, java.util.Map, java.util.Map, androidx.biometric.BiometricPrompt, java.util.List):androidx.camera.camera2.pipe.compat.Camera2CaptureSequence");
    }

    public final void disconnect$camera_camera2_pipe() {
        Camera2CaptureSequence camera2CaptureSequence;
        try {
            Trace.beginSection(this + "#disconnect");
            synchronized (this.lock) {
                try {
                    if (this.disconnected) {
                        camera2CaptureSequence = null;
                    } else {
                        this.disconnected = true;
                        AndroidImageWriter androidImageWriter = this.imageWriter;
                        if (androidImageWriter != null) {
                            Config.CC.m93m((Object) androidImageWriter);
                        }
                        Surface inputSurface = this.session.getInputSurface();
                        if (inputSurface != null) {
                            inputSurface.release();
                        }
                        camera2CaptureSequence = this.lastSingleRepeatingRequestSequence;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.awaitRepeatingRequestOnDisconnect && camera2CaptureSequence != null) {
                access$awaitRepeatingRequestStarted(this, camera2CaptureSequence);
            }
        } finally {
            Trace.endSection();
        }
    }

    public final Integer submit$1(Camera2CaptureSequence camera2CaptureSequence) {
        Integer repeatingBurst;
        synchronized (this.lock) {
            if (this.disconnected) {
                Log.w("CXCP", this + " disconnected. " + camera2CaptureSequence + " won't be submitted");
                return null;
            }
            if (camera2CaptureSequence.captureRequestList.size() == 1) {
                CameraCaptureSessionWrapper cameraCaptureSessionWrapper = this.session;
                if (!(cameraCaptureSessionWrapper instanceof AndroidCameraConstrainedHighSpeedCaptureSession)) {
                    if (camera2CaptureSequence.repeating) {
                        if (this.awaitRepeatingRequestOnDisconnect) {
                            this.lastSingleRepeatingRequestSequence = camera2CaptureSequence;
                        }
                        repeatingBurst = cameraCaptureSessionWrapper.setRepeatingRequest((CaptureRequest) camera2CaptureSequence.captureRequestList.get(0), camera2CaptureSequence);
                    } else {
                        repeatingBurst = cameraCaptureSessionWrapper.capture((CaptureRequest) camera2CaptureSequence.captureRequestList.get(0), camera2CaptureSequence);
                    }
                    return repeatingBurst;
                }
            }
            boolean z = camera2CaptureSequence.repeating;
            CameraCaptureSessionWrapper cameraCaptureSessionWrapper2 = this.session;
            ArrayList arrayList = camera2CaptureSequence.captureRequestList;
            repeatingBurst = z ? cameraCaptureSessionWrapper2.setRepeatingBurst(arrayList, camera2CaptureSequence) : cameraCaptureSessionWrapper2.captureBurst(arrayList, camera2CaptureSequence);
            return repeatingBurst;
        }
    }

    public final String toString() {
        return "Camera2CaptureSequenceProcessor-" + this.debugId;
    }
}
