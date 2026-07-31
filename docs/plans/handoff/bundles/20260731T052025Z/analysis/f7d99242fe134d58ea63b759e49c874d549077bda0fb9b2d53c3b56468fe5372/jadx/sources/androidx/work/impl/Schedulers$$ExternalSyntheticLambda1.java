package androidx.work.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.view.Surface;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import androidx.camera.view.TextureViewImplementation;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Configuration;
import androidx.work.impl.model.WorkGenerationalId;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Schedulers$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ Schedulers$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$3;
        Object obj2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                List list = (List) obj4;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) obj3;
                Configuration configuration = (Configuration) obj2;
                WorkDatabase workDatabase = (WorkDatabase) obj;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((Scheduler) it.next()).cancel(workGenerationalId.workSpecId);
                }
                Schedulers.schedule(configuration, workDatabase, list);
                break;
            case 1:
                ((CameraUseCaseAdapter.CaptureCallbackContainer) obj4).captureCallback.onCaptureCompleted((CameraCaptureSession) obj3, (CaptureRequest) obj2, (TotalCaptureResult) obj);
                break;
            case 2:
                ((CameraUseCaseAdapter.CaptureCallbackContainer) obj4).captureCallback.onCaptureFailed((CameraCaptureSession) obj3, (CaptureRequest) obj2, (CaptureFailure) obj);
                break;
            case 3:
                TextureViewImplementation textureViewImplementation = (TextureViewImplementation) obj4;
                Surface surface = (Surface) obj3;
                CallbackToFutureAdapter$SafeFuture callbackToFutureAdapter$SafeFuture = (CallbackToFutureAdapter$SafeFuture) obj2;
                SurfaceRequest surfaceRequest = (SurfaceRequest) obj;
                Utf8.SafeProcessor.d("TextureViewImpl", "Safe to release surface.");
                PreviewView$1$$ExternalSyntheticLambda2 previewView$1$$ExternalSyntheticLambda2 = textureViewImplementation.mOnSurfaceNotInUseListener;
                if (previewView$1$$ExternalSyntheticLambda2 != null) {
                    previewView$1$$ExternalSyntheticLambda2.onSurfaceNotInUse();
                    textureViewImplementation.mOnSurfaceNotInUseListener = null;
                }
                surface.release();
                if (textureViewImplementation.mSurfaceReleaseFuture == callbackToFutureAdapter$SafeFuture) {
                    textureViewImplementation.mSurfaceReleaseFuture = null;
                }
                if (textureViewImplementation.mSurfaceRequest == surfaceRequest) {
                    textureViewImplementation.mSurfaceRequest = null;
                    break;
                }
                break;
            default:
                MessagingController messagingController = (MessagingController) obj4;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj3;
                ArrayList arrayList = (ArrayList) obj;
                try {
                    messagingController.deleteMessagesSynchronous(legacyAccountDto, ((LocalFolder) obj2).databaseId, messagingController.collectMessagesInThreads(legacyAccountDto, arrayList), false);
                    break;
                } catch (MessagingException e) {
                    Log.e(e, "Something went wrong while deleting threads", new Object[0]);
                }
        }
    }
}
