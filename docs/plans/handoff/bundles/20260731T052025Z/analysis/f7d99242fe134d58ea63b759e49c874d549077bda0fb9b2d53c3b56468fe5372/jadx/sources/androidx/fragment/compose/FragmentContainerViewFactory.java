package androidx.fragment.compose;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.fragment.app.FragmentContainerView;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FragmentContainerViewFactory implements Function1 {
    public final int containerId;
    public FragmentContainerView lastCreatedContainer;

    public FragmentContainerViewFactory(int i) {
        this.containerId = i;
    }

    public final FragmentContainerView getContainer() {
        FragmentContainerView fragmentContainerView = this.lastCreatedContainer;
        if (fragmentContainerView != null) {
            return fragmentContainerView;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) CameraDevices$CC.m(new StringBuilder("AndroidView has not created a container for "), this.containerId, " yet"));
        return null;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FragmentContainerView fragmentContainerView = new FragmentContainerView((Context) obj);
        fragmentContainerView.setId(this.containerId);
        this.lastCreatedContainer = fragmentContainerView;
        return fragmentContainerView;
    }
}
