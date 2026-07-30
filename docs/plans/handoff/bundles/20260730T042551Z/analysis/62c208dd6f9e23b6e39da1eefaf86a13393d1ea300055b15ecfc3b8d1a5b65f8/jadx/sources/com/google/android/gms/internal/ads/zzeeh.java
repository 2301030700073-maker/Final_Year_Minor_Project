package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import defpackage.BinderC3652rv;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class zzeeh implements zzedc {
    private final Context zza;
    private final zzcpq zzb;
    private View zzc;
    private zzbpn zzd;

    public zzeeh(Context context, zzcpq zzcpqVar) {
        this.zza = context;
        this.zzb = zzcpqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final /* bridge */ /* synthetic */ Object zza(zzfca zzfcaVar, final zzfbo zzfboVar, final zzecz zzeczVar) {
        final View view;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhJ)).booleanValue() && zzfboVar.zzag) {
            try {
                view = (View) BinderC3652rv.o(this.zzd.zze());
                boolean zzf = this.zzd.zzf();
                if (view == null) {
                    throw new zzfcq(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                if (zzf) {
                    try {
                        view = (View) zzgch.zzn(zzgch.zzh(null), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeee
                            @Override // com.google.android.gms.internal.ads.zzgbo
                            public final InterfaceFutureC3942wq zza(Object obj) {
                                return zzeeh.this.zzc(view, zzfboVar, obj);
                            }
                        }, zzbzw.zzf).get();
                    } catch (InterruptedException | ExecutionException e) {
                        throw new zzfcq(e);
                    }
                }
            } catch (RemoteException e2) {
                throw new zzfcq(e2);
            }
        } else {
            view = this.zzc;
        }
        zzcon zza = this.zzb.zza(new zzcrp(zzfcaVar, zzfboVar, zzeczVar.zza), new zzcot(view, null, new zzcqx() { // from class: com.google.android.gms.internal.ads.zzeed
            @Override // com.google.android.gms.internal.ads.zzcqx
            public final com.google.android.gms.ads.internal.client.zzeb zza() {
                try {
                    return ((zzbrd) zzecz.this.zzb).zze();
                } catch (RemoteException e3) {
                    throw new zzfcq(e3);
                }
            }
        }, (zzfbp) zzfboVar.zzu.get(0)));
        zza.zzg().zza(view);
        ((zzees) zzeczVar.zzc).zzc(zza.zzj());
        return zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedc
    public final void zzb(zzfca zzfcaVar, zzfbo zzfboVar, zzecz zzeczVar) {
        try {
            ((zzbrd) zzeczVar.zzb).zzq(zzfboVar.zzZ);
            zzeeg zzeegVar = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhJ)).booleanValue() && zzfboVar.zzag) {
                ((zzbrd) zzeczVar.zzb).zzk(zzfboVar.zzU, zzfboVar.zzv.toString(), zzfcaVar.zza.zza.zzd, new BinderC3652rv(this.zza), new zzeef(this, zzeczVar, zzeegVar), (zzbpk) zzeczVar.zzc, zzfcaVar.zza.zza.zze);
            } else {
                ((zzbrd) zzeczVar.zzb).zzj(zzfboVar.zzU, zzfboVar.zzv.toString(), zzfcaVar.zza.zza.zzd, new BinderC3652rv(this.zza), new zzeef(this, zzeczVar, zzeegVar), (zzbpk) zzeczVar.zzc, zzfcaVar.zza.zza.zze);
            }
        } catch (RemoteException e) {
            throw new zzfcq(e);
        }
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(View view, zzfbo zzfboVar, Object obj) {
        return zzgch.zzh(zzcql.zza(this.zza, view, zzfboVar));
    }
}
