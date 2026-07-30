package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.InterfaceC0634Yo;
import defpackage.InterfaceC3161jb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: fB, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2736fB<T> extends AbstractC0620Ya implements InterfaceC0650Zi<T> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0650Zi<T> f12848do;

    /* renamed from: for, reason: not valid java name */
    public final int f12849for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public InterfaceC0576Wa<? super C3206kJ> f12850for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public InterfaceC3161jb f12851for;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3161jb f12852if;

    /* renamed from: fB$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0459Qp implements InterfaceC3641rk<Integer, InterfaceC3161jb.Cif, Integer> {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f12853do = new Cdo();

        public Cdo() {
            super(2);
        }

        @Override // defpackage.InterfaceC3641rk
        public final Integer invoke(Integer num, InterfaceC3161jb.Cif cif) {
            return Integer.valueOf(num.intValue() + 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C2736fB(InterfaceC0650Zi<? super T> interfaceC0650Zi, InterfaceC3161jb interfaceC3161jb) {
        super(C0618Xu.f4615do, C0405Of.f2659do);
        this.f12848do = interfaceC0650Zi;
        this.f12852if = interfaceC3161jb;
        this.f12849for = ((Number) interfaceC3161jb.mo815strictfp(0, Cdo.f12853do)).intValue();
    }

    @Override // defpackage.P4, defpackage.InterfaceC3809ub
    /* renamed from: catch */
    public final InterfaceC3809ub mo1126catch() {
        InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa = this.f12850for;
        if (interfaceC0576Wa instanceof InterfaceC3809ub) {
            return (InterfaceC3809ub) interfaceC0576Wa;
        }
        return null;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        Throwable m3108do = C0675aA.m3108do(obj);
        if (m3108do != null) {
            this.f12851for = new C0382Ne(mo2221if(), m3108do);
        }
        InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa = this.f12850for;
        if (interfaceC0576Wa != null) {
            interfaceC0576Wa.mo1746while(obj);
        }
        return EnumC3750tb.COROUTINE_SUSPENDED;
    }

    @Override // defpackage.AbstractC0620Ya, defpackage.P4
    /* renamed from: const */
    public final void mo1744const() {
        super.mo1744const();
    }

    @Override // defpackage.InterfaceC0650Zi
    /* renamed from: for */
    public final Object mo1312for(T t, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        try {
            Object m6644import = m6644import(interfaceC0576Wa, t);
            return m6644import == EnumC3750tb.COROUTINE_SUSPENDED ? m6644import : C3206kJ.f13965do;
        } catch (Throwable th) {
            this.f12851for = new C0382Ne(interfaceC0576Wa.mo2221if(), th);
            throw th;
        }
    }

    @Override // defpackage.P4
    /* renamed from: goto */
    public final StackTraceElement mo1745goto() {
        return null;
    }

    @Override // defpackage.AbstractC0620Ya, defpackage.InterfaceC0576Wa
    /* renamed from: if */
    public final InterfaceC3161jb mo2221if() {
        InterfaceC3161jb interfaceC3161jb = this.f12851for;
        return interfaceC3161jb == null ? C0405Of.f2659do : interfaceC3161jb;
    }

    /* renamed from: import, reason: not valid java name */
    public final Object m6644import(InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa, T t) {
        Comparable comparable;
        String str;
        InterfaceC3161jb mo2221if = interfaceC0576Wa.mo2221if();
        InterfaceC0634Yo interfaceC0634Yo = (InterfaceC0634Yo) mo2221if.mo814new(InterfaceC0634Yo.Cif.f4763do);
        if (interfaceC0634Yo != null && !interfaceC0634Yo.mo2955for()) {
            throw interfaceC0634Yo.mo2956goto();
        }
        InterfaceC3161jb interfaceC3161jb = this.f12851for;
        if (interfaceC3161jb != mo2221if) {
            if (interfaceC3161jb instanceof C0382Ne) {
                String str2 = "\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((C0382Ne) interfaceC3161jb).f2415do + ", but then emission attempt of value '" + t + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ";
                C0173Do.m401try(str2, "<this>");
                List m7448while = C3317mC.m7448while(new C3205kI(EF.q(str2, new String[]{"\r\n", "\n", "\r"}, false, 0), new DF(str2)));
                List list = m7448while;
                ArrayList arrayList = new ArrayList();
                for (T t2 : list) {
                    if (!BF.f((String) t2)) {
                        arrayList.add(t2);
                    }
                }
                ArrayList arrayList2 = new ArrayList(B8.c(arrayList));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str3 = (String) it.next();
                    int length = str3.length();
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            i = -1;
                            break;
                        }
                        if (!C3645ro.m8009private(str3.charAt(i))) {
                            break;
                        }
                        i++;
                    }
                    if (i == -1) {
                        i = str3.length();
                    }
                    arrayList2.add(Integer.valueOf(i));
                }
                Iterator it2 = arrayList2.iterator();
                if (it2.hasNext()) {
                    comparable = (Comparable) it2.next();
                    while (it2.hasNext()) {
                        Comparable comparable2 = (Comparable) it2.next();
                        if (comparable.compareTo(comparable2) > 0) {
                            comparable = comparable2;
                        }
                    }
                } else {
                    comparable = null;
                }
                Integer num = (Integer) comparable;
                int intValue = num != null ? num.intValue() : 0;
                int size = (m7448while.size() * 0) + str2.length();
                int m1633while = O4.m1633while(m7448while);
                ArrayList arrayList3 = new ArrayList();
                int i2 = 0;
                for (T t3 : list) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        throw new ArithmeticException("Index overflow has happened.");
                    }
                    String str4 = (String) t3;
                    if ((i2 == 0 || i2 == m1633while) && BF.f(str4)) {
                        str = null;
                    } else {
                        C0173Do.m401try(str4, "<this>");
                        if (!(intValue >= 0)) {
                            throw new IllegalArgumentException(Creturn.m7981if("Requested character count ", intValue, " is less than zero.").toString());
                        }
                        int length2 = str4.length();
                        if (intValue <= length2) {
                            length2 = intValue;
                        }
                        String substring = str4.substring(length2);
                        C0173Do.m399new(substring, "this as java.lang.String).substring(startIndex)");
                        str = (String) C3909wF.f16308do.mo364this(substring);
                    }
                    if (str != null) {
                        arrayList3.add(str);
                    }
                    i2 = i3;
                }
                StringBuilder sb = new StringBuilder(size);
                E8.f(arrayList3, sb, "\n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, -1, "...", null);
                String sb2 = sb.toString();
                C0173Do.m399new(sb2, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
                throw new IllegalStateException(sb2.toString());
            }
            if (((Number) mo2221if.mo815strictfp(0, new C2854hB(this))).intValue() != this.f12849for) {
                throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.f12852if + ",\n\t\tbut emission happened in " + mo2221if + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
            }
            this.f12851for = mo2221if;
        }
        this.f12850for = interfaceC0576Wa;
        InterfaceC3759tk<InterfaceC0650Zi<Object>, Object, InterfaceC0576Wa<? super C3206kJ>, Object> interfaceC3759tk = C2795gB.f13075do;
        InterfaceC0650Zi<T> interfaceC0650Zi = this.f12848do;
        C0173Do.m396for(interfaceC0650Zi, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        Object mo2480break = interfaceC3759tk.mo2480break(interfaceC0650Zi, t, this);
        if (!C0173Do.m394do(mo2480break, EnumC3750tb.COROUTINE_SUSPENDED)) {
            this.f12850for = null;
        }
        return mo2480break;
    }
}
