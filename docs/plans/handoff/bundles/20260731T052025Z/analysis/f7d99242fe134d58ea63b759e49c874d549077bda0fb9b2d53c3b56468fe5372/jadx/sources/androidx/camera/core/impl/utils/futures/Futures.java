package androidx.camera.core.impl.utils.futures;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.view.PreviewView;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.core.app.ActivityRecreator;
import androidx.fragment.app.Fragment;
import androidx.room.util.RelationUtil;
import com.bumptech.glide.util.Executors$1;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Futures {
    public static Object getDone(Future future) {
        RelationUtil.checkState("Future was expected to be done, " + future, future.isDone());
        return getUninterruptibly(future);
    }

    public static Object getUninterruptibly(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static ImmediateFuture$ImmediateFailedFuture immediateFuture(Object obj) {
        return obj == null ? ImmediateFuture$ImmediateFailedFuture.NULL_FUTURE : new ImmediateFuture$ImmediateFailedFuture(1, obj);
    }

    public static ListenableFuture nonCancellationPropagating(ListenableFuture listenableFuture) {
        listenableFuture.getClass();
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = new CallbackToFutureAdapter$Completer();
        callbackToFutureAdapter$Completer.cancellationFuture = new ResolvableFuture();
        CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = new CallbackToFutureAdapter$SafeFuture(callbackToFutureAdapter$Completer);
        callbackToFutureAdapter$Completer.future = callbackToFutureAdapter$SafeFuture;
        callbackToFutureAdapter$Completer.tag = CameraDevices$CC.class;
        try {
            propagateTransform(false, listenableFuture, callbackToFutureAdapter$Completer, Util.directExecutor());
            callbackToFutureAdapter$Completer.tag = "nonCancellationPropagating[" + listenableFuture + "]";
        } catch (Exception e) {
            callbackToFutureAdapter$SafeFuture.setException(e);
        }
        return callbackToFutureAdapter$SafeFuture;
    }

    public static void propagateTransform(boolean z, ListenableFuture listenableFuture, CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer, Executors$1 executors$1) {
        listenableFuture.getClass();
        callbackToFutureAdapter$Completer.getClass();
        executors$1.getClass();
        int i = 1;
        listenableFuture.addListener(new ActivityRecreator.AnonymousClass1(i, listenableFuture, new PreviewView.AnonymousClass1(i, callbackToFutureAdapter$Completer)), executors$1);
        if (z) {
            callbackToFutureAdapter$Completer.addCancellationListener(new Fragment.AnonymousClass1(9, listenableFuture), Util.directExecutor());
        }
    }

    public static ChainingListenableFuture transformAsync(ListenableFuture listenableFuture, AsyncFunction asyncFunction, Executor executor) {
        ChainingListenableFuture chainingListenableFuture = new ChainingListenableFuture(asyncFunction, listenableFuture);
        listenableFuture.addListener(chainingListenableFuture, executor);
        return chainingListenableFuture;
    }
}
