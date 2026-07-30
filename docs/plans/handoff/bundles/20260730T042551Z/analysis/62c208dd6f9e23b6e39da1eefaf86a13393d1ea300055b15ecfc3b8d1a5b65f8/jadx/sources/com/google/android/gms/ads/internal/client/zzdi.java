package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzdi implements MuteThisAdReason {

    /* renamed from: do, reason: not valid java name */
    public final zzdh f9598do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9599do;

    public zzdi(zzdh zzdhVar) {
        String str;
        this.f9598do = zzdhVar;
        try {
            str = zzdhVar.zze();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            str = null;
        }
        this.f9599do = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.f9599do;
    }

    public final String toString() {
        return this.f9599do;
    }

    public final zzdh zza() {
        return this.f9598do;
    }
}
