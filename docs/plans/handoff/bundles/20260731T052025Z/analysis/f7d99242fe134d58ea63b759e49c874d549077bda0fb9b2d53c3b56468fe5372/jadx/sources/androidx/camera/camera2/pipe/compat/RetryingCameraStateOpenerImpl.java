package androidx.camera.camera2.pipe.compat;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipe$CameraInteropConfig;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import com.fsck.k9.mailstore.LockableDatabase;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.JobKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RetryingCameraStateOpenerImpl {
    public static final CaptureSessionFactory.Result.Failed Companion = new CaptureSessionFactory.Result.Failed();
    public final AudioRestrictionControllerImpl audioRestrictionController;
    public final Dispatcher cameraAvailabilityMonitor;
    public final Camera2ErrorProcessor cameraErrorListener;
    public final CameraPipe$CameraInteropConfig cameraInteropConfig;
    public final LockableDatabase cameraStateOpener;
    public final AndroidDevicePolicyManagerWrapper devicePolicyManager;
    public final Threads threads;
    public final SystemTimeSource timeSource;

    public RetryingCameraStateOpenerImpl(LockableDatabase lockableDatabase, Camera2ErrorProcessor camera2ErrorProcessor, Dispatcher dispatcher, SystemTimeSource systemTimeSource, AndroidDevicePolicyManagerWrapper androidDevicePolicyManagerWrapper, AudioRestrictionControllerImpl audioRestrictionControllerImpl, CameraPipe$CameraInteropConfig cameraPipe$CameraInteropConfig, Threads threads) {
        camera2ErrorProcessor.getClass();
        systemTimeSource.getClass();
        androidDevicePolicyManagerWrapper.getClass();
        audioRestrictionControllerImpl.getClass();
        threads.getClass();
        this.cameraStateOpener = lockableDatabase;
        this.cameraErrorListener = camera2ErrorProcessor;
        this.cameraAvailabilityMonitor = dispatcher;
        this.timeSource = systemTimeSource;
        this.devicePolicyManager = androidDevicePolicyManagerWrapper;
        this.audioRestrictionController = audioRestrictionControllerImpl;
        this.cameraInteropConfig = cameraPipe$CameraInteropConfig;
        this.threads = threads;
    }

    /* renamed from: openAndAwaitCameraWithRetry-0r8Bogc, reason: not valid java name */
    public final AwaitOpenCameraResult m72openAndAwaitCameraWithRetry0r8Bogc(String str, Camera2DeviceCloserImpl camera2DeviceCloserImpl) {
        str.getClass();
        camera2DeviceCloserImpl.getClass();
        Log.d("CXCP", this + "#openAndAwaitCameraWithRetry(" + ((Object) CameraId.m35toStringimpl(str)) + ')');
        return (AwaitOpenCameraResult) JobKt.runBlockingK(this.threads.blockingDispatcher, new NavHostKt$NavHost$29$1(this, str, camera2DeviceCloserImpl, (Continuation) null, 3));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:0|1|(7:(2:3|(11:5|6|7|(1:(1:(1:(12:12|13|14|15|16|17|(1:19)|20|21|(4:23|24|25|(2:27|28)(2:30|(3:32|33|34)(8:35|36|37|38|(4:40|(1:42)|44|(7:49|50|(2:58|(1:60)(6:61|(1:63)(1:65)|64|53|54|(1:57)(8:56|15|16|17|(0)|20|21|(0))))|52|53|54|(0)(0))(3:46|47|48))(1:66)|43|44|(0)(0))))|71|72)(2:85|86))(6:87|88|89|24|25|(0)(0)))(1:90))(1:94)|91|92|93|21|(0)|71|72))|92|93|21|(0)|71|72)|98|6|7|(0)(0)|91|(2:(0)|(1:78))) */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00c2, code lost:
    
        if (r10 == r11) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0052, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0053, code lost:
    
        r1 = r0;
        r4 = r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x024e A[Catch: all -> 0x0267, TRY_LEAVE, TryCatch #2 {all -> 0x0267, blocks: (B:17:0x0246, B:19:0x024e), top: B:16:0x0246 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0180 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #1 {all -> 0x0052, blocks: (B:13:0x0043, B:24:0x0107, B:32:0x0122, B:35:0x012b, B:38:0x0154, B:40:0x016a, B:43:0x0178, B:46:0x0180, B:50:0x01f8, B:53:0x0226, B:58:0x0205, B:61:0x0212, B:69:0x027a, B:70:0x027d, B:88:0x006e, B:37:0x0148), top: B:7:0x002b, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0242 -> B:15:0x004d). Please report as a decompilation issue!!! */
    /* renamed from: openCameraWithRetry-aeCOTgg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m73openCameraWithRetryaeCOTgg(java.lang.String r35, androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl r36, kotlin.jvm.functions.Function1 r37, kotlin.coroutines.jvm.internal.ContinuationImpl r38) {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl.m73openCameraWithRetryaeCOTgg(java.lang.String, androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
