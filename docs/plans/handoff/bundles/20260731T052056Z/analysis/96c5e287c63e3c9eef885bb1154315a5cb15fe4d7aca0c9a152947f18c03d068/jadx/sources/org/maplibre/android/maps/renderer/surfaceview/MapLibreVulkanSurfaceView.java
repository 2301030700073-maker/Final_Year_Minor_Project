package org.maplibre.android.maps.renderer.surfaceview;

import android.content.Context;
import android.util.Log;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import okio.ByteString;
import org.maplibre.android.maps.renderer.MapRenderer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapLibreVulkanSurfaceView extends MapLibreSurfaceView {
    public final WeakReference viewWeakReference;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class VulkanThread extends Thread {
        public final ArrayList eventQueue;
        public boolean exited;
        public Processor$$ExternalSyntheticLambda2 finishDrawingRunnable;
        public boolean graphicsSurfaceCreated;
        public boolean hasSurface;
        public int height;
        public final WeakReference mSurfaceViewWeakRef;
        public boolean paused;
        public boolean renderComplete;
        public MapRenderer.RenderingRefreshMode renderMode;
        public final ByteString.Companion renderThreadManager;
        public boolean requestPaused;
        public boolean requestRender;
        public boolean shouldExit;
        public boolean sizeChanged;
        public boolean waitingForSurface;
        public boolean wantRenderNotification;
        public int width;

        public VulkanThread(WeakReference weakReference) {
            ByteString.Companion companion = ((MapLibreVulkanSurfaceView) weakReference.get()).renderThreadManager;
            this.eventQueue = new ArrayList();
            this.sizeChanged = true;
            this.finishDrawingRunnable = null;
            this.width = 0;
            this.height = 0;
            this.requestRender = true;
            this.renderMode = MapRenderer.RenderingRefreshMode.WHEN_DIRTY;
            this.wantRenderNotification = false;
            this.renderThreadManager = companion;
            this.mSurfaceViewWeakRef = weakReference;
        }

        public final void guardedRun() {
            MapLibreVulkanSurfaceView mapLibreVulkanSurfaceView;
            MapLibreVulkanSurfaceView mapLibreVulkanSurfaceView2;
            MapLibreVulkanSurfaceView mapLibreVulkanSurfaceView3;
            this.wantRenderNotification = false;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            int i = 0;
            int i2 = 0;
            Processor$$ExternalSyntheticLambda2 processor$$ExternalSyntheticLambda2 = null;
            Runnable runnable = null;
            while (true) {
                synchronized (this.renderThreadManager) {
                    while (!this.shouldExit) {
                        try {
                            if (this.eventQueue.isEmpty()) {
                                boolean z6 = this.paused;
                                boolean z7 = this.requestPaused;
                                if (z6 != z7) {
                                    this.paused = z7;
                                    this.renderThreadManager.notifyAll();
                                }
                                if (!this.hasSurface && !this.waitingForSurface) {
                                    if (((MapLibreVulkanSurfaceView) this.mSurfaceViewWeakRef.get()) != null) {
                                        this.graphicsSurfaceCreated = false;
                                        z4 = true;
                                    }
                                    this.waitingForSurface = true;
                                    this.renderThreadManager.notifyAll();
                                }
                                if (this.hasSurface && this.waitingForSurface) {
                                    if (((MapLibreVulkanSurfaceView) this.mSurfaceViewWeakRef.get()) != null) {
                                        this.graphicsSurfaceCreated = true;
                                        z3 = true;
                                    }
                                    this.waitingForSurface = false;
                                    this.renderThreadManager.notifyAll();
                                }
                                if (z) {
                                    this.wantRenderNotification = false;
                                    this.renderComplete = true;
                                    this.renderThreadManager.notifyAll();
                                    z = false;
                                }
                                Processor$$ExternalSyntheticLambda2 processor$$ExternalSyntheticLambda22 = this.finishDrawingRunnable;
                                if (processor$$ExternalSyntheticLambda22 != null) {
                                    this.finishDrawingRunnable = null;
                                    processor$$ExternalSyntheticLambda2 = processor$$ExternalSyntheticLambda22;
                                }
                                if (readyToDraw() && this.graphicsSurfaceCreated) {
                                    if (this.sizeChanged) {
                                        i = this.width;
                                        i2 = this.height;
                                        this.wantRenderNotification = true;
                                        this.sizeChanged = false;
                                        z2 = true;
                                    }
                                    this.requestRender = false;
                                    this.renderThreadManager.notifyAll();
                                    if (this.wantRenderNotification) {
                                        z5 = true;
                                    }
                                } else {
                                    if (processor$$ExternalSyntheticLambda2 != null) {
                                        Log.w("MapLibreSurfaceView", "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished.");
                                        processor$$ExternalSyntheticLambda2.run();
                                        processor$$ExternalSyntheticLambda2 = null;
                                    }
                                    this.renderThreadManager.wait();
                                }
                            } else {
                                runnable = (Runnable) this.eventQueue.remove(0);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                }
                if (runnable != null) {
                    runnable.run();
                    runnable = null;
                } else if (!z4 || (mapLibreVulkanSurfaceView3 = (MapLibreVulkanSurfaceView) this.mSurfaceViewWeakRef.get()) == null) {
                    if (z3 && (mapLibreVulkanSurfaceView2 = (MapLibreVulkanSurfaceView) this.mSurfaceViewWeakRef.get()) != null) {
                        mapLibreVulkanSurfaceView2.renderer.onSurfaceCreated(mapLibreVulkanSurfaceView2.getHolder().getSurface());
                        z3 = false;
                    }
                    if (z2 && (mapLibreVulkanSurfaceView = (MapLibreVulkanSurfaceView) this.mSurfaceViewWeakRef.get()) != null) {
                        mapLibreVulkanSurfaceView.renderer.onSurfaceChanged(i, i2);
                        z2 = false;
                    }
                    MapLibreVulkanSurfaceView mapLibreVulkanSurfaceView4 = (MapLibreVulkanSurfaceView) this.mSurfaceViewWeakRef.get();
                    if (mapLibreVulkanSurfaceView4 != null) {
                        mapLibreVulkanSurfaceView4.renderer.onDrawFrame();
                        if (processor$$ExternalSyntheticLambda2 != null) {
                            processor$$ExternalSyntheticLambda2.run();
                            processor$$ExternalSyntheticLambda2 = null;
                        }
                    }
                    if (z5) {
                        z5 = false;
                        z = true;
                    }
                } else {
                    mapLibreVulkanSurfaceView3.renderer.onSurfaceDestroyed();
                    z4 = false;
                }
            }
        }

        public final boolean readyToDraw() {
            if (this.paused || !this.hasSurface || this.width <= 0 || this.height <= 0) {
                return false;
            }
            return this.requestRender || this.renderMode == MapRenderer.RenderingRefreshMode.CONTINUOUS;
        }

        public final void requestExitAndWait() {
            synchronized (this.renderThreadManager) {
                this.shouldExit = true;
                this.renderThreadManager.notifyAll();
                while (!this.exited && isAlive()) {
                    try {
                        this.renderThreadManager.wait(100L);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            ByteString.Companion companion = this.renderThreadManager;
            setName("RenderThread " + getId());
            try {
                guardedRun();
            } catch (InterruptedException unused) {
            } finally {
                companion.threadExiting(this);
            }
        }

        public final void setRenderingRefreshMode(MapRenderer.RenderingRefreshMode renderingRefreshMode) {
            synchronized (this.renderThreadManager) {
                this.renderMode = renderingRefreshMode;
                this.renderThreadManager.notifyAll();
            }
        }
    }

    public MapLibreVulkanSurfaceView(Context context) {
        super(context);
        this.viewWeakReference = new WeakReference(this);
    }
}
