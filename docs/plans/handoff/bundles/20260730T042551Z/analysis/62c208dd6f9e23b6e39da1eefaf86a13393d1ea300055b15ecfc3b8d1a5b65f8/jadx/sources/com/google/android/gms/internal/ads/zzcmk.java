package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.api.Api;
import defpackage.InterfaceFutureC3942wq;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzcmk {
    zzbuj zza;
    zzbuj zzb;
    private final Context zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;
    private final zzecs zze;
    private final zzdpb zzf;
    private final zzgcs zzg;
    private final Executor zzh;
    private final ScheduledExecutorService zzi;

    public zzcmk(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar, zzecs zzecsVar, zzdpb zzdpbVar, zzgcs zzgcsVar, zzgcs zzgcsVar2, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = context;
        this.zzd = zzgVar;
        this.zze = zzecsVar;
        this.zzf = zzdpbVar;
        this.zzg = zzgcsVar;
        this.zzh = zzgcsVar2;
        this.zzi = scheduledExecutorService;
    }

    public static boolean zzj(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzka));
    }

    private final InterfaceFutureC3942wq zzk(final String str, final InputEvent inputEvent, Random random) {
        try {
            if (!str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzka)) || this.zzd.zzN()) {
                return zzgch.zzh(str);
            }
            final Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkb), String.valueOf(random.nextInt(Api.BaseClientBuilder.API_PRIORITY_OTHER)));
            if (inputEvent != null) {
                return (zzgby) zzgch.zzf((zzgby) zzgch.zzn(zzgby.zzu(this.zze.zza()), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzcme
                    @Override // com.google.android.gms.internal.ads.zzgbo
                    public final InterfaceFutureC3942wq zza(Object obj) {
                        return zzcmk.this.zzd(buildUpon, str, inputEvent, (Integer) obj);
                    }
                }, this.zzh), Throwable.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzcmf
                    @Override // com.google.android.gms.internal.ads.zzgbo
                    public final InterfaceFutureC3942wq zza(Object obj) {
                        return zzcmk.this.zze(buildUpon, (Throwable) obj);
                    }
                }, this.zzg);
            }
            buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkc), "11");
            return zzgch.zzh(buildUpon.toString());
        } catch (Exception e) {
            return zzgch.zzg(e);
        }
    }

    public final InterfaceFutureC3942wq zzb(final String str, Random random) {
        return TextUtils.isEmpty(str) ? zzgch.zzh(str) : zzgch.zzf(zzk(str, this.zzf.zza(), random), Throwable.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzcmb
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzcmk.this.zzc(str, (Throwable) obj);
            }
        }, this.zzg);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(String str, final Throwable th) {
        this.zzg.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmd
            @Override // java.lang.Runnable
            public final void run() {
                zzcmk.this.zzg(th);
            }
        });
        return zzgch.zzh(str);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzd(final Uri.Builder builder, String str, InputEvent inputEvent, Integer num) {
        if (num.intValue() != 1) {
            builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkc), "10");
            return zzgch.zzh(builder.toString());
        }
        Uri.Builder buildUpon = builder.build().buildUpon();
        buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkd), AppEventsConstants.EVENT_PARAM_VALUE_YES);
        buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkc), "12");
        if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzke))) {
            buildUpon.authority((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkf));
        }
        return (zzgby) zzgch.zzn(zzgby.zzu(this.zze.zzb(buildUpon.build(), inputEvent)), new zzgbo() { // from class: com.google.android.gms.internal.ads.zzcmg
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                String str2 = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkc);
                Uri.Builder builder2 = builder;
                builder2.appendQueryParameter(str2, "12");
                return zzgch.zzh(builder2.toString());
            }
        }, this.zzh);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zze(Uri.Builder builder, final Throwable th) {
        this.zzg.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmc
            @Override // java.lang.Runnable
            public final void run() {
                zzcmk.this.zzh(th);
            }
        });
        builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkc), "9");
        return zzgch.zzh(builder.toString());
    }

    public final /* synthetic */ void zzg(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkh)).booleanValue()) {
            zzbuj zzc = zzbuh.zzc(this.zzc);
            this.zzb = zzc;
            zzc.zzh(th, "AttributionReporting.getUpdatedUrlAndRegisterSource");
        } else {
            zzbuj zza = zzbuh.zza(this.zzc);
            this.zza = zza;
            zza.zzh(th, "AttributionReportingSampled.getUpdatedUrlAndRegisterSource");
        }
    }

    public final /* synthetic */ void zzh(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkh)).booleanValue()) {
            zzbuj zzc = zzbuh.zzc(this.zzc);
            this.zzb = zzc;
            zzc.zzh(th, "AttributionReporting");
        } else {
            zzbuj zza = zzbuh.zza(this.zzc);
            this.zza = zza;
            zza.zzh(th, "AttributionReportingSampled");
        }
    }

    public final void zzi(String str, zzfja zzfjaVar, Random random, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzgch.zzr(zzgch.zzo(zzk(str, this.zzf.zza(), random), ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkg)).intValue(), TimeUnit.MILLISECONDS, this.zzi), new zzcmj(this, zzfjaVar, str, zzvVar), this.zzg);
    }
}
