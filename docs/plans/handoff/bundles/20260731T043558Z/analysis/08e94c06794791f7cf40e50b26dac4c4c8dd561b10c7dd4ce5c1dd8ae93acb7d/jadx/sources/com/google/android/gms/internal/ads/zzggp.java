package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzggp implements zzggf {
    private final Context zza;
    private final ExecutorService zzb;
    private final zzfys zzc;
    private final String zzd;
    private final String zze;
    private final zzgjd zzf;
    private final zzggr zzg;

    zzggp(Context context, ExecutorService executorService, zzfxt zzfxtVar, zzfys zzfysVar, zzgjd zzgjdVar, zzggr zzggrVar) {
        this.zza = context;
        this.zzb = executorService;
        this.zzc = zzfysVar;
        this.zzf = zzgjdVar;
        this.zzg = zzggrVar;
        this.zzd = zzfxtVar.zzb();
        this.zze = zzfxtVar.zzi().zzc();
    }

    private static zzfzy zzc(int i) {
        zzfzx zzd = zzfzy.zzd();
        zzd.zze(i);
        return (zzfzy) zzd.zzbu();
    }

    @Override // com.google.android.gms.internal.ads.zzggf
    public final ListenableFuture zza() {
        int i;
        zzazv zza = zzazw.zza();
        byte[] zza2 = zzarq.zza();
        zzhvi zzhviVar = zzhvi.zzb;
        zza.zza(zzhvi.zzr(zza2, 0, zza2.length));
        zza.zzb(Build.VERSION.SDK_INT);
        zza.zzc(Build.MODEL);
        Context context = this.zza;
        zza.zzd(context.getPackageName());
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            i = -1;
        }
        zzfys zzfysVar = this.zzc;
        zzgjd zzgjdVar = this.zzf;
        zza.zze(i);
        zza.zzf(this.zzd);
        ListenableFuture zzk = zzgui.zzk(zzfysVar.zza(Uri.parse(this.zze).buildUpon().appendQueryParameter("aspq", zzfyo.zza(((zzazw) zza.zzbu()).zzaN(), true)).build().toString()), new zzglu() { // from class: com.google.android.gms.internal.ads.zzggo
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                return zzggp.this.zzb((zzfyr) obj);
            }
        }, this.zzb);
        zzgjdVar.zze(20002, zzk);
        return zzk;
    }

    final /* synthetic */ zzfzy zzb(zzfyr zzfyrVar) {
        zzfzy zzc;
        if (zzfyrVar.zza() != 200) {
            this.zzf.zzc(20003, new String(zzarq.zza(), StandardCharsets.UTF_8));
            return zzc(7);
        }
        try {
            String zzb = zzfyrVar.zzb();
            if (TextUtils.isEmpty(zzb)) {
                this.zzf.zzb(20004);
                zzc = zzc(8);
            } else {
                zzazy zzb2 = zzazy.zzb(zzfyo.zzb(zzb, true), zzhvy.zzb());
                if (zzb2.zza().zzc() && zzb2.zza().zza()) {
                    if (this.zzg.zza(zzb2)) {
                        zzfzx zzd = zzfzy.zzd();
                        zzfzz zzd2 = zzgaa.zzd();
                        zzd2.zzb(zzb2.zza().zzb());
                        zzd.zzb(zzd2);
                        zzd.zzc(zzb2.zza().zzd());
                        zzd.zze(2);
                        zzc = (zzfzy) zzd.zzbu();
                    } else {
                        this.zzf.zzb(20006);
                        zzc = zzc(12);
                    }
                }
                this.zzf.zzb(20004);
                zzc = zzc(8);
            }
            return zzc;
        } catch (Throwable th) {
            this.zzf.zzd(20005, th);
            return zzc(6);
        }
    }
}
