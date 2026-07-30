package defpackage;

import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzo;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final /* synthetic */ class HS implements Callable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1354do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f1355do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f1356if;

    public /* synthetic */ HS(IS is, String str) {
        this.f1355do = is;
        this.f1356if = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.f1354do;
        Object obj = this.f1356if;
        Object obj2 = this.f1355do;
        switch (i) {
            case 0:
                String str = (String) obj;
                UR x = ((IS) obj2).m2833const().x(str);
                HashMap hashMap = new HashMap();
                hashMap.put("platform", Constants.PLATFORM);
                hashMap.put("package_name", str);
                hashMap.put("gmp_version", 106000L);
                if (x != null) {
                    String m2395goto = x.m2395goto();
                    if (m2395goto != null) {
                        hashMap.put("app_version", m2395goto);
                    }
                    hashMap.put("app_version_int", Long.valueOf(x.m2388default()));
                    hashMap.put("dynamite_version", Long.valueOf(x.m2412synchronized()));
                }
                return hashMap;
            default:
                YS ys = (YS) obj;
                ys.f4740do.p();
                return new zzaj(ys.f4740do.m3026else(((zzo) obj2).f10320break));
        }
    }

    public HS(YS ys, zzo zzoVar) {
        this.f1355do = zzoVar;
        this.f1356if = ys;
    }
}
