package androidx.camera.camera2.pipe.compat;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.room.InvalidationTracker$implementation$1;
import com.eygraber.uri.Uri;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PruningCamera2DeviceManager {
    public final LinkedHashSet activeCameras;
    public final Camera2DeviceCloserImpl camera2DeviceCloser;
    public final Camera2ErrorProcessor camera2ErrorProcessor;
    public final ArrayList pendingRequestOpens;
    public final Uri.Builder queue;
    public final RetryingCameraStateOpenerImpl retryingCameraStateOpener;
    public final CoroutineScope scope;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OpenVirtualCameraResult {

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Error implements OpenVirtualCameraResult {
            public final CameraError lastCameraError;

            public Error(CameraError cameraError) {
                this.lastCameraError = cameraError;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.areEqual(this.lastCameraError, ((Error) obj).lastCameraError);
            }

            public final int hashCode() {
                CameraError cameraError = this.lastCameraError;
                if (cameraError == null) {
                    return 0;
                }
                return cameraError.value;
            }

            public final String toString() {
                return "Error(lastCameraError=" + this.lastCameraError + ')';
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Success implements OpenVirtualCameraResult {
            public final ActiveCamera activeCamera;

            public Success(ActiveCamera activeCamera) {
                this.activeCamera = activeCamera;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Success) && this.activeCamera == ((Success) obj).activeCamera;
            }

            public final int hashCode() {
                return this.activeCamera.hashCode();
            }

            public final String toString() {
                return "Success(activeCamera=" + this.activeCamera + ')';
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PendingRequestOpen {
        public final ActiveCamera activeCamera;
        public final RequestOpen request;
        public final MutexToken token;

        public PendingRequestOpen(RequestOpen requestOpen, ActiveCamera activeCamera, MutexToken mutexToken) {
            this.request = requestOpen;
            this.activeCamera = activeCamera;
            this.token = mutexToken;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface RetrieveActiveCameraResult {

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Error implements RetrieveActiveCameraResult {
            public final CameraError lastCameraError;

            public Error(CameraError cameraError) {
                this.lastCameraError = cameraError;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && Intrinsics.areEqual(this.lastCameraError, ((Error) obj).lastCameraError);
            }

            public final int hashCode() {
                CameraError cameraError = this.lastCameraError;
                if (cameraError == null) {
                    return 0;
                }
                return cameraError.value;
            }

            public final String toString() {
                return "Error(lastCameraError=" + this.lastCameraError + ')';
            }
        }

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public final class Success implements RetrieveActiveCameraResult {
            public final ActiveCamera activeCamera;
            public final MutexToken token;

            public Success(ActiveCamera activeCamera, MutexToken mutexToken) {
                this.activeCamera = activeCamera;
                this.token = mutexToken;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Success)) {
                    return false;
                }
                Success success = (Success) obj;
                return this.activeCamera == success.activeCamera && this.token == success.token;
            }

            public final int hashCode() {
                return this.token.hashCode() + (this.activeCamera.hashCode() * 31);
            }

            public final String toString() {
                return "Success(activeCamera=" + this.activeCamera + ", token=" + this.token + ')';
            }
        }
    }

    public PruningCamera2DeviceManager(Permissions permissions, RetryingCameraStateOpenerImpl retryingCameraStateOpenerImpl, Camera2DeviceCloserImpl camera2DeviceCloserImpl, Camera2ErrorProcessor camera2ErrorProcessor, Threads threads) {
        permissions.getClass();
        retryingCameraStateOpenerImpl.getClass();
        camera2DeviceCloserImpl.getClass();
        camera2ErrorProcessor.getClass();
        threads.getClass();
        this.retryingCameraStateOpener = retryingCameraStateOpenerImpl;
        this.camera2DeviceCloser = camera2DeviceCloserImpl;
        this.camera2ErrorProcessor = camera2ErrorProcessor;
        CoroutineScope coroutineScope = threads.cameraPipeScope;
        this.scope = coroutineScope;
        Continuation continuation = null;
        int i = 8;
        Uri.Builder builder = new Uri.Builder(new InvalidationTracker$implementation$1(1, this, PruningCamera2DeviceManager.class, "prune", "prune$camera_camera2_pipe(Ljava/util/List;)V", 0, 1), new RippleNode$onAttach$1(this, continuation, i));
        coroutineScope.getClass();
        if (!((AtomicBoolean) builder.query).compareAndSet()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("PruningProcessingQueue cannot be re-started!");
            throw null;
        }
        if (JobKt.launch$default(coroutineScope, null, null, new ThumbNode$onAttach$1(builder, continuation, i), 3).isCancelled()) {
            Uri.Builder.access$closeAndReleaseUnprocessedElements(builder, null);
        }
        this.queue = builder;
        this.activeCameras = new LinkedHashSet();
        this.pendingRequestOpens = new ArrayList();
    }

    /* renamed from: close-EfqyGwQ, reason: not valid java name */
    public final void m69closeEfqyGwQ(String str) {
        str.getClass();
        RequestCloseById requestCloseById = new RequestCloseById(str);
        if (((BufferedChannel) this.queue.fragment).mo1016trySendJP2dKIU(requestCloseById) instanceof ChannelResult.Failed) {
            Log.e("CXCP", "Camera close by ID request failed for " + ((Object) CameraId.m35toStringimpl(str)) + '!');
            requestCloseById.deferred.makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c7, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00cc, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00dc -> B:10:0x00df). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object connectPendingRequestOpens(java.util.Set r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$connectPendingRequestOpens$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$connectPendingRequestOpens$1 r0 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$connectPendingRequestOpens$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$connectPendingRequestOpens$1 r0 = new androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$connectPendingRequestOpens$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            int r1 = r0.label
            r2 = 0
            java.util.ArrayList r3 = r10.pendingRequestOpens
            r4 = 1
            if (r1 == 0) goto L33
            if (r1 != r4) goto L2d
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$PendingRequestOpen r11 = r0.L$1
            java.util.Iterator r1 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto Ldf
        L2d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r2
        L33:
            kotlin.ResultKt.throwOnFailure(r12)
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.util.Iterator r1 = r3.iterator()
        L3f:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L61
            java.lang.Object r5 = r1.next()
            r6 = r5
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$PendingRequestOpen r6 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.PendingRequestOpen) r6
            androidx.camera.camera2.pipe.compat.RequestOpen r6 = r6.request
            androidx.camera.camera2.pipe.compat.VirtualCameraState r6 = r6.virtualCamera
            java.lang.String r6 = r6.cameraId
            androidx.camera.camera2.pipe.CameraId r7 = new androidx.camera.camera2.pipe.CameraId
            r7.<init>(r6)
            boolean r6 = r11.contains(r7)
            if (r6 == 0) goto L3f
            r12.add(r5)
            goto L3f
        L61:
            java.util.Iterator r11 = r12.iterator()
            r1 = r11
        L66:
            boolean r11 = r1.hasNext()
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            if (r11 == 0) goto Le3
            java.lang.Object r11 = r1.next()
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$PendingRequestOpen r11 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.PendingRequestOpen) r11
            androidx.camera.camera2.pipe.compat.RequestOpen r5 = r11.request
            androidx.camera.camera2.pipe.compat.VirtualCameraState r6 = r5.virtualCamera
            java.lang.String r7 = r6.cameraId
            androidx.camera.camera2.pipe.CameraId r8 = new androidx.camera.camera2.pipe.CameraId
            r8.<init>(r7)
            java.util.List r7 = androidx.compose.ui.unit.IntOffsetKt.listOf(r8)
            java.util.List r5 = r5.sharedCameraIds
            java.util.ArrayList r5 = kotlin.collections.CollectionsKt.plus(r7, r5)
            boolean r7 = r5.isEmpty()
            if (r7 == 0) goto L90
            goto Lcd
        L90:
            java.util.Iterator r5 = r5.iterator()
        L94:
            boolean r7 = r5.hasNext()
            if (r7 == 0) goto Lcd
            java.lang.Object r7 = r5.next()
            androidx.camera.camera2.pipe.CameraId r7 = (androidx.camera.camera2.pipe.CameraId) r7
            java.lang.String r7 = r7.value
            java.util.LinkedHashSet r8 = r10.activeCameras
            if (r8 == 0) goto Lac
            boolean r9 = r8.isEmpty()
            if (r9 != 0) goto Lc7
        Lac:
            java.util.Iterator r8 = r8.iterator()
        Lb0:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Lc7
            java.lang.Object r9 = r8.next()
            androidx.camera.camera2.pipe.compat.ActiveCamera r9 = (androidx.camera.camera2.pipe.compat.ActiveCamera) r9
            androidx.camera.camera2.pipe.compat.AndroidCameraState r9 = r9.androidCameraState
            java.lang.String r9 = r9.cameraId
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r7)
            if (r9 == 0) goto Lb0
            goto L94
        Lc7:
            java.lang.String r10 = "Check failed."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r2
        Lcd:
            androidx.camera.camera2.pipe.compat.ActiveCamera r5 = r11.activeCamera
            androidx.camera.camera2.pipe.core.MutexToken r7 = r11.token
            r0.L$0 = r1
            r0.L$1 = r11
            r0.label = r4
            r5.connectTo(r6, r7)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r12 != r5) goto Ldf
            return r5
        Ldf:
            r3.remove(r11)
            goto L66
        Le3:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.connectPendingRequestOpens(java.util.Set, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void disconnectPendingRequestOpens(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            PendingRequestOpen pendingRequestOpen = (PendingRequestOpen) it.next();
            pendingRequestOpen.token.release();
            this.pendingRequestOpens.remove(pendingRequestOpen);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: openCameraWithRetry-zDSwpeU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m70openCameraWithRetryzDSwpeU(java.lang.String r5, java.util.List r6, androidx.camera.camera2.pipe.compat.Camera2CameraController$$ExternalSyntheticLambda2 r7, kotlinx.coroutines.CoroutineScope r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$openCameraWithRetry$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$openCameraWithRetry$1 r0 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$openCameraWithRetry$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$openCameraWithRetry$1 r0 = new androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$openCameraWithRetry$1
            r0.<init>(r4, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2b
            kotlinx.coroutines.CoroutineScope r8 = r0.L$2
            java.util.List r6 = r0.L$1
            java.lang.String r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L66
        L2b:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L32:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r1 = "Opening "
            r9.<init>(r1)
            java.lang.String r1 = androidx.camera.camera2.pipe.CameraId.m35toStringimpl(r5)
            r9.append(r1)
            java.lang.String r1 = " with retries..."
            r9.append(r1)
            java.lang.String r9 = r9.toString()
            java.lang.String r1 = "CXCP"
            android.util.Log.d(r1, r9)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r8
            r0.label = r2
            androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl r9 = r4.retryingCameraStateOpener
            androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl r1 = r4.camera2DeviceCloser
            java.lang.Object r9 = r9.m73openCameraWithRetryaeCOTgg(r5, r1, r7, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r7) goto L66
            return r7
        L66:
            androidx.camera.camera2.pipe.compat.OpenCameraResult r9 = (androidx.camera.camera2.pipe.compat.OpenCameraResult) r9
            androidx.camera.camera2.pipe.compat.AndroidCameraState r7 = r9.cameraState
            if (r7 != 0) goto L74
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$OpenVirtualCameraResult$Error r4 = new androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$OpenVirtualCameraResult$Error
            androidx.camera.camera2.pipe.CameraError r5 = r9.errorCode
            r4.<init>(r5)
            return r4
        L74:
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$OpenVirtualCameraResult$Success r9 = new androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$OpenVirtualCameraResult$Success
            androidx.camera.camera2.pipe.compat.ActiveCamera r0 = new androidx.camera.camera2.pipe.compat.ActiveCamera
            androidx.camera.camera2.pipe.CameraId r1 = new androidx.camera.camera2.pipe.CameraId
            r1.<init>(r5)
            java.util.ArrayList r5 = kotlin.collections.CollectionsKt.plus(r6, r1)
            java.util.Set r5 = kotlin.collections.CollectionsKt.toSet(r5)
            androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1 r6 = new androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1
            r1 = 5
            r6.<init>(r1, r4)
            r0.<init>(r7, r5, r8, r6)
            r9.<init>(r0)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.m70openCameraWithRetryzDSwpeU(java.lang.String, java.util.List, androidx.camera.camera2.pipe.compat.Camera2CameraController$$ExternalSyntheticLambda2, kotlinx.coroutines.CoroutineScope, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0091, code lost:
    
        if (r3 == r6) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processRequestClose(androidx.camera.camera2.pipe.compat.RequestClose r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestClose$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestClose$1 r0 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestClose$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestClose$1 r0 = new androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestClose$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            int r1 = r0.label
            r2 = 0
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            r4 = 2
            r5 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L39
            if (r1 == r5) goto L33
            if (r1 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r12)
            return r3
        L2d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r2
        L33:
            androidx.camera.camera2.pipe.compat.RequestClose r11 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L94
        L39:
            kotlin.ResultKt.throwOnFailure(r12)
            androidx.camera.camera2.pipe.compat.ActiveCamera r12 = r11.activeCamera
            androidx.camera.camera2.pipe.compat.AndroidCameraState r1 = r12.androidCameraState
            java.lang.String r1 = r1.cameraId
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r8 = "PruningCamera2DeviceManager#processRequestClose("
            r7.<init>(r8)
            java.lang.String r1 = androidx.camera.camera2.pipe.CameraId.m35toStringimpl(r1)
            r7.append(r1)
            r1 = 41
            r7.append(r1)
            java.lang.String r1 = r7.toString()
            java.lang.String r7 = "CXCP"
            android.util.Log.i(r7, r1)
            java.util.LinkedHashSet r1 = r10.activeCameras
            boolean r7 = r1.contains(r12)
            if (r7 == 0) goto L69
            r1.remove(r12)
        L69:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.ArrayList r7 = r10.pendingRequestOpens
            java.util.Iterator r7 = r7.iterator()
        L74:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L8a
            java.lang.Object r8 = r7.next()
            r9 = r8
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$PendingRequestOpen r9 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.PendingRequestOpen) r9
            androidx.camera.camera2.pipe.compat.ActiveCamera r9 = r9.activeCamera
            if (r9 == r12) goto L86
            goto L74
        L86:
            r1.add(r8)
            goto L74
        L8a:
            r0.L$0 = r11
            r0.label = r5
            r10.disconnectPendingRequestOpens(r1)
            if (r3 != r6) goto L94
            goto La5
        L94:
            androidx.camera.camera2.pipe.compat.ActiveCamera r10 = r11.activeCamera
            r10.close()
            androidx.camera.camera2.pipe.compat.ActiveCamera r10 = r11.activeCamera
            r0.L$0 = r2
            r0.label = r4
            java.lang.Object r10 = r10.awaitClosed(r0)
            if (r10 != r6) goto La6
        La5:
            return r6
        La6:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.processRequestClose(androidx.camera.camera2.pipe.compat.RequestClose, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0052, code lost:
    
        if (r2 == r6) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f A[LOOP:1: B:27:0x0059->B:29:0x005f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processRequestCloseAll(androidx.camera.camera2.pipe.compat.RequestCloseAll r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1 r0 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1 r0 = new androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseAll$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            kotlin.Unit r2 = kotlin.Unit.INSTANCE
            r3 = 2
            r4 = 1
            java.util.LinkedHashSet r5 = r7.activeCameras
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3f
            if (r1 == r4) goto L39
            if (r1 != r3) goto L32
            java.util.Iterator r7 = r0.L$1
            androidx.camera.camera2.pipe.compat.RequestCloseAll r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6d
        L32:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            r7 = 0
            return r7
        L39:
            androidx.camera.camera2.pipe.compat.RequestCloseAll r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L55
        L3f:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.String r9 = "CXCP"
            java.lang.String r1 = "PruningCamera2DeviceManager#processRequestCloseAll()"
            android.util.Log.i(r9, r1)
            r0.L$0 = r8
            r0.label = r4
            java.util.ArrayList r9 = r7.pendingRequestOpens
            r7.disconnectPendingRequestOpens(r9)
            if (r2 != r6) goto L55
            goto L85
        L55:
            java.util.Iterator r7 = r5.iterator()
        L59:
            boolean r9 = r7.hasNext()
            if (r9 == 0) goto L69
            java.lang.Object r9 = r7.next()
            androidx.camera.camera2.pipe.compat.ActiveCamera r9 = (androidx.camera.camera2.pipe.compat.ActiveCamera) r9
            r9.close()
            goto L59
        L69:
            java.util.Iterator r7 = r5.iterator()
        L6d:
            boolean r9 = r7.hasNext()
            if (r9 == 0) goto L86
            java.lang.Object r9 = r7.next()
            androidx.camera.camera2.pipe.compat.ActiveCamera r9 = (androidx.camera.camera2.pipe.compat.ActiveCamera) r9
            r0.L$0 = r8
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r9 = r9.awaitClosed(r0)
            if (r9 != r6) goto L6d
        L85:
            return r6
        L86:
            r5.clear()
            kotlinx.coroutines.CompletableDeferredImpl r7 = r8.deferred
            r7.makeCompleting$kotlinx_coroutines_core(r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.processRequestCloseAll(androidx.camera.camera2.pipe.compat.RequestCloseAll, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processRequestCloseById(androidx.camera.camera2.pipe.compat.RequestCloseById r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseById$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseById$1 r0 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseById$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseById$1 r0 = new androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$processRequestCloseById$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            int r1 = r0.label
            r2 = 0
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            r4 = 2
            r5 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3e
            if (r1 == r5) goto L36
            if (r1 != r4) goto L30
            androidx.camera.camera2.pipe.compat.RequestCloseById r10 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto Lce
        L30:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r2
        L36:
            java.lang.String r11 = r0.L$1
            androidx.camera.camera2.pipe.compat.RequestCloseById r1 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L97
        L3e:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.String r12 = r11.activeCameraId
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r7 = "PruningCamera2DeviceManager#processRequestCloseById("
            r1.<init>(r7)
            java.lang.String r7 = r11.activeCameraId
            java.lang.String r7 = androidx.camera.camera2.pipe.CameraId.m35toStringimpl(r7)
            r1.append(r7)
            r7 = 41
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            java.lang.String r7 = "CXCP"
            android.util.Log.i(r7, r1)
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.ArrayList r7 = r10.pendingRequestOpens
            java.util.Iterator r7 = r7.iterator()
        L6c:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L89
            java.lang.Object r8 = r7.next()
            r9 = r8
            androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager$PendingRequestOpen r9 = (androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.PendingRequestOpen) r9
            androidx.camera.camera2.pipe.compat.RequestOpen r9 = r9.request
            androidx.camera.camera2.pipe.compat.VirtualCameraState r9 = r9.virtualCamera
            java.lang.String r9 = r9.cameraId
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r12)
            if (r9 == 0) goto L6c
            r1.add(r8)
            goto L6c
        L89:
            r0.L$0 = r11
            r0.L$1 = r12
            r0.label = r5
            r10.disconnectPendingRequestOpens(r1)
            if (r3 != r6) goto L95
            goto Lcc
        L95:
            r1 = r11
            r11 = r12
        L97:
            java.util.LinkedHashSet r10 = r10.activeCameras
            java.util.Iterator r12 = r10.iterator()
        L9d:
            boolean r5 = r12.hasNext()
            if (r5 == 0) goto Lb5
            java.lang.Object r5 = r12.next()
            r7 = r5
            androidx.camera.camera2.pipe.compat.ActiveCamera r7 = (androidx.camera.camera2.pipe.compat.ActiveCamera) r7
            androidx.camera.camera2.pipe.compat.AndroidCameraState r7 = r7.androidCameraState
            java.lang.String r7 = r7.cameraId
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r11)
            if (r7 == 0) goto L9d
            goto Lb6
        Lb5:
            r5 = r2
        Lb6:
            androidx.camera.camera2.pipe.compat.ActiveCamera r5 = (androidx.camera.camera2.pipe.compat.ActiveCamera) r5
            if (r5 == 0) goto Lcf
            r10.remove(r5)
            r5.close()
            r0.L$0 = r1
            r0.L$1 = r2
            r0.label = r4
            java.lang.Object r10 = r5.awaitClosed(r0)
            if (r10 != r6) goto Lcd
        Lcc:
            return r6
        Lcd:
            r10 = r1
        Lce:
            r1 = r10
        Lcf:
            kotlinx.coroutines.CompletableDeferredImpl r10 = r1.deferred
            r10.makeCompleting$kotlinx_coroutines_core(r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.processRequestCloseById(androidx.camera.camera2.pipe.compat.RequestCloseById, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x026a, code lost:
    
        if (connectPendingRequestOpens(r10, r0) != r1) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x027e, code lost:
    
        if (kotlin.Unit.INSTANCE == r1) goto L107;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0138 A[LOOP:3: B:85:0x0132->B:87:0x0138, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object processRequestOpen(androidx.camera.camera2.pipe.compat.RequestOpen r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instructions count: 672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.processRequestOpen(androidx.camera.camera2.pipe.compat.RequestOpen, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0067, code lost:
    
        r1 = r15.acquire();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006b, code lost:
    
        if (r1 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x006e, code lost:
    
        r15.close();
        r11.L$0 = r7;
        r11.L$1 = r13;
        r11.L$2 = r14;
        r11.L$3 = r15;
        r11.label = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007f, code lost:
    
        if (r15.awaitClosed(r11) != r0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0082, code lost:
    
        r1 = r13;
        r13 = r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0082 -> B:34:0x0084). Please report as a decompilation issue!!! */
    /* renamed from: retrieveActiveCamera-RzXb1QE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m71retrieveActiveCameraRzXb1QE(java.lang.String r13, androidx.camera.camera2.pipe.compat.RequestOpen r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager.m71retrieveActiveCameraRzXb1QE(java.lang.String, androidx.camera.camera2.pipe.compat.RequestOpen, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
