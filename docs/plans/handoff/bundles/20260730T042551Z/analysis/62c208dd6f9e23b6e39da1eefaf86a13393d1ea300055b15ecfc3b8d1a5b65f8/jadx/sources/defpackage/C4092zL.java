package defpackage;

import android.annotation.SuppressLint;
import android.view.View;

/* renamed from: zL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C4092zL extends C4033yL {

    /* renamed from: else, reason: not valid java name */
    public static boolean f16894else = true;

    /* renamed from: zL$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m8791do(View view, int i, int i2, int i3, int i4) {
            view.setLeftTopRightBottom(i, i2, i3, i4);
        }
    }

    @Override // defpackage.C3974xL
    @SuppressLint({"NewApi"})
    /* renamed from: if */
    public void mo180if(View view, int i, int i2, int i3, int i4) {
        if (f16894else) {
            try {
                Cdo.m8791do(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                f16894else = false;
            }
        }
    }
}
