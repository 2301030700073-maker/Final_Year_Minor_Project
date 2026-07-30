package defpackage;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class UR {

    /* renamed from: break, reason: not valid java name */
    public long f3869break;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public String f3870break;

    /* renamed from: case, reason: not valid java name */
    public long f3871case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public String f3872case;

    /* renamed from: catch, reason: not valid java name */
    public long f3873catch;

    /* renamed from: catch, reason: not valid java name and collision with other field name */
    public String f3874catch;

    /* renamed from: class, reason: not valid java name */
    public long f3875class;

    /* renamed from: class, reason: not valid java name and collision with other field name */
    public String f3876class;

    /* renamed from: const, reason: not valid java name */
    public long f3877const;

    /* renamed from: do, reason: not valid java name */
    public int f3878do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f3879do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TS f3880do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Boolean f3881do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Long f3882do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3883do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList f3884do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3885do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public byte[] f3886do;

    /* renamed from: else, reason: not valid java name */
    public long f3887else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public String f3888else;

    /* renamed from: final, reason: not valid java name */
    public long f3889final;

    /* renamed from: for, reason: not valid java name */
    public int f3890for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public long f3891for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public String f3892for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f3893for;

    /* renamed from: goto, reason: not valid java name */
    public long f3894goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public String f3895goto;

    /* renamed from: if, reason: not valid java name */
    public int f3896if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f3897if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Long f3898if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f3899if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f3900if;

    /* renamed from: import, reason: not valid java name */
    public long f3901import;

    /* renamed from: native, reason: not valid java name */
    public long f3902native;

    /* renamed from: new, reason: not valid java name */
    public long f3903new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public String f3904new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f3905new;

    /* renamed from: super, reason: not valid java name */
    public long f3906super;

    /* renamed from: this, reason: not valid java name */
    public long f3907this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public String f3908this;

    /* renamed from: throw, reason: not valid java name */
    public long f3909throw;

    /* renamed from: try, reason: not valid java name */
    public long f3910try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public String f3911try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f3912try;

    /* renamed from: while, reason: not valid java name */
    public long f3913while;

    public UR(TS ts, String str) {
        Preconditions.checkNotNull(ts);
        Preconditions.checkNotEmpty(str);
        this.f3880do = ts;
        this.f3883do = str;
        QS qs = ts.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
    }

    public final void a(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3873catch != j;
        this.f3873catch = j;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m2381abstract(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3889final != j;
        this.f3889final = j;
    }

    public final void b(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3891for != j;
        this.f3891for = j;
    }

    /* renamed from: break, reason: not valid java name */
    public final String m2382break() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3892for;
    }

    public final void c(long j) {
        Preconditions.checkArgument(j >= 0);
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try = (this.f3879do != j) | this.f3912try;
        this.f3879do = j;
    }

    /* renamed from: case, reason: not valid java name */
    public final String m2383case() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3883do;
    }

    /* renamed from: catch, reason: not valid java name */
    public final String m2384catch() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3874catch;
    }

    /* renamed from: class, reason: not valid java name */
    public final String m2385class() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3870break;
    }

    /* renamed from: const, reason: not valid java name */
    public final void m2386const() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try = false;
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m2387continue(String str) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= !Objects.equals(this.f3876class, str);
        this.f3876class = str;
    }

    public final void d(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3897if != j;
        this.f3897if = j;
    }

    /* renamed from: default, reason: not valid java name */
    public final long m2388default() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3903new;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2389do(long j) {
        TS ts = this.f3880do;
        QS qs = ts.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        long j2 = this.f3879do + j;
        C3156jS c3156jS = ts.f3695do;
        String str = this.f3883do;
        if (j2 > 2147483647L) {
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Bundle index overflow. appId", C3156jS.m7106while(str));
            j2 = j - 1;
        }
        long j3 = this.f3873catch + 1;
        if (j3 > 2147483647L) {
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Delivery index overflow. appId", C3156jS.m7106while(str));
            j3 = 0;
        }
        this.f3912try = true;
        this.f3879do = j2;
        this.f3873catch = j3;
    }

    public final Boolean e() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3881do;
    }

    /* renamed from: else, reason: not valid java name */
    public final String m2390else() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3899if;
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m2391extends(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3906super != j;
        this.f3906super = j;
    }

    /* renamed from: final, reason: not valid java name */
    public final boolean m2392final() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3912try;
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m2393finally(String str) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= !Objects.equals(this.f3911try, str);
        this.f3911try = str;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2394for(List<String> list) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        if (Objects.equals(this.f3884do, list)) {
            return;
        }
        this.f3912try = true;
        this.f3884do = list != null ? new ArrayList(list) : null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final String m2395goto() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3872case;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2396if(String str) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.f3912try |= !Objects.equals(this.f3895goto, str);
        this.f3895goto = str;
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m2397implements(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3887else != j;
        this.f3887else = j;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m2398import(String str) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= !Objects.equals(this.f3899if, str);
        this.f3899if = str;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m2399instanceof(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3910try != j;
        this.f3910try = j;
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m2400interface(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3913while != j;
        this.f3913while = j;
    }

    /* renamed from: native, reason: not valid java name */
    public final void m2401native(boolean z) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3885do != z;
        this.f3885do = z;
    }

    /* renamed from: new, reason: not valid java name */
    public final String m2402new() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3895goto;
    }

    /* renamed from: package, reason: not valid java name */
    public final void m2403package(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3909throw != j;
        this.f3909throw = j;
    }

    /* renamed from: private, reason: not valid java name */
    public final void m2404private(String str) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        this.f3912try |= !Objects.equals(this.f3892for, str);
        this.f3892for = str;
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m2405protected(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3875class != j;
        this.f3875class = j;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m2406public(int i) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3896if != i;
        this.f3896if = i;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m2407return(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3869break != j;
        this.f3869break = j;
    }

    /* renamed from: static, reason: not valid java name */
    public final void m2408static(String str) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= !Objects.equals(this.f3888else, str);
        this.f3888else = str;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m2409strictfp(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3877const != j;
        this.f3877const = j;
    }

    /* renamed from: super, reason: not valid java name */
    public final boolean m2410super() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3893for;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m2411switch(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3901import != j;
        this.f3901import = j;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final long m2412synchronized() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3887else;
    }

    /* renamed from: this, reason: not valid java name */
    public final String m2413this() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        return this.f3911try;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m2414throw(int i) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3890for != i;
        this.f3890for = i;
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m2415throws(String str) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= !Objects.equals(this.f3872case, str);
        this.f3872case = str;
    }

    /* renamed from: transient, reason: not valid java name */
    public final void m2416transient(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3871case != j;
        this.f3871case = j;
    }

    /* renamed from: try, reason: not valid java name */
    public final String m2417try() {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        String str = this.f3876class;
        m2387continue(null);
        return str;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m2418volatile(String str) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= !Objects.equals(this.f3904new, str);
        this.f3904new = str;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m2419while(long j) {
        QS qs = this.f3880do.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        this.f3912try |= this.f3903new != j;
        this.f3903new = j;
    }
}
