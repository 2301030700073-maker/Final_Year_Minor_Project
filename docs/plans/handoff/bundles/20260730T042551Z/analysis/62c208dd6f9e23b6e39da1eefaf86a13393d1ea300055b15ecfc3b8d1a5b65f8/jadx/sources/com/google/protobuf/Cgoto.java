package com.google.protobuf;

import com.google.protobuf.Ccatch;
import com.google.protobuf.Cconst;
import com.google.protobuf.Cgoto.Cdo;
import com.google.protobuf.Cstatic;
import com.google.protobuf.Cthis;
import defpackage.AbstractC3429o6;
import defpackage.AbstractC3725t8;
import defpackage.C2956iy;
import defpackage.EnumC3386nM;
import defpackage.EnumC3445oM;
import defpackage.InterfaceC0506Ss;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

/* renamed from: com.google.protobuf.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto<T extends Cdo<T>> {

    /* renamed from: do, reason: not valid java name */
    public static final Cgoto f12069do = new Cgoto(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cprivate<T, Object> f12070do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12071do;

    /* renamed from: if, reason: not valid java name */
    public boolean f12072if;

    /* renamed from: com.google.protobuf.goto$do, reason: invalid class name */
    public interface Cdo<T extends Cdo<T>> extends Comparable<T> {
        /* renamed from: catch, reason: not valid java name */
        EnumC3445oM mo6260catch();

        /* renamed from: final, reason: not valid java name */
        Cthis.Cdo mo6261final(Cstatic.Cdo cdo, Cstatic cstatic);

        /* renamed from: for, reason: not valid java name */
        void mo6262for();

        /* renamed from: if, reason: not valid java name */
        void mo6263if();

        /* renamed from: new, reason: not valid java name */
        void mo6264new();

        /* renamed from: try, reason: not valid java name */
        void mo6265try();
    }

    public Cgoto() {
        int i = Cprivate.f12087new;
        this.f12070do = new Cpackage(16);
    }

    /* renamed from: break, reason: not valid java name */
    public static <T extends Cdo<T>> boolean m6244break(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.mo6260catch() != EnumC3445oM.MESSAGE) {
            return true;
        }
        key.mo6262for();
        Object value = entry.getValue();
        if (value instanceof InterfaceC0506Ss) {
            return ((InterfaceC0506Ss) value).isInitialized();
        }
        if (value instanceof Cconst) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    /* renamed from: case, reason: not valid java name */
    public static int m6245case(Map.Entry entry) {
        Cdo cdo = (Cdo) entry.getKey();
        Object value = entry.getValue();
        if (cdo.mo6260catch() != EnumC3445oM.MESSAGE) {
            return m6248new(cdo, value);
        }
        cdo.mo6262for();
        cdo.mo6265try();
        if (value instanceof Cconst) {
            ((Cdo) entry.getKey()).mo6263if();
            return AbstractC3725t8.m8201finally((Cconst) value) + AbstractC3725t8.m8205interface(3) + AbstractC3725t8.m8209protected(2, 0) + (AbstractC3725t8.m8205interface(1) * 2);
        }
        ((Cdo) entry.getKey()).mo6263if();
        int m8209protected = AbstractC3725t8.m8209protected(2, 0) + (AbstractC3725t8.m8205interface(1) * 2);
        int m8205interface = AbstractC3725t8.m8205interface(3);
        int mo6288do = ((Cstatic) value).mo6288do();
        return AbstractC3725t8.m8217transient(mo6288do) + mo6288do + m8205interface + m8209protected;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m6246for(EnumC3386nM enumC3386nM, Object obj) {
        switch (enumC3386nM.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                Logger logger = AbstractC3725t8.f15623do;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                Logger logger2 = AbstractC3725t8.f15623do;
                return 4;
            case 2:
                return AbstractC3725t8.m8204instanceof(((Long) obj).longValue());
            case 3:
                return AbstractC3725t8.m8204instanceof(((Long) obj).longValue());
            case 4:
                return AbstractC3725t8.m8199default(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                Logger logger3 = AbstractC3725t8.f15623do;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                Logger logger4 = AbstractC3725t8.f15623do;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                Logger logger5 = AbstractC3725t8.f15623do;
                return 1;
            case 8:
                if (!(obj instanceof AbstractC3429o6)) {
                    return AbstractC3725t8.m8218volatile((String) obj);
                }
                Logger logger6 = AbstractC3725t8.f15623do;
                int size = ((AbstractC3429o6) obj).size();
                return AbstractC3725t8.m8217transient(size) + size;
            case 9:
                Logger logger7 = AbstractC3725t8.f15623do;
                return ((Cstatic) obj).mo6288do();
            case 10:
                if (obj instanceof Cconst) {
                    return AbstractC3725t8.m8201finally((Cconst) obj);
                }
                Logger logger8 = AbstractC3725t8.f15623do;
                int mo6288do = ((Cstatic) obj).mo6288do();
                return AbstractC3725t8.m8217transient(mo6288do) + mo6288do;
            case 11:
                if (obj instanceof AbstractC3429o6) {
                    Logger logger9 = AbstractC3725t8.f15623do;
                    int size2 = ((AbstractC3429o6) obj).size();
                    return AbstractC3725t8.m8217transient(size2) + size2;
                }
                Logger logger10 = AbstractC3725t8.f15623do;
                int length = ((byte[]) obj).length;
                return AbstractC3725t8.m8217transient(length) + length;
            case 12:
                return AbstractC3725t8.m8217transient(((Integer) obj).intValue());
            case 13:
                return obj instanceof Ccatch.Cdo ? AbstractC3725t8.m8199default(((Ccatch.Cdo) obj).mo1834do()) : AbstractC3725t8.m8199default(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger11 = AbstractC3725t8.f15623do;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger12 = AbstractC3725t8.f15623do;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return AbstractC3725t8.m8217transient((intValue >> 31) ^ (intValue << 1));
            case 17:
                long longValue = ((Long) obj).longValue();
                return AbstractC3725t8.m8204instanceof((longValue >> 63) ^ (longValue << 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6247if(EnumC3386nM enumC3386nM, int i, Object obj) {
        int m8205interface = AbstractC3725t8.m8205interface(i);
        if (enumC3386nM == EnumC3386nM.f14512do) {
            m8205interface *= 2;
        }
        return m6246for(enumC3386nM, obj) + m8205interface;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m6248new(Cdo<?> cdo, Object obj) {
        cdo.mo6264new();
        cdo.mo6263if();
        cdo.mo6262for();
        return m6247if(null, 0, obj);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m6249super(Cdo cdo, Object obj) {
        cdo.mo6264new();
        Charset charset = Ccatch.f12045do;
        obj.getClass();
        throw null;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m6250throw(AbstractC3725t8 abstractC3725t8, EnumC3386nM enumC3386nM, int i, Object obj) {
        if (enumC3386nM == EnumC3386nM.f14512do) {
            abstractC3725t8.q(i, 3);
            ((Cstatic) obj).mo6287class(abstractC3725t8);
            abstractC3725t8.q(i, 4);
            return;
        }
        abstractC3725t8.q(i, enumC3386nM.f14516for);
        switch (enumC3386nM.ordinal()) {
            case 0:
                abstractC3725t8.h(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                abstractC3725t8.f(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                abstractC3725t8.u(((Long) obj).longValue());
                break;
            case 3:
                abstractC3725t8.u(((Long) obj).longValue());
                break;
            case 4:
                abstractC3725t8.j(((Integer) obj).intValue());
                break;
            case 5:
                abstractC3725t8.h(((Long) obj).longValue());
                break;
            case 6:
                abstractC3725t8.f(((Integer) obj).intValue());
                break;
            case 7:
                abstractC3725t8.mo8220synchronized(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof AbstractC3429o6)) {
                    abstractC3725t8.p((String) obj);
                    break;
                } else {
                    abstractC3725t8.d((AbstractC3429o6) obj);
                    break;
                }
            case 9:
                ((Cstatic) obj).mo6287class(abstractC3725t8);
                break;
            case 10:
                abstractC3725t8.l((Cstatic) obj);
                break;
            case 11:
                if (!(obj instanceof AbstractC3429o6)) {
                    byte[] bArr = (byte[]) obj;
                    abstractC3725t8.b(bArr, bArr.length);
                    break;
                } else {
                    abstractC3725t8.d((AbstractC3429o6) obj);
                    break;
                }
            case 12:
                abstractC3725t8.s(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof Ccatch.Cdo)) {
                    abstractC3725t8.j(((Integer) obj).intValue());
                    break;
                } else {
                    abstractC3725t8.j(((Ccatch.Cdo) obj).mo1834do());
                    break;
                }
            case 14:
                abstractC3725t8.f(((Integer) obj).intValue());
                break;
            case 15:
                abstractC3725t8.h(((Long) obj).longValue());
                break;
            case 16:
                int intValue = ((Integer) obj).intValue();
                abstractC3725t8.s((intValue >> 31) ^ (intValue << 1));
                break;
            case 17:
                long longValue = ((Long) obj).longValue();
                abstractC3725t8.u((longValue >> 63) ^ (longValue << 1));
                break;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final Iterator<Map.Entry<T, Object>> m6251catch() {
        boolean z = this.f12072if;
        Cprivate<T, Object> cprivate = this.f12070do;
        return z ? new Cconst.Cif(cprivate.entrySet().iterator()) : cprivate.entrySet().iterator();
    }

    /* renamed from: class, reason: not valid java name */
    public final void m6252class() {
        if (this.f12071do) {
            return;
        }
        int i = 0;
        while (true) {
            Cprivate<T, Object> cprivate = this.f12070do;
            if (i >= cprivate.m6277new()) {
                cprivate.mo6271else();
                this.f12071do = true;
                return;
            }
            Map.Entry<T, Object> m6274for = cprivate.m6274for(i);
            if (m6274for.getValue() instanceof Cthis) {
                Cthis cthis = (Cthis) m6274for.getValue();
                cthis.getClass();
                C2956iy c2956iy = C2956iy.f13602do;
                c2956iy.getClass();
                c2956iy.m6984do(cthis.getClass()).mo49else(cthis);
                cthis.m6300package();
            }
            i++;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m6253const(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof Cconst) {
            value = ((Cconst) value).m6202do(null);
        }
        key.mo6262for();
        EnumC3445oM mo6260catch = key.mo6260catch();
        EnumC3445oM enumC3445oM = EnumC3445oM.MESSAGE;
        Cprivate<T, Object> cprivate = this.f12070do;
        if (mo6260catch != enumC3445oM) {
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                byte[] bArr2 = new byte[bArr.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                value = bArr2;
            }
            cprivate.put(key, value);
            return;
        }
        Object m6259try = m6259try(key);
        if (m6259try != null) {
            cprivate.put(key, key.mo6261final(((Cstatic) m6259try).mo6289try(), (Cstatic) value).m6305const());
            return;
        }
        if (value instanceof byte[]) {
            byte[] bArr3 = (byte[]) value;
            byte[] bArr4 = new byte[bArr3.length];
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            value = bArr4;
        }
        cprivate.put(key, value);
    }

    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Cgoto<T> clone() {
        Cprivate<T, Object> cprivate;
        Cgoto<T> cgoto = new Cgoto<>();
        int i = 0;
        while (true) {
            cprivate = this.f12070do;
            if (i >= cprivate.m6277new()) {
                break;
            }
            Map.Entry<T, Object> m6274for = cprivate.m6274for(i);
            cgoto.m6256final(m6274for.getKey(), m6274for.getValue());
            i++;
        }
        for (Map.Entry<T, Object> entry : cprivate.m6279try()) {
            cgoto.m6256final(entry.getKey(), entry.getValue());
        }
        cgoto.f12072if = this.f12072if;
        return cgoto;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m6255else() {
        Cprivate<T, Object> cprivate;
        int i = 0;
        int i2 = 0;
        while (true) {
            cprivate = this.f12070do;
            if (i >= cprivate.m6277new()) {
                break;
            }
            Map.Entry<T, Object> m6274for = cprivate.m6274for(i);
            i2 += m6248new(m6274for.getKey(), m6274for.getValue());
            i++;
        }
        for (Map.Entry<T, Object> entry : cprivate.m6279try()) {
            i2 += m6248new(entry.getKey(), entry.getValue());
        }
        return i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Cgoto) {
            return this.f12070do.equals(((Cgoto) obj).f12070do);
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m6256final(T t, Object obj) {
        t.mo6262for();
        m6249super(t, obj);
        throw null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m6257goto() {
        return this.f12070do.isEmpty();
    }

    public final int hashCode() {
        return this.f12070do.hashCode();
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m6258this() {
        int i = 0;
        while (true) {
            Cprivate<T, Object> cprivate = this.f12070do;
            if (i >= cprivate.m6277new()) {
                Iterator<Map.Entry<T, Object>> it = cprivate.m6279try().iterator();
                while (it.hasNext()) {
                    if (!m6244break(it.next())) {
                        return false;
                    }
                }
                return true;
            }
            if (!m6244break(cprivate.m6274for(i))) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final Object m6259try(T t) {
        Object obj = this.f12070do.get(t);
        return obj instanceof Cconst ? ((Cconst) obj).m6202do(null) : obj;
    }

    public Cgoto(int i) {
        int i2 = Cprivate.f12087new;
        this.f12070do = new Cpackage(0);
        m6252class();
        m6252class();
    }
}
