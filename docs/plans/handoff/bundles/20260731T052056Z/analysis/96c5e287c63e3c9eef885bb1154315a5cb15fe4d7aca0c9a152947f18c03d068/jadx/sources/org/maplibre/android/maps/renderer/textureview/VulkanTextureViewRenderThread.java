package org.maplibre.android.maps.renderer.textureview;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import java.util.LinkedList;
import org.maplibre.android.maps.renderer.MapRendererFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class VulkanTextureViewRenderThread extends Thread implements TextureView.SurfaceTextureListener {
    public boolean destroySurface;
    public boolean exited;
    public boolean hasNativeSurface;
    public int height;
    public final MapRendererFactory.AnonymousClass1 mapRenderer;
    public boolean paused;
    public boolean requestRender;
    public boolean shouldExit;
    public boolean sizeChanged;
    public Surface surface;
    public SurfaceTexture surfaceTexture;
    public int width;
    public final Object lock = new Object();
    public final LinkedList eventQueue = new LinkedList();

    public VulkanTextureViewRenderThread(TextureView textureView, MapRendererFactory.AnonymousClass1 anonymousClass1) {
        textureView.setOpaque(!anonymousClass1.translucentSurface);
        textureView.setSurfaceTextureListener(this);
        this.mapRenderer = anonymousClass1;
    }

    public final void cleanup() {
        if (this.surface != null) {
            this.mapRenderer.onSurfaceDestroyed();
            this.surface.release();
            this.surface = null;
        }
        this.hasNativeSurface = false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        synchronized (this.lock) {
            this.surfaceTexture = surfaceTexture;
            this.width = i;
            this.height = i2;
            this.requestRender = true;
            this.lock.notifyAll();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        synchronized (this.lock) {
            this.surfaceTexture = null;
            this.destroySurface = true;
            this.requestRender = false;
            this.lock.notifyAll();
            while (this.hasNativeSurface && !this.exited) {
                try {
                    this.lock.wait();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        synchronized (this.lock) {
            this.width = i;
            this.height = i2;
            this.sizeChanged = true;
            this.requestRender = true;
            this.lock.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int i;
        Runnable runnable;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        while (true) {
            try {
                synchronized (this.lock) {
                    while (!this.shouldExit) {
                        i = -1;
                        if (!this.eventQueue.isEmpty()) {
                            runnable = (Runnable) this.eventQueue.remove(0);
                            i2 = -1;
                            z = false;
                            z2 = false;
                            z3 = false;
                        } else if (this.destroySurface) {
                            Surface surface = this.surface;
                            if (surface != null) {
                                surface.release();
                                this.surface = null;
                            }
                            this.destroySurface = false;
                            z3 = true;
                            z = false;
                            z2 = false;
                            runnable = null;
                            i2 = -1;
                        } else if (this.surfaceTexture == null || this.paused || !this.requestRender) {
                            this.lock.wait();
                        } else {
                            i = this.width;
                            int i3 = this.height;
                            if (this.surface == null) {
                                this.surface = new Surface(this.surfaceTexture);
                                this.hasNativeSurface = true;
                                z = true;
                            } else {
                                z = false;
                            }
                            if (this.sizeChanged) {
                                this.sizeChanged = false;
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            this.requestRender = false;
                            i2 = i3;
                            runnable = null;
                            z3 = false;
                        }
                    }
                    synchronized (this.lock) {
                        cleanup();
                        this.exited = true;
                        this.lock.notifyAll();
                    }
                    return;
                }
                if (runnable != null) {
                    runnable.run();
                } else if (z) {
                    this.mapRenderer.onSurfaceCreated(this.surface);
                    this.mapRenderer.onSurfaceChanged(i, i2);
                } else if (z3) {
                    this.mapRenderer.onSurfaceDestroyed();
                    synchronized (this.lock) {
                        this.hasNativeSurface = false;
                        this.lock.notifyAll();
                    }
                } else if (z2) {
                    this.mapRenderer.onSurfaceChanged(i, i2);
                } else if (this.surface != null) {
                    this.mapRenderer.onDrawFrame();
                }
            } catch (InterruptedException unused) {
                synchronized (this.lock) {
                    cleanup();
                    this.exited = true;
                    this.lock.notifyAll();
                    return;
                }
            } catch (Throwable th) {
                synchronized (this.lock) {
                    cleanup();
                    this.exited = true;
                    this.lock.notifyAll();
                    throw th;
                }
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
