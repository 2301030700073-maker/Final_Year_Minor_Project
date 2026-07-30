package defpackage;

import java.util.HashMap;

/* loaded from: classes3.dex */
public final class SU {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f3523do = {"GoogleConsent", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "CmpSdkID"};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f3524do;

    public SU(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f3524do = hashMap2;
        hashMap2.putAll(hashMap);
    }

    /* renamed from: do, reason: not valid java name */
    public final String m2159do() {
        StringBuilder sb = new StringBuilder();
        String[] strArr = f3523do;
        for (int i = 0; i < 6; i++) {
            String str = strArr[i];
            HashMap hashMap = this.f3524do;
            if (hashMap.containsKey(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(str);
                sb.append("=");
                sb.append((String) hashMap.get(str));
            }
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SU) {
            return m2159do().equalsIgnoreCase(((SU) obj).m2159do());
        }
        return false;
    }

    public final int hashCode() {
        return m2159do().hashCode();
    }

    public final String toString() {
        return m2159do();
    }
}
