package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgky implements ServiceConnection {
    final /* synthetic */ zzgle zza;

    /* synthetic */ zzgky(zzgle zzgleVar, byte[] bArr) {
        Objects.requireNonNull(zzgleVar);
        this.zza = zzgleVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        zzgle zzgleVar = this.zza;
        zzgleVar.zzi().zza("LmdServiceConnectionManager.onServiceConnected(%s)", componentName);
        zzgleVar.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgkx
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                IInterface zzm;
                zzgji zzb = zzgjh.zzb(iBinder);
                zzgky zzgkyVar = zzgky.this;
                zzgle zzgleVar2 = zzgkyVar.zza;
                zzgleVar2.zzn(zzb);
                zzgleVar2.zzi().zza("linkToDeath", new Object[0]);
                try {
                    zzm = zzgleVar2.zzm();
                } catch (RemoteException e) {
                    zzgkyVar.zza.zzi().zzd(e, "linkToDeath failed", new Object[0]);
                }
                if (zzm == null) {
                    throw null;
                }
                IInterface iInterface = zzm;
                zzm.asBinder().linkToDeath(zzgleVar2.zzl(), 0);
                zzgle zzgleVar3 = zzgkyVar.zza;
                zzgleVar3.zzk(false);
                synchronized (zzgleVar3.zzj()) {
                    Iterator it = zzgleVar3.zzj().iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                    zzgleVar3.zzj().clear();
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzgle zzgleVar = this.zza;
        zzgleVar.zzi().zza("LmdServiceConnectionManager.onServiceDisconnected(%s)", componentName);
        zzgleVar.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgkw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzgle zzgleVar2 = zzgky.this.zza;
                zzgleVar2.zzi().zza("unlinkToDeath", new Object[0]);
                IInterface zzm = zzgleVar2.zzm();
                zzm.getClass();
                zzm.asBinder().unlinkToDeath(zzgleVar2.zzl(), 0);
                zzgleVar2.zzn(null);
                zzgleVar2.zzk(false);
            }
        });
    }
}
