package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbql extends zzbps {
    private final UnifiedNativeAdMapper zza;

    public zzbql(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        this.zza = unifiedNativeAdMapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final boolean zzA() {
        return this.zza.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final boolean zzB() {
        return this.zza.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final double zze() {
        if (this.zza.getStarRating() != null) {
            return this.zza.getStarRating().doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final float zzf() {
        return this.zza.getMediaContentAspectRatio();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final float zzg() {
        return this.zza.getCurrentTime();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final float zzh() {
        return this.zza.getDuration();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final Bundle zzi() {
        return this.zza.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final com.google.android.gms.ads.internal.client.zzeb zzj() {
        if (this.zza.zzb() != null) {
            return this.zza.zzb().zza();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final zzbfp zzk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final zzbfw zzl() {
        NativeAd.Image icon = this.zza.getIcon();
        if (icon != null) {
            return new zzbfj(icon.getDrawable(), icon.getUri(), icon.getScale(), icon.zzb(), icon.zza());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final InterfaceC0456Qm zzm() {
        View adChoicesContent = this.zza.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return new BinderC3652rv(adChoicesContent);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final InterfaceC0456Qm zzn() {
        View zza = this.zza.zza();
        if (zza == null) {
            return null;
        }
        return new BinderC3652rv(zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final InterfaceC0456Qm zzo() {
        Object zzc = this.zza.zzc();
        if (zzc == null) {
            return null;
        }
        return new BinderC3652rv(zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzp() {
        return this.zza.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzq() {
        return this.zza.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzr() {
        return this.zza.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzs() {
        return this.zza.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzt() {
        return this.zza.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final String zzu() {
        return this.zza.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final List zzv() {
        List<NativeAd.Image> images = this.zza.getImages();
        ArrayList arrayList = new ArrayList();
        if (images != null) {
            for (NativeAd.Image image : images) {
                arrayList.add(new zzbfj(image.getDrawable(), image.getUri(), image.getScale(), image.zzb(), image.zza()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzw(InterfaceC0456Qm interfaceC0456Qm) {
        this.zza.handleClick((View) BinderC3652rv.o(interfaceC0456Qm));
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzx() {
        this.zza.recordImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzy(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, InterfaceC0456Qm interfaceC0456Qm3) {
        HashMap hashMap = (HashMap) BinderC3652rv.o(interfaceC0456Qm2);
        HashMap hashMap2 = (HashMap) BinderC3652rv.o(interfaceC0456Qm3);
        this.zza.trackViews((View) BinderC3652rv.o(interfaceC0456Qm), hashMap, hashMap2);
    }

    @Override // com.google.android.gms.internal.ads.zzbpt
    public final void zzz(InterfaceC0456Qm interfaceC0456Qm) {
        this.zza.untrackView((View) BinderC3652rv.o(interfaceC0456Qm));
    }
}
