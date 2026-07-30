package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzbfj extends zzbfv {
    private final Drawable zza;
    private final Uri zzb;
    private final double zzc;
    private final int zzd;
    private final int zze;

    public zzbfj(Drawable drawable, Uri uri, double d, int i, int i2) {
        this.zza = drawable;
        this.zzb = uri;
        this.zzc = d;
        this.zzd = i;
        this.zze = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final double zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final int zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final int zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final Uri zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfw
    public final InterfaceC0456Qm zzf() {
        return new BinderC3652rv(this.zza);
    }
}
