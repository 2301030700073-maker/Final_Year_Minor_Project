package org.maplibre.android.maps.renderer.surfaceview;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.maplibre.android.maps.renderer.MapRenderer;
import org.maplibre.android.maps.renderer.surfaceview.MapLibreVulkanSurfaceView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MapLibreSurfaceView extends SurfaceView implements SurfaceHolder.Callback2 {
    public boolean detached;
    public OnSurfaceViewDetachedListener detachedListener;
    public MapLibreVulkanSurfaceView.VulkanThread renderThread;
    public final ByteString.Companion renderThreadManager;
    public SurfaceViewMapRenderer renderer;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnSurfaceViewDetachedListener {
    }

    public MapLibreSurfaceView(Context context) {
        super(context);
        this.renderThreadManager = new ByteString.Companion(12);
        SurfaceHolder holder = getHolder();
        holder.setFormat(-2);
        holder.addCallback(this);
    }

    public final void finalize() {
        try {
            MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
            if (vulkanThread != null && vulkanThread.isAlive()) {
                this.renderThread.requestExitAndWait();
            }
        } finally {
            super.finalize();
        }
    }

    public MapRenderer.RenderingRefreshMode getRenderingRefreshMode() {
        MapRenderer.RenderingRefreshMode renderingRefreshMode;
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            renderingRefreshMode = vulkanThread.renderMode;
        }
        return renderingRefreshMode;
    }

    @Override // android.view.SurfaceView, android.view.View
    public final void onAttachedToWindow() {
        MapRenderer.RenderingRefreshMode renderingRefreshMode;
        super.onAttachedToWindow();
        if (this.detached && this.renderer != null) {
            MapRenderer.RenderingRefreshMode renderingRefreshMode2 = MapRenderer.RenderingRefreshMode.WHEN_DIRTY;
            MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
            if (vulkanThread != null) {
                synchronized (vulkanThread.renderThreadManager) {
                    renderingRefreshMode = vulkanThread.renderMode;
                }
            } else {
                renderingRefreshMode = renderingRefreshMode2;
            }
            MapLibreVulkanSurfaceView mapLibreVulkanSurfaceView = (MapLibreVulkanSurfaceView) this;
            mapLibreVulkanSurfaceView.renderThread = new MapLibreVulkanSurfaceView.VulkanThread(mapLibreVulkanSurfaceView.viewWeakReference);
            if (renderingRefreshMode != renderingRefreshMode2) {
                this.renderThread.setRenderingRefreshMode(renderingRefreshMode);
            }
            this.renderThread.start();
        }
        this.detached = false;
    }

    @Override // android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        OnSurfaceViewDetachedListener onSurfaceViewDetachedListener = this.detachedListener;
        if (onSurfaceViewDetachedListener != null) {
            ((SurfaceViewMapRenderer) ((ConnectionPool) onSurfaceViewDetachedListener).delegate).nativeReset();
        }
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
        if (vulkanThread != null && vulkanThread.isAlive()) {
            this.renderThread.requestExitAndWait();
        }
        this.detached = true;
        super.onDetachedFromWindow();
    }

    public void setDetachedListener(OnSurfaceViewDetachedListener onSurfaceViewDetachedListener) {
        if (this.detachedListener == null) {
            this.detachedListener = onSurfaceViewDetachedListener;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Detached from window listener has been already set.");
        }
    }

    public void setRenderer(SurfaceViewMapRenderer surfaceViewMapRenderer) {
        if (this.renderThread != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("setRenderer has already been called for this instance.");
            return;
        }
        this.renderer = surfaceViewMapRenderer;
        MapLibreVulkanSurfaceView mapLibreVulkanSurfaceView = (MapLibreVulkanSurfaceView) this;
        mapLibreVulkanSurfaceView.renderThread = new MapLibreVulkanSurfaceView.VulkanThread(mapLibreVulkanSurfaceView.viewWeakReference);
        this.renderThread.start();
    }

    public void setRenderingRefreshMode(MapRenderer.RenderingRefreshMode renderingRefreshMode) {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            vulkanThread.renderMode = renderingRefreshMode;
            vulkanThread.renderThreadManager.notifyAll();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            try {
                vulkanThread.width = i2;
                vulkanThread.height = i3;
                vulkanThread.sizeChanged = true;
                vulkanThread.requestRender = true;
                vulkanThread.renderComplete = false;
                if (Thread.currentThread() == vulkanThread) {
                    return;
                }
                vulkanThread.renderThreadManager.notifyAll();
                while (!vulkanThread.exited && !vulkanThread.paused && !vulkanThread.renderComplete && vulkanThread.readyToDraw()) {
                    try {
                        vulkanThread.renderThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            vulkanThread.hasSurface = true;
            vulkanThread.renderThreadManager.notifyAll();
            while (!vulkanThread.exited && vulkanThread.waitingForSurface) {
                try {
                    vulkanThread.renderThreadManager.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            vulkanThread.hasSurface = false;
            vulkanThread.renderThreadManager.notifyAll();
            while (!vulkanThread.exited && !vulkanThread.waitingForSurface) {
                try {
                    vulkanThread.renderThreadManager.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback2
    public final void surfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, Runnable runnable) {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.renderThread;
        if (vulkanThread != null) {
            synchronized (vulkanThread.renderThreadManager) {
                try {
                    if (Thread.currentThread() == vulkanThread) {
                        return;
                    }
                    vulkanThread.wantRenderNotification = true;
                    vulkanThread.requestRender = true;
                    vulkanThread.renderComplete = false;
                    vulkanThread.finishDrawingRunnable = new Processor$$ExternalSyntheticLambda2(18, vulkanThread.finishDrawingRunnable, runnable);
                    vulkanThread.renderThreadManager.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback2
    public final void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
    }
}
