package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* renamed from: com.google.android.gms.dynamite.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif implements DynamiteModule.Cif {
    @Override // com.google.android.gms.dynamite.DynamiteModule.Cif
    /* renamed from: do */
    public final DynamiteModule.Cif.C0053if mo5611do(Context context, String str, DynamiteModule.Cif.Cdo cdo) {
        DynamiteModule.Cif.C0053if c0053if = new DynamiteModule.Cif.C0053if();
        int mo5612do = cdo.mo5612do(context, str, true);
        c0053if.f10192if = mo5612do;
        if (mo5612do != 0) {
            c0053if.f10191for = 1;
        } else {
            int mo5613if = cdo.mo5613if(context, str);
            c0053if.f10190do = mo5613if;
            if (mo5613if != 0) {
                c0053if.f10191for = -1;
            }
        }
        return c0053if;
    }
}
