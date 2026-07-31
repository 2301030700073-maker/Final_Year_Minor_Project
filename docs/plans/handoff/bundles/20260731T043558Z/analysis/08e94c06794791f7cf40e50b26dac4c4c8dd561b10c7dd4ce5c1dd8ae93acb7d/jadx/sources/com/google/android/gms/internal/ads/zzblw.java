package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzblw {
    public static final zzblx zza = zzblv.zza;
    public static final zzblx zzb = zzblm.zza;
    public static final zzblx zzc = zzbln.zza;
    public static final zzblx zzd = new zzble();
    public static final zzblx zze = new zzblf();
    public static final zzblx zzf = zzbls.zza;
    public static final zzblx zzg = new zzblg();
    public static final zzblx zzh = new zzblh();
    public static final zzblx zzi = zzblt.zza;
    public static final zzblx zzj = new zzbli();
    public static final zzblx zzk = new zzblj();
    public static final zzblx zzl = new zzces();
    public static final zzblx zzm = new zzcet();
    public static final zzblx zzn = new zzbkq();
    public static final zzbmo zzo = new zzbmo();
    public static final zzblx zzp = new zzblk();
    public static final zzblx zzq = new zzbll();
    public static final zzblx zzr = new zzbkr();
    public static final zzblx zzs = new zzbks();
    public static final zzblx zzt = new zzbkt();
    public static final zzblx zzu = new zzbku();
    public static final zzblx zzv = new zzbkv();
    public static final zzblx zzw = new zzbkw();
    public static final zzblx zzx = new zzbkx();
    public static final zzblx zzy = new zzbky();
    public static final zzblx zzz = new zzbkz();
    public static final zzblx zzA = new zzbla();
    public static final zzblx zzB = new zzblc();
    public static final zzblx zzC = new zzbld();

    public static ListenableFuture zza(zzcgy zzcgyVar, String str) {
        Uri parse = Uri.parse(str);
        try {
            zzaxa zzS = zzcgyVar.zzS();
            zzfgr zzT = zzcgyVar.zzT();
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmY)).booleanValue() || zzT == null) {
                if (zzS != null && zzS.zza(parse)) {
                    parse = zzS.zzd(parse, zzcgyVar.getContext(), zzcgyVar.zzE(), zzcgyVar.zzj());
                }
            } else if (zzS != null && zzS.zza(parse)) {
                parse = zzT.zza(parse, zzcgyVar.getContext(), zzcgyVar.zzE(), zzcgyVar.zzj());
            }
        } catch (zzaxb unused) {
            String concat = "Unable to append parameter to URL: ".concat(str);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
        }
        Map hashMap = new HashMap();
        if (zzcgyVar.zzC() != null) {
            hashMap = zzcgyVar.zzC().zzaw;
        }
        final String zzb2 = zzcah.zzb(parse, zzcgyVar.getContext(), hashMap);
        long longValue = ((Long) zzbgt.zze.zze()).longValue();
        if (longValue <= 0 || longValue > 253830000) {
            return zzgui.zza(zzb2);
        }
        zzgua zzw2 = zzgua.zzw(zzcgyVar.zzaF());
        zzblo zzbloVar = zzblo.zza;
        zzgus zzgusVar = zzcbv.zzg;
        return (zzgua) zzgui.zzg((zzgua) zzgui.zzk((zzgua) zzgui.zzg(zzw2, Throwable.class, zzbloVar, zzgusVar), new zzglu() { // from class: com.google.android.gms.internal.ads.zzblp
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                String str2 = (String) obj;
                zzblx zzblxVar = zzblw.zza;
                String str3 = zzb2;
                if (str2 != null) {
                    if (((Boolean) zzbgt.zzf.zze()).booleanValue()) {
                        String[] strArr = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
                        String host = Uri.parse(str3).getHost();
                        for (int i2 = 0; i2 < 3; i2++) {
                            if (!host.endsWith(strArr[i2])) {
                            }
                        }
                    }
                    String str4 = (String) zzbgt.zza.zze();
                    String str5 = (String) zzbgt.zzb.zze();
                    if (!TextUtils.isEmpty(str4)) {
                        str3 = str3.replace(str4, str2);
                    }
                    if (!TextUtils.isEmpty(str5)) {
                        Uri parse2 = Uri.parse(str3);
                        if (TextUtils.isEmpty(parse2.getQueryParameter(str5))) {
                            return parse2.buildUpon().appendQueryParameter(str5, str2).toString();
                        }
                    }
                }
                return str3;
            }
        }, zzgusVar), Throwable.class, new zzglu() { // from class: com.google.android.gms.internal.ads.zzblq
            @Override // com.google.android.gms.internal.ads.zzglu
            public final /* synthetic */ Object apply(Object obj) {
                Throwable th = (Throwable) obj;
                zzblx zzblxVar = zzblw.zza;
                if (((Boolean) zzbgt.zzi.zze()).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzh().zzg(th, "prepareClickUrl.attestation2");
                }
                return zzb2;
            }
        }, zzgusVar);
    }

    public static zzblx zzb(final zzdgv zzdgvVar, final zzcpe zzcpeVar) {
        return new zzblx() { // from class: com.google.android.gms.internal.ads.zzblr
            @Override // com.google.android.gms.internal.ads.zzblx
            public final /* synthetic */ void zza(Object obj, Map map) {
                zzcgy zzcgyVar = (zzcgy) obj;
                zzblw.zzc(map, zzdgv.this);
                final String str = (String) map.get("u");
                if (str == null) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("URL missing from click GMSG.");
                    return;
                }
                final zzcpe zzcpeVar2 = zzcpeVar;
                zzgua zzw2 = zzgua.zzw(zzblw.zza(zzcgyVar, str));
                zzgtq zzgtqVar = new zzgtq() { // from class: com.google.android.gms.internal.ads.zzblu
                    @Override // com.google.android.gms.internal.ads.zzgtq
                    public final /* synthetic */ ListenableFuture zza(Object obj2) {
                        zzcpe zzcpeVar3;
                        String str2 = (String) obj2;
                        zzblx zzblxVar = zzblw.zza;
                        return (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlb)).booleanValue() && (zzcpeVar3 = zzcpe.this) != null && zzcpe.zzc(str)) ? zzcpeVar3.zzb(str2, com.google.android.gms.ads.internal.client.zzbb.zze()) : zzgui.zza(str2);
                    }
                };
                zzgus zzgusVar = zzcbv.zza;
                zzgui.zzr((zzgua) zzgui.zzj(zzw2, zzgtqVar, zzgusVar), new zzblb(zzcgyVar), zzgusVar);
            }
        };
    }

    public static void zzc(Map map, zzdgv zzdgvVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlL)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("1") && zzdgvVar != null) {
            zzdgvVar.zzdz();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(14:(3:9|10|11)|(12:49|50|14|(10:16|(1:18)|19|(1:21)|22|(1:24)|25|(1:27)|28|(2:30|(1:32)))|33|34|35|(1:37)|38|39|41|42)|13|14|(0)|33|34|35|(0)|38|39|41|42|7) */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e5, code lost:
    
        r0 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error constructing openable urls response.", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00cf, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d0, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzh().zzg(r0, r8.toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void zze(com.google.android.gms.internal.ads.zzcik r16, java.util.Map r17) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzblw.zze(com.google.android.gms.internal.ads.zzcik, java.util.Map):void");
    }
}
