package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cclass;
import androidx.datastore.preferences.protobuf.Cthrow;
import defpackage.AbstractC3370n6;
import defpackage.AbstractC3666s8;
import defpackage.BB;
import defpackage.InterfaceC0569Vp;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.logging.Logger;

/* renamed from: androidx.datastore.preferences.protobuf.interface, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cinterface {

    /* renamed from: do, reason: not valid java name */
    public static final Cimplements<?, ?> f6605do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Csynchronized f6606do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Class<?> f6607do;

    /* renamed from: if, reason: not valid java name */
    public static final Cimplements<?, ?> f6608if;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f6607do = cls;
        f6605do = m3918finally(false);
        f6608if = m3918finally(true);
        f6606do = new Csynchronized();
    }

    public static void a(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.u(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3666s8.m8063instanceof(((Long) list.get(i4)).longValue());
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.v(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static <UT, UB> UB m3906abstract(int i, int i2, UB ub, Cimplements<UT, UB> cimplements) {
        if (ub == null) {
            ub = (UB) cimplements.mo3888const();
        }
        cimplements.mo3901try(ub, i, i2);
        return ub;
    }

    public static void b(int i, List list, Celse celse, BB bb) {
        if (list == null || list.isEmpty()) {
            return;
        }
        celse.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            celse.m3849catch(i, bb, list.get(i2));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static int m3907break(int i, List<Cfinally> list, BB bb) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC3666s8.m8073switch(i, list.get(i3), bb);
        }
        return i2;
    }

    public static void c(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.f(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            Logger logger = AbstractC3666s8.f15399do;
            i3 += 4;
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.g(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static int m3908case(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC3666s8.m8069public(i) * size;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m3909catch(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3666s8.m8064interface(i) * size) + m3910class(list);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m3910class(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Csuper) {
            Csuper csuper = (Csuper) list;
            i = 0;
            while (i2 < size) {
                csuper.m3991else(i2);
                i += AbstractC3666s8.m8058default(csuper.f6641do[i2]);
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3666s8.m8058default(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m3911const(int i, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (AbstractC3666s8.m8064interface(i) * list.size()) + m3917final(list);
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m3912continue(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.b(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            Logger logger = AbstractC3666s8.f15399do;
            i3++;
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.a(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void d(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.h(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            Logger logger = AbstractC3666s8.f15399do;
            i3 += 8;
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.i(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static int m3913default(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cstatic) {
            Cstatic cstatic = (Cstatic) list;
            i = 0;
            while (i2 < size) {
                cstatic.m3988else(i2);
                i += AbstractC3666s8.m8063instanceof(cstatic.f6636do[i2]);
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3666s8.m8063instanceof(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m3914do(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC3666s8.m8074throw(i) * size;
    }

    public static void e(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int intValue = ((Integer) list.get(i2)).intValue();
                abstractC3666s8.s(i, (intValue >> 31) ^ (intValue << 1));
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = ((Integer) list.get(i4)).intValue();
            i3 += AbstractC3666s8.m8076transient((intValue2 >> 31) ^ (intValue2 << 1));
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            int intValue3 = ((Integer) list.get(i2)).intValue();
            abstractC3666s8.t((intValue3 >> 31) ^ (intValue3 << 1));
            i2++;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int m3915else(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: extends, reason: not valid java name */
    public static <UT, UB> UB m3916extends(int i, List<Integer> list, Cthrow.Cif cif, UB ub, Cimplements<UT, UB> cimplements) {
        if (cif == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (cif.m3998do()) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) m3906abstract(i, intValue, ub, cimplements);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!cif.m3998do()) {
                    ub = (UB) m3906abstract(i, intValue2, ub, cimplements);
                    it.remove();
                }
            }
        }
        return ub;
    }

    public static void f(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long longValue = ((Long) list.get(i2)).longValue();
                abstractC3666s8.u(i, (longValue >> 63) ^ (longValue << 1));
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += AbstractC3666s8.m8063instanceof((longValue2 >> 63) ^ (longValue2 << 1));
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            long longValue3 = ((Long) list.get(i2)).longValue();
            abstractC3666s8.v((longValue3 >> 63) ^ (longValue3 << 1));
            i2++;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static int m3917final(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cstatic) {
            Cstatic cstatic = (Cstatic) list;
            i = 0;
            while (i2 < size) {
                cstatic.m3988else(i2);
                i += AbstractC3666s8.m8063instanceof(cstatic.f6636do[i2]);
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3666s8.m8063instanceof(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: finally, reason: not valid java name */
    public static Cimplements<?, ?> m3918finally(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (Cimplements) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m3919for(int i, List<AbstractC3370n6> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m8064interface = AbstractC3666s8.m8064interface(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            int size2 = list.get(i2).size();
            m8064interface += AbstractC3666s8.m8076transient(size2) + size2;
        }
        return m8064interface;
    }

    public static void g(int i, List list, Celse celse) {
        if (list == null || list.isEmpty()) {
            return;
        }
        celse.getClass();
        boolean z = list instanceof InterfaceC0569Vp;
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.p(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        InterfaceC0569Vp interfaceC0569Vp = (InterfaceC0569Vp) list;
        while (i2 < list.size()) {
            Object mo2669new = interfaceC0569Vp.mo2669new(i2);
            if (mo2669new instanceof String) {
                abstractC3666s8.p(i, (String) mo2669new);
            } else {
                abstractC3666s8.d(i, (AbstractC3370n6) mo2669new);
            }
            i2++;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m3920goto(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC3666s8.m8070return(i) * size;
    }

    public static void h(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.s(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3666s8.m8076transient(((Integer) list.get(i4)).intValue());
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.t(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void i(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.u(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3666s8.m8063instanceof(((Long) list.get(i4)).longValue());
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.v(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3921if(List<?> list) {
        return list.size();
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m3922implements(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                float floatValue = ((Float) list.get(i2)).floatValue();
                abstractC3666s8.getClass();
                abstractC3666s8.f(i, Float.floatToRawIntBits(floatValue));
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            Logger logger = AbstractC3666s8.f15399do;
            i3 += 4;
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.g(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static int m3923import(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Csuper) {
            Csuper csuper = (Csuper) list;
            i = 0;
            while (i2 < size) {
                csuper.m3991else(i2);
                int i3 = csuper.f6641do[i2];
                i += AbstractC3666s8.m8076transient((i3 >> 31) ^ (i3 << 1));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = list.get(i2).intValue();
                i += AbstractC3666s8.m8076transient((intValue >> 31) ^ (intValue << 1));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m3924instanceof(int i, List list, Celse celse, BB bb) {
        if (list == null || list.isEmpty()) {
            return;
        }
        celse.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            celse.m3856goto(i, bb, list.get(i2));
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m3925interface(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.j(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3666s8.m8058default(((Integer) list.get(i4)).intValue());
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.k(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m3926native(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3666s8.m8064interface(i) * size) + m3931public(list);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3927new(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3666s8.m8064interface(i) * size) + m3942try(list);
    }

    /* renamed from: package, reason: not valid java name */
    public static <T, FT extends Cclass.Cdo<FT>> void m3928package(Cbreak<FT> cbreak, T t, T t2) {
        Ctransient<FT, Object> ctransient;
        Cclass<FT> mo3766for = cbreak.mo3766for(t2);
        if (mo3766for.m3823goto()) {
            return;
        }
        Cclass<FT> mo3769new = cbreak.mo3769new(t);
        mo3769new.getClass();
        int i = 0;
        while (true) {
            ctransient = mo3766for.f6578do;
            if (i >= ctransient.m4007new()) {
                break;
            }
            mo3769new.m3819class(ctransient.m4004for(i));
            i++;
        }
        Iterator<Map.Entry<FT, Object>> it = ctransient.m4009try().iterator();
        while (it.hasNext()) {
            mo3769new.m3819class(it.next());
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static boolean m3929private(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m3930protected(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.f(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            Logger logger = AbstractC3666s8.f15399do;
            i3 += 4;
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.g(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static int m3931public(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cstatic) {
            Cstatic cstatic = (Cstatic) list;
            i = 0;
            while (i2 < size) {
                cstatic.m3988else(i2);
                long j = cstatic.f6636do[i2];
                i += AbstractC3666s8.m8063instanceof((j >> 63) ^ (j << 1));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = list.get(i2).longValue();
                i += AbstractC3666s8.m8063instanceof((longValue >> 63) ^ (longValue << 1));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: return, reason: not valid java name */
    public static int m3932return(int i, List<?> list) {
        int m8077volatile;
        int m8077volatile2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int m8064interface = AbstractC3666s8.m8064interface(i) * size;
        if (list instanceof InterfaceC0569Vp) {
            InterfaceC0569Vp interfaceC0569Vp = (InterfaceC0569Vp) list;
            while (i2 < size) {
                Object mo2669new = interfaceC0569Vp.mo2669new(i2);
                if (mo2669new instanceof AbstractC3370n6) {
                    int size2 = ((AbstractC3370n6) mo2669new).size();
                    m8077volatile2 = AbstractC3666s8.m8076transient(size2) + size2;
                } else {
                    m8077volatile2 = AbstractC3666s8.m8077volatile((String) mo2669new);
                }
                m8064interface += m8077volatile2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof AbstractC3370n6) {
                    int size3 = ((AbstractC3370n6) obj).size();
                    m8077volatile = AbstractC3666s8.m8076transient(size3) + size3;
                } else {
                    m8077volatile = AbstractC3666s8.m8077volatile((String) obj);
                }
                m8064interface += m8077volatile;
                i2++;
            }
        }
        return m8064interface;
    }

    /* renamed from: static, reason: not valid java name */
    public static int m3933static(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3666s8.m8064interface(i) * size) + m3936switch(list);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m3934strictfp(int i, List list, Celse celse) {
        if (list == null || list.isEmpty()) {
            return;
        }
        celse.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            celse.f6583do.d(i, (AbstractC3370n6) list.get(i2));
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static int m3935super(int i, BB bb, Object obj) {
        if (obj instanceof Cnative) {
            return AbstractC3666s8.m8060finally((Cnative) obj) + AbstractC3666s8.m8064interface(i);
        }
        int m8064interface = AbstractC3666s8.m8064interface(i);
        int m3844goto = ((Cdo) ((Cfinally) obj)).m3844goto(bb);
        return AbstractC3666s8.m8076transient(m3844goto) + m3844goto + m8064interface;
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m3936switch(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Csuper) {
            Csuper csuper = (Csuper) list;
            i = 0;
            while (i2 < size) {
                csuper.m3991else(i2);
                i += AbstractC3666s8.m8076transient(csuper.f6641do[i2]);
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3666s8.m8076transient(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m3937synchronized(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.j(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3666s8.m8058default(((Integer) list.get(i4)).intValue());
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.k(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int m3938this(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m3939throw(int i, List<?> list, BB bb) {
        int m8076transient;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m8064interface = AbstractC3666s8.m8064interface(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof Cnative) {
                m8076transient = AbstractC3666s8.m8060finally((Cnative) obj);
            } else {
                int m3844goto = ((Cdo) ((Cfinally) obj)).m3844goto(bb);
                m8076transient = m3844goto + AbstractC3666s8.m8076transient(m3844goto);
            }
            m8064interface += m8076transient;
        }
        return m8064interface;
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m3940throws(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3666s8.m8064interface(i) * size) + m3913default(list);
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m3941transient(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3666s8.h(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            Logger logger = AbstractC3666s8.f15399do;
            i3 += 8;
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.i(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m3942try(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Csuper) {
            Csuper csuper = (Csuper) list;
            i = 0;
            while (i2 < size) {
                csuper.m3991else(i2);
                i += AbstractC3666s8.m8058default(csuper.f6641do[i2]);
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3666s8.m8058default(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m3943volatile(int i, List list, Celse celse, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3666s8 abstractC3666s8 = celse.f6583do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                double doubleValue = ((Double) list.get(i2)).doubleValue();
                abstractC3666s8.getClass();
                abstractC3666s8.h(i, Double.doubleToRawLongBits(doubleValue));
                i2++;
            }
            return;
        }
        abstractC3666s8.r(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            Logger logger = AbstractC3666s8.f15399do;
            i3 += 8;
        }
        abstractC3666s8.t(i3);
        while (i2 < list.size()) {
            abstractC3666s8.i(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static int m3944while(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3666s8.m8064interface(i) * size) + m3923import(list);
    }
}
