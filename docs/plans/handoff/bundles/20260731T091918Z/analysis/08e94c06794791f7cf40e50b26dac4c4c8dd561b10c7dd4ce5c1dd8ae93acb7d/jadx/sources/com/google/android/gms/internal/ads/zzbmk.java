package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.braze.models.Banner;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.dynamic.ObjectWrapper;
import io.sentry.protocol.App;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbmk implements zzblx {
    private final com.google.android.gms.ads.internal.zzb zza;
    private final zzdvi zzb;
    private final zzbuh zzd;
    private final zzefy zze;
    private final zzcpe zzf;
    private final zzcxn zzg;
    private com.google.android.gms.ads.internal.util.client.zzu zzc = null;
    private com.google.android.gms.ads.internal.overlay.zzaa zzh = null;
    private final zzgus zzi = zzcbv.zzg;

    public zzbmk(com.google.android.gms.ads.internal.zzb zzbVar, zzbuh zzbuhVar, zzefy zzefyVar, zzdvi zzdviVar, zzcpe zzcpeVar, zzcxn zzcxnVar) {
        this.zza = zzbVar;
        this.zzd = zzbuhVar;
        this.zze = zzefyVar;
        this.zzb = zzdviVar;
        this.zzf = zzcpeVar;
        this.zzg = zzcxnVar;
    }

    public static boolean zzb(Map map) {
        return "1".equals(map.get("custom_close"));
    }

    public static int zzc(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        if ("p".equalsIgnoreCase(str)) {
            return 7;
        }
        if (CmcdData.Factory.STREAM_TYPE_LIVE.equalsIgnoreCase(str)) {
            return 6;
        }
        return "c".equalsIgnoreCase(str) ? 14 : -1;
    }

    static Uri zzd(Context context, zzaxa zzaxaVar, Uri uri, View view, Activity activity, zzfgr zzfgrVar) {
        if (zzaxaVar == null) {
            return uri;
        }
        try {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmY)).booleanValue() || zzfgrVar == null) {
                if (zzaxaVar.zze(uri)) {
                    uri = zzaxaVar.zzd(uri, context, view, activity);
                }
            } else if (zzaxaVar.zze(uri)) {
                uri = zzfgrVar.zza(uri, context, view, activity);
            }
        } catch (zzaxb unused) {
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "OpenGmsgHandler.maybeAddClickSignalsToUri");
        }
        return uri;
    }

    static Uri zze(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String uri2 = uri.toString();
            String.valueOf(uri2);
            String valueOf = String.valueOf(uri2);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error adding click uptime parameter to url: ".concat(valueOf), e);
        }
        return uri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final void zzf(String str, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, String str2) {
        String str3;
        boolean z;
        HashMap hashMap;
        Object obj;
        Object obj2;
        boolean z2;
        zzcxn zzcxnVar;
        zzcgy zzcgyVar = (zzcgy) zzaVar;
        zzffu zzC = zzcgyVar.zzC();
        zzffx zzaC = zzcgyVar.zzaC();
        boolean z3 = false;
        if (zzC == null || zzaC == null) {
            str3 = "";
            z = false;
        } else {
            String str4 = zzaC.zzb;
            z = zzC.zzb();
            str3 = str4;
        }
        boolean z4 = (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlK)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals(AppEventsConstants.EVENT_PARAM_VALUE_NO)) ? false : true;
        boolean z5 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zznM)).booleanValue() && map.containsKey("ig_cl") && ((String) map.get("ig_cl")).equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        if ("expand".equalsIgnoreCase(str2)) {
            if (zzcgyVar.zzW()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Cannot expand WebView that is already expanded.");
                return;
            } else {
                zzl(false);
                ((zzcio) zzaVar).zzaI(zzb(map), zzc(map), z4);
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str2)) {
            zzl(false);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmU)).booleanValue() && Objects.equals(map.get("is_allowed_for_lock_screen"), "1")) {
                z3 = true;
            }
            if (str != null) {
                ((zzcio) zzaVar).zzaJ(zzb(map), zzc(map), str, z4, z3);
                return;
            } else {
                ((zzcio) zzaVar).zzaK(zzb(map), zzc(map), (String) map.get(Banner.HTML), (String) map.get("baseurl"), z4);
                return;
            }
        }
        Intent intent = null;
        if ("chrome_custom_tab".equalsIgnoreCase(str2)) {
            Context context = zzcgyVar.getContext();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfo)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("User opt out chrome custom tab.");
                zzg(10);
            } else {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfi)).booleanValue()) {
                    int i2 = zzbft.zza;
                    String packageName = CustomTabsClient.getPackageName(context, null);
                    if (packageName != null && !context.getPackageName().equals(packageName)) {
                        z3 = true;
                    }
                } else {
                    z3 = zzbfv.zza(context);
                }
                if (z3) {
                    zzl(true);
                    if (TextUtils.isEmpty(str)) {
                        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Cannot open browser with null or empty url");
                        zzg(7);
                        return;
                    }
                    Uri zze = zze(zzd(zzcgyVar.getContext(), zzcgyVar.zzS(), Uri.parse(str), zzcgyVar.zzE(), zzcgyVar.zzj(), zzcgyVar.zzT()));
                    if (z && this.zze != null && zzi(zzaVar, zzcgyVar.getContext(), zze.toString(), str3)) {
                        return;
                    }
                    this.zzh = new zzbmh(this);
                    zzcio zzcioVar = (zzcio) zzaVar;
                    String uri = zze.toString();
                    com.google.android.gms.ads.internal.overlay.zzaa zzaaVar = this.zzh;
                    Bundle bundle = new Bundle();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfn)).booleanValue()) {
                        if (map.containsKey("cct_init_h")) {
                            try {
                                bundle.putInt(CmcdData.Factory.STREAMING_FORMAT_HLS, Integer.parseInt((String) map.get("cct_init_h")));
                            } catch (NumberFormatException e) {
                                com.google.android.gms.ads.internal.util.zze.zzb("Invalid cct initial height parameter.", e);
                                com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "OpenGmsgHandler.getChromeCustomTabConfigBundle");
                            }
                        }
                        if (map.containsKey("cct_bp")) {
                            try {
                                bundle.putInt("cbp", Integer.parseInt((String) map.get("cct_bp")));
                            } catch (NumberFormatException e2) {
                                com.google.android.gms.ads.internal.util.zze.zzb("Invalid cct close button position parameter.", e2);
                                com.google.android.gms.ads.internal.zzt.zzh().zzg(e2, "OpenGmsgHandler.getChromeCustomTabConfigBundle");
                            }
                        }
                    }
                    zzcioVar.zzaH(new com.google.android.gms.ads.internal.overlay.zzc(null, uri, null, null, null, null, null, null, ObjectWrapper.wrap(zzaaVar).asBinder(), true, bundle), z4, z5, str3);
                    return;
                }
                zzg(4);
            }
            map.put("use_first_package", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            map.put("use_running_process", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            zzk(zzaVar, map, z, str3, z4, z5);
            return;
        }
        if (App.TYPE.equalsIgnoreCase(str2) && ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase((String) map.get("system_browser"))) {
            zzk(zzaVar, map, z, str3, z4, z5);
            return;
        }
        if ("open_app".equalsIgnoreCase(str2)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjd)).booleanValue()) {
                zzl(true);
                String str5 = (String) map.get("p");
                if (str5 == null) {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Package name missing from open app action.");
                    return;
                }
                if (z && this.zze != null && zzi(zzaVar, zzcgyVar.getContext(), str5, str3)) {
                    return;
                }
                PackageManager packageManager = zzcgyVar.getContext().getPackageManager();
                if (packageManager == null) {
                    int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Cannot get package manager from open app action.");
                    return;
                } else {
                    Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str5);
                    if (launchIntentForPackage != null) {
                        ((zzcio) zzaVar).zzaH(new com.google.android.gms.ads.internal.overlay.zzc(launchIntentForPackage, this.zzh), z4, z5, str3);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        zzl(true);
        String str6 = (String) map.get("intent_url");
        if (!TextUtils.isEmpty(str6)) {
            try {
                intent = Intent.parseUri(str6, 0);
            } catch (URISyntaxException e3) {
                String.valueOf(str6);
                String valueOf = String.valueOf(str6);
                int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error parsing the url: ".concat(valueOf), e3);
            }
        }
        Intent intent2 = intent;
        if (intent2 != null && intent2.getData() != null) {
            Uri data = intent2.getData();
            if (!Uri.EMPTY.equals(data)) {
                Uri zze2 = zze(zzd(zzcgyVar.getContext(), zzcgyVar.zzS(), data, zzcgyVar.zzE(), zzcgyVar.zzj(), zzcgyVar.zzT()));
                if (!TextUtils.isEmpty(intent2.getType())) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzje)).booleanValue()) {
                        intent2.setDataAndType(zze2, intent2.getType());
                    }
                }
                intent2.setData(zze2);
            }
        }
        boolean z6 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjz)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map.containsKey("event_id");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zznR)).booleanValue() && (zzcxnVar = this.zzg) != null) {
            zzcxnVar.zzl();
        }
        HashMap hashMap2 = new HashMap();
        if (z6) {
            hashMap = hashMap2;
            obj2 = "p";
            obj = "event_id";
            this.zzh = new zzbmi(this, z4, zzaVar, hashMap, map);
            z2 = false;
        } else {
            hashMap = hashMap2;
            obj = "event_id";
            obj2 = "p";
            z2 = z4;
        }
        if (intent2 != null) {
            if (!z || this.zze == null || !zzi(zzaVar, zzcgyVar.getContext(), intent2.getData().toString(), str3)) {
                ((zzcio) zzaVar).zzaH(new com.google.android.gms.ads.internal.overlay.zzc(intent2, this.zzh), z2, z5, str3);
                return;
            } else {
                if (z6) {
                    HashMap hashMap3 = hashMap;
                    hashMap3.put((String) map.get(obj), true);
                    ((zzbot) zzaVar).zze("openIntentAsync", hashMap3);
                    return;
                }
                return;
            }
        }
        HashMap hashMap4 = hashMap;
        String uri2 = !TextUtils.isEmpty(str) ? zze(zzd(zzcgyVar.getContext(), zzcgyVar.zzS(), Uri.parse(str), zzcgyVar.zzE(), zzcgyVar.zzj(), zzcgyVar.zzT())).toString() : str;
        if (!z || this.zze == null || !zzi(zzaVar, zzcgyVar.getContext(), uri2, str3)) {
            ((zzcio) zzaVar).zzaH(new com.google.android.gms.ads.internal.overlay.zzc((String) map.get("i"), uri2, (String) map.get("m"), (String) map.get(obj2), (String) map.get("c"), (String) map.get("f"), (String) map.get("e"), this.zzh), z2, z5, str3);
        } else if (z6) {
            hashMap4.put((String) map.get(obj), true);
            ((zzbot) zzaVar).zze("openIntentAsync", hashMap4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x006e, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzjt)).booleanValue() != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d8, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT < 33 ? ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzjo)).booleanValue() : ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzjn)).booleanValue()) != false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzi(com.google.android.gms.ads.internal.client.zza r10, android.content.Context r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbmk.zzi(com.google.android.gms.ads.internal.client.zza, android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    private final void zzj(Context context, String str, String str2) {
        zzefy zzefyVar = this.zze;
        zzefyVar.zzd(str);
        zzdvi zzdviVar = this.zzb;
        if (zzdviVar != null) {
            zzegj.zzk(context, zzdviVar, zzefyVar, str, "dialog_not_shown", zzgph.zzb("dialog_not_shown_reason", str2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0108, code lost:
    
        if (com.google.android.gms.internal.ads.zzbmj.zzb(r2, r12, r13, r14, r15) == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0157, code lost:
    
        r22 = r7;
        r11 = r16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzk(com.google.android.gms.ads.internal.client.zza r21, java.util.Map r22, boolean r23, java.lang.String r24, boolean r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbmk.zzk(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean, boolean):void");
    }

    private final void zzl(boolean z) {
        zzbuh zzbuhVar = this.zzd;
        if (zzbuhVar != null) {
            zzbuhVar.zzb(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public final void zzg(int i) {
        zzdvi zzdviVar;
        String str;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfh)).booleanValue() || (zzdviVar = this.zzb) == null) {
            return;
        }
        zzdvh zza = zzdviVar.zza();
        zza.zzc("action", "cct_action");
        switch (i) {
            case 2:
                str = "CONTEXT_NOT_AN_ACTIVITY";
                break;
            case 3:
                str = "CONTEXT_NULL";
                break;
            case 4:
                str = "CCT_NOT_SUPPORTED";
                break;
            case 5:
                str = "CCT_READY_TO_OPEN";
                break;
            case 6:
                str = "ACTIVITY_NOT_FOUND";
                break;
            case 7:
                str = "EMPTY_URL";
                break;
            case 8:
                str = "UNKNOWN";
                break;
            case 9:
                str = "WRONG_EXP_SETUP";
                break;
            default:
                str = "OPT_OUT";
                break;
        }
        zza.zzc("cct_open_status", str);
        zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcpe zzcpeVar;
        com.google.android.gms.ads.internal.client.zza zzaVar = (com.google.android.gms.ads.internal.client.zza) obj;
        String str = (String) map.get("u");
        Map hashMap = new HashMap();
        zzcgy zzcgyVar = (zzcgy) zzaVar;
        if (zzcgyVar.zzC() != null) {
            hashMap = zzcgyVar.zzC().zzaw;
        }
        String zza = zzcah.zza(str, zzcgyVar.getContext(), true, hashMap);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.zza;
        if (zzbVar == null || zzbVar.zzb()) {
            zzgui.zzr((((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlb)).booleanValue() && (zzcpeVar = this.zzf) != null && zzcpe.zzc(zza)) ? zzcpeVar.zzb(zza, com.google.android.gms.ads.internal.client.zzbb.zze()) : zzgui.zza(zza), new zzbmg(this, map, zzaVar, str2), this.zzi);
        } else {
            zzbVar.zzc(zza);
        }
    }
}
