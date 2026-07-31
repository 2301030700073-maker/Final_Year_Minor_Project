package com.google.android.gms.internal.ads;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Build;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdk {
    public static boolean zza(Context context) throws zzdj {
        if (Build.VERSION.SDK_INT < 26 && ("samsung".equals(Build.MANUFACTURER) || "XT1650".equals(Build.MODEL))) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            return zzg("EGL_EXT_protected_content");
        }
        return false;
    }

    public static boolean zzb() throws zzdj {
        return zzg("EGL_KHR_surfaceless_context");
    }

    public static boolean zzc(int i) throws zzdj {
        if (i == 6) {
            return zzd();
        }
        if (i == 7) {
            return zzg("EGL_EXT_gl_colorspace_bt2020_hlg");
        }
        return true;
    }

    public static boolean zzd() throws zzdj {
        return Build.VERSION.SDK_INT >= 33 && zzg("EGL_EXT_gl_colorspace_bt2020_pq");
    }

    public static void zze() throws zzdj {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            }
            if (z) {
                sb.append('\n');
            }
            String gluErrorString = GLU.gluErrorString(glGetError);
            if (gluErrorString == null) {
                String hexString = Integer.toHexString(glGetError);
                String.valueOf(hexString);
                gluErrorString = "error code: 0x".concat(String.valueOf(hexString));
            }
            sb.append("glError: ");
            sb.append(gluErrorString);
            z = true;
        }
        if (z) {
            throw new zzdj(sb.toString());
        }
    }

    public static void zzf(boolean z, String str) throws zzdj {
        if (!z) {
            throw new zzdj(str);
        }
    }

    private static boolean zzg(String str) throws zzdj {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        zzf(!eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY), "No EGL display.");
        zzf(EGL14.eglInitialize(eglGetDisplay, new int[1], 0, new int[1], 0), "Error in eglInitialize.");
        zze();
        String eglQueryString = EGL14.eglQueryString(eglGetDisplay, 12373);
        return eglQueryString != null && eglQueryString.contains(str);
    }
}
