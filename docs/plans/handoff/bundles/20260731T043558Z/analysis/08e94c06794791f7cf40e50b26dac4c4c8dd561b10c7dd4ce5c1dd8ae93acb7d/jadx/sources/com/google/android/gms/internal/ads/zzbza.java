package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbza {
    public static final zzbyo zza(Context context, String str, zzbrj zzbrjVar) {
        try {
            IBinder zze = ((zzbys) com.google.android.gms.ads.internal.util.client.zzs.zza(context, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl", zzbyz.zza)).zze(ObjectWrapper.wrap(context), str, zzbrjVar, ModuleDescriptor.MODULE_VERSION);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
            return queryLocalInterface instanceof zzbyo ? (zzbyo) queryLocalInterface : new zzbym(zze);
        } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }
}
