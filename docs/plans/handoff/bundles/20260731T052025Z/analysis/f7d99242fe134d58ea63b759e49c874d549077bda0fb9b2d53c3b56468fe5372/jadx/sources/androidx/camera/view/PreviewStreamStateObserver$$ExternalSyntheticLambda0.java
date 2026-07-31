package androidx.camera.view;

import androidx.arch.core.util.Function;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.view.PreviewView;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PreviewStreamStateObserver$$ExternalSyntheticLambda0 implements AsyncFunction, Function {
    public final /* synthetic */ PreviewStreamStateObserver f$0;

    public /* synthetic */ PreviewStreamStateObserver$$ExternalSyntheticLambda0(PreviewStreamStateObserver previewStreamStateObserver) {
        this.f$0 = previewStreamStateObserver;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction, androidx.arch.core.util.Function
    public ListenableFuture apply(Object obj) {
        return this.f$0.mPreviewViewImplementation.waitForNextFrame();
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        this.f$0.updatePreviewStreamState(PreviewView.StreamState.STREAMING);
        return null;
    }
}
