package androidx.camera.camera2.pipe.graph;

import android.content.ContentProviderClient;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.Surface;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.media.ImageReaderImageSource;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import kotlin.collections.CollectionsKt;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SurfaceGraph implements AutoCloseable {
    public final Provider cameraController;
    public boolean closed;
    public final Map imageSources;
    public final Object lock;
    public boolean shouldRegisterSurfaces;
    public final StreamGraphImpl streamGraphImpl;
    public final CameraSurfaceManager surfaceManager;
    public final LinkedHashMap surfaceMap;
    public final LinkedHashMap surfaceUsageMap;

    public SurfaceGraph(StreamGraphImpl streamGraphImpl, ConnectionPool connectionPool, CameraSurfaceManager cameraSurfaceManager, Map map) {
        connectionPool.getClass();
        map.getClass();
        this.streamGraphImpl = streamGraphImpl;
        this.cameraController = connectionPool;
        this.surfaceManager = cameraSurfaceManager;
        this.imageSources = map;
        this.lock = new Object();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            ((ImageReaderImageSource) entry.getValue()).getClass();
            linkedHashMap.put(key, null);
        }
        this.surfaceMap = linkedHashMap;
        this.surfaceUsageMap = new LinkedHashMap();
        this.shouldRegisterSurfaces = true;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            this.surfaceMap.clear();
            List<AutoCloseable> list = CollectionsKt.toList(this.surfaceUsageMap.values());
            this.surfaceUsageMap.clear();
            for (AutoCloseable autoCloseable : list) {
                if (autoCloseable instanceof AutoCloseable) {
                    autoCloseable.close();
                } else if (autoCloseable instanceof ExecutorService) {
                    OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
                } else if (autoCloseable instanceof TypedArray) {
                    ((TypedArray) autoCloseable).recycle();
                } else if (autoCloseable instanceof MediaMetadataRetriever) {
                    ((MediaMetadataRetriever) autoCloseable).release();
                } else if (autoCloseable instanceof MediaDrm) {
                    ((MediaDrm) autoCloseable).release();
                } else if (autoCloseable instanceof DrmManagerClient) {
                    ((DrmManagerClient) autoCloseable).release();
                } else {
                    if (!(autoCloseable instanceof ContentProviderClient)) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                        return;
                    }
                    ((ContentProviderClient) autoCloseable).release();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        r1 = kotlin.collections.EmptyMap.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void maybeUpdateSurfaces$camera_camera2_pipe() {
        /*
            r9 = this;
            java.lang.Object r0 = r9.lock
            monitor-enter(r0)
            java.util.LinkedHashMap r1 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L4c
            r1.<init>()     // Catch: java.lang.Throwable -> L4c
            androidx.camera.camera2.pipe.graph.StreamGraphImpl r2 = r9.streamGraphImpl     // Catch: java.lang.Throwable -> L4c
            java.util.List r2 = r2.outputConfigs     // Catch: java.lang.Throwable -> L4c
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L4c
        L10:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L4c
            if (r3 == 0) goto L4a
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L4c
            androidx.camera.camera2.pipe.graph.StreamGraphImpl$OutputConfig r3 = (androidx.camera.camera2.pipe.graph.StreamGraphImpl.OutputConfig) r3     // Catch: java.lang.Throwable -> L4c
            java.util.ArrayList r4 = r3.streamBuilder     // Catch: java.lang.Throwable -> L4c
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> L4c
        L22:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> L4c
            if (r5 == 0) goto L10
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> L4c
            androidx.camera.camera2.pipe.CameraStream r5 = (androidx.camera.camera2.pipe.CameraStream) r5     // Catch: java.lang.Throwable -> L4c
            java.util.LinkedHashMap r6 = r9.surfaceMap     // Catch: java.lang.Throwable -> L4c
            int r7 = r5.id     // Catch: java.lang.Throwable -> L4c
            androidx.camera.camera2.pipe.StreamId r8 = new androidx.camera.camera2.pipe.StreamId     // Catch: java.lang.Throwable -> L4c
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r6 = r6.get(r8)     // Catch: java.lang.Throwable -> L4c
            android.view.Surface r6 = (android.view.Surface) r6     // Catch: java.lang.Throwable -> L4c
            if (r6 != 0) goto L4e
            androidx.camera.camera2.pipe.MetadataTransform$1 r5 = r3.deferredOutputType     // Catch: java.lang.Throwable -> L4c
            if (r5 == 0) goto L45
            r5 = 1
            goto L46
        L45:
            r5 = 0
        L46:
            if (r5 != 0) goto L22
            kotlin.collections.EmptyMap r1 = kotlin.collections.EmptyMap.INSTANCE     // Catch: java.lang.Throwable -> L4c
        L4a:
            monitor-exit(r0)
            goto L59
        L4c:
            r9 = move-exception
            goto L6c
        L4e:
            int r5 = r5.id     // Catch: java.lang.Throwable -> L4c
            androidx.camera.camera2.pipe.StreamId r7 = new androidx.camera.camera2.pipe.StreamId     // Catch: java.lang.Throwable -> L4c
            r7.<init>(r5)     // Catch: java.lang.Throwable -> L4c
            r1.put(r7, r6)     // Catch: java.lang.Throwable -> L4c
            goto L22
        L59:
            boolean r0 = r1.isEmpty()
            if (r0 == 0) goto L60
            return
        L60:
            javax.inject.Provider r9 = r9.cameraController
            java.lang.Object r9 = r9.get()
            androidx.camera.camera2.pipe.compat.Camera2CameraController r9 = (androidx.camera.camera2.pipe.compat.Camera2CameraController) r9
            r9.updateSurfaceMap(r1)
            return
        L6c:
            monitor-exit(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.graph.SurfaceGraph.maybeUpdateSurfaces$camera_camera2_pipe():void");
    }

    public final void registerAllSurfaces() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    throw new IllegalStateException("Check failed.");
                }
                for (Surface surface : this.surfaceMap.values()) {
                    this.surfaceUsageMap.put(surface, this.surfaceManager.registerSurface$camera_camera2_pipe(surface));
                }
                this.shouldRegisterSurfaces = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void unregisterAllSurfaces() {
        List<AutoCloseable> list;
        synchronized (this.lock) {
            this.shouldRegisterSurfaces = false;
            list = CollectionsKt.toList(this.surfaceUsageMap.values());
            this.surfaceUsageMap.clear();
        }
        for (AutoCloseable autoCloseable : list) {
            if (autoCloseable instanceof AutoCloseable) {
                autoCloseable.close();
            } else if (autoCloseable instanceof ExecutorService) {
                OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m((ExecutorService) autoCloseable);
            } else if (autoCloseable instanceof TypedArray) {
                ((TypedArray) autoCloseable).recycle();
            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable).release();
            } else if (autoCloseable instanceof MediaDrm) {
                ((MediaDrm) autoCloseable).release();
            } else if (autoCloseable instanceof DrmManagerClient) {
                ((DrmManagerClient) autoCloseable).release();
            } else {
                if (!(autoCloseable instanceof ContentProviderClient)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return;
                }
                ((ContentProviderClient) autoCloseable).release();
            }
        }
    }
}
