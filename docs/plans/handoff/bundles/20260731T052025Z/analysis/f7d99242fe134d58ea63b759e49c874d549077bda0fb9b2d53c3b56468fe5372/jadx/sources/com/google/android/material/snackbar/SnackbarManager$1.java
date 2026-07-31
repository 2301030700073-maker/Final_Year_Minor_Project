package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Message;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SnackbarManager$1 implements Handler.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ SnackbarManager$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.$r8$classId) {
            case 0:
                if (message.what != 0) {
                    return false;
                }
                Dispatcher dispatcher = (Dispatcher) this.this$0;
                SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) message.obj;
                synchronized (dispatcher.executorServiceOrNull) {
                    if (((SnackbarManager$SnackbarRecord) dispatcher.runningAsyncCalls) == snackbarManager$SnackbarRecord || ((SnackbarManager$SnackbarRecord) dispatcher.runningSyncCalls) == snackbarManager$SnackbarRecord) {
                        dispatcher.cancelSnackbarLocked(snackbarManager$SnackbarRecord, 2);
                    }
                }
                return true;
            default:
                GifFrameLoader gifFrameLoader = (GifFrameLoader) this.this$0;
                int i = message.what;
                if (i == 1) {
                    gifFrameLoader.onFrameReady((GifFrameLoader.DelayTarget) message.obj);
                    return true;
                }
                if (i != 2) {
                    return false;
                }
                gifFrameLoader.requestManager.clear((GifFrameLoader.DelayTarget) message.obj);
                return false;
        }
    }
}
