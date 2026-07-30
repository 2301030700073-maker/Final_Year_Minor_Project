package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import defpackage.V1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzfiv {
    private final zzegq zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Context zze;
    private final zzfcb zzf;
    private final zzfcc zzg;
    private final Clock zzh;
    private final zzava zzi;

    public zzfiv(zzegq zzegqVar, VersionInfoParcel versionInfoParcel, String str, String str2, Context context, zzfcb zzfcbVar, zzfcc zzfccVar, Clock clock, zzava zzavaVar) {
        this.zza = zzegqVar;
        this.zzb = versionInfoParcel.afmaVersion;
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = zzfcbVar;
        this.zzg = zzfccVar;
        this.zzh = clock;
        this.zzi = zzavaVar;
    }

    public static final List zzf(int i, int i2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zzj((String) it.next(), "@gw_mpe@", V1.m2494case("2.", i2)));
        }
        return arrayList;
    }

    public static final List zzg(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zzj((String) it.next(), "@gw_adnetstatus@", str));
        }
        return arrayList;
    }

    public static final List zzh(List list, long j) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zzj((String) it.next(), "@gw_ttr@", Long.toString(j, 10)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzi(String str) {
        return TextUtils.isEmpty(str) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : com.google.android.gms.ads.internal.util.client.zzl.zzk() ? "fakeForAdDebugLog" : str;
    }

    private static String zzj(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return str.replaceAll(str2, str3);
    }

    public final List zzc(zzfca zzfcaVar, zzfbo zzfboVar, List list) {
        return zzd(zzfcaVar, zzfboVar, false, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, list);
    }

    public final List zzd(zzfca zzfcaVar, zzfbo zzfboVar, boolean z, String str, String str2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            boolean z2 = true;
            String zzj = zzj(zzj(zzj((String) it.next(), "@gw_adlocid@", zzfcaVar.zza.zza.zzf), "@gw_adnetrefresh@", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES), "@gw_sdkver@", this.zzb);
            if (zzfboVar != null) {
                zzj = zzbyk.zzc(zzj(zzj(zzj(zzj, "@gw_qdata@", zzfboVar.zzy), "@gw_adnetid@", zzfboVar.zzx), "@gw_allocid@", zzfboVar.zzw), this.zze, zzfboVar.zzW, zzfboVar.zzaw);
            }
            String zzj2 = zzj(zzj(zzj(zzj(zzj, "@gw_adnetstatus@", this.zza.zzg()), "@gw_ttr@", Long.toString(this.zza.zza(), 10)), "@gw_seqnum@", this.zzc), "@gw_sessid@", this.zzd);
            boolean z3 = false;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdE)).booleanValue() && !TextUtils.isEmpty(str)) {
                z3 = true;
            }
            boolean z4 = !TextUtils.isEmpty(str2);
            if (z3) {
                z2 = z4;
            } else if (!z4) {
                arrayList.add(zzj2);
            }
            if (this.zzi.zzf(Uri.parse(zzj2))) {
                Uri.Builder buildUpon = Uri.parse(zzj2).buildUpon();
                if (z3) {
                    buildUpon = buildUpon.appendQueryParameter("ms", str);
                }
                if (z2) {
                    buildUpon = buildUpon.appendQueryParameter("attok", str2);
                }
                zzj2 = buildUpon.build().toString();
            }
            arrayList.add(zzj2);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0065 A[LOOP:0: B:10:0x005f->B:12:0x0065, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zze(com.google.android.gms.internal.ads.zzfbo r11, java.util.List r12, com.google.android.gms.internal.ads.zzbvw r13) {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.google.android.gms.common.util.Clock r1 = r10.zzh
            long r1 = r1.currentTimeMillis()
            java.lang.String r3 = r13.zzc()     // Catch: android.os.RemoteException -> Lb0
            int r13 = r13.zzb()     // Catch: android.os.RemoteException -> Lb0
            java.lang.String r13 = java.lang.Integer.toString(r13)     // Catch: android.os.RemoteException -> Lb0
            com.google.android.gms.internal.ads.zzbcc r4 = com.google.android.gms.internal.ads.zzbcl.zzdF
            com.google.android.gms.internal.ads.zzbcj r5 = com.google.android.gms.ads.internal.client.zzbe.zzc()
            java.lang.Object r4 = r5.zza(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L35
            com.google.android.gms.internal.ads.zzfcc r4 = r10.zzg
            if (r4 != 0) goto L32
            com.google.android.gms.internal.ads.zzful r4 = com.google.android.gms.internal.ads.zzful.zzc()
            goto L3b
        L32:
            com.google.android.gms.internal.ads.zzfcb r4 = r4.zza
            goto L37
        L35:
            com.google.android.gms.internal.ads.zzfcb r4 = r10.zzf
        L37:
            com.google.android.gms.internal.ads.zzful r4 = com.google.android.gms.internal.ads.zzful.zzd(r4)
        L3b:
            com.google.android.gms.internal.ads.zzfit r5 = new com.google.android.gms.internal.ads.zzfit
            r5.<init>()
            com.google.android.gms.internal.ads.zzful r5 = r4.zza(r5)
            java.lang.String r6 = ""
            java.lang.Object r5 = r5.zzb(r6)
            java.lang.String r5 = (java.lang.String) r5
            com.google.android.gms.internal.ads.zzfiu r7 = new com.google.android.gms.internal.ads.zzfiu
            r7.<init>()
            com.google.android.gms.internal.ads.zzful r4 = r4.zza(r7)
            java.lang.Object r4 = r4.zzb(r6)
            java.lang.String r4 = (java.lang.String) r4
            java.util.Iterator r12 = r12.iterator()
        L5f:
            boolean r6 = r12.hasNext()
            if (r6 == 0) goto Laf
            java.lang.Object r6 = r12.next()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r7 = android.net.Uri.encode(r5)
            java.lang.String r8 = "@gw_rwd_userid@"
            java.lang.String r6 = zzj(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r4)
            java.lang.String r8 = "@gw_rwd_custom_data@"
            java.lang.String r6 = zzj(r6, r8, r7)
            java.lang.String r7 = java.lang.Long.toString(r1)
            java.lang.String r8 = "@gw_tmstmp@"
            java.lang.String r6 = zzj(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r3)
            java.lang.String r8 = "@gw_rwd_itm@"
            java.lang.String r6 = zzj(r6, r8, r7)
            java.lang.String r7 = "@gw_rwd_amt@"
            java.lang.String r6 = zzj(r6, r7, r13)
            java.lang.String r7 = r10.zzb
            java.lang.String r8 = "@gw_sdkver@"
            java.lang.String r6 = zzj(r6, r8, r7)
            android.content.Context r7 = r10.zze
            boolean r8 = r11.zzW
            java.util.Map r9 = r11.zzaw
            java.lang.String r6 = com.google.android.gms.internal.ads.zzbyk.zzc(r6, r7, r8, r9)
            r0.add(r6)
            goto L5f
        Laf:
            return r0
        Lb0:
            r11 = move-exception
            java.lang.String r12 = "Unable to determine award type and amount."
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r12, r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfiv.zze(com.google.android.gms.internal.ads.zzfbo, java.util.List, com.google.android.gms.internal.ads.zzbvw):java.util.List");
    }
}
