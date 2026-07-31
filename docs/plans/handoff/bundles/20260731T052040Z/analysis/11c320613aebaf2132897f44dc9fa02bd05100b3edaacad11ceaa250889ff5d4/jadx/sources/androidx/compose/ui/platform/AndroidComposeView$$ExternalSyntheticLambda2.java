package androidx.compose.ui.platform;

import android.os.Trace;
import android.view.MotionEvent;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidComposeView$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AndroidComposeView f$0;

    public /* synthetic */ AndroidComposeView$$ExternalSyntheticLambda2(AndroidComposeView androidComposeView, int i) {
        this.$r8$classId = i;
        this.f$0 = androidComposeView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        AndroidComposeView androidComposeView = this.f$0;
        switch (i) {
            case 0:
                ArrayDeque arrayDeque = androidComposeView.outOfFrameQueue;
                Trace.beginSection("AndroidOwner:outOfFrameExecutor");
                while (!arrayDeque.isEmpty()) {
                    try {
                        ((Function0) arrayDeque.removeLast()).invoke();
                    } finally {
                        Trace.endSection();
                    }
                }
                return;
            case 1:
                androidComposeView.hoverExitReceived = false;
                MotionEvent motionEvent = androidComposeView.previousMotionEvent;
                motionEvent.getClass();
                if (motionEvent.getActionMasked() == 10) {
                    androidComposeView.m378sendMotionEvent8iAsVTc(motionEvent);
                    return;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("The ACTION_HOVER_EXIT event was not cleared.");
                    return;
                }
            case 2:
                AndroidComposeView.invalidateLayers(androidComposeView.getRoot());
                return;
            default:
                AndroidComposeView.invalidateLayers(androidComposeView.getRoot());
                return;
        }
    }
}
