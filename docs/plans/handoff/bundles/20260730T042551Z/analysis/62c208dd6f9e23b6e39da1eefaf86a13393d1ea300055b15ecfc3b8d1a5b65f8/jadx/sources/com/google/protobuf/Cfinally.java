package com.google.protobuf;

import com.google.protobuf.Cgoto;
import defpackage.AB;
import defpackage.AbstractC3429o6;
import defpackage.AbstractC3725t8;
import defpackage.InterfaceC0547Up;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* renamed from: com.google.protobuf.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinally {

    /* renamed from: do, reason: not valid java name */
    public static final Cabstract<?, ?> f12065do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cstrictfp f12066do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Class<?> f12067do;

    static {
        Class<?> cls;
        Class<?> cls2;
        Cabstract<?, ?> cabstract = null;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f12067do = cls;
        try {
            cls2 = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused2) {
            cls2 = null;
        }
        if (cls2 != null) {
            try {
                cabstract = (Cabstract) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable unused3) {
            }
        }
        f12065do = cabstract;
        f12066do = new Cstrictfp();
    }

    public static void a(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.g(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            Logger logger = AbstractC3725t8.f15623do;
            i3 += 8;
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.h(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m6204abstract(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                double doubleValue = ((Double) list.get(i2)).doubleValue();
                abstractC3725t8.getClass();
                abstractC3725t8.g(i, Double.doubleToRawLongBits(doubleValue));
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            Logger logger = AbstractC3725t8.f15623do;
            i3 += 8;
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.h(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void b(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int intValue = ((Integer) list.get(i2)).intValue();
                abstractC3725t8.r(i, (intValue >> 31) ^ (intValue << 1));
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = ((Integer) list.get(i4)).intValue();
            i3 += AbstractC3725t8.m8217transient((intValue2 >> 31) ^ (intValue2 << 1));
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            int intValue3 = ((Integer) list.get(i2)).intValue();
            abstractC3725t8.s((intValue3 >> 31) ^ (intValue3 << 1));
            i2++;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static int m6205break(int i, List<Cstatic> list, AB ab) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC3725t8.m8214switch(i, list.get(i3), ab);
        }
        return i2;
    }

    public static void c(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long longValue = ((Long) list.get(i2)).longValue();
                abstractC3725t8.t(i, (longValue >> 63) ^ (longValue << 1));
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += AbstractC3725t8.m8204instanceof((longValue2 >> 63) ^ (longValue2 << 1));
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            long longValue3 = ((Long) list.get(i2)).longValue();
            abstractC3725t8.u((longValue3 >> 63) ^ (longValue3 << 1));
            i2++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static int m6206case(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC3725t8.m8210public(i) * size;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m6207catch(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3725t8.m8205interface(i) * size) + m6208class(list);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m6208class(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cbreak) {
            Cbreak cbreak = (Cbreak) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC3725t8.m8199default(cbreak.m6179goto(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3725t8.m8199default(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m6209const(int i, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (AbstractC3725t8.m8205interface(i) * list.size()) + m6215final(list);
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m6210continue(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.i(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3725t8.m8199default(((Integer) list.get(i4)).intValue());
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.j(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void d(int i, List list, Ctry ctry) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctry.getClass();
        boolean z = list instanceof InterfaceC0547Up;
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.o(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        InterfaceC0547Up interfaceC0547Up = (InterfaceC0547Up) list;
        while (i2 < list.size()) {
            Object mo2472new = interfaceC0547Up.mo2472new(i2);
            if (mo2472new instanceof String) {
                abstractC3725t8.o(i, (String) mo2472new);
            } else {
                abstractC3725t8.c(i, (AbstractC3429o6) mo2472new);
            }
            i2++;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static int m6211default(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cwhile) {
            Cwhile cwhile = (Cwhile) list;
            i = 0;
            while (i2 < size) {
                cwhile.m6348else(i2);
                i += AbstractC3725t8.m8204instanceof(cwhile.f12133do[i2]);
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3725t8.m8204instanceof(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m6212do(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC3725t8.m8215throw(i) * size;
    }

    public static void e(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.r(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3725t8.m8217transient(((Integer) list.get(i4)).intValue());
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.s(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int m6213else(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T, FT extends Cgoto.Cdo<FT>> void m6214extends(Ccase<FT> ccase, T t, T t2) {
        Cprivate<FT, Object> cprivate;
        Cgoto<FT> mo6184if = ccase.mo6184if(t2);
        if (mo6184if.m6257goto()) {
            return;
        }
        Cgoto<FT> mo6183for = ccase.mo6183for(t);
        mo6183for.getClass();
        int i = 0;
        while (true) {
            cprivate = mo6184if.f12070do;
            if (i >= cprivate.m6277new()) {
                break;
            }
            mo6183for.m6253const(cprivate.m6274for(i));
            i++;
        }
        Iterator<Map.Entry<FT, Object>> it = cprivate.m6279try().iterator();
        while (it.hasNext()) {
            mo6183for.m6253const(it.next());
        }
    }

    public static void f(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.t(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3725t8.m8204instanceof(((Long) list.get(i4)).longValue());
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.u(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static int m6215final(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cwhile) {
            Cwhile cwhile = (Cwhile) list;
            i = 0;
            while (i2 < size) {
                cwhile.m6348else(i2);
                i += AbstractC3725t8.m8204instanceof(cwhile.f12133do[i2]);
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3725t8.m8204instanceof(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m6216finally(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: for, reason: not valid java name */
    public static int m6217for(int i, List<AbstractC3429o6> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m8205interface = AbstractC3725t8.m8205interface(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            int size2 = list.get(i2).size();
            m8205interface += AbstractC3725t8.m8217transient(size2) + size2;
        }
        return m8205interface;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m6218goto(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return AbstractC3725t8.m8211return(i) * size;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6219if(List<?> list) {
        return list.size();
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m6220implements(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.t(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3725t8.m8204instanceof(((Long) list.get(i4)).longValue());
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.u(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static int m6221import(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cbreak) {
            Cbreak cbreak = (Cbreak) list;
            i = 0;
            while (i2 < size) {
                int m6179goto = cbreak.m6179goto(i2);
                i += AbstractC3725t8.m8217transient((m6179goto >> 31) ^ (m6179goto << 1));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = list.get(i2).intValue();
                i += AbstractC3725t8.m8217transient((intValue >> 31) ^ (intValue << 1));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m6222instanceof(int i, List list, Ctry ctry, AB ab) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctry.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ctry.m6331catch(i, ab, list.get(i2));
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m6223interface(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                float floatValue = ((Float) list.get(i2)).floatValue();
                abstractC3725t8.getClass();
                abstractC3725t8.e(i, Float.floatToRawIntBits(floatValue));
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            Logger logger = AbstractC3725t8.f15623do;
            i3 += 4;
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.f(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m6224native(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3725t8.m8205interface(i) * size) + m6229public(list);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m6225new(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3725t8.m8205interface(i) * size) + m6240try(list);
    }

    /* renamed from: package, reason: not valid java name */
    public static void m6226package(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.a(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            Logger logger = AbstractC3725t8.f15623do;
            i3++;
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.mo8220synchronized(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static void m6227private(int i, List list, Ctry ctry) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctry.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ctry.f12132do.c(i, (AbstractC3429o6) list.get(i2));
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m6228protected(int i, List list, Ctry ctry, AB ab) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctry.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ctry.m6338goto(i, ab, list.get(i2));
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static int m6229public(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cwhile) {
            Cwhile cwhile = (Cwhile) list;
            i = 0;
            while (i2 < size) {
                cwhile.m6348else(i2);
                long j = cwhile.f12133do[i2];
                i += AbstractC3725t8.m8204instanceof((j >> 63) ^ (j << 1));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = list.get(i2).longValue();
                i += AbstractC3725t8.m8204instanceof((longValue >> 63) ^ (longValue << 1));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: return, reason: not valid java name */
    public static int m6230return(int i, List<?> list) {
        int m8218volatile;
        int m8218volatile2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int m8205interface = AbstractC3725t8.m8205interface(i) * size;
        if (list instanceof InterfaceC0547Up) {
            InterfaceC0547Up interfaceC0547Up = (InterfaceC0547Up) list;
            while (i2 < size) {
                Object mo2472new = interfaceC0547Up.mo2472new(i2);
                if (mo2472new instanceof AbstractC3429o6) {
                    int size2 = ((AbstractC3429o6) mo2472new).size();
                    m8218volatile2 = AbstractC3725t8.m8217transient(size2) + size2;
                } else {
                    m8218volatile2 = AbstractC3725t8.m8218volatile((String) mo2472new);
                }
                m8205interface += m8218volatile2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof AbstractC3429o6) {
                    int size3 = ((AbstractC3429o6) obj).size();
                    m8218volatile = AbstractC3725t8.m8217transient(size3) + size3;
                } else {
                    m8218volatile = AbstractC3725t8.m8218volatile((String) obj);
                }
                m8205interface += m8218volatile;
                i2++;
            }
        }
        return m8205interface;
    }

    /* renamed from: static, reason: not valid java name */
    public static int m6231static(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3725t8.m8205interface(i) * size) + m6234switch(list);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m6232strictfp(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.e(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            Logger logger = AbstractC3725t8.f15623do;
            i3 += 4;
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.f(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static int m6233super(int i, AB ab, Object obj) {
        if (obj instanceof Cfinal) {
            return AbstractC3725t8.m8201finally((Cfinal) obj) + AbstractC3725t8.m8205interface(i);
        }
        int m8205interface = AbstractC3725t8.m8205interface(i);
        int mo6199super = ((Cdo) ((Cstatic) obj)).mo6199super(ab);
        return AbstractC3725t8.m8217transient(mo6199super) + mo6199super + m8205interface;
    }

    /* renamed from: switch, reason: not valid java name */
    public static int m6234switch(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cbreak) {
            Cbreak cbreak = (Cbreak) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC3725t8.m8217transient(cbreak.m6179goto(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3725t8.m8217transient(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m6235synchronized(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.e(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            Logger logger = AbstractC3725t8.f15623do;
            i3 += 4;
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.f(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int m6236this(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m6237throw(int i, List<?> list, AB ab) {
        int m8217transient;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m8205interface = AbstractC3725t8.m8205interface(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof Cfinal) {
                m8217transient = AbstractC3725t8.m8201finally((Cfinal) obj);
            } else {
                int mo6199super = ((Cdo) ((Cstatic) obj)).mo6199super(ab);
                m8217transient = mo6199super + AbstractC3725t8.m8217transient(mo6199super);
            }
            m8205interface += m8217transient;
        }
        return m8205interface;
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m6238throws(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3725t8.m8205interface(i) * size) + m6211default(list);
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m6239transient(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.i(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC3725t8.m8199default(((Integer) list.get(i4)).intValue());
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.j(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m6240try(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof Cbreak) {
            Cbreak cbreak = (Cbreak) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC3725t8.m8199default(cbreak.m6179goto(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC3725t8.m8199default(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m6241volatile(int i, List list, Ctry ctry, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        AbstractC3725t8 abstractC3725t8 = ctry.f12132do;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                abstractC3725t8.g(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        abstractC3725t8.q(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            Logger logger = AbstractC3725t8.f15623do;
            i3 += 8;
        }
        abstractC3725t8.s(i3);
        while (i2 < list.size()) {
            abstractC3725t8.h(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static int m6242while(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (AbstractC3725t8.m8205interface(i) * size) + m6221import(list);
    }
}
