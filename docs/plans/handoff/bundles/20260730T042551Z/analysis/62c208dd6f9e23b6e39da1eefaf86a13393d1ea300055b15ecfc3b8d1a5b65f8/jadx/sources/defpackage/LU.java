package defpackage;

import android.os.Looper;
import com.google.android.gms.internal.measurement.zzdh;

/* loaded from: classes3.dex */
public final class LU extends AbstractC3863vS {

    /* renamed from: do, reason: not valid java name */
    public final M1 f1955do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PU f1956do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QU f1957do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzdh f1958do;

    /* renamed from: if, reason: not valid java name */
    public boolean f1959if;

    public LU(TS ts) {
        super(ts);
        this.f1959if = true;
        this.f1957do = new QU(this);
        this.f1956do = new PU(this);
        this.f1955do = new M1(this);
    }

    @Override // defpackage.AbstractC3863vS
    /* renamed from: public, reason: not valid java name */
    public final boolean mo1327public() {
        return false;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m1328return() {
        mo1960catch();
        if (this.f1958do == null) {
            this.f1958do = new zzdh(Looper.getMainLooper());
        }
    }
}
