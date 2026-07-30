package defpackage;

import android.content.ComponentName;
import android.content.Context;

/* renamed from: nw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3418nw {
    static {
        AbstractC0614Xq.m2870try("PackageManagerHelper");
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7624do(Context context, Class<?> cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            Object[] objArr = new Object[2];
            objArr[0] = cls.getName();
            objArr[1] = z ? "enabled" : "disabled";
            String.format("%s %s", objArr);
            m2869for.mo2872do(new Throwable[0]);
        } catch (Exception e) {
            AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
            Object[] objArr2 = new Object[2];
            objArr2[0] = cls.getName();
            objArr2[1] = z ? "enabled" : "disabled";
            String.format("%s could not be %s", objArr2);
            m2869for2.mo2872do(e);
        }
    }
}
