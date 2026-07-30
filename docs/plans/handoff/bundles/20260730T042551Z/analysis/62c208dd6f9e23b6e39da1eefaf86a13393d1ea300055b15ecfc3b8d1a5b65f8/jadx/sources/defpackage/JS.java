package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzo;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final /* synthetic */ class JS implements Callable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1636do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f1637do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f1638if;

    public /* synthetic */ JS(IS is, String str) {
        this.f1637do = is;
        this.f1638if = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.f1636do;
        Object obj = this.f1638if;
        Object obj2 = this.f1637do;
        switch (i) {
            case 0:
                return new zzx("internal.appMetadata", new HS((IS) obj2, (String) obj));
            default:
                ZU zu = (ZU) obj;
                zzo zzoVar = (zzo) obj2;
                if (zu.m3033interface((String) Preconditions.checkNotNull(zzoVar.f10320break)).m7965while() && C3628rT.m7949catch(zzoVar.f10337import).m7965while()) {
                    return zu.m3023class(zzoVar).m2390else();
                }
                zu.mo2249case().f13723this.m7369if("Analytics storage consent denied. Returning null app instance id");
                return null;
        }
    }

    public JS(ZU zu, zzo zzoVar) {
        this.f1637do = zzoVar;
        this.f1638if = zu;
    }
}
