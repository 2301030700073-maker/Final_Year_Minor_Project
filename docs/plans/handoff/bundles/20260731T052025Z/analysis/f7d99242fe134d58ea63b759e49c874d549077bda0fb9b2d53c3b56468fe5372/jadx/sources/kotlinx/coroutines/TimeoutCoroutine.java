package kotlinx.coroutines;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TimeoutCoroutine extends ScopeCoroutine implements Runnable {
    public final long time;

    public TimeoutCoroutine(long j, ContinuationImpl continuationImpl) {
        super(continuationImpl, continuationImpl.getContext());
        this.time = j;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final String nameString$kotlinx_coroutines_core() {
        return super.nameString$kotlinx_coroutines_core() + "(timeMillis=" + this.time + ')';
    }

    @Override // java.lang.Runnable
    public final void run() {
        CoroutineContext coroutineContext = this.context;
        JobKt.getDelay(coroutineContext);
        CoroutineName coroutineName = (CoroutineName) coroutineContext.get(CoroutineName.Key);
        String str = coroutineName != null ? coroutineName.name : null;
        String str2 = "Timed out waiting for " + this.time + " ms";
        if (str != null) {
            StringBuilder m31m = CameraDevices$CC.m31m("Coroutine \"", str, "\" ");
            if (str2.length() > 0) {
                str2 = Character.toLowerCase(str2.charAt(0)) + str2.substring(1);
            }
            m31m.append(str2);
            str2 = m31m.toString();
        }
        cancelImpl$kotlinx_coroutines_core(new TimeoutCancellationException(str2, this));
    }
}
