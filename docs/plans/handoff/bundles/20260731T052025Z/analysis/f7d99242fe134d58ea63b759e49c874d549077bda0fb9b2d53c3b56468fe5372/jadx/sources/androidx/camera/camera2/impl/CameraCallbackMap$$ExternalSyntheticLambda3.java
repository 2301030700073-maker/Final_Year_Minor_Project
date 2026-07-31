package androidx.camera.camera2.impl;

import android.os.Process;
import android.view.View;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.core.content.res.CamUtils;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CameraCallbackMap$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ CameraCallbackMap$$ExternalSyntheticLambda3(int i, Runnable runnable) {
        this.$r8$classId = 1;
        this.f$1 = i;
        this.f$0 = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        int i2 = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((CameraCaptureCallback) obj).onCaptureCancelled(i2);
                break;
            case 1:
                Process.setThreadPriority(i2);
                ((Runnable) obj).run();
                break;
            case 2:
                ((IntConsumer) obj).accept(i2);
                break;
            case 3:
                ((CamUtils) obj).onFontRetrievalFailed(i2);
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                WeakReference weakReference = sideSheetBehavior.viewRef;
                View view = weakReference != null ? (View) weakReference.get() : null;
                if (view != null) {
                    sideSheetBehavior.startSettling$1(view, i2, false);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ CameraCallbackMap$$ExternalSyntheticLambda3(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }
}
