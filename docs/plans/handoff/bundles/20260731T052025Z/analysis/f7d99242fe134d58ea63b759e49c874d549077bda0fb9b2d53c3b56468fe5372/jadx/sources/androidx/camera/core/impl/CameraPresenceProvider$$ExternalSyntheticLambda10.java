package androidx.camera.core.impl;

import androidx.datastore.preferences.protobuf.Utf8;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraPresenceProvider$$ExternalSyntheticLambda10 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CameraPresenceProvider f$0;
    public final /* synthetic */ List f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ CameraPresenceProvider$$ExternalSyntheticLambda10(CameraPresenceProvider cameraPresenceProvider, List list, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = cameraPresenceProvider;
        this.f$1 = list;
        this.f$2 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 1;
        switch (this.$r8$classId) {
            case 0:
                CameraPresenceProvider cameraPresenceProvider = this.f$0;
                cameraPresenceProvider.backgroundExecutor.execute(new CameraPresenceProvider$$ExternalSyntheticLambda10(cameraPresenceProvider, this.f$1, this.f$2, i));
                break;
            default:
                CameraPresenceProvider cameraPresenceProvider2 = this.f$0;
                List list = this.f$1;
                int i2 = this.f$2;
                if (cameraPresenceProvider2.isMonitoring.get() && cameraPresenceProvider2.currentFilteredIds.equals(list)) {
                    Utf8.SafeProcessor.d("CameraPresencePrvdr", "Triggering refresh. Attempts left: " + i2);
                    QuotedMessagePresenter quotedMessagePresenter = cameraPresenceProvider2.sourcePresenceObservable;
                    if (quotedMessagePresenter != null) {
                        quotedMessagePresenter.fetchData();
                    }
                    cameraPresenceProvider2.scheduleRetryAttempt(i2 - 1, list);
                    break;
                }
                break;
        }
    }
}
