package androidx.camera.camera2.impl;

import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.math.MathKt;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseSurfaceManager {
    public final LinkedHashMap activeSurfaceMap;
    public final CameraPipeImpl cameraPipe;
    public LinkedHashMap configuredSurfaceMap;
    public final InactiveSurfaceCloser inactiveSurfaceCloser;
    public final Object lock;
    public final SessionConfigAdapter sessionConfigAdapter;
    public DeferredCoroutine setupDeferred;
    public CompletableDeferredImpl stopDeferred;
    public final UseCaseThreads threads;

    public UseCaseSurfaceManager(UseCaseThreads useCaseThreads, CameraPipeImpl cameraPipeImpl, InactiveSurfaceCloser inactiveSurfaceCloser, SessionConfigAdapter sessionConfigAdapter) {
        useCaseThreads.getClass();
        sessionConfigAdapter.getClass();
        this.threads = useCaseThreads;
        this.cameraPipe = cameraPipeImpl;
        this.inactiveSurfaceCloser = inactiveSurfaceCloser;
        this.sessionConfigAdapter = sessionConfigAdapter;
        this.lock = new Object();
        this.activeSurfaceMap = new LinkedHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$getSurfaces(androidx.camera.camera2.impl.UseCaseSurfaceManager r4, java.util.List r5, long r6, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$1 r0 = (androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$1 r0 = new androidx.camera.camera2.impl.UseCaseSurfaceManager$getSurfaces$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r4 = r0.result
            int r8 = r0.label
            r1 = 0
            r2 = 1
            if (r8 == 0) goto L2c
            if (r8 != r2) goto L26
            kotlin.ResultKt.throwOnFailure(r4)
            goto L40
        L26:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r1
        L2c:
            kotlin.ResultKt.throwOnFailure(r4)
            androidx.compose.material3.ThumbNode$onAttach$1 r4 = new androidx.compose.material3.ThumbNode$onAttach$1
            r8 = 2
            r4.<init>(r5, r1, r8)
            r0.label = r2
            java.lang.Object r4 = kotlinx.coroutines.JobKt.withTimeoutOrNull(r6, r4, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r4 != r5) goto L40
            return r5
        L40:
            java.util.List r4 = (java.util.List) r4
            if (r4 != 0) goto L46
            kotlin.collections.EmptyList r4 = kotlin.collections.EmptyList.INSTANCE
        L46:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseSurfaceManager.access$getSurfaces(androidx.camera.camera2.impl.UseCaseSurfaceManager, java.util.List, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void access$setSurfaceListener(UseCaseSurfaceManager useCaseSurfaceManager) {
        Set keySet;
        CameraSurfaceManager cameraSurfaceManager = useCaseSurfaceManager.cameraPipe.cameraSurfaceManager();
        cameraSurfaceManager.getClass();
        synchronized (cameraSurfaceManager.lock) {
            try {
                cameraSurfaceManager.listeners.add(useCaseSurfaceManager);
                LinkedHashMap linkedHashMap = cameraSurfaceManager.useCountMap;
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    if (((Number) entry.getValue()).intValue() > 0) {
                        linkedHashMap2.put(entry.getKey(), entry.getValue());
                    }
                }
                keySet = linkedHashMap2.keySet();
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = keySet.iterator();
        while (it.hasNext()) {
            useCaseSurfaceManager.onSurfaceActive((Surface) it.next());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object awaitSetupCompletion$suspendImpl(androidx.camera.camera2.impl.UseCaseSurfaceManager r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof androidx.camera.camera2.impl.UseCaseSurfaceManager$awaitSetupCompletion$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.camera.camera2.impl.UseCaseSurfaceManager$awaitSetupCompletion$1 r0 = (androidx.camera.camera2.impl.UseCaseSurfaceManager$awaitSetupCompletion$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.impl.UseCaseSurfaceManager$awaitSetupCompletion$1 r0 = new androidx.camera.camera2.impl.UseCaseSurfaceManager$awaitSetupCompletion$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2e
            if (r2 != r3) goto L27
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.util.concurrent.CancellationException -> L48
            return r5
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            java.lang.Object r5 = r4.lock
            monitor-enter(r5)
            kotlinx.coroutines.DeferredCoroutine r2 = r4.setupDeferred     // Catch: java.lang.Throwable -> L58
            if (r2 == 0) goto L5a
            kotlinx.coroutines.CompletableDeferredImpl r4 = r4.stopDeferred     // Catch: java.lang.Throwable -> L58
            if (r4 == 0) goto L3d
            goto L5a
        L3d:
            monitor-exit(r5)
            r0.label = r3     // Catch: java.util.concurrent.CancellationException -> L48
            java.lang.Object r4 = r2.awaitInternal(r0)     // Catch: java.util.concurrent.CancellationException -> L48
            if (r4 != r1) goto L47
            return r1
        L47:
            return r4
        L48:
            boolean r4 = androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.isWarnEnabled()
            if (r4 == 0) goto L55
            java.lang.String r4 = "CXCP"
            java.lang.String r5 = "Surface setup was cancelled"
            android.util.Log.w(r4, r5)
        L55:
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            return r4
        L58:
            r4 = move-exception
            goto L5e
        L5a:
            java.lang.Boolean r4 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L58
            monitor-exit(r5)
            return r4
        L5e:
            monitor-exit(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.impl.UseCaseSurfaceManager.awaitSetupCompletion$suspendImpl(androidx.camera.camera2.impl.UseCaseSurfaceManager, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Deferred setupAsync$default(UseCaseSurfaceManager useCaseSurfaceManager, CameraGraphImpl cameraGraphImpl, SessionConfigAdapter sessionConfigAdapter, Map map) {
        CompletableDeferredImpl completableDeferredImpl;
        map.getClass();
        synchronized (useCaseSurfaceManager.lock) {
            try {
                if (useCaseSurfaceManager.setupDeferred != null) {
                    throw new IllegalStateException("Surfaces should only be set up once!");
                }
                if (useCaseSurfaceManager.stopDeferred != null) {
                    throw new IllegalStateException("Surfaces being setup after stopped!");
                }
                if (useCaseSurfaceManager.configuredSurfaceMap != null) {
                    throw new IllegalStateException("Check failed.");
                }
                Object value = sessionConfigAdapter.deferrableSurfaces$delegate.getValue();
                value.getClass();
                List list = (List) value;
                Continuation continuation = null;
                try {
                    MathKt.incrementAll(list);
                    DeferredCoroutine async$default = JobKt.async$default(useCaseSurfaceManager.threads.scope, null, null, new MutatorMutex$mutate$2(sessionConfigAdapter, useCaseSurfaceManager, list, map, cameraGraphImpl, (Continuation) null), 3);
                    async$default.invokeOnCompletion(new UseCaseSurfaceManager$$ExternalSyntheticLambda0(0, list));
                    useCaseSurfaceManager.setupDeferred = async$default;
                    completableDeferredImpl = async$default;
                } catch (DeferrableSurface.SurfaceClosedException e) {
                    if (Utf8.SafeProcessor.isWarnEnabled()) {
                        Log.w("CXCP", "Failed to increment DeferrableSurfaces: Surfaces closed");
                    }
                    JobKt.launch$default(useCaseSurfaceManager.threads.scope, null, null, new DataStoreImpl$data$1$3(sessionConfigAdapter, e, continuation, 5), 3);
                    completableDeferredImpl = JobKt.CompletableDeferred(Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return completableDeferredImpl;
    }

    public final void onSurfaceActive(Surface surface) {
        DeferrableSurface deferrableSurface;
        surface.getClass();
        synchronized (this.lock) {
            try {
                LinkedHashMap linkedHashMap = this.configuredSurfaceMap;
                if (linkedHashMap != null && (deferrableSurface = (DeferrableSurface) linkedHashMap.get(surface)) != null && !this.activeSurfaceMap.containsKey(surface)) {
                    if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                        Log.d("CXCP", "SurfaceActive " + deferrableSurface + " in " + this);
                    }
                    this.activeSurfaceMap.put(surface, deferrableSurface);
                    try {
                        deferrableSurface.incrementUseCount();
                    } catch (DeferrableSurface.SurfaceClosedException e) {
                        if (Utf8.SafeProcessor.isWarnEnabled()) {
                            Log.w("CXCP", "Error when " + surface + " going to increase the use count.", e);
                        }
                        SessionConfigAdapter sessionConfigAdapter = this.sessionConfigAdapter;
                        DeferrableSurface deferrableSurface2 = e.mDeferrableSurface;
                        deferrableSurface2.getClass();
                        sessionConfigAdapter.reportSurfaceInvalid(deferrableSurface2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onSurfaceInactive(Surface surface) {
        surface.getClass();
        synchronized (this.lock) {
            try {
                DeferrableSurface deferrableSurface = (DeferrableSurface) this.activeSurfaceMap.remove(surface);
                if (deferrableSurface != null) {
                    if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                        Log.d("CXCP", "SurfaceInactive " + deferrableSurface + " in " + this);
                    }
                    this.inactiveSurfaceCloser.onSurfaceInactive(deferrableSurface);
                    try {
                        deferrableSurface.decrementUseCount();
                    } catch (IllegalStateException e) {
                        if (Utf8.SafeProcessor.isWarnEnabled()) {
                            Log.w("CXCP", "Error when " + surface + " going to decrease the use count.", e);
                        }
                    }
                    tryClearSurfaceListener();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void tryClearSurfaceListener() {
        synchronized (this.lock) {
            try {
                if (this.activeSurfaceMap.isEmpty() && this.configuredSurfaceMap == null) {
                    if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                        Log.d("CXCP", this + " remove surface listener");
                    }
                    this.cameraPipe.cameraSurfaceManager().removeListener(this);
                    CompletableDeferredImpl completableDeferredImpl = this.stopDeferred;
                    if (completableDeferredImpl != null) {
                        completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
