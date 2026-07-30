package com.google.android.gms.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import defpackage.YT;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.android.gms.measurement.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends AppMeasurement.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final YT f10289do;

    public Cdo(YT yt) {
        Preconditions.checkNotNull(yt);
        this.f10289do = yt;
    }

    @Override // defpackage.YT
    /* renamed from: do */
    public final void mo2931do(String str, String str2, Bundle bundle) {
        this.f10289do.mo2931do(str, str2, bundle);
    }

    @Override // defpackage.YT
    /* renamed from: for */
    public final List<Bundle> mo2932for(String str, String str2) {
        return this.f10289do.mo2932for(str, str2);
    }

    @Override // defpackage.YT
    /* renamed from: if */
    public final Map<String, Object> mo2933if(String str, String str2, boolean z) {
        return this.f10289do.mo2933if(str, str2, z);
    }

    @Override // defpackage.YT
    /* renamed from: new */
    public final int mo2934new(String str) {
        return this.f10289do.mo2934new(str);
    }

    @Override // defpackage.YT
    /* renamed from: try */
    public final void mo2935try(String str, String str2, Bundle bundle) {
        this.f10289do.mo2935try(str, str2, bundle);
    }

    @Override // defpackage.YT
    public final void zza(Bundle bundle) {
        this.f10289do.zza(bundle);
    }

    @Override // defpackage.YT
    public final void zzb(String str) {
        this.f10289do.zzb(str);
    }

    @Override // defpackage.YT
    public final void zzc(String str) {
        this.f10289do.zzc(str);
    }

    @Override // defpackage.YT
    public final long zzf() {
        return this.f10289do.zzf();
    }

    @Override // defpackage.YT
    public final String zzg() {
        return this.f10289do.zzg();
    }

    @Override // defpackage.YT
    public final String zzh() {
        return this.f10289do.zzh();
    }

    @Override // defpackage.YT
    public final String zzi() {
        return this.f10289do.zzi();
    }

    @Override // defpackage.YT
    public final String zzj() {
        return this.f10289do.zzj();
    }
}
