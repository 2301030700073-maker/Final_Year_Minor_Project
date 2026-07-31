package com.google.android.exoplayer2.util;

import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public interface GlObjectsProvider {

    @Deprecated
    public static final GlObjectsProvider DEFAULT = new GlObjectsProvider() { // from class: com.google.android.exoplayer2.util.GlObjectsProvider.1
        @Override // com.google.android.exoplayer2.util.GlObjectsProvider
        public GlTextureInfo createBuffersForTexture(int i, int i2, int i3) {
            return new GlTextureInfo(i, GlUtil.createFboForTexture(i), -1, i2, i3);
        }

        @Override // com.google.android.exoplayer2.util.GlObjectsProvider
        public EGLContext createEglContext(EGLDisplay eGLDisplay, int i, int[] iArr) {
            return GlUtil.createEglContext(EGL14.EGL_NO_CONTEXT, eGLDisplay, i, iArr);
        }

        @Override // com.google.android.exoplayer2.util.GlObjectsProvider
        public EGLSurface createEglSurface(EGLDisplay eGLDisplay, Object obj, int i, boolean z) {
            return GlUtil.createEglSurface(eGLDisplay, obj, i, z);
        }

        @Override // com.google.android.exoplayer2.util.GlObjectsProvider
        public EGLSurface createFocusedPlaceholderEglSurface(EGLContext eGLContext, EGLDisplay eGLDisplay, int[] iArr) {
            return GlUtil.createFocusedPlaceholderEglSurface(eGLContext, eGLDisplay, iArr);
        }
    };

    GlTextureInfo createBuffersForTexture(int i, int i2, int i3);

    EGLContext createEglContext(EGLDisplay eGLDisplay, int i, int[] iArr);

    EGLSurface createEglSurface(EGLDisplay eGLDisplay, Object obj, int i, boolean z);

    EGLSurface createFocusedPlaceholderEglSurface(EGLContext eGLContext, EGLDisplay eGLDisplay, int[] iArr);
}
