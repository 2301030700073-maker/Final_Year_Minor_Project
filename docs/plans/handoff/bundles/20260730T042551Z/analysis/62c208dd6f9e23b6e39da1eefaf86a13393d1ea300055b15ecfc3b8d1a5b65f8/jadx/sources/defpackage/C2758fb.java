package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.TD;

/* renamed from: fb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2758fb {
    /* renamed from: do, reason: not valid java name */
    public static String m6669do(String str, String str2, String str3) {
        boolean equals = "su".equals(str);
        String str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (equals) {
            TD.Cdo m2228if = new TD().f3619if.m2228if(str3);
            Integer num = m2228if.f3620do;
            if (!(num != null && num.intValue() == 0)) {
                return "Error with su shell";
            }
            if ("stdout".equals(str2)) {
                str4 = m2228if.f3621do;
            }
            return "exit".equals(str2) ? Integer.toString(num.intValue()) : "stderr".equals(str2) ? m2228if.f3622if : str4;
        }
        TD.Cdo m2228if2 = new TD().f3618do.m2228if(str3);
        Integer num2 = m2228if2.f3620do;
        boolean z = num2 != null && num2.intValue() == 0;
        String str5 = m2228if2.f3622if;
        if (!z) {
            return str5;
        }
        if ("stdout".equals(str2)) {
            str4 = m2228if2.f3621do;
        }
        return "exit".equals(str2) ? Integer.toString(num2.intValue()) : "stderr".equals(str2) ? str5 : str4;
    }
}
