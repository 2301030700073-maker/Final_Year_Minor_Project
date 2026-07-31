package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.coroutines.Continuation;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AudioRestrictionControllerImpl {
    public final CopyOnWriteArrayList activeListeners;
    public final LinkedHashMap audioRestrictionModeMap;
    public final BiometricPrompt coroutineMutex;
    public final Object lock;
    public final ContextScope scope;

    public AudioRestrictionControllerImpl(Threads threads, CameraPipeLifetime cameraPipeLifetime, Job job) {
        threads.getClass();
        cameraPipeLifetime.getClass();
        job.getClass();
        this.scope = JobKt.CoroutineScope(UuidKt.plus(new SupervisorJobImpl(job), threads.lightweightDispatcher.plus(new CoroutineName("CXCP-AudioRestrictionControllerImpl"))));
        this.coroutineMutex = new BiometricPrompt(19);
        this.lock = new Object();
        this.audioRestrictionModeMap = new LinkedHashMap();
        this.activeListeners = new CopyOnWriteArrayList();
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new Preview$$ExternalSyntheticLambda0(3, this));
    }

    public final void addListener(AndroidCameraDevice androidCameraDevice) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        synchronized (this.lock) {
            this.activeListeners.add(androidCameraDevice);
            AudioRestrictionMode m51computeAudioRestrictionMode4o0Og1A = m51computeAudioRestrictionMode4o0Og1A();
            if (m51computeAudioRestrictionMode4o0Og1A != null) {
                BiometricPrompt biometricPrompt = this.coroutineMutex;
                ContextScope contextScope = this.scope;
                Continuation continuation = null;
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$3 = new DataStoreImpl$data$1$3(androidCameraDevice, m51computeAudioRestrictionMode4o0Og1A, continuation, 6);
                biometricPrompt.getClass();
                contextScope.getClass();
                JobKt.launch$default(contextScope, null, CoroutineStart.UNDISPATCHED, new NavHostKt$NavHost$29$1(biometricPrompt, dataStoreImpl$data$1$3, continuation, 4), 1);
            }
        }
    }

    /* renamed from: computeAudioRestrictionMode-4o0Og1A, reason: not valid java name */
    public final AudioRestrictionMode m51computeAudioRestrictionMode4o0Og1A() {
        LinkedHashMap linkedHashMap = this.audioRestrictionModeMap;
        int i = 3;
        if (linkedHashMap.containsValue(new AudioRestrictionMode(i))) {
            return new AudioRestrictionMode(i);
        }
        synchronized (this.lock) {
        }
        int i2 = 1;
        if (linkedHashMap.containsValue(new AudioRestrictionMode(i2))) {
            return new AudioRestrictionMode(i2);
        }
        m52getGlobalAudioRestrictionMode4o0Og1A();
        int i3 = 0;
        if (linkedHashMap.containsValue(new AudioRestrictionMode(i3))) {
            return new AudioRestrictionMode(i3);
        }
        m52getGlobalAudioRestrictionMode4o0Og1A();
        return null;
    }

    /* renamed from: getGlobalAudioRestrictionMode-4o0Og1A, reason: not valid java name */
    public final void m52getGlobalAudioRestrictionMode4o0Og1A() {
        synchronized (this.lock) {
        }
    }

    public final void removeCameraGraph(CameraGraphImpl cameraGraphImpl) {
        synchronized (this.lock) {
            AudioRestrictionMode m51computeAudioRestrictionMode4o0Og1A = m51computeAudioRestrictionMode4o0Og1A();
            this.audioRestrictionModeMap.remove(cameraGraphImpl);
            AudioRestrictionMode m51computeAudioRestrictionMode4o0Og1A2 = m51computeAudioRestrictionMode4o0Og1A();
            if (m51computeAudioRestrictionMode4o0Og1A2 != null && !m51computeAudioRestrictionMode4o0Og1A2.equals(m51computeAudioRestrictionMode4o0Og1A)) {
                BiometricPrompt biometricPrompt = this.coroutineMutex;
                ContextScope contextScope = this.scope;
                Continuation continuation = null;
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$3 = new DataStoreImpl$data$1$3(this, m51computeAudioRestrictionMode4o0Og1A2, continuation, 7);
                biometricPrompt.getClass();
                contextScope.getClass();
                JobKt.launch$default(contextScope, null, CoroutineStart.UNDISPATCHED, new NavHostKt$NavHost$29$1(biometricPrompt, dataStoreImpl$data$1$3, continuation, 4), 1);
            }
        }
    }
}
