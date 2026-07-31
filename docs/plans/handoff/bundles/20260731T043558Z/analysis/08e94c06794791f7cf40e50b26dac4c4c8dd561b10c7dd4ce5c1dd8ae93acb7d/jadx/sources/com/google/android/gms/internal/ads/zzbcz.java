package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbcz implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzbdb zza;

    zzbcz(zzbdb zzbdbVar) {
        Objects.requireNonNull(zzbdbVar);
        this.zza = zzbdbVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbdb zzbdbVar = this.zza;
        synchronized (zzbdbVar.zzh()) {
            try {
                if (zzbdbVar.zzi() != null) {
                    zzbdbVar.zzk(zzbdbVar.zzi().zzq());
                }
            } catch (DeadObjectException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to obtain a cache service instance.", e);
                this.zza.zzg();
            }
            this.zza.zzh().notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzbdb zzbdbVar = this.zza;
        synchronized (zzbdbVar.zzh()) {
            zzbdbVar.zzk(null);
            zzbdbVar.zzh().notifyAll();
        }
    }
}
