package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SavedStateHandleAttacher implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final Object provider;

    public /* synthetic */ SavedStateHandleAttacher(int i, Object obj) {
        this.$r8$classId = i;
        this.provider = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = this.$r8$classId;
        Object obj = this.provider;
        switch (i) {
            case 0:
                if (event != Lifecycle.Event.ON_CREATE) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) event, "Next event must be ON_CREATE, it was ");
                    return;
                } else {
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    ((SavedStateHandlesProvider) obj).performRestore();
                    return;
                }
            default:
                new HashMap();
                GeneratedAdapter[] generatedAdapterArr = (GeneratedAdapter[]) obj;
                if (generatedAdapterArr.length > 0) {
                    GeneratedAdapter generatedAdapter = generatedAdapterArr[0];
                    throw null;
                }
                if (generatedAdapterArr.length <= 0) {
                    return;
                }
                GeneratedAdapter generatedAdapter2 = generatedAdapterArr[0];
                throw null;
        }
    }
}
