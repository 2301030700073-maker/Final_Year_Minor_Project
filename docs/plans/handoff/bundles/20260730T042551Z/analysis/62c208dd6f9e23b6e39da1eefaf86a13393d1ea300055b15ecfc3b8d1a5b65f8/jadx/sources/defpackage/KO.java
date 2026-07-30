package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
public final class KO implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f1802do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f1803do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1804for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f1805if;

    public /* synthetic */ KO(C0691aQ c0691aQ, String str, long j, int i) {
        this.f1804for = i;
        this.f1803do = str;
        this.f1802do = j;
        this.f1805if = c0691aQ;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f1804for;
        long j = this.f1802do;
        Object obj = this.f1803do;
        Object obj2 = this.f1805if;
        switch (i) {
            case 0:
                C0691aQ c0691aQ = (C0691aQ) obj2;
                String str = (String) obj;
                c0691aQ.mo1960catch();
                Preconditions.checkNotEmpty(str);
                F2 f2 = c0691aQ.f4949if;
                if (f2.isEmpty()) {
                    c0691aQ.f4947do = j;
                }
                Integer num = (Integer) f2.getOrDefault(str, null);
                if (num == null) {
                    if (f2.f12632for < 100) {
                        f2.put(str, 1);
                        c0691aQ.f4948do.put(str, Long.valueOf(j));
                        break;
                    } else {
                        c0691aQ.mo2249case().f13722new.m7369if("Too many ads visible");
                        break;
                    }
                } else {
                    f2.put(str, Integer.valueOf(num.intValue() + 1));
                    break;
                }
            case 1:
                C0691aQ c0691aQ2 = (C0691aQ) obj2;
                String str2 = (String) obj;
                c0691aQ2.mo1960catch();
                Preconditions.checkNotEmpty(str2);
                F2 f22 = c0691aQ2.f4949if;
                Integer num2 = (Integer) f22.getOrDefault(str2, null);
                if (num2 == null) {
                    c0691aQ2.mo2249case().f13717do.m7368for("Call to endAdUnitExposure for unknown ad unit id", str2);
                    break;
                } else {
                    C2696eU m6459static = c0691aQ2.m8799super().m6459static(false);
                    int intValue = num2.intValue() - 1;
                    if (intValue != 0) {
                        f22.put(str2, Integer.valueOf(intValue));
                        break;
                    } else {
                        f22.remove(str2);
                        F2 f23 = c0691aQ2.f4948do;
                        Long l = (Long) f23.getOrDefault(str2, null);
                        if (l == null) {
                            c0691aQ2.mo2249case().f13717do.m7369if("First ad unit exposure time was never set");
                        } else {
                            long longValue = j - l.longValue();
                            f23.remove(str2);
                            c0691aQ2.m3131return(str2, longValue, m6459static);
                        }
                        if (f22.isEmpty()) {
                            long j2 = c0691aQ2.f4947do;
                            if (j2 != 0) {
                                c0691aQ2.m3129native(j - j2, m6459static);
                                c0691aQ2.f4947do = 0L;
                                break;
                            } else {
                                c0691aQ2.mo2249case().f13717do.m7369if("First ad exposure time was never set");
                                break;
                            }
                        }
                    }
                }
                break;
            default:
                C4041yT c4041yT = (C4041yT) obj;
                Bundle bundle = (Bundle) obj2;
                if (!TextUtils.isEmpty(c4041yT.m8796class().m4908static())) {
                    c4041yT.mo2249case().f13713case.m7369if("Using developer consent only; google app id found");
                    break;
                } else {
                    c4041yT.m8742static(bundle, 0, j);
                    break;
                }
        }
    }

    public /* synthetic */ KO(C4041yT c4041yT, Bundle bundle, long j) {
        this.f1804for = 2;
        this.f1803do = c4041yT;
        this.f1805if = bundle;
        this.f1802do = j;
    }
}
