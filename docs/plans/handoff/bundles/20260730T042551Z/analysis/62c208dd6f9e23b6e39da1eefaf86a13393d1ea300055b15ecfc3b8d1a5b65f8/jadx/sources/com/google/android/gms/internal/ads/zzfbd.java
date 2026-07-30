package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* loaded from: classes.dex */
final class zzfbd implements OnAdMetadataChangedListener {
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzdo zza;
    final /* synthetic */ zzfbf zzb;

    public zzfbd(zzfbf zzfbfVar, com.google.android.gms.ads.internal.client.zzdo zzdoVar) {
        this.zza = zzdoVar;
        this.zzb = zzfbfVar;
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        zzdoa zzdoaVar;
        zzdoaVar = this.zzb.zzi;
        if (zzdoaVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
