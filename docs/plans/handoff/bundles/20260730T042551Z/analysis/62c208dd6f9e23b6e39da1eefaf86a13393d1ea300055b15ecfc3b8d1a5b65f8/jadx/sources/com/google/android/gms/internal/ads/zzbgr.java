package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.formats.MediaView;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
public final class zzbgr {
    private final zzbgq zza;

    public zzbgr(zzbgq zzbgqVar) {
        Context context;
        this.zza = zzbgqVar;
        try {
            context = (Context) BinderC3652rv.o(zzbgqVar.zzh());
        } catch (RemoteException | NullPointerException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            context = null;
        }
        if (context != null) {
            try {
                this.zza.zzs(new BinderC3652rv(new MediaView(context)));
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
            }
        }
    }

    public final zzbgq zza() {
        return this.zza;
    }

    public final String zzb() {
        try {
            return this.zza.zzi();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }
}
