package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzfpk {
    final zzfpn zza;
    final boolean zzb;

    private zzfpk(zzfpn zzfpnVar) {
        this.zza = zzfpnVar;
        this.zzb = zzfpnVar != null;
    }

    public static zzfpk zzb(Context context, String str, String str2) {
        zzfpn zzfplVar;
        try {
            try {
                try {
                    IBinder m5610if = DynamiteModule.m5606for(context, DynamiteModule.f10180do, ModuleDescriptor.MODULE_ID).m5610if("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (m5610if == null) {
                        zzfplVar = null;
                    } else {
                        IInterface queryLocalInterface = m5610if.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        zzfplVar = queryLocalInterface instanceof zzfpn ? (zzfpn) queryLocalInterface : new zzfpl(m5610if);
                    }
                    zzfplVar.zze(new BinderC3652rv(context), str, null);
                    return new zzfpk(zzfplVar);
                } catch (Exception e) {
                    throw new zzfom(e);
                }
            } catch (RemoteException | zzfom | NullPointerException | SecurityException unused) {
                return new zzfpk(new zzfpo());
            }
        } catch (Exception e2) {
            throw new zzfom(e2);
        }
    }

    public static zzfpk zzc() {
        return new zzfpk(new zzfpo());
    }

    public final zzfpi zza(byte[] bArr) {
        return new zzfpi(this, bArr, null);
    }
}
