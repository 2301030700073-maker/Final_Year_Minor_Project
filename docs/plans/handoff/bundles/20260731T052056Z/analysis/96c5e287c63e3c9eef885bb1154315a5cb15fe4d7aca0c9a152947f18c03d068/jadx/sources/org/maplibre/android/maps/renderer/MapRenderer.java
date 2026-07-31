package org.maplibre.android.maps.renderer;

import android.content.Context;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import org.maplibre.android.LibraryLoader;
import org.maplibre.android.log.Logger;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.MapLibreMapOptions;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MapRenderer implements MapRendererScheduler {
    private static final String TAG = "Mbgl-MapRenderer";
    private MapLibreMap.OnFpsChangedListener onFpsChangedListener;
    private long timeElapsed;
    private long nativePtr = 0;
    private double expectedRenderTime = 0.0d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RenderingRefreshMode {
        private static final /* synthetic */ RenderingRefreshMode[] $VALUES;
        public static final RenderingRefreshMode CONTINUOUS;
        public static final RenderingRefreshMode WHEN_DIRTY;

        static {
            RenderingRefreshMode renderingRefreshMode = new RenderingRefreshMode("WHEN_DIRTY", 0);
            WHEN_DIRTY = renderingRefreshMode;
            RenderingRefreshMode renderingRefreshMode2 = new RenderingRefreshMode("CONTINUOUS", 1);
            CONTINUOUS = renderingRefreshMode2;
            $VALUES = new RenderingRefreshMode[]{renderingRefreshMode, renderingRefreshMode2};
        }

        public static RenderingRefreshMode valueOf(String str) {
            return (RenderingRefreshMode) Enum.valueOf(RenderingRefreshMode.class, str);
        }

        public static RenderingRefreshMode[] values() {
            return (RenderingRefreshMode[]) $VALUES.clone();
        }
    }

    static {
        LibraryLoader.load();
    }

    public MapRenderer(Context context, String str) {
        nativeInitialize(this, context.getResources().getDisplayMetrics().density, str);
    }

    public static MapRenderer create(MapLibreMapOptions mapLibreMapOptions, Context context, Runnable runnable) {
        String str = mapLibreMapOptions.localIdeographFontFamilyEnabled ? mapLibreMapOptions.localIdeographFontFamily : null;
        return mapLibreMapOptions.textureMode ? MapRendererFactory.newTextureViewMapRenderer(context, new TextureView(context), str, mapLibreMapOptions.translucentTextureSurface, runnable) : MapRendererFactory.newSurfaceViewMapRenderer(context, str, mapLibreMapOptions.zMediaOverlay, runnable);
    }

    private native void nativeInitialize(MapRenderer mapRenderer, float f, String str);

    private native void nativeOnSurfaceChanged(int i, int i2);

    private native void nativeOnSurfaceCreated(Surface surface);

    private native void nativeOnSurfaceDestroyed();

    private native void nativeRender();

    private native void nativeSetSwapBehaviorFlush(boolean z);

    private void updateFps() {
        long nanoTime = System.nanoTime();
        if (this.timeElapsed > 0) {
            throw null;
        }
        this.timeElapsed = nanoTime;
    }

    public native void finalize();

    public abstract RenderingRefreshMode getRenderingRefreshMode();

    public abstract View getView();

    public native void nativeReset();

    public void onDrawFrame() {
        long nanoTime = System.nanoTime();
        try {
            nativeRender();
        } catch (Error e) {
            Logger.e(TAG, e.getMessage());
        }
        double nanoTime2 = System.nanoTime() - nanoTime;
        double d = this.expectedRenderTime;
        if (nanoTime2 < d) {
            try {
                Thread.sleep((long) ((d - nanoTime2) / 1000000.0d));
            } catch (InterruptedException e2) {
                Logger.e(TAG, e2.getMessage());
            }
        }
    }

    public void onSurfaceChanged(int i, int i2) {
        nativeOnSurfaceChanged(i, i2);
    }

    public void onSurfaceCreated(Surface surface) {
        nativeOnSurfaceCreated(surface);
    }

    public void onSurfaceDestroyed() {
        nativeOnSurfaceDestroyed();
    }

    public void queueEvent(MapRendererRunnable mapRendererRunnable) {
        queueEvent((Runnable) mapRendererRunnable);
    }

    public void setMaximumFps(int i) {
        if (i <= 0) {
            return;
        }
        this.expectedRenderTime = 1.0E9d / i;
    }

    public abstract void setRenderingRefreshMode(RenderingRefreshMode renderingRefreshMode);

    public void setSwapBehaviorFlush(boolean z) {
        nativeSetSwapBehaviorFlush(z);
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    public void setOnFpsChangedListener(MapLibreMap.OnFpsChangedListener onFpsChangedListener) {
    }
}
