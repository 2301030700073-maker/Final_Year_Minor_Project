package androidx.camera.core.streamsharing;

import androidx.camera.core.UseCase;
import androidx.camera.core.impl.AutoValue_StreamSpec;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import java.util.Iterator;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class StreamSharing$$ExternalSyntheticLambda1 implements SessionConfig.ErrorListener {
    public final /* synthetic */ StreamSharing f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ UseCaseConfig f$3;
    public final /* synthetic */ AutoValue_StreamSpec f$4;
    public final /* synthetic */ AutoValue_StreamSpec f$5;

    public /* synthetic */ StreamSharing$$ExternalSyntheticLambda1(StreamSharing streamSharing, String str, String str2, UseCaseConfig useCaseConfig, AutoValue_StreamSpec autoValue_StreamSpec, AutoValue_StreamSpec autoValue_StreamSpec2) {
        this.f$0 = streamSharing;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = useCaseConfig;
        this.f$4 = autoValue_StreamSpec;
        this.f$5 = autoValue_StreamSpec2;
    }

    @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
    public final void onError(SessionConfig sessionConfig) {
        StreamSharing streamSharing = this.f$0;
        if (streamSharing.getCamera() == null) {
            return;
        }
        streamSharing.clearPipeline$3();
        streamSharing.updateSessionConfig(streamSharing.createPipelineAndUpdateChildrenSpecs(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5));
        streamSharing.notifyReset();
        VirtualCameraAdapter virtualCameraAdapter = streamSharing.mVirtualCameraAdapter;
        virtualCameraAdapter.getClass();
        Validate.checkMainThread();
        Iterator it = virtualCameraAdapter.mChildren.iterator();
        while (it.hasNext()) {
            virtualCameraAdapter.onUseCaseReset((UseCase) it.next());
        }
    }
}
