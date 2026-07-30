package defpackage;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.InterfaceC3161jb;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class H8 implements InterfaceC3161jb, Serializable {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3161jb.Cif f1294do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3161jb f1295do;

    /* renamed from: H8$do, reason: invalid class name */
    public static final class Cdo implements Serializable {

        /* renamed from: do, reason: not valid java name */
        public final InterfaceC3161jb[] f1296do;

        public Cdo(InterfaceC3161jb[] interfaceC3161jbArr) {
            this.f1296do = interfaceC3161jbArr;
        }

        private final Object readResolve() {
            InterfaceC3161jb interfaceC3161jb = C0405Of.f2659do;
            for (InterfaceC3161jb interfaceC3161jb2 : this.f1296do) {
                interfaceC3161jb = interfaceC3161jb.k(interfaceC3161jb2);
            }
            return interfaceC3161jb;
        }
    }

    /* renamed from: H8$for, reason: invalid class name */
    public static final class Cfor extends AbstractC0459Qp implements InterfaceC3641rk<C3206kJ, InterfaceC3161jb.Cif, C3206kJ> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ C2664dz f1297do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ InterfaceC3161jb[] f1298do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(InterfaceC3161jb[] interfaceC3161jbArr, C2664dz c2664dz) {
            super(2);
            this.f1298do = interfaceC3161jbArr;
            this.f1297do = c2664dz;
        }

        @Override // defpackage.InterfaceC3641rk
        public final C3206kJ invoke(C3206kJ c3206kJ, InterfaceC3161jb.Cif cif) {
            InterfaceC3161jb.Cif cif2 = cif;
            C0173Do.m401try(c3206kJ, "<anonymous parameter 0>");
            C0173Do.m401try(cif2, "element");
            C2664dz c2664dz = this.f1297do;
            int i = c2664dz.f12559for;
            c2664dz.f12559for = i + 1;
            this.f1298do[i] = cif2;
            return C3206kJ.f13965do;
        }
    }

    /* renamed from: H8$if, reason: invalid class name */
    public static final class Cif extends AbstractC0459Qp implements InterfaceC3641rk<String, InterfaceC3161jb.Cif, String> {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f1299do = new Cif();

        public Cif() {
            super(2);
        }

        @Override // defpackage.InterfaceC3641rk
        public final String invoke(String str, InterfaceC3161jb.Cif cif) {
            String str2 = str;
            InterfaceC3161jb.Cif cif2 = cif;
            C0173Do.m401try(str2, "acc");
            C0173Do.m401try(cif2, "element");
            if (str2.length() == 0) {
                return cif2.toString();
            }
            return str2 + ", " + cif2;
        }
    }

    public H8(InterfaceC3161jb.Cif cif, InterfaceC3161jb interfaceC3161jb) {
        C0173Do.m401try(interfaceC3161jb, ViewHierarchyConstants.DIMENSION_LEFT_KEY);
        C0173Do.m401try(cif, "element");
        this.f1295do = interfaceC3161jb;
        this.f1294do = cif;
    }

    private final Object writeReplace() {
        int m813if = m813if();
        InterfaceC3161jb[] interfaceC3161jbArr = new InterfaceC3161jb[m813if];
        C2664dz c2664dz = new C2664dz();
        mo815strictfp(C3206kJ.f13965do, new Cfor(interfaceC3161jbArr, c2664dz));
        if (c2664dz.f12559for == m813if) {
            return new Cdo(interfaceC3161jbArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (!(obj instanceof H8)) {
                return false;
            }
            H8 h8 = (H8) obj;
            if (h8.m813if() != m813if()) {
                return false;
            }
            H8 h82 = this;
            while (true) {
                InterfaceC3161jb.Cif cif = h82.f1294do;
                if (!C0173Do.m394do(h8.mo814new(cif.mo6576break()), cif)) {
                    z = false;
                    break;
                }
                InterfaceC3161jb interfaceC3161jb = h82.f1295do;
                if (!(interfaceC3161jb instanceof H8)) {
                    C0173Do.m396for(interfaceC3161jb, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    InterfaceC3161jb.Cif cif2 = (InterfaceC3161jb.Cif) interfaceC3161jb;
                    z = C0173Do.m394do(h8.mo814new(cif2.mo6576break()), cif2);
                    break;
                }
                h82 = (H8) interfaceC3161jb;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f1294do.hashCode() + this.f1295do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final int m813if() {
        int i = 2;
        H8 h8 = this;
        while (true) {
            InterfaceC3161jb interfaceC3161jb = h8.f1295do;
            h8 = interfaceC3161jb instanceof H8 ? (H8) interfaceC3161jb : null;
            if (h8 == null) {
                return i;
            }
            i++;
        }
    }

    @Override // defpackage.InterfaceC3161jb
    public final InterfaceC3161jb k(InterfaceC3161jb interfaceC3161jb) {
        return InterfaceC3161jb.Cdo.m7138do(this, interfaceC3161jb);
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: new, reason: not valid java name */
    public final <E extends InterfaceC3161jb.Cif> E mo814new(InterfaceC3161jb.Cfor<E> cfor) {
        C0173Do.m401try(cfor, "key");
        H8 h8 = this;
        while (true) {
            E e = (E) h8.f1294do.mo814new(cfor);
            if (e != null) {
                return e;
            }
            InterfaceC3161jb interfaceC3161jb = h8.f1295do;
            if (!(interfaceC3161jb instanceof H8)) {
                return (E) interfaceC3161jb.mo814new(cfor);
            }
            h8 = (H8) interfaceC3161jb;
        }
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: strictfp, reason: not valid java name */
    public final <R> R mo815strictfp(R r, InterfaceC3641rk<? super R, ? super InterfaceC3161jb.Cif, ? extends R> interfaceC3641rk) {
        C0173Do.m401try(interfaceC3641rk, "operation");
        return interfaceC3641rk.invoke((Object) this.f1295do.mo815strictfp(r, interfaceC3641rk), this.f1294do);
    }

    @Override // defpackage.InterfaceC3161jb
    /* renamed from: this, reason: not valid java name */
    public final InterfaceC3161jb mo816this(InterfaceC3161jb.Cfor<?> cfor) {
        C0173Do.m401try(cfor, "key");
        InterfaceC3161jb.Cif cif = this.f1294do;
        InterfaceC3161jb.Cif mo814new = cif.mo814new(cfor);
        InterfaceC3161jb interfaceC3161jb = this.f1295do;
        if (mo814new != null) {
            return interfaceC3161jb;
        }
        InterfaceC3161jb mo816this = interfaceC3161jb.mo816this(cfor);
        return mo816this == interfaceC3161jb ? this : mo816this == C0405Of.f2659do ? cif : new H8(cif, mo816this);
    }

    public final String toString() {
        return "[" + ((String) mo815strictfp(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, Cif.f1299do)) + ']';
    }
}
