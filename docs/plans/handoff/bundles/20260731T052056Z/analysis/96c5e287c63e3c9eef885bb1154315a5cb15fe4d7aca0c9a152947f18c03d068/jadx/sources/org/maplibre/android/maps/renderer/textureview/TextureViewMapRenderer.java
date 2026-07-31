package org.maplibre.android.maps.renderer.textureview;

import android.view.TextureView;
import android.view.View;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.maps.renderer.MapRenderer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TextureViewMapRenderer extends MapRenderer {
    public VulkanTextureViewRenderThread renderThread;
    public TextureView textureView;
    public boolean translucentSurface;

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final MapRenderer.RenderingRefreshMode getRenderingRefreshMode() {
        throw new RuntimeException("getRenderingRefreshMode is not supported for TextureViewMapRenderer. Use SurfaceViewMapRenderer to set the rendering refresh mode.");
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final View getView() {
        return this.textureView;
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final void onDestroy() {
        VulkanTextureViewRenderThread vulkanTextureViewRenderThread = this.renderThread;
        synchronized (vulkanTextureViewRenderThread.lock) {
            vulkanTextureViewRenderThread.shouldExit = true;
            vulkanTextureViewRenderThread.lock.notifyAll();
            while (!vulkanTextureViewRenderThread.exited) {
                try {
                    vulkanTextureViewRenderThread.lock.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final void onStart() {
        VulkanTextureViewRenderThread vulkanTextureViewRenderThread = this.renderThread;
        synchronized (vulkanTextureViewRenderThread.lock) {
            vulkanTextureViewRenderThread.paused = false;
            vulkanTextureViewRenderThread.lock.notifyAll();
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final void onStop() {
        VulkanTextureViewRenderThread vulkanTextureViewRenderThread = this.renderThread;
        synchronized (vulkanTextureViewRenderThread.lock) {
            vulkanTextureViewRenderThread.paused = true;
            vulkanTextureViewRenderThread.lock.notifyAll();
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRendererScheduler
    public final void queueEvent(Runnable runnable) {
        VulkanTextureViewRenderThread vulkanTextureViewRenderThread = this.renderThread;
        if (runnable == null) {
            vulkanTextureViewRenderThread.getClass();
            _UtilJvmKt$$ExternalSyntheticLambda0.m("runnable must not be null");
        } else {
            synchronized (vulkanTextureViewRenderThread.lock) {
                vulkanTextureViewRenderThread.eventQueue.add(runnable);
                vulkanTextureViewRenderThread.lock.notifyAll();
            }
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRendererScheduler
    public final void requestRender() {
        VulkanTextureViewRenderThread vulkanTextureViewRenderThread = this.renderThread;
        synchronized (vulkanTextureViewRenderThread.lock) {
            vulkanTextureViewRenderThread.requestRender = true;
            vulkanTextureViewRenderThread.lock.notifyAll();
        }
    }

    @Override // org.maplibre.android.maps.renderer.MapRenderer
    public final void setRenderingRefreshMode(MapRenderer.RenderingRefreshMode renderingRefreshMode) {
        throw new RuntimeException("setRenderingRefreshMode is not supported for TextureViewMapRenderer. Use SurfaceViewMapRenderer to set the rendering refresh mode.");
    }

    @Override // org.maplibre.android.maps.renderer.MapRendererScheduler
    public final void waitForEmpty() {
        VulkanTextureViewRenderThread vulkanTextureViewRenderThread = this.renderThread;
        synchronized (vulkanTextureViewRenderThread.lock) {
            while (!vulkanTextureViewRenderThread.eventQueue.isEmpty()) {
                try {
                    vulkanTextureViewRenderThread.lock.wait(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }
}
