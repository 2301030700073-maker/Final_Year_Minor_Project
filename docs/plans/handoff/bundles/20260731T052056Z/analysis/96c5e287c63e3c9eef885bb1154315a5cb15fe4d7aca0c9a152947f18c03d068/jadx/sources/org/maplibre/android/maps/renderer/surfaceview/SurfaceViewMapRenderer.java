package org.maplibre.android.maps.renderer.surfaceview;

import android.content.Context;
import android.view.View;
import okhttp3.ConnectionPool;
import org.maplibre.android.maps.renderer.MapRenderer;
import org.maplibre.android.maps.renderer.surfaceview.MapLibreVulkanSurfaceView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SurfaceViewMapRenderer extends MapRenderer {
    public final MapLibreVulkanSurfaceView surfaceView;

    public SurfaceViewMapRenderer(Context context, MapLibreVulkanSurfaceView mapLibreVulkanSurfaceView, String str) {
        super(context, str);
        this.surfaceView = mapLibreVulkanSurfaceView;
        mapLibreVulkanSurfaceView.setDetachedListener(new ConnectionPool(19, this));
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final MapRenderer.RenderingRefreshMode getRenderingRefreshMode() {
        return this.surfaceView.getRenderingRefreshMode();
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final View getView() {
        return this.surfaceView;
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final void onStart() {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.surfaceView.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            vulkanThread.requestPaused = false;
            vulkanThread.requestRender = true;
            vulkanThread.renderComplete = false;
            vulkanThread.renderThreadManager.notifyAll();
            while (!vulkanThread.exited && vulkanThread.paused && !vulkanThread.renderComplete) {
                try {
                    vulkanThread.renderThreadManager.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final void onStop() {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.surfaceView.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            vulkanThread.requestPaused = true;
            vulkanThread.renderThreadManager.notifyAll();
            while (!vulkanThread.exited && !vulkanThread.paused) {
                try {
                    vulkanThread.renderThreadManager.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRendererScheduler
    public final void queueEvent(Runnable runnable) {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.surfaceView.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            vulkanThread.eventQueue.add(runnable);
            vulkanThread.renderThreadManager.notifyAll();
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRendererScheduler
    public final void requestRender() {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.surfaceView.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            vulkanThread.requestRender = true;
            vulkanThread.renderThreadManager.notifyAll();
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final void setRenderingRefreshMode(MapRenderer.RenderingRefreshMode renderingRefreshMode) {
        this.surfaceView.setRenderingRefreshMode(renderingRefreshMode);
    }

    @Override // org.maplibre.android.maps.renderer.MapRendererScheduler
    public final void waitForEmpty() {
        MapLibreVulkanSurfaceView.VulkanThread vulkanThread = this.surfaceView.renderThread;
        synchronized (vulkanThread.renderThreadManager) {
            while (!vulkanThread.eventQueue.isEmpty()) {
                try {
                    vulkanThread.renderThreadManager.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }
}
