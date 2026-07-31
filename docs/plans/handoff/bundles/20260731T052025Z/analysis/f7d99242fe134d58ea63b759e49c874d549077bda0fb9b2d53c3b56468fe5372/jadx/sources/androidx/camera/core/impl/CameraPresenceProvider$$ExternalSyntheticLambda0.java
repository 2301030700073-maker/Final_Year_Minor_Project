package androidx.camera.core.impl;

import androidx.camera.core.CameraIdentifier;
import androidx.datastore.preferences.protobuf.Utf8;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.Iterator;
import java.util.concurrent.ScheduledFuture;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraPresenceProvider$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CameraPresenceProvider f$0;

    public /* synthetic */ CameraPresenceProvider$$ExternalSyntheticLambda0(CameraPresenceProvider cameraPresenceProvider, LockableDatabase lockableDatabase) {
        this.$r8$classId = 0;
        this.f$0 = cameraPresenceProvider;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        CameraPresenceProvider cameraPresenceProvider = this.f$0;
        switch (i) {
            case 0:
                CollectionsKt.toSet(cameraPresenceProvider.currentFilteredIds).isEmpty();
                return;
            case 1:
                synchronized (cameraPresenceProvider.retryLock) {
                    try {
                        ScheduledFuture scheduledFuture = cameraPresenceProvider.retryScanFuture;
                        if (scheduledFuture != null) {
                            scheduledFuture.cancel(false);
                        }
                        Utf8.SafeProcessor.d("CameraPresencePrvdr", "Starting new refresh-with-retries sequence.");
                        cameraPresenceProvider.scheduleRetryAttempt(3, cameraPresenceProvider.currentFilteredIds);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            default:
                Iterator it = cameraPresenceProvider.currentFilteredIds.iterator();
                while (it.hasNext()) {
                    cameraPresenceProvider.conditionallySetupCameraStateObserver(((CameraIdentifier) it.next()).getInternalId());
                }
                return;
        }
    }

    public /* synthetic */ CameraPresenceProvider$$ExternalSyntheticLambda0(CameraPresenceProvider cameraPresenceProvider, int i) {
        this.$r8$classId = i;
        this.f$0 = cameraPresenceProvider;
    }
}
