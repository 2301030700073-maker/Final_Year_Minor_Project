package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbww;

/* loaded from: classes.dex */
public final /* synthetic */ class zzfp implements Runnable {
    public final /* synthetic */ zzbww zza;

    @Override // java.lang.Runnable
    public final void run() {
        zzbww zzbwwVar = this.zza;
        if (zzbwwVar != null) {
            try {
                zzbwwVar.zze(1);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
