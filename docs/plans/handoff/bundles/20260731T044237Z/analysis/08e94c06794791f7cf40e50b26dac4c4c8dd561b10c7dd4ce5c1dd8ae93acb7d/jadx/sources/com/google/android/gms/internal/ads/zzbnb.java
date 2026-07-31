package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbnb extends zzbal implements zzbnd {
    zzbnb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbnd
    public final zzbna zze(IObjectWrapper iObjectWrapper, zzbrj zzbrjVar, int i, zzbmx zzbmxVar) throws RemoteException {
        zzbna zzbmyVar;
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbrjVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        zzban.zze(zza, zzbmxVar);
        Parcel zzde = zzde(1, zza);
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbmyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            zzbmyVar = queryLocalInterface instanceof zzbna ? (zzbna) queryLocalInterface : new zzbmy(readStrongBinder);
        }
        zzde.recycle();
        return zzbmyVar;
    }
}
