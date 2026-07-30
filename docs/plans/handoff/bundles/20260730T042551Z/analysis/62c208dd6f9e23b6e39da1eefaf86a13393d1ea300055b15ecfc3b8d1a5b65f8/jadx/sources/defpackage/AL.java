package defpackage;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;

/* loaded from: classes.dex */
public class AL extends C4092zL {

    /* renamed from: goto, reason: not valid java name */
    public static boolean f75goto = true;

    /* renamed from: AL$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m71do(View view, int i) {
            view.setTransitionVisibility(i);
        }
    }

    @Override // defpackage.C3974xL
    @SuppressLint({"NewApi"})
    /* renamed from: new, reason: not valid java name */
    public void mo70new(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.mo70new(view, i);
        } else if (f75goto) {
            try {
                Cdo.m71do(view, i);
            } catch (NoSuchMethodError unused) {
                f75goto = false;
            }
        }
    }
}
