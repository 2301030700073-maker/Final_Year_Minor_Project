package org.maplibre.android.maps.renderer;

import android.content.Context;
import android.view.Surface;
import android.view.TextureView;
import org.maplibre.android.maps.renderer.surfaceview.MapLibreVulkanSurfaceView;
import org.maplibre.android.maps.renderer.surfaceview.SurfaceViewMapRenderer;
import org.maplibre.android.maps.renderer.textureview.TextureViewMapRenderer;
import org.maplibre.android.maps.renderer.textureview.VulkanTextureViewRenderThread;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MapRendererFactory {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.maps.renderer.MapRendererFactory$1, reason: invalid class name */
    public final class AnonymousClass1 extends TextureViewMapRenderer {
        public final /* synthetic */ Runnable val$initCallback;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, TextureView textureView, String str, boolean z, Runnable runnable) {
            super(context, str);
            this.val$initCallback = runnable;
            this.textureView = textureView;
            this.translucentSurface = z;
        }

        @Override // org.maplibre.android.maps.renderer.MapRenderer
        public final void onSurfaceCreated(Surface surface) {
            this.val$initCallback.run();
            super.onSurfaceCreated(surface);
        }
    }

    public static SurfaceViewMapRenderer newSurfaceViewMapRenderer(Context context, String str, boolean z, final Runnable runnable) {
        MapLibreVulkanSurfaceView mapLibreVulkanSurfaceView = new MapLibreVulkanSurfaceView(context);
        mapLibreVulkanSurfaceView.setZOrderMediaOverlay(z);
        return new SurfaceViewMapRenderer(context, mapLibreVulkanSurfaceView, str) { // from class: org.maplibre.android.maps.renderer.MapRendererFactory.2
            {
                this.surfaceView.setRenderer(this);
            }

            @Override // org.maplibre.android.maps.renderer.MapRenderer
            public final void onSurfaceCreated(Surface surface) {
                runnable.run();
                super.onSurfaceCreated(surface);
            }
        };
    }

    public static TextureViewMapRenderer newTextureViewMapRenderer(Context context, TextureView textureView, String str, boolean z, Runnable runnable) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(context, textureView, str, z, runnable);
        VulkanTextureViewRenderThread vulkanTextureViewRenderThread = new VulkanTextureViewRenderThread(textureView, anonymousClass1);
        anonymousClass1.renderThread = vulkanTextureViewRenderThread;
        vulkanTextureViewRenderThread.setName("TextureViewRenderer");
        anonymousClass1.renderThread.start();
        return anonymousClass1;
    }
}
