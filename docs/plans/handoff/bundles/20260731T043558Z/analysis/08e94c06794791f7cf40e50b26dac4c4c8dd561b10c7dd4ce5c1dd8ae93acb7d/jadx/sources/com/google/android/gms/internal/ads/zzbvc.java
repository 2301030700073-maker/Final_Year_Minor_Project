package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbvc extends zzbal implements zzbve {
    zzbvc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbve
    public final zzbvb zze(IObjectWrapper iObjectWrapper, zzbrj zzbrjVar, int i) throws RemoteException {
        zzbvb zzbuzVar;
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbrjVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzde = zzde(1, zza);
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzbuzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            zzbuzVar = queryLocalInterface instanceof zzbvb ? (zzbvb) queryLocalInterface : new zzbuz(readStrongBinder);
        }
        zzde.recycle();
        return zzbuzVar;
    }
}
