package androidx.camera.core.imagecapture;

import android.os.Build;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeView$$ExternalSyntheticLambda2;
import androidx.compose.ui.platform.TestTagKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CaptureNode$1$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
            case 1:
            case 2:
            case 3:
                return;
            default:
                MutableObjectList mutableObjectList = AndroidComposeView.composeViews;
                synchronized (mutableObjectList) {
                    try {
                        int i = Build.VERSION.SDK_INT;
                        Object[] objArr = mutableObjectList.content;
                        int i2 = mutableObjectList._size;
                        int i3 = 0;
                        if (i < 30) {
                            while (i3 < i2) {
                                AndroidComposeView androidComposeView = (AndroidComposeView) objArr[i3];
                                boolean showLayoutBounds = androidComposeView.getShowLayoutBounds();
                                Class cls = AndroidComposeView.systemPropertiesClass;
                                androidComposeView.setShowLayoutBounds(TestTagKt.getIsShowingLayoutBounds());
                                if (showLayoutBounds != androidComposeView.getShowLayoutBounds()) {
                                    androidComposeView.post(new AndroidComposeView$$ExternalSyntheticLambda2(androidComposeView, 2));
                                }
                                i3++;
                            }
                        } else {
                            while (i3 < i2) {
                                AndroidComposeView androidComposeView2 = (AndroidComposeView) objArr[i3];
                                androidComposeView2.post(new AndroidComposeView$$ExternalSyntheticLambda2(androidComposeView2, 3));
                                i3++;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }

    public /* synthetic */ CaptureNode$1$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    private final void run$androidx$camera$core$imagecapture$CaptureNode$1$$ExternalSyntheticLambda0() {
    }

    private final void run$androidx$camera$core$imagecapture$CaptureNode$1$$ExternalSyntheticLambda1() {
    }

    private final void run$androidx$camera$core$impl$CameraPresenceProvider$$ExternalSyntheticLambda5() {
    }

    private final void run$androidx$camera$core$processing$DefaultSurfaceProcessor$$ExternalSyntheticLambda9() {
    }
}
