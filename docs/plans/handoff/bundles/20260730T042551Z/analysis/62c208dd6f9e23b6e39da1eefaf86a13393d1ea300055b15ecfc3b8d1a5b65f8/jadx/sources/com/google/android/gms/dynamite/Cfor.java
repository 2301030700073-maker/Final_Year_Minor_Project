package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* renamed from: com.google.android.gms.dynamite.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements DynamiteModule.Cif {
    @Override // com.google.android.gms.dynamite.DynamiteModule.Cif
    /* renamed from: do */
    public final DynamiteModule.Cif.C0053if mo5611do(Context context, String str, DynamiteModule.Cif.Cdo cdo) {
        DynamiteModule.Cif.C0053if c0053if = new DynamiteModule.Cif.C0053if();
        c0053if.f10190do = cdo.mo5613if(context, str);
        int i = 1;
        int mo5612do = cdo.mo5612do(context, str, true);
        c0053if.f10192if = mo5612do;
        int i2 = c0053if.f10190do;
        if (i2 == 0) {
            i2 = 0;
            if (mo5612do == 0) {
                i = 0;
                c0053if.f10191for = i;
                return c0053if;
            }
        }
        if (i2 >= mo5612do) {
            i = -1;
        }
        c0053if.f10191for = i;
        return c0053if;
    }
}
