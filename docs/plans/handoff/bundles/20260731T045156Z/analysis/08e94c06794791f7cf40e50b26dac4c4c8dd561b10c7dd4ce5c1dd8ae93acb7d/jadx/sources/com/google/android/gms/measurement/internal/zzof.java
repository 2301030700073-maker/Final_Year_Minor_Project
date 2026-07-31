package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.appevents.AppEventsConstants;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes4.dex */
public final class zzof {
    static final ImmutableList zza = ImmutableList.of("Version", "GoogleConsent", "VendorConsent", "VendorLegitimateInterest", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "PurposeOneTreatment", "Purpose1", "Purpose3", "Purpose4", "Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics");
    public static final /* synthetic */ int zzb = 0;

    static String zza(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, "");
        } catch (ClassCastException unused) {
            return "";
        }
    }

    static int zzb(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getInt(str, -1);
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final boolean zzc(com.google.android.gms.internal.measurement.zzkp r21, com.google.common.collect.ImmutableMap r22, com.google.common.collect.ImmutableMap r23, com.google.common.collect.ImmutableSet r24, char[] r25, int r26, int r27, int r28, int r29, int r30, java.lang.String r31, java.lang.String r32, java.lang.String r33, boolean r34, boolean r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzof.zzc(com.google.android.gms.internal.measurement.zzkp, com.google.common.collect.ImmutableMap, com.google.common.collect.ImmutableMap, com.google.common.collect.ImmutableSet, char[], int, int, int, int, int, java.lang.String, java.lang.String, java.lang.String, boolean, boolean, boolean):boolean");
    }

    public static final Map zzd(ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        if (!z3) {
            return ImmutableMap.of();
        }
        com.google.android.gms.internal.measurement.zzkp zzkpVar = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar);
        com.google.android.gms.internal.measurement.zzkp zzkpVar2 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar2 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar2);
        com.google.android.gms.internal.measurement.zzkp zzkpVar3 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS;
        com.google.android.gms.internal.measurement.zzkq zzkqVar3 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar3);
        com.google.android.gms.internal.measurement.zzkp zzkpVar4 = com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE;
        com.google.android.gms.internal.measurement.zzkq zzkqVar4 = (com.google.android.gms.internal.measurement.zzkq) immutableMap2.get(zzkpVar4);
        return ImmutableMap.builder().put("Version", ExifInterface.GPS_MEASUREMENT_2D).put("VendorConsent", true != z ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1").put("VendorLegitimateInterest", true != z2 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1").put("gdprApplies", i3 != 1 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1").put("EnableAdvertiserConsentMode", i2 != 1 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1").put("PolicyVersion", String.valueOf(i4)).put("CmpSdkID", String.valueOf(i)).put("PurposeOneTreatment", i5 != 1 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1").put("PublisherCC", str).put("PublisherRestrictions1", String.valueOf(zzkqVar != null ? zzkqVar.zza() : com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza())).put("PublisherRestrictions3", String.valueOf(zzkqVar2 != null ? zzkqVar2.zza() : com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza())).put("PublisherRestrictions4", String.valueOf(zzkqVar3 != null ? zzkqVar3.zza() : com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza())).put("PublisherRestrictions7", String.valueOf(zzkqVar4 != null ? zzkqVar4.zza() : com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED.zza())).putAll(ImmutableMap.of("Purpose1", zzf(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true), "Purpose3", zzf(zzkpVar2, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true), "Purpose4", zzf(zzkpVar3, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true), "Purpose7", zzf(zzkpVar4, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true))).putAll(ImmutableMap.of("AuthorizePurpose1", (String) (true != zzc(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1"), "AuthorizePurpose3", (String) (true != zzc(zzkpVar2, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1"), "AuthorizePurpose4", (String) (true != zzc(zzkpVar3, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1"), "AuthorizePurpose7", true != zzc(zzkpVar4, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1", "PurposeDiagnostics", new String(cArr))).buildOrThrow();
    }

    private static final int zze(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
            return 1;
        }
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE) {
            return 2;
        }
        if (zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS) {
            return 3;
        }
        return zzkpVar == com.google.android.gms.internal.measurement.zzkp.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE ? 4 : -1;
    }

    private static final String zzf(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        boolean isEmpty = TextUtils.isEmpty(str2);
        String str4 = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        String valueOf = (isEmpty || str2.length() < zzkpVar.zza()) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : String.valueOf(str2.charAt(zzkpVar.zza() - 1));
        if (!TextUtils.isEmpty(str3) && str3.length() >= zzkpVar.zza()) {
            str4 = String.valueOf(str3.charAt(zzkpVar.zza() - 1));
        }
        String.valueOf(valueOf);
        String.valueOf(str4);
        return String.valueOf(valueOf).concat(String.valueOf(str4));
    }

    private static final boolean zzg(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        char c;
        int zze = zze(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true);
        if (!z) {
            c = '4';
        } else {
            if (str2.length() >= zzkpVar.zza()) {
                char charAt = str2.charAt(zzkpVar.zza() - 1);
                boolean z4 = charAt == '1';
                if (zze > 0 && cArr[zze] != '2') {
                    cArr[zze] = charAt != '1' ? '6' : '1';
                }
                return z4;
            }
            c = '0';
        }
        if (zze > 0 && cArr[zze] != '2') {
            cArr[zze] = c;
        }
        return false;
    }

    private static final boolean zzh(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        char c;
        int zze = zze(zzkpVar, immutableMap, immutableMap2, immutableSet, cArr, i, i2, i3, i4, i5, str, str2, str3, z, z2, true);
        if (!z2) {
            c = '5';
        } else {
            if (str3.length() >= zzkpVar.zza()) {
                char charAt = str3.charAt(zzkpVar.zza() - 1);
                boolean z4 = charAt == '1';
                if (zze > 0 && cArr[zze] != '2') {
                    cArr[zze] = charAt != '1' ? '7' : '1';
                }
                return z4;
            }
            c = '0';
        }
        if (zze > 0 && cArr[zze] != '2') {
            cArr[zze] = c;
        }
        return false;
    }

    private static final com.google.android.gms.internal.measurement.zzkq zzi(com.google.android.gms.internal.measurement.zzkp zzkpVar, ImmutableMap immutableMap, ImmutableMap immutableMap2, ImmutableSet immutableSet, char[] cArr, int i, int i2, int i3, int i4, int i5, String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        return (com.google.android.gms.internal.measurement.zzkq) immutableMap2.getOrDefault(zzkpVar, com.google.android.gms.internal.measurement.zzkq.PURPOSE_RESTRICTION_UNDEFINED);
    }
}
