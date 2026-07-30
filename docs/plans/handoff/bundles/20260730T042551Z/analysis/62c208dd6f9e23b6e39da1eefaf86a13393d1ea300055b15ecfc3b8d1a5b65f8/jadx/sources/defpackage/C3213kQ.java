package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzbe;
import java.util.Iterator;

/* renamed from: kQ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3213kQ {

    /* renamed from: do, reason: not valid java name */
    public final long f13982do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbe f13983do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f13984do;

    /* renamed from: for, reason: not valid java name */
    public final String f13985for;

    /* renamed from: if, reason: not valid java name */
    public final long f13986if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f13987if;

    public C3213kQ(TS ts, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzbe zzbeVar;
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        this.f13984do = str2;
        this.f13987if = str3;
        this.f13985for = TextUtils.isEmpty(str) ? null : str;
        this.f13982do = j;
        this.f13986if = j2;
        if (j2 != 0 && j2 > j) {
            C3156jS c3156jS = ts.f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Event created with reverse previous/current timestamps. appId", C3156jS.m7106while(str2));
        }
        if (bundle.isEmpty()) {
            zzbeVar = new zzbe(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    C3156jS c3156jS2 = ts.f3695do;
                    TS.m2247this(c3156jS2);
                    c3156jS2.f13717do.m7369if("Param name can't be null");
                    it.remove();
                } else {
                    C3395nV c3395nV = ts.f3700do;
                    TS.m2245goto(c3395nV);
                    Object r = c3395nV.r(bundle2.get(next), next);
                    if (r == null) {
                        C3156jS c3156jS3 = ts.f3695do;
                        TS.m2247this(c3156jS3);
                        c3156jS3.f13722new.m7368for("Param value can't be null", ts.f3693do.m6449case(next));
                        it.remove();
                    } else {
                        C3395nV c3395nV2 = ts.f3700do;
                        TS.m2245goto(c3395nV2);
                        c3395nV2.m7581abstract(bundle2, next, r);
                    }
                }
            }
            zzbeVar = new zzbe(bundle2);
        }
        this.f13983do = zzbeVar;
    }

    /* renamed from: do, reason: not valid java name */
    public final C3213kQ m7257do(TS ts, long j) {
        return new C3213kQ(ts, this.f13985for, this.f13984do, this.f13987if, this.f13982do, j, this.f13983do);
    }

    public final String toString() {
        return "Event{appId='" + this.f13984do + "', name='" + this.f13987if + "', params=" + String.valueOf(this.f13983do) + "}";
    }

    public C3213kQ(TS ts, String str, String str2, String str3, long j, long j2, zzbe zzbeVar) {
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzbeVar);
        this.f13984do = str2;
        this.f13987if = str3;
        this.f13985for = TextUtils.isEmpty(str) ? null : str;
        this.f13982do = j;
        this.f13986if = j2;
        if (j2 != 0 && j2 > j) {
            C3156jS c3156jS = ts.f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7367do(C3156jS.m7106while(str2), "Event created with reverse previous/current timestamps. appId, name", C3156jS.m7106while(str3));
        }
        this.f13983do = zzbeVar;
    }
}
