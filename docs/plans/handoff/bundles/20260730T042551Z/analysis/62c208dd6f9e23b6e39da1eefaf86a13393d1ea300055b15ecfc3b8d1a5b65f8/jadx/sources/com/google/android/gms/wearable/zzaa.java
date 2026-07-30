package com.google.android.gms.wearable;

import android.content.ComponentName;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.wearable.internal.zzao;
import com.google.android.gms.wearable.internal.zzbf;
import com.google.android.gms.wearable.internal.zzev;
import com.google.android.gms.wearable.internal.zzez;
import com.google.android.gms.wearable.internal.zzfx;
import com.google.android.gms.wearable.internal.zzgm;
import com.google.android.gms.wearable.internal.zziu;
import defpackage.FG;
import defpackage.InterfaceC0399Nv;
import java.util.List;

/* loaded from: classes3.dex */
final class zzaa extends zzez {
    final /* synthetic */ WearableListenerService zza;
    private volatile int zzb = -1;

    public /* synthetic */ zzaa(WearableListenerService wearableListenerService, zzz zzzVar) {
        this.zza = wearableListenerService;
    }

    public static final /* synthetic */ void zzm(zzev zzevVar, FG fg) {
        if (fg.mo604throw()) {
            zzo(zzevVar, true, (byte[]) fg.mo592class());
        } else {
            fg.mo591catch();
            zzo(zzevVar, false, null);
        }
    }

    private final boolean zzn(Runnable runnable, String str, Object obj) {
        Object obj2;
        boolean z;
        zzn zznVar;
        ComponentName componentName;
        if (Log.isLoggable("WearableLS", 3)) {
            componentName = this.zza.zza;
            String.format("%s: %s %s", str, componentName.toString(), obj);
        }
        int callingUid = Binder.getCallingUid();
        if (callingUid != this.zzb) {
            if (zziu.zza(this.zza).zzb("com.google.android.wearable.app.cn") && UidVerifier.uidHasPackageName(this.zza, callingUid, "com.google.android.wearable.app.cn")) {
                this.zzb = callingUid;
            } else {
                if (!UidVerifier.isGooglePlayServicesUid(this.zza, callingUid)) {
                    return false;
                }
                this.zzb = callingUid;
            }
        }
        obj2 = this.zza.zzf;
        synchronized (obj2) {
            WearableListenerService wearableListenerService = this.zza;
            z = wearableListenerService.zzg;
            if (z) {
                return false;
            }
            zznVar = wearableListenerService.zzb;
            zznVar.post(runnable);
            return true;
        }
    }

    private static final void zzo(zzev zzevVar, boolean z, byte[] bArr) {
        try {
            zzevVar.zzd(z, bArr);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzb(zzbf zzbfVar) {
        zzn(new zzy(this, zzbfVar), "onChannelEvent", zzbfVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzc(zzao zzaoVar) {
        zzn(new zzv(this, zzaoVar), "onConnectedCapabilityChanged", zzaoVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzd(List list) {
        zzn(new zzu(this, list), "onConnectedNodes", list);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zze(DataHolder dataHolder) {
        try {
            if (zzn(new zzq(this, dataHolder), "onDataItemChanged", String.valueOf(dataHolder) + ", rows=" + dataHolder.getCount())) {
            }
        } finally {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzf(com.google.android.gms.wearable.internal.zzi zziVar) {
        zzn(new zzx(this, zziVar), "onEntityUpdate", zziVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzg(zzfx zzfxVar) {
        zzn(new zzr(this, zzfxVar), "onMessageReceived", zzfxVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzh(com.google.android.gms.wearable.internal.zzl zzlVar) {
        zzn(new zzw(this, zzlVar), "onNotificationReceived", zzlVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzi(zzgm zzgmVar) {
        zzn(new zzs(this, zzgmVar), "onPeerConnected", zzgmVar);
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzj(zzgm zzgmVar) {
        zzn(new zzt(this, zzgmVar), "onPeerDisconnected", zzgmVar);
    }

    public final /* synthetic */ void zzk(zzfx zzfxVar, final zzev zzevVar) {
        FG<byte[]> onRequest = this.zza.onRequest(zzfxVar.getSourceNodeId(), zzfxVar.getPath(), zzfxVar.getData());
        final byte[] bArr = null;
        if (onRequest == null) {
            zzo(zzevVar, false, null);
        } else {
            onRequest.mo599if(new InterfaceC0399Nv(zzevVar, bArr) { // from class: com.google.android.gms.wearable.zzo
                public final /* synthetic */ zzev zzb;

                @Override // defpackage.InterfaceC0399Nv
                public final void onComplete(FG fg) {
                    zzaa.zzm(this.zzb, fg);
                }
            });
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzl(final zzfx zzfxVar, final zzev zzevVar) {
        final byte[] bArr = null;
        zzn(new Runnable(zzfxVar, zzevVar, bArr) { // from class: com.google.android.gms.wearable.zzp
            public final /* synthetic */ zzfx zzb;
            public final /* synthetic */ zzev zzc;

            @Override // java.lang.Runnable
            public final void run() {
                zzaa.this.zzk(this.zzb, this.zzc);
            }
        }, "onRequestReceived", zzfxVar);
    }
}
