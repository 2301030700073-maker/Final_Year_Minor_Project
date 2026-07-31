package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbal;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbrj;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdx extends zzbal implements IInterface {
    zzdx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
    }

    public final zzdw zze(IObjectWrapper iObjectWrapper, zzbrj zzbrjVar, int i) throws RemoteException {
        zzdw zzduVar;
        Parcel zza = zza();
        zzban.zze(zza, iObjectWrapper);
        zzban.zze(zza, zzbrjVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzde = zzde(1, zza);
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzduVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            zzduVar = queryLocalInterface instanceof zzdw ? (zzdw) queryLocalInterface : new zzdu(readStrongBinder);
        }
        zzde.recycle();
        return zzduVar;
    }
}
