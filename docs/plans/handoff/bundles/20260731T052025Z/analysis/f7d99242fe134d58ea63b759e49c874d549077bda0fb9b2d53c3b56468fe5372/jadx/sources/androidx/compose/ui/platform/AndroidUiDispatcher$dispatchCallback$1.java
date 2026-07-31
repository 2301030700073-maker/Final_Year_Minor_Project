package androidx.compose.ui.platform;

import android.view.Choreographer;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidUiDispatcher$dispatchCallback$1 implements Choreographer.FrameCallback, Runnable {
    public final /* synthetic */ AndroidUiDispatcher this$0;

    public AndroidUiDispatcher$dispatchCallback$1(AndroidUiDispatcher androidUiDispatcher) {
        this.this$0 = androidUiDispatcher;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.this$0.handler.removeCallbacks(this);
        AndroidUiDispatcher.access$performTrampolineDispatch(this.this$0);
        AndroidUiDispatcher androidUiDispatcher = this.this$0;
        synchronized (androidUiDispatcher.lock) {
            if (androidUiDispatcher.scheduledFrameDispatch) {
                androidUiDispatcher.scheduledFrameDispatch = false;
                ArrayList arrayList = androidUiDispatcher.toRunOnFrame;
                androidUiDispatcher.toRunOnFrame = androidUiDispatcher.spareToRunOnFrame;
                androidUiDispatcher.spareToRunOnFrame = arrayList;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((Choreographer.FrameCallback) arrayList.get(i)).doFrame(j);
                }
                arrayList.clear();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        AndroidUiDispatcher.access$performTrampolineDispatch(this.this$0);
        AndroidUiDispatcher androidUiDispatcher = this.this$0;
        synchronized (androidUiDispatcher.lock) {
            if (androidUiDispatcher.toRunOnFrame.isEmpty()) {
                androidUiDispatcher.choreographer.removeFrameCallback(this);
                androidUiDispatcher.scheduledFrameDispatch = false;
            }
        }
    }
}
