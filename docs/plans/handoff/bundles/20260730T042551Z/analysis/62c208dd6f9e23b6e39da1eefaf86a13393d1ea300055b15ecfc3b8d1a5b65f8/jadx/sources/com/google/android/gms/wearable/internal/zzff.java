package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.wearable.WearableStatusCodes;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzff {
    private final Map zza = new HashMap();

    public final void zza(zzim zzimVar, BaseImplementation.ResultHolder resultHolder, Object obj, zzit zzitVar) {
        synchronized (this.zza) {
            if (this.zza.get(obj) != null) {
                if (Log.isLoggable("WearableClient", 2)) {
                    String.valueOf(obj);
                }
                resultHolder.setResult(new Status(WearableStatusCodes.DUPLICATE_LISTENER));
                return;
            }
            if (Log.isLoggable("WearableClient", 2)) {
                String.valueOf(obj);
            }
            this.zza.put(obj, zzitVar);
            try {
                ((zzfb) zzimVar.getService()).zzd(new zzfd(this.zza, obj, resultHolder), new zzd(zzitVar));
            } catch (RemoteException e) {
                if (Log.isLoggable("WearableClient", 3)) {
                    String.valueOf(obj);
                }
                this.zza.remove(obj);
                throw e;
            }
        }
    }

    public final void zzb(IBinder iBinder) {
        zzfb zzfbVar;
        synchronized (this.zza) {
            if (iBinder == null) {
                zzfbVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
                zzfbVar = queryLocalInterface instanceof zzfb ? (zzfb) queryLocalInterface : new zzfb(iBinder);
            }
            zzib zzibVar = new zzib();
            for (Map.Entry entry : this.zza.entrySet()) {
                zzit zzitVar = (zzit) entry.getValue();
                try {
                    zzfbVar.zzd(zzibVar, new zzd(zzitVar));
                    if (Log.isLoggable("WearableClient", 3)) {
                        String.valueOf(entry.getKey());
                        String.valueOf(zzitVar);
                    }
                } catch (RemoteException unused) {
                    String.valueOf(entry.getKey());
                    String.valueOf(zzitVar);
                }
            }
        }
    }

    public final void zzc(zzim zzimVar, BaseImplementation.ResultHolder resultHolder, Object obj) {
        synchronized (this.zza) {
            zzit zzitVar = (zzit) this.zza.remove(obj);
            if (zzitVar == null) {
                if (Log.isLoggable("WearableClient", 2)) {
                    String.valueOf(obj);
                }
                resultHolder.setResult(new Status(WearableStatusCodes.UNKNOWN_LISTENER));
            } else {
                zzitVar.zzs();
                if (Log.isLoggable("WearableClient", 2)) {
                    String.valueOf(obj);
                }
                ((zzfb) zzimVar.getService()).zzx(new zzfe(this.zza, obj, resultHolder), new zzgw(zzitVar));
            }
        }
    }
}
