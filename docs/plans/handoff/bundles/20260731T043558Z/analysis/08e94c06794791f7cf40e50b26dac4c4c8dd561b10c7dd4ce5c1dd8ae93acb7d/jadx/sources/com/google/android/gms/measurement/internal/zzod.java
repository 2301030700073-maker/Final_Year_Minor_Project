package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.collect.ImmutableList;
import expo.modules.interfaces.permissions.PermissionsResponse;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes4.dex */
public final class zzod {
    private final Map zza;

    zzod(Map map) {
        HashMap hashMap = new HashMap();
        this.zza = hashMap;
        hashMap.putAll(map);
    }

    private final Bundle zzf() {
        int zzg;
        Map map = this.zza;
        if ("1".equals(map.get("GoogleConsent")) && (zzg = zzg()) >= 0) {
            String str = (String) map.get("PurposeConsents");
            if (!TextUtils.isEmpty(str)) {
                Bundle bundle = new Bundle();
                int length = str.length();
                String str2 = PermissionsResponse.GRANTED_KEY;
                if (length > 0) {
                    bundle.putString(zzjk.AD_STORAGE.zze, str.charAt(0) == '1' ? PermissionsResponse.GRANTED_KEY : "denied");
                }
                if (str.length() > 3) {
                    bundle.putString(zzjk.AD_PERSONALIZATION.zze, (str.charAt(2) == '1' && str.charAt(3) == '1') ? PermissionsResponse.GRANTED_KEY : "denied");
                }
                if (str.length() > 6 && zzg >= 4) {
                    String str3 = zzjk.AD_USER_DATA.zze;
                    if (str.charAt(0) != '1' || str.charAt(6) != '1') {
                        str2 = "denied";
                    }
                    bundle.putString(str3, str2);
                }
                return bundle;
            }
        }
        return Bundle.EMPTY;
    }

    private final int zzg() {
        try {
            String str = (String) this.zza.get("PolicyVersion");
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzod) {
            return zza().equalsIgnoreCase(((zzod) obj).zza());
        }
        return false;
    }

    public final int hashCode() {
        return zza().hashCode();
    }

