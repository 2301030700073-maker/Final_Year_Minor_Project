package defpackage;

import android.os.Build;
import android.view.View;
import android.view.Window;

/* renamed from: hM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2865hM {

    /* renamed from: hM$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m6793do(Window window, boolean z) {
            window.setDecorFitsSystemWindows(z);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m6792do(Window window, boolean z) {
        if (Build.VERSION.SDK_INT >= 30) {
            Cdo.m6793do(window, z);
            return;
        }
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z ? systemUiVisibility & (-1793) : systemUiVisibility | 1792);
    }
}
