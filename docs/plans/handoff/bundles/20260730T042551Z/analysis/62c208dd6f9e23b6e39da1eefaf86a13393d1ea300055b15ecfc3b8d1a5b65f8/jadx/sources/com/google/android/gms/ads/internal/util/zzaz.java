package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzapi;
import com.google.android.gms.internal.ads.zzapm;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzaqb;
import com.google.android.gms.internal.ads.zzaqi;
import com.google.android.gms.internal.ads.zzaqn;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzblm;
import com.google.android.gms.internal.ads.zzfpu;
import com.google.android.gms.internal.ads.zzfpv;
import java.io.File;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzaz extends zzaqb {

    /* renamed from: do, reason: not valid java name */
    public final Context f9768do;

    public zzaz(Context context, zzaqn zzaqnVar) {
        super(zzaqnVar);
        this.f9768do = context;
    }

    public static zzapp zzb(Context context) {
        zzapp zzappVar = new zzapp(new zzaqi(new File(zzfpv.zza(zzfpu.zza(), context.getCacheDir(), "admob_volley")), 20971520), new zzaz(context, new zzaqn(null, null)), 4);
        zzappVar.zzd();
        return zzappVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqb, com.google.android.gms.internal.ads.zzapf
    public final zzapi zza(zzapm zzapmVar) {
        if (zzapmVar.zza() == 0) {
            if (Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzex), zzapmVar.zzk())) {
                com.google.android.gms.ads.internal.client.zzbc.zzb();
                Context context = this.f9768do;
                if (com.google.android.gms.ads.internal.util.client.zzf.zzs(context, 13400000)) {
                    zzapi zza = new zzblm(context).zza(zzapmVar);
                    if (zza != null) {
                        zze.zza("Got gmscore asset response: ".concat(String.valueOf(zzapmVar.zzk())));
                        return zza;
                    }
                    zze.zza("Failed to get gmscore asset response: ".concat(String.valueOf(zzapmVar.zzk())));
                }
            }
        }
        return super.zza(zzapmVar);
    }
}
