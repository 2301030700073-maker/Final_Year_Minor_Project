package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.measurement.zzdy;
import defpackage.BinderC3652rv;
import defpackage.OS;

/* loaded from: classes.dex */
final class zzdx extends zzdy.zza {
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ Context zze;
    private final /* synthetic */ Bundle zzf;
    private final /* synthetic */ zzdy zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdx(zzdy zzdyVar, String str, String str2, Context context, Bundle bundle) {
        super(zzdyVar);
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = bundle;
        this.zzg = zzdyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdy.zza
    public final void zza() {
        boolean zzc;
        String str;
        String str2;
        String str3;
        zzdj zzdjVar;
        zzdj zzdjVar2;
        String str4;
        String unused;
        try {
            zzc = this.zzg.zzc(this.zzc, this.zzd);
            if (zzc) {
                String str5 = this.zzd;
                String str6 = this.zzc;
                str4 = this.zzg.zzc;
                str3 = str5;
                str2 = str6;
                str = str4;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            Preconditions.checkNotNull(this.zze);
            zzdy zzdyVar = this.zzg;
            zzdyVar.zzj = zzdyVar.zza(this.zze, true);
            zzdjVar = this.zzg.zzj;
            if (zzdjVar == null) {
                unused = this.zzg.zzc;
                return;
            }
            int m5604do = DynamiteModule.m5604do(this.zze, ModuleDescriptor.MODULE_ID);
            zzdw zzdwVar = new zzdw(106000L, Math.max(m5604do, r0), DynamiteModule.m5608new(this.zze, ModuleDescriptor.MODULE_ID, false) < m5604do, str, str2, str3, this.zzf, OS.m1670do(this.zze));
            zzdjVar2 = this.zzg.zzj;
            ((zzdj) Preconditions.checkNotNull(zzdjVar2)).initialize(new BinderC3652rv(this.zze), zzdwVar, this.zza);
        } catch (Exception e) {
            this.zzg.zza(e, true, false);
        }
    }
}
