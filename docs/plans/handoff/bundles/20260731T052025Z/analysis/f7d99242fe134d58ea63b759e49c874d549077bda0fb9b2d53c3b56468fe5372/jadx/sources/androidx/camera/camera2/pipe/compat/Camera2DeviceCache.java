package androidx.camera.camera2.pipe.compat;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraManager;
import android.util.Log;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import javax.inject.Provider;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharingConfig;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.internal.ContextScope;
import okhttp3.Handshake;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Camera2DeviceCache {
    public final LinkedHashMap camera2DeviceSetupWrapperCache;
    public final LinkedHashMap cameraDeviceSetupCache;
    public final SynchronizedLazyImpl cameraDeviceSetupCompatFactory$delegate;
    public final Provider cameraDeviceSetupCompatFactoryProvider;
    public final Camera2ErrorProcessor cameraErrorListener;
    public final ReadonlySharedFlow cameraIds;
    public final Provider cameraManager;
    public final Object lock;
    public final int minimumCameraCount;
    public ArrayList openableCameras;
    public final ContextScope scope;
    public final Threads threads;

    /* JADX WARN: Type inference failed for: r3v7, types: [boolean, int] */
    public Camera2DeviceCache(Provider provider, Threads threads, Context context, PackageManager packageManager, Camera2ErrorProcessor camera2ErrorProcessor, Provider provider2, CameraPipeLifetime cameraPipeLifetime, Job job) {
        provider.getClass();
        threads.getClass();
        packageManager.getClass();
        camera2ErrorProcessor.getClass();
        provider2.getClass();
        cameraPipeLifetime.getClass();
        job.getClass();
        this.cameraManager = provider;
        this.threads = threads;
        this.cameraErrorListener = camera2ErrorProcessor;
        this.cameraDeviceSetupCompatFactoryProvider = provider2;
        ContextScope CoroutineScope = JobKt.CoroutineScope(UuidKt.plus(new SupervisorJobImpl(job), threads.lightweightDispatcher).plus(new CoroutineName("Camera2DeviceCache")));
        this.scope = CoroutineScope;
        this.lock = new Object();
        this.cameraDeviceSetupCache = new LinkedHashMap();
        this.camera2DeviceSetupWrapperCache = new LinkedHashMap();
        int hasSystemFeature = packageManager.hasSystemFeature("android.hardware.camera");
        int i = packageManager.hasSystemFeature("android.hardware.camera.front") ? hasSystemFeature + 1 : hasSystemFeature;
        this.minimumCameraCount = i;
        CameraDevices$CC.m32m(i, "Camera2DeviceCache: Expected minimum camera count = ", "CXCP");
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new Preview$$ExternalSyntheticLambda0(4, this));
        Flow distinctUntilChanged = FlowKt.distinctUntilChanged(FlowKt.callbackFlow(new RippleNode$onAttach$1(this, (Continuation) null, 7)));
        StartedWhileSubscribed startedWhileSubscribed = new StartedWhileSubscribed(Long.MAX_VALUE);
        SharingConfig configureSharing$FlowKt__ShareKt = FlowKt.configureSharing$FlowKt__ShareKt(distinctUntilChanged);
        SharedFlowImpl MutableSharedFlow = FlowKt.MutableSharedFlow(1, configureSharing$FlowKt__ShareKt.extraBufferCapacity, (BufferOverflow) configureSharing$FlowKt__ShareKt.onBufferOverflow);
        this.cameraIds = new ReadonlySharedFlow(MutableSharedFlow, JobKt.launch(CoroutineScope, (CoroutineContext) configureSharing$FlowKt__ShareKt.context, startedWhileSubscribed.equals(SharingStarted.Companion.Eagerly) ? CoroutineStart.DEFAULT : CoroutineStart.UNDISPATCHED, new NavHostKt$NavHost$29$1(startedWhileSubscribed, (Flow) configureSharing$FlowKt__ShareKt.upstream, MutableSharedFlow, FlowKt.NO_VALUE, (Continuation) null)));
        this.cameraDeviceSetupCompatFactory$delegate = new SynchronizedLazyImpl(new OnBackPressedDispatcher$$ExternalSyntheticLambda0(9, this));
    }

    public static final void access$onCameraAvailabilityChanged(Camera2DeviceCache camera2DeviceCache, ProducerScope producerScope, String str, boolean z) {
        ArrayList arrayList;
        synchronized (camera2DeviceCache.lock) {
            arrayList = camera2DeviceCache.openableCameras;
        }
        ArrayList arrayList2 = null;
        if (!z) {
            if (!z) {
                if (arrayList != null) {
                    if (!arrayList.isEmpty()) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (Intrinsics.areEqual(((CameraId) it.next()).value, str)) {
                            }
                        }
                    }
                }
                Log.i("CXCP", "Unavailable camera " + str + " detected");
                arrayList2 = camera2DeviceCache.readCameraIds();
                break;
            }
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (Intrinsics.areEqual(((CameraId) it2.next()).value, str)) {
                    break;
                }
            }
        }
        Log.i("CXCP", "New camera " + str + " detected");
        arrayList2 = camera2DeviceCache.readCameraIds();
        if (arrayList2 != null && (arrayList2.size() >= camera2DeviceCache.minimumCameraCount || arrayList == null)) {
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            sendCameraIdList(producerScope, arrayList);
        }
    }

    public static void sendCameraIdList(ProducerScope producerScope, ArrayList arrayList) {
        Log.d("CXCP", "Emitting camera ID list: " + arrayList);
        if (Handshake.Companion.trySendBlocking(arrayList, producerScope) instanceof ChannelResult.Failed) {
            Log.e("CXCP", "Failed to send camera ID list: " + arrayList + '!');
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: getOrInitializeDeviceSetupCompat-0r8Bogc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m57getOrInitializeDeviceSetupCompat0r8Bogc(java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 r0 = (androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1 r0 = new androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupCompat$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2e
            kotlinx.coroutines.Deferred r11 = r0.L$1
            java.lang.String r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            r2 = r11
            r11 = r0
            goto L77
        L2e:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r12)
            int r12 = android.os.Build.VERSION.SDK_INT
            r2 = 35
            if (r12 >= r2) goto L3e
            return r3
        L3e:
            java.lang.Object r12 = r10.lock
            monitor-enter(r12)
            java.util.LinkedHashMap r2 = r10.cameraDeviceSetupCache     // Catch: java.lang.Throwable -> L64
            androidx.camera.camera2.pipe.CameraId r5 = new androidx.camera.camera2.pipe.CameraId     // Catch: java.lang.Throwable -> L64
            r5.<init>(r11)     // Catch: java.lang.Throwable -> L64
            java.lang.Object r6 = r2.get(r5)     // Catch: java.lang.Throwable -> L64
            if (r6 != 0) goto L66
            kotlinx.coroutines.internal.ContextScope r6 = r10.scope     // Catch: java.lang.Throwable -> L64
            androidx.camera.camera2.pipe.core.Threads r7 = r10.threads     // Catch: java.lang.Throwable -> L64
            kotlinx.coroutines.CoroutineDispatcher r7 = r7.backgroundDispatcher     // Catch: java.lang.Throwable -> L64
            androidx.datastore.core.DataStoreImpl$data$1$3 r8 = new androidx.datastore.core.DataStoreImpl$data$1$3     // Catch: java.lang.Throwable -> L64
            r9 = 9
            r8.<init>(r11, r10, r3, r9)     // Catch: java.lang.Throwable -> L64
            r9 = 2
            kotlinx.coroutines.DeferredCoroutine r6 = kotlinx.coroutines.JobKt.async$default(r6, r7, r3, r8, r9)     // Catch: java.lang.Throwable -> L64
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L64
            goto L66
        L64:
            r10 = move-exception
            goto La5
        L66:
            r2 = r6
            kotlinx.coroutines.Deferred r2 = (kotlinx.coroutines.Deferred) r2     // Catch: java.lang.Throwable -> L64
            monitor-exit(r12)
            r0.L$0 = r11
            r0.L$1 = r2
            r0.label = r4
            java.lang.Object r12 = r2.await(r0)
            if (r12 != r1) goto L77
            return r1
        L77:
            androidx.camera.featurecombinationquery.CameraDeviceSetupCompat r12 = (androidx.camera.featurecombinationquery.CameraDeviceSetupCompat) r12
            if (r12 != 0) goto La4
            java.lang.String r0 = "CXCP"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "Removing null CameraDeviceSetupCompat from cache for "
            r1.<init>(r3)
            java.lang.String r3 = androidx.camera.camera2.pipe.CameraId.m35toStringimpl(r11)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            java.lang.Object r0 = r10.lock
            monitor-enter(r0)
            java.util.LinkedHashMap r10 = r10.cameraDeviceSetupCache     // Catch: java.lang.Throwable -> La1
            androidx.camera.camera2.pipe.CameraId r1 = new androidx.camera.camera2.pipe.CameraId     // Catch: java.lang.Throwable -> La1
            r1.<init>(r11)     // Catch: java.lang.Throwable -> La1
            j$.util.Map.EL.remove(r10, r1, r2)     // Catch: java.lang.Throwable -> La1
            monitor-exit(r0)
            return r12
        La1:
            r10 = move-exception
            monitor-exit(r0)
            throw r10
        La4:
            return r12
        La5:
            monitor-exit(r12)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2DeviceCache.m57getOrInitializeDeviceSetupCompat0r8Bogc(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: getOrInitializeDeviceSetupWrapper-0r8Bogc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m58getOrInitializeDeviceSetupWrapper0r8Bogc(java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 r0 = (androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1 r0 = new androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2e
            kotlinx.coroutines.Deferred r11 = r0.L$1
            java.lang.String r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            r2 = r11
            r11 = r0
            goto L6e
        L2e:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r10.lock
            monitor-enter(r12)
            java.util.LinkedHashMap r2 = r10.camera2DeviceSetupWrapperCache     // Catch: java.lang.Throwable -> L5b
            androidx.camera.camera2.pipe.CameraId r5 = new androidx.camera.camera2.pipe.CameraId     // Catch: java.lang.Throwable -> L5b
            r5.<init>(r11)     // Catch: java.lang.Throwable -> L5b
            java.lang.Object r6 = r2.get(r5)     // Catch: java.lang.Throwable -> L5b
            if (r6 != 0) goto L5d
            kotlinx.coroutines.internal.ContextScope r6 = r10.scope     // Catch: java.lang.Throwable -> L5b
            androidx.camera.camera2.pipe.core.Threads r7 = r10.threads     // Catch: java.lang.Throwable -> L5b
            kotlinx.coroutines.CoroutineDispatcher r7 = r7.backgroundDispatcher     // Catch: java.lang.Throwable -> L5b
            androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1 r8 = new androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1     // Catch: java.lang.Throwable -> L5b
            r8.<init>(r11, r10, r3)     // Catch: java.lang.Throwable -> L5b
            r9 = 2
            kotlinx.coroutines.DeferredCoroutine r6 = kotlinx.coroutines.JobKt.async$default(r6, r7, r3, r8, r9)     // Catch: java.lang.Throwable -> L5b
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L5b
            goto L5d
        L5b:
            r10 = move-exception
            goto L9c
        L5d:
            r2 = r6
            kotlinx.coroutines.Deferred r2 = (kotlinx.coroutines.Deferred) r2     // Catch: java.lang.Throwable -> L5b
            monitor-exit(r12)
            r0.L$0 = r11
            r0.L$1 = r2
            r0.label = r4
            java.lang.Object r12 = r2.await(r0)
            if (r12 != r1) goto L6e
            return r1
        L6e:
            androidx.camera.camera2.pipe.compat.Camera2DeviceSetupWrapper r12 = (androidx.camera.camera2.pipe.compat.Camera2DeviceSetupWrapper) r12
            if (r12 != 0) goto L9b
            java.lang.String r0 = "CXCP"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "Removing null camera2DeviceSetupWrapper from cache for "
            r1.<init>(r3)
            java.lang.String r3 = androidx.camera.camera2.pipe.CameraId.m35toStringimpl(r11)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            java.lang.Object r0 = r10.lock
            monitor-enter(r0)
            java.util.LinkedHashMap r10 = r10.camera2DeviceSetupWrapperCache     // Catch: java.lang.Throwable -> L98
            androidx.camera.camera2.pipe.CameraId r1 = new androidx.camera.camera2.pipe.CameraId     // Catch: java.lang.Throwable -> L98
            r1.<init>(r11)     // Catch: java.lang.Throwable -> L98
            j$.util.Map.EL.remove(r10, r1, r2)     // Catch: java.lang.Throwable -> L98
            monitor-exit(r0)
            return r12
        L98:
            r10 = move-exception
            monitor-exit(r0)
            throw r10
        L9b:
            return r12
        L9c:
            monitor-exit(r12)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.Camera2DeviceCache.m58getOrInitializeDeviceSetupWrapper0r8Bogc(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final ArrayList readCameraIds() {
        try {
            String[] cameraIdList = ((CameraManager) this.cameraManager.get()).getCameraIdList();
            cameraIdList.getClass();
            ArrayList arrayList = new ArrayList();
            for (String str : cameraIdList) {
                str.getClass();
                CameraId.m34constructorimpl(str);
                arrayList.add(new CameraId(str));
            }
            if (arrayList.size() < this.minimumCameraCount) {
                Log.w("CXCP", "Failed to query camera ID list: Invalid list returned: " + arrayList + '.');
                return arrayList;
            }
            synchronized (this.lock) {
                this.openableCameras = arrayList;
            }
            Log.i("CXCP", "Loaded CameraIdList " + arrayList);
            return arrayList;
        } catch (CameraAccessException e) {
            Log.w("CXCP", "Failed to query CameraManager#getCameraIdList!", e);
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            Log.w("CXCP", "Failed to query CameraManager#getCameraIdList!Unexpected ArrayIndexOutOfBoundsException thrown by framework.", e2);
            return null;
        } catch (NullPointerException e3) {
            Log.w("CXCP", "Failed to query CameraManager#getCameraIdList!Null was returned by framework.", e3);
            return null;
        }
    }
}