    public final String toString() {
        return zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    final String zza() {
        StringBuilder sb = new StringBuilder();
        ImmutableList immutableList = zzof.zza;
        int size = immutableList.size();
        for (int i = 0; i < size; i++) {
            String str = (String) immutableList.get(i);
            Map map = this.zza;
            if (map.containsKey(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(str);
                sb.append("=");
                sb.append((String) map.get(str));
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0062, code lost:
    
        if (r0.get("Version") != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0068, code lost:
    
        return zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006d, code lost:
    
        if (zzg() >= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0071, code lost:
    
        r1 = new android.os.Bundle();
        r2 = com.google.android.gms.measurement.internal.zzjk.AD_STORAGE.zze;
        r6 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0089, code lost:
    
        if (true == java.util.Objects.equals(r0.get("AuthorizePurpose1"), "1")) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008b, code lost:
    
        r4 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008e, code lost:
    
        r1.putString(r2, r4);
        r2 = com.google.android.gms.measurement.internal.zzjk.AD_PERSONALIZATION.zze;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009f, code lost:
    
        if (java.util.Objects.equals(r0.get("AuthorizePurpose3"), "1") == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ab, code lost:
    
        if (java.util.Objects.equals(r0.get("AuthorizePurpose4"), "1") == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ad, code lost:
    
        r4 = expo.modules.interfaces.permissions.PermissionsResponse.GRANTED_KEY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b0, code lost:
    
        r1.putString(r2, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b8, code lost:
    
        if (zzg() < 4) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ba, code lost:
    
        r2 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA.zze;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c6, code lost:
    
        if (java.util.Objects.equals(r0.get("AuthorizePurpose1"), "1") == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d2, code lost:
    
        if (java.util.Objects.equals(r0.get("AuthorizePurpose7"), "1") == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d4, code lost:
    
        r6 = expo.modules.interfaces.permissions.PermissionsResponse.GRANTED_KEY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d5, code lost:
    
        r1.putString(r2, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d8, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00af, code lost:
    
        r4 = "denied";
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008d, code lost:
    
        r4 = expo.modules.interfaces.permissions.PermissionsResponse.GRANTED_KEY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00dd, code lost:
    
        return zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x004c, code lost:
    
        if ("1".equals(r2.get("EnableAdvertiserConsentMode")) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0029, code lost:
    
        if ("1".equals(r2.get("EnableAdvertiserConsentMode")) != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0058, code lost:
    
        if (((java.lang.Boolean) r0.zzb(null)).booleanValue() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x005a, code lost:
    
        r0 = r9.zza;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zzb() {
        /*
            r9 = this;
            com.google.android.gms.measurement.internal.zzfx r0 = com.google.android.gms.measurement.internal.zzfy.zzaZ
            r1 = 0
            java.lang.Object r2 = r0.zzb(r1)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            java.lang.String r3 = "EnableAdvertiserConsentMode"
            java.lang.String r4 = "gdprApplies"
            java.lang.String r5 = "1"
            if (r2 == 0) goto L2c
            java.util.Map r2 = r9.zza
            java.lang.Object r4 = r2.get(r4)
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto Lde
            java.lang.Object r2 = r2.get(r3)
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto Lde
            goto L4e
        L2c:
            java.util.Map r2 = r9.zza
            java.lang.String r6 = "GoogleConsent"
            java.lang.Object r6 = r2.get(r6)
            boolean r6 = r5.equals(r6)
            if (r6 == 0) goto Lde
            java.lang.Object r4 = r2.get(r4)
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto Lde
            java.lang.Object r2 = r2.get(r3)
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto Lde
        L4e:
            java.lang.Object r0 = r0.zzb(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Ld9
            java.util.Map r0 = r9.zza
            java.lang.String r1 = "Version"
            java.lang.Object r1 = r0.get(r1)
            if (r1 != 0) goto L69
            android.os.Bundle r0 = r9.zzf()
            return r0
        L69:
            int r1 = r9.zzg()
            if (r1 >= 0) goto L71
            goto Lde
        L71:
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            com.google.android.gms.measurement.internal.zzjk r2 = com.google.android.gms.measurement.internal.zzjk.AD_STORAGE
            java.lang.String r2 = r2.zze
            java.lang.String r3 = "AuthorizePurpose1"
            java.lang.Object r4 = r0.get(r3)
            boolean r4 = java.util.Objects.equals(r4, r5)
            java.lang.String r6 = "denied"
            java.lang.String r7 = "granted"
            r8 = 1
            if (r8 == r4) goto L8d
            r4 = r6
            goto L8e
        L8d:
            r4 = r7
        L8e:
            r1.putString(r2, r4)
            com.google.android.gms.measurement.internal.zzjk r2 = com.google.android.gms.measurement.internal.zzjk.AD_PERSONALIZATION
            java.lang.String r2 = r2.zze
            java.lang.String r4 = "AuthorizePurpose3"
            java.lang.Object r4 = r0.get(r4)
            boolean r4 = java.util.Objects.equals(r4, r5)
            if (r4 == 0) goto Laf
            java.lang.String r4 = "AuthorizePurpose4"
            java.lang.Object r4 = r0.get(r4)
            boolean r4 = java.util.Objects.equals(r4, r5)
            if (r4 == 0) goto Laf
            r4 = r7
            goto Lb0
        Laf:
            r4 = r6
        Lb0:
            r1.putString(r2, r4)
            int r2 = r9.zzg()
            r4 = 4
            if (r2 < r4) goto Ld8
            com.google.android.gms.measurement.internal.zzjk r2 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA
            java.lang.String r2 = r2.zze
            java.lang.Object r3 = r0.get(r3)
            boolean r3 = java.util.Objects.equals(r3, r5)
            if (r3 == 0) goto Ld5
            java.lang.String r3 = "AuthorizePurpose7"
            java.lang.Object r0 = r0.get(r3)
            boolean r0 = java.util.Objects.equals(r0, r5)
            if (r0 == 0) goto Ld5
            r6 = r7
        Ld5:
            r1.putString(r2, r6)
        Ld8:
            return r1
        Ld9:
            android.os.Bundle r0 = r9.zzf()
            return r0
        Lde:
            android.os.Bundle r0 = android.os.Bundle.EMPTY
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzod.zzb():android.os.Bundle");
    }

    public final String zzc() {
        String str = (String) this.zza.get("PurposeDiagnostics");
        return TextUtils.isEmpty(str) ? "200000" : str;
    }

    public final String zzd(zzod zzodVar) {
        Map map = zzodVar.zza;
        String str = "1";
        String str2 = (map.isEmpty() || ((String) map.get("Version")) != null) ? AppEventsConstants.EVENT_PARAM_VALUE_NO : "1";
        Bundle zzb = zzb();
        Bundle zzb2 = zzodVar.zzb();
        if (zzb.size() == zzb2.size() && Objects.equals(zzb.getString("ad_storage"), zzb2.getString("ad_storage")) && Objects.equals(zzb.getString("ad_personalization"), zzb2.getString("ad_personalization")) && Objects.equals(zzb.getString("ad_user_data"), zzb2.getString("ad_user_data"))) {
            str = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
        return str2.concat(str);
    }

    public final String zze() {
        StringBuilder sb = new StringBuilder("1");
        int i = -1;
        try {
            String str = (String) this.zza.get("CmpSdkID");
            if (!TextUtils.isEmpty(str)) {
                i = Integer.parseInt(str);
            }
        } catch (NumberFormatException unused) {
        }
        if (i < 0 || i > 4095) {
            sb.append("00");
        } else {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i >> 6));
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i & 63));
        }
        int zzg = zzg();
        if (zzg < 0 || zzg > 63) {
            sb.append(AppEventsConstants.EVENT_PARAM_VALUE_NO);
        } else {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(zzg));
        }
        Preconditions.checkArgument(true);
        Map map = this.zza;
        int i2 = true != "1".equals(map.get("gdprApplies")) ? 0 : 2;
        boolean equals = "1".equals(map.get("EnableAdvertiserConsentMode"));
        int i3 = i2 | 4;
        if (equals) {
            i3 = i2 | 12;
        }
        sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i3));
        return sb.toString();
    }
}
