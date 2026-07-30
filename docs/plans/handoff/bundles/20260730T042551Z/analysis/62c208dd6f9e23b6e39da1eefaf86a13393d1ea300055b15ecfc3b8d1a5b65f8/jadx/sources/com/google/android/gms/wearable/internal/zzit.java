package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.List;

@VisibleForTesting
/* loaded from: classes3.dex */
public final class zzit extends zzez {
    private ListenerHolder zza;
    private ListenerHolder zzb;
    private ListenerHolder zzc;
    private ListenerHolder zzd;
    private ListenerHolder zze;
    private final IntentFilter[] zzf;
    private final String zzg;

    private zzit(IntentFilter[] intentFilterArr, String str) {
        this.zzf = (IntentFilter[]) Preconditions.checkNotNull(intentFilterArr);
        this.zzg = str;
    }

    public static zzit zzk(ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        zzit zzitVar = new zzit(intentFilterArr, null);
        zzitVar.zze = (ListenerHolder) Preconditions.checkNotNull(listenerHolder);
        return zzitVar;
    }

    public static zzit zzm(ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        zzit zzitVar = new zzit(intentFilterArr, null);
        zzitVar.zzd = (ListenerHolder) Preconditions.checkNotNull(listenerHolder);
        return zzitVar;
    }

    public static zzit zzn(ListenerHolder listenerHolder, String str, IntentFilter[] intentFilterArr) {
        zzit zzitVar = new zzit(intentFilterArr, (String) Preconditions.checkNotNull(str));
        zzitVar.zzd = (ListenerHolder) Preconditions.checkNotNull(listenerHolder);
        return zzitVar;
    }

    public static zzit zzo(ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        zzit zzitVar = new zzit(intentFilterArr, null);
        zzitVar.zza = (ListenerHolder) Preconditions.checkNotNull(listenerHolder);
        return zzitVar;
    }

    public static zzit zzp(ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        zzit zzitVar = new zzit(intentFilterArr, null);
        zzitVar.zzb = (ListenerHolder) Preconditions.checkNotNull(listenerHolder);
        return zzitVar;
    }

    public static zzit zzq(ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        zzit zzitVar = new zzit(intentFilterArr, null);
        zzitVar.zzc = (ListenerHolder) Preconditions.checkNotNull(listenerHolder);
        return zzitVar;
    }

    private static void zzw(ListenerHolder listenerHolder) {
        if (listenerHolder != null) {
            listenerHolder.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzx(zzev zzevVar, boolean z, byte[] bArr) {
        try {
            zzevVar.zzd(z, bArr);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzb(zzbf zzbfVar) {
        ListenerHolder listenerHolder = this.zzd;
        if (listenerHolder != null) {
            listenerHolder.notifyListener(new zzis(zzbfVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzc(zzao zzaoVar) {
        ListenerHolder listenerHolder = this.zze;
        if (listenerHolder != null) {
            listenerHolder.notifyListener(new zzin(zzaoVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzd(List list) {
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zze(DataHolder dataHolder) {
        ListenerHolder listenerHolder = this.zza;
        if (listenerHolder != null) {
            listenerHolder.notifyListener(new zzio(dataHolder));
        } else {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzf(zzi zziVar) {
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzg(zzfx zzfxVar) {
        ListenerHolder listenerHolder = this.zzb;
        if (listenerHolder != null) {
            listenerHolder.notifyListener(new zzip(zzfxVar));
        }
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzh(zzl zzlVar) {
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzi(zzgm zzgmVar) {
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzj(zzgm zzgmVar) {
    }

    @Override // com.google.android.gms.wearable.internal.zzfa
    public final void zzl(zzfx zzfxVar, zzev zzevVar) {
        ListenerHolder listenerHolder = this.zzc;
        if (listenerHolder != null) {
            listenerHolder.notifyListener(new zzir(zzfxVar, zzevVar, null));
        }
    }

    public final String zzr() {
        return this.zzg;
    }

    public final void zzs() {
        zzw(this.zza);
        this.zza = null;
        zzw(this.zzb);
        this.zzb = null;
        zzw(this.zzc);
        this.zzc = null;
        zzw(this.zzd);
        this.zzd = null;
        zzw(this.zze);
        this.zze = null;
    }

    public final IntentFilter[] zzt() {
        return this.zzf;
    }
}
