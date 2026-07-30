package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cwhile;
import com.google.android.gms.common.api.Api;
import defpackage.AbstractC3370n6;
import defpackage.BB;
import defpackage.C3184jy;
import defpackage.EnumC3327mM;
import defpackage.InterfaceC0569Vp;
import java.nio.charset.Charset;
import java.util.List;

/* renamed from: androidx.datastore.preferences.protobuf.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase implements Cvolatile {

    /* renamed from: do, reason: not valid java name */
    public int f6573do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f6574do;

    /* renamed from: for, reason: not valid java name */
    public int f6575for = 0;

    /* renamed from: if, reason: not valid java name */
    public int f6576if;

    public Ccase(Ctry ctry) {
        Charset charset = Cthrow.f6655do;
        if (ctry == null) {
            throw new NullPointerException("input");
        }
        this.f6574do = ctry;
        ctry.f6677do = this;
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    public final int a() {
        g(5);
        return this.f6574do.mo4028super();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: abstract, reason: not valid java name */
    public final void mo3772abstract(List<Integer> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Csuper;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 2) {
                int mo4027static = ctry.mo4027static();
                h(mo4027static);
                int mo4021if = ctry.mo4021if() + mo4027static;
                do {
                    list.add(Integer.valueOf(ctry.mo4028super()));
                } while (ctry.mo4021if() < mo4021if);
                return;
            }
            if (i != 5) {
                throw Cwhile.m4056if();
            }
            do {
                list.add(Integer.valueOf(ctry.mo4028super()));
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return = ctry.mo4026return();
                }
            } while (mo4026return == this.f6573do);
            this.f6575for = mo4026return;
            return;
        }
        Csuper csuper = (Csuper) list;
        int i2 = this.f6573do & 7;
        if (i2 == 2) {
            int mo4027static2 = ctry.mo4027static();
            h(mo4027static2);
            int mo4021if2 = ctry.mo4021if() + mo4027static2;
            do {
                csuper.m3990case(ctry.mo4028super());
            } while (ctry.mo4021if() < mo4021if2);
            return;
        }
        if (i2 != 5) {
            throw Cwhile.m4056if();
        }
        do {
            csuper.m3990case(ctry.mo4028super());
            if (ctry.mo4019for()) {
                return;
            } else {
                mo4026return2 = ctry.mo4026return();
            }
        } while (mo4026return2 == this.f6573do);
        this.f6575for = mo4026return2;
    }

    public final Object b(EnumC3327mM enumC3327mM, Class<?> cls, Cthis cthis) {
        switch (enumC3327mM.ordinal()) {
            case 0:
                return Double.valueOf(readDouble());
            case 1:
                return Float.valueOf(readFloat());
            case 2:
                return Long.valueOf(mo3796protected());
            case 3:
                return Long.valueOf(mo3801super());
            case 4:
                return Integer.valueOf(mo3795private());
            case 5:
                return Long.valueOf(mo3787if());
            case 6:
                return Integer.valueOf(mo3776class());
            case 7:
                return Boolean.valueOf(mo3807transient());
            case 8:
                return mo3788implements();
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                g(2);
                return d(C3184jy.f13856do.m7180do(cls), cthis);
            case 11:
                return mo3792native();
            case 12:
                return Integer.valueOf(mo3777const());
            case 13:
                return Integer.valueOf(mo3779default());
            case 14:
                return Integer.valueOf(a());
            case 15:
                return Long.valueOf(mo3780do());
            case 16:
                return Integer.valueOf(mo3791interface());
            case 17:
                return Long.valueOf(mo3778continue());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: break, reason: not valid java name */
    public final void mo3773break(List<Boolean> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Cnew;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(ctry.mo4012case()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4021if = ctry.mo4021if() + ctry.mo4027static();
            do {
                list.add(Boolean.valueOf(ctry.mo4012case()));
            } while (ctry.mo4021if() < mo4021if);
            f(mo4021if);
            return;
        }
        Cnew cnew = (Cnew) list;
        int i2 = this.f6573do & 7;
        if (i2 == 0) {
            do {
                cnew.m3947case(ctry.mo4012case());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4021if2 = ctry.mo4021if() + ctry.mo4027static();
        do {
            cnew.m3947case(ctry.mo4012case());
        } while (ctry.mo4021if() < mo4021if2);
        f(mo4021if2);
    }

    public final <T> T c(BB<T> bb, Cthis cthis) {
        int i = this.f6576if;
        this.f6576if = ((this.f6573do >>> 3) << 3) | 4;
        try {
            T mo155try = bb.mo155try();
            bb.mo151goto(mo155try, this, cthis);
            bb.mo149else(mo155try);
            if (this.f6573do == this.f6576if) {
                return mo155try;
            }
            throw Cwhile.m4058try();
        } finally {
            this.f6576if = i;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: case, reason: not valid java name */
    public final void mo3774case(List<Float> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Cconst;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 2) {
                int mo4027static = ctry.mo4027static();
                h(mo4027static);
                int mo4021if = ctry.mo4021if() + mo4027static;
                do {
                    list.add(Float.valueOf(ctry.mo4014class()));
                } while (ctry.mo4021if() < mo4021if);
                return;
            }
            if (i != 5) {
                throw Cwhile.m4056if();
            }
            do {
                list.add(Float.valueOf(ctry.mo4014class()));
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return = ctry.mo4026return();
                }
            } while (mo4026return == this.f6573do);
            this.f6575for = mo4026return;
            return;
        }
        Cconst cconst = (Cconst) list;
        int i2 = this.f6573do & 7;
        if (i2 == 2) {
            int mo4027static2 = ctry.mo4027static();
            h(mo4027static2);
            int mo4021if2 = ctry.mo4021if() + mo4027static2;
            do {
                cconst.m3832case(ctry.mo4014class());
            } while (ctry.mo4021if() < mo4021if2);
            return;
        }
        if (i2 != 5) {
            throw Cwhile.m4056if();
        }
        do {
            cconst.m3832case(ctry.mo4014class());
            if (ctry.mo4019for()) {
                return;
            } else {
                mo4026return2 = ctry.mo4026return();
            }
        } while (mo4026return2 == this.f6573do);
        this.f6575for = mo4026return2;
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: catch, reason: not valid java name */
    public final void mo3775catch(List<Integer> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Csuper;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 2) {
                int mo4027static = ctry.mo4027static();
                h(mo4027static);
                int mo4021if = ctry.mo4021if() + mo4027static;
                do {
                    list.add(Integer.valueOf(ctry.mo4011break()));
                } while (ctry.mo4021if() < mo4021if);
                return;
            }
            if (i != 5) {
                throw Cwhile.m4056if();
            }
            do {
                list.add(Integer.valueOf(ctry.mo4011break()));
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return = ctry.mo4026return();
                }
            } while (mo4026return == this.f6573do);
            this.f6575for = mo4026return;
            return;
        }
        Csuper csuper = (Csuper) list;
        int i2 = this.f6573do & 7;
        if (i2 == 2) {
            int mo4027static2 = ctry.mo4027static();
            h(mo4027static2);
            int mo4021if2 = ctry.mo4021if() + mo4027static2;
            do {
                csuper.m3990case(ctry.mo4011break());
            } while (ctry.mo4021if() < mo4021if2);
            return;
        }
        if (i2 != 5) {
            throw Cwhile.m4056if();
        }
        do {
            csuper.m3990case(ctry.mo4011break());
            if (ctry.mo4019for()) {
                return;
            } else {
                mo4026return2 = ctry.mo4026return();
            }
        } while (mo4026return2 == this.f6573do);
        this.f6575for = mo4026return2;
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: class, reason: not valid java name */
    public final int mo3776class() {
        g(5);
        return this.f6574do.mo4011break();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: const, reason: not valid java name */
    public final int mo3777const() {
        g(0);
        return this.f6574do.mo4027static();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: continue, reason: not valid java name */
    public final long mo3778continue() {
        g(0);
        return this.f6574do.mo4022import();
    }

    public final <T> T d(BB<T> bb, Cthis cthis) {
        Ctry ctry = this.f6574do;
        int mo4027static = ctry.mo4027static();
        if (ctry.f6676do >= ctry.f6679if) {
            throw new Cwhile("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int mo4033try = ctry.mo4033try(mo4027static);
        T mo155try = bb.mo155try();
        ctry.f6676do++;
        bb.mo151goto(mo155try, this, cthis);
        bb.mo149else(mo155try);
        ctry.mo4016do(0);
        ctry.f6676do--;
        ctry.mo4024new(mo4033try);
        return mo155try;
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: default, reason: not valid java name */
    public final int mo3779default() {
        g(0);
        return this.f6574do.mo4030this();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: do, reason: not valid java name */
    public final long mo3780do() {
        g(1);
        return this.f6574do.mo4031throw();
    }

    public final void e(List<String> list, boolean z) {
        int mo4026return;
        int mo4026return2;
        if ((this.f6573do & 7) != 2) {
            throw Cwhile.m4056if();
        }
        boolean z2 = list instanceof InterfaceC0569Vp;
        Ctry ctry = this.f6574do;
        if (!z2 || z) {
            do {
                list.add(z ? mo3788implements() : mo3785for());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return = ctry.mo4026return();
                }
            } while (mo4026return == this.f6573do);
            this.f6575for = mo4026return;
            return;
        }
        InterfaceC0569Vp interfaceC0569Vp = (InterfaceC0569Vp) list;
        do {
            interfaceC0569Vp.mo2670strictfp(mo3792native());
            if (ctry.mo4019for()) {
                return;
            } else {
                mo4026return2 = ctry.mo4026return();
            }
        } while (mo4026return2 == this.f6573do);
        this.f6575for = mo4026return2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: else, reason: not valid java name */
    public final <T> void mo3781else(List<T> list, BB<T> bb, Cthis cthis) {
        int mo4026return;
        int i = this.f6573do;
        if ((i & 7) != 2) {
            int i2 = Cwhile.f6695for;
            throw new Cwhile.Cdo();
        }
        do {
            list.add(d(bb, cthis));
            Ctry ctry = this.f6574do;
            if (ctry.mo4019for() || this.f6575for != 0) {
                return;
            } else {
                mo4026return = ctry.mo4026return();
            }
        } while (mo4026return == i);
        this.f6575for = mo4026return;
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: extends, reason: not valid java name */
    public final int mo3782extends() {
        int i = this.f6575for;
        if (i != 0) {
            this.f6573do = i;
            this.f6575for = 0;
        } else {
            this.f6573do = this.f6574do.mo4026return();
        }
        int i2 = this.f6573do;
        return (i2 == 0 || i2 == this.f6576if) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i2 >>> 3;
    }

    public final void f(int i) {
        if (this.f6574do.mo4021if() != i) {
            throw Cwhile.m4053case();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: final, reason: not valid java name */
    public final <T> T mo3783final(BB<T> bb, Cthis cthis) {
        g(2);
        return (T) d(bb, cthis);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: finally, reason: not valid java name */
    public final void mo3784finally(List<String> list) {
        e(list, true);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: for, reason: not valid java name */
    public final String mo3785for() {
        g(2);
        return this.f6574do.mo4023native();
    }

    public final void g(int i) {
        if ((this.f6573do & 7) != i) {
            throw Cwhile.m4056if();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: goto, reason: not valid java name */
    public final boolean mo3786goto() {
        int i;
        Ctry ctry = this.f6574do;
        if (ctry.mo4019for() || (i = this.f6573do) == this.f6576if) {
            return false;
        }
        return ctry.mo4032throws(i);
    }

    public final void h(int i) {
        if ((i & 3) != 0) {
            throw Cwhile.m4058try();
        }
    }

    public final void i(int i) {
        if ((i & 7) != 0) {
            throw Cwhile.m4058try();
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: if, reason: not valid java name */
    public final long mo3787if() {
        g(1);
        return this.f6574do.mo4013catch();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: implements, reason: not valid java name */
    public final String mo3788implements() {
        g(2);
        return this.f6574do.mo4025public();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: import, reason: not valid java name */
    public final void mo3789import(List<AbstractC3370n6> list) {
        int mo4026return;
        if ((this.f6573do & 7) != 2) {
            throw Cwhile.m4056if();
        }
        do {
            list.add(mo3792native());
            Ctry ctry = this.f6574do;
            if (ctry.mo4019for()) {
                return;
            } else {
                mo4026return = ctry.mo4026return();
            }
        } while (mo4026return == this.f6573do);
        this.f6575for = mo4026return;
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: instanceof, reason: not valid java name */
    public final void mo3790instanceof(List<Long> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Cstatic;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(ctry.mo4018final()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4021if = ctry.mo4021if() + ctry.mo4027static();
            do {
                list.add(Long.valueOf(ctry.mo4018final()));
            } while (ctry.mo4021if() < mo4021if);
            f(mo4021if);
            return;
        }
        Cstatic cstatic = (Cstatic) list;
        int i2 = this.f6573do & 7;
        if (i2 == 0) {
            do {
                cstatic.m3987case(ctry.mo4018final());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4021if2 = ctry.mo4021if() + ctry.mo4027static();
        do {
            cstatic.m3987case(ctry.mo4018final());
        } while (ctry.mo4021if() < mo4021if2);
        f(mo4021if2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: interface, reason: not valid java name */
    public final int mo3791interface() {
        g(0);
        return this.f6574do.mo4034while();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: native, reason: not valid java name */
    public final AbstractC3370n6 mo3792native() {
        g(2);
        return this.f6574do.mo4017else();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: new, reason: not valid java name */
    public final void mo3793new(List<String> list) {
        e(list, false);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: package, reason: not valid java name */
    public final void mo3794package(List<Long> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Cstatic;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(ctry.mo4029switch()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4021if = ctry.mo4021if() + ctry.mo4027static();
            do {
                list.add(Long.valueOf(ctry.mo4029switch()));
            } while (ctry.mo4021if() < mo4021if);
            f(mo4021if);
            return;
        }
        Cstatic cstatic = (Cstatic) list;
        int i2 = this.f6573do & 7;
        if (i2 == 0) {
            do {
                cstatic.m3987case(ctry.mo4029switch());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4021if2 = ctry.mo4021if() + ctry.mo4027static();
        do {
            cstatic.m3987case(ctry.mo4029switch());
        } while (ctry.mo4021if() < mo4021if2);
        f(mo4021if2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: private, reason: not valid java name */
    public final int mo3795private() {
        g(0);
        return this.f6574do.mo4015const();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: protected, reason: not valid java name */
    public final long mo3796protected() {
        g(0);
        return this.f6574do.mo4018final();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: public, reason: not valid java name */
    public final void mo3797public(List<Double> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Cgoto;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(ctry.mo4020goto()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4027static = ctry.mo4027static();
            i(mo4027static);
            int mo4021if = ctry.mo4021if() + mo4027static;
            do {
                list.add(Double.valueOf(ctry.mo4020goto()));
            } while (ctry.mo4021if() < mo4021if);
            return;
        }
        Cgoto cgoto = (Cgoto) list;
        int i2 = this.f6573do & 7;
        if (i2 == 1) {
            do {
                cgoto.m3882case(ctry.mo4020goto());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4027static2 = ctry.mo4027static();
        i(mo4027static2);
        int mo4021if2 = ctry.mo4021if() + mo4027static2;
        do {
            cgoto.m3882case(ctry.mo4020goto());
        } while (ctry.mo4021if() < mo4021if2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    public final double readDouble() {
        g(1);
        return this.f6574do.mo4020goto();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    public final float readFloat() {
        g(5);
        return this.f6574do.mo4014class();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: return, reason: not valid java name */
    public final void mo3798return(List<Integer> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Csuper;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(ctry.mo4027static()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4021if = ctry.mo4021if() + ctry.mo4027static();
            do {
                list.add(Integer.valueOf(ctry.mo4027static()));
            } while (ctry.mo4021if() < mo4021if);
            f(mo4021if);
            return;
        }
        Csuper csuper = (Csuper) list;
        int i2 = this.f6573do & 7;
        if (i2 == 0) {
            do {
                csuper.m3990case(ctry.mo4027static());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4021if2 = ctry.mo4021if() + ctry.mo4027static();
        do {
            csuper.m3990case(ctry.mo4027static());
        } while (ctry.mo4021if() < mo4021if2);
        f(mo4021if2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: static, reason: not valid java name */
    public final int mo3799static() {
        return this.f6573do;
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: strictfp, reason: not valid java name */
    public final void mo3800strictfp(List<Integer> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Csuper;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(ctry.mo4030this()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4021if = ctry.mo4021if() + ctry.mo4027static();
            do {
                list.add(Integer.valueOf(ctry.mo4030this()));
            } while (ctry.mo4021if() < mo4021if);
            f(mo4021if);
            return;
        }
        Csuper csuper = (Csuper) list;
        int i2 = this.f6573do & 7;
        if (i2 == 0) {
            do {
                csuper.m3990case(ctry.mo4030this());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4021if2 = ctry.mo4021if() + ctry.mo4027static();
        do {
            csuper.m3990case(ctry.mo4030this());
        } while (ctry.mo4021if() < mo4021if2);
        f(mo4021if2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: super, reason: not valid java name */
    public final long mo3801super() {
        g(0);
        return this.f6574do.mo4029switch();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: switch, reason: not valid java name */
    public final void mo3802switch(List<Long> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Cstatic;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(ctry.mo4031throw()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4027static = ctry.mo4027static();
            i(mo4027static);
            int mo4021if = ctry.mo4021if() + mo4027static;
            do {
                list.add(Long.valueOf(ctry.mo4031throw()));
            } while (ctry.mo4021if() < mo4021if);
            return;
        }
        Cstatic cstatic = (Cstatic) list;
        int i2 = this.f6573do & 7;
        if (i2 == 1) {
            do {
                cstatic.m3987case(ctry.mo4031throw());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4027static2 = ctry.mo4027static();
        i(mo4027static2);
        int mo4021if2 = ctry.mo4021if() + mo4027static2;
        do {
            cstatic.m3987case(ctry.mo4031throw());
        } while (ctry.mo4021if() < mo4021if2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: synchronized, reason: not valid java name */
    public final <T> T mo3803synchronized(BB<T> bb, Cthis cthis) {
        g(3);
        return (T) c(bb, cthis);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0057, code lost:
    
        r10.put(r3, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x005d, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <K, V> void mo3804this(java.util.Map<K, V> r10, androidx.datastore.preferences.protobuf.Cswitch.Cdo<K, V> r11, androidx.datastore.preferences.protobuf.Cthis r12) {
        /*
            r9 = this;
            r0 = 2
            r9.g(r0)
            androidx.datastore.preferences.protobuf.try r1 = r9.f6574do
            int r2 = r1.mo4027static()
            int r2 = r1.mo4033try(r2)
            K r3 = r11.f6646do
            V r4 = r11.f6648if
            r5 = r4
        L13:
            int r6 = r9.mo3782extends()     // Catch: java.lang.Throwable -> L5e
            r7 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == r7) goto L57
            boolean r7 = r1.mo4019for()     // Catch: java.lang.Throwable -> L5e
            if (r7 == 0) goto L23
            goto L57
        L23:
            r7 = 1
            java.lang.String r8 = "Unable to parse map entry."
            if (r6 == r7) goto L42
            if (r6 == r0) goto L37
            boolean r6 = r9.mo3786goto()     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
            if (r6 == 0) goto L31
            goto L13
        L31:
            androidx.datastore.preferences.protobuf.while r6 = new androidx.datastore.preferences.protobuf.while     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
            r6.<init>(r8)     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
            throw r6     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
        L37:
            mM r6 = r11.f6649if     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
            java.lang.Class r7 = r4.getClass()     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
            java.lang.Object r5 = r9.b(r6, r7, r12)     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
            goto L13
        L42:
            mM r6 = r11.f6647do     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
            r7 = 0
            java.lang.Object r3 = r9.b(r6, r7, r7)     // Catch: androidx.datastore.preferences.protobuf.Cwhile.Cdo -> L4a java.lang.Throwable -> L5e
            goto L13
        L4a:
            boolean r6 = r9.mo3786goto()     // Catch: java.lang.Throwable -> L5e
            if (r6 == 0) goto L51
            goto L13
        L51:
            androidx.datastore.preferences.protobuf.while r10 = new androidx.datastore.preferences.protobuf.while     // Catch: java.lang.Throwable -> L5e
            r10.<init>(r8)     // Catch: java.lang.Throwable -> L5e
            throw r10     // Catch: java.lang.Throwable -> L5e
        L57:
            r10.put(r3, r5)     // Catch: java.lang.Throwable -> L5e
            r1.mo4024new(r2)
            return
        L5e:
            r10 = move-exception
            r1.mo4024new(r2)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Ccase.mo3804this(java.util.Map, androidx.datastore.preferences.protobuf.switch$do, androidx.datastore.preferences.protobuf.this):void");
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: throw, reason: not valid java name */
    public final void mo3805throw(List<Integer> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Csuper;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(ctry.mo4034while()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4021if = ctry.mo4021if() + ctry.mo4027static();
            do {
                list.add(Integer.valueOf(ctry.mo4034while()));
            } while (ctry.mo4021if() < mo4021if);
            f(mo4021if);
            return;
        }
        Csuper csuper = (Csuper) list;
        int i2 = this.f6573do & 7;
        if (i2 == 0) {
            do {
                csuper.m3990case(ctry.mo4034while());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4021if2 = ctry.mo4021if() + ctry.mo4027static();
        do {
            csuper.m3990case(ctry.mo4034while());
        } while (ctry.mo4021if() < mo4021if2);
        f(mo4021if2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: throws, reason: not valid java name */
    public final void mo3806throws(List<Integer> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Csuper;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(ctry.mo4015const()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4021if = ctry.mo4021if() + ctry.mo4027static();
            do {
                list.add(Integer.valueOf(ctry.mo4015const()));
            } while (ctry.mo4021if() < mo4021if);
            f(mo4021if);
            return;
        }
        Csuper csuper = (Csuper) list;
        int i2 = this.f6573do & 7;
        if (i2 == 0) {
            do {
                csuper.m3990case(ctry.mo4015const());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4021if2 = ctry.mo4021if() + ctry.mo4027static();
        do {
            csuper.m3990case(ctry.mo4015const());
        } while (ctry.mo4021if() < mo4021if2);
        f(mo4021if2);
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: transient, reason: not valid java name */
    public final boolean mo3807transient() {
        g(0);
        return this.f6574do.mo4012case();
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: try, reason: not valid java name */
    public final void mo3808try(List<Long> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Cstatic;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(ctry.mo4013catch()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4027static = ctry.mo4027static();
            i(mo4027static);
            int mo4021if = ctry.mo4021if() + mo4027static;
            do {
                list.add(Long.valueOf(ctry.mo4013catch()));
            } while (ctry.mo4021if() < mo4021if);
            return;
        }
        Cstatic cstatic = (Cstatic) list;
        int i2 = this.f6573do & 7;
        if (i2 == 1) {
            do {
                cstatic.m3987case(ctry.mo4013catch());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4027static2 = ctry.mo4027static();
        i(mo4027static2);
        int mo4021if2 = ctry.mo4021if() + mo4027static2;
        do {
            cstatic.m3987case(ctry.mo4013catch());
        } while (ctry.mo4021if() < mo4021if2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: volatile, reason: not valid java name */
    public final <T> void mo3809volatile(List<T> list, BB<T> bb, Cthis cthis) {
        int mo4026return;
        int i = this.f6573do;
        if ((i & 7) != 3) {
            int i2 = Cwhile.f6695for;
            throw new Cwhile.Cdo();
        }
        do {
            list.add(c(bb, cthis));
            Ctry ctry = this.f6574do;
            if (ctry.mo4019for() || this.f6575for != 0) {
                return;
            } else {
                mo4026return = ctry.mo4026return();
            }
        } while (mo4026return == i);
        this.f6575for = mo4026return;
    }

    @Override // androidx.datastore.preferences.protobuf.Cvolatile
    /* renamed from: while, reason: not valid java name */
    public final void mo3810while(List<Long> list) {
        int mo4026return;
        int mo4026return2;
        boolean z = list instanceof Cstatic;
        Ctry ctry = this.f6574do;
        if (!z) {
            int i = this.f6573do & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(ctry.mo4022import()));
                    if (ctry.mo4019for()) {
                        return;
                    } else {
                        mo4026return = ctry.mo4026return();
                    }
                } while (mo4026return == this.f6573do);
                this.f6575for = mo4026return;
                return;
            }
            if (i != 2) {
                throw Cwhile.m4056if();
            }
            int mo4021if = ctry.mo4021if() + ctry.mo4027static();
            do {
                list.add(Long.valueOf(ctry.mo4022import()));
            } while (ctry.mo4021if() < mo4021if);
            f(mo4021if);
            return;
        }
        Cstatic cstatic = (Cstatic) list;
        int i2 = this.f6573do & 7;
        if (i2 == 0) {
            do {
                cstatic.m3987case(ctry.mo4022import());
                if (ctry.mo4019for()) {
                    return;
                } else {
                    mo4026return2 = ctry.mo4026return();
                }
            } while (mo4026return2 == this.f6573do);
            this.f6575for = mo4026return2;
            return;
        }
        if (i2 != 2) {
            throw Cwhile.m4056if();
        }
        int mo4021if2 = ctry.mo4021if() + ctry.mo4027static();
        do {
            cstatic.m3987case(ctry.mo4022import());
        } while (ctry.mo4021if() < mo4021if2);
        f(mo4021if2);
    }
}
