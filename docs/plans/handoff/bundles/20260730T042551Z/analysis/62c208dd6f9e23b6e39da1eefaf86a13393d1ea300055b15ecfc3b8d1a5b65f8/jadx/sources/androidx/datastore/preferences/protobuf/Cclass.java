package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cclass.Cdo;
import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Cfinally;
import androidx.datastore.preferences.protobuf.Cimport;
import androidx.datastore.preferences.protobuf.Cthrow;
import defpackage.AbstractC3370n6;
import defpackage.AbstractC3666s8;
import defpackage.EnumC3327mM;
import defpackage.EnumC3504pM;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

/* renamed from: androidx.datastore.preferences.protobuf.class, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cclass<T extends Cdo<T>> {

    /* renamed from: do, reason: not valid java name */
    public static final Cclass f6577do = new Cclass(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctransient<T, Object> f6578do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6579do;

    /* renamed from: if, reason: not valid java name */
    public boolean f6580if;

    /* renamed from: androidx.datastore.preferences.protobuf.class$do, reason: invalid class name */
    public interface Cdo<T extends Cdo<T>> extends Comparable<T> {
        /* renamed from: class, reason: not valid java name */
        Cfinal.Cdo mo3826class(Cfinally.Cdo cdo, Cfinally cfinally);

        /* renamed from: else, reason: not valid java name */
        EnumC3504pM mo3827else();

        /* renamed from: for, reason: not valid java name */
        void mo3828for();

        /* renamed from: if, reason: not valid java name */
        void mo3829if();

        /* renamed from: new, reason: not valid java name */
        void mo3830new();

        /* renamed from: try, reason: not valid java name */
        void mo3831try();
    }

    public Cclass() {
        int i = Ctransient.f6659new;
        this.f6578do = new Cprotected(16);
    }

    /* renamed from: break, reason: not valid java name */
    public static <T extends Cdo<T>> boolean m3811break(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.mo3827else() == EnumC3504pM.MESSAGE) {
            key.mo3828for();
            Object value = entry.getValue();
            if (!(value instanceof Cfinally)) {
                if (value instanceof Cimport) {
                    return true;
                }
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            if (!((Cfinally) value).isInitialized()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public static int m3812case(Map.Entry entry) {
        Cdo cdo = (Cdo) entry.getKey();
        Object value = entry.getValue();
        if (cdo.mo3827else() != EnumC3504pM.MESSAGE) {
            return m3816new(cdo, value);
        }
        cdo.mo3828for();
        cdo.mo3831try();
        if (value instanceof Cimport) {
            ((Cdo) entry.getKey()).mo3829if();
            return AbstractC3666s8.m8060finally((Cimport) value) + AbstractC3666s8.m8064interface(3) + AbstractC3666s8.m8068protected(2, 0) + (AbstractC3666s8.m8064interface(1) * 2);
        }
        ((Cdo) entry.getKey()).mo3829if();
        int m8068protected = AbstractC3666s8.m8068protected(2, 0) + (AbstractC3666s8.m8064interface(1) * 2);
        int m8064interface = AbstractC3666s8.m8064interface(3);
        int mo3871do = ((Cfinally) value).mo3871do();
        return AbstractC3666s8.m8076transient(mo3871do) + mo3871do + m8064interface + m8068protected;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001e, code lost:
    
        if ((r2 instanceof androidx.datastore.preferences.protobuf.Cthrow.Cdo) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
    
        if ((r2 instanceof byte[]) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        if ((r2 instanceof androidx.datastore.preferences.protobuf.Cimport) == false) goto L26;
     */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m3813final(defpackage.EnumC3327mM r1, java.lang.Object r2) {
        /*
            java.nio.charset.Charset r0 = androidx.datastore.preferences.protobuf.Cthrow.f6655do
            r2.getClass()
            pM r1 = r1.f14335do
            int r1 = r1.ordinal()
            switch(r1) {
                case 0: goto L3a;
                case 1: goto L37;
                case 2: goto L34;
                case 3: goto L31;
                case 4: goto L2e;
                case 5: goto L2b;
                case 6: goto L21;
                case 7: goto L18;
                case 8: goto Lf;
                default: goto Le;
            }
        Le:
            goto L3d
        Lf:
            boolean r1 = r2 instanceof androidx.datastore.preferences.protobuf.Cfinally
            if (r1 != 0) goto L29
            boolean r1 = r2 instanceof androidx.datastore.preferences.protobuf.Cimport
            if (r1 == 0) goto L3d
            goto L29
        L18:
            boolean r1 = r2 instanceof java.lang.Integer
            if (r1 != 0) goto L29
            boolean r1 = r2 instanceof androidx.datastore.preferences.protobuf.Cthrow.Cdo
            if (r1 == 0) goto L3d
            goto L29
        L21:
            boolean r1 = r2 instanceof defpackage.AbstractC3370n6
            if (r1 != 0) goto L29
            boolean r1 = r2 instanceof byte[]
            if (r1 == 0) goto L3d
        L29:
            r1 = 1
            goto L3e
        L2b:
            boolean r1 = r2 instanceof java.lang.String
            goto L3e
        L2e:
            boolean r1 = r2 instanceof java.lang.Boolean
            goto L3e
        L31:
            boolean r1 = r2 instanceof java.lang.Double
            goto L3e
        L34:
            boolean r1 = r2 instanceof java.lang.Float
            goto L3e
        L37:
            boolean r1 = r2 instanceof java.lang.Long
            goto L3e
        L3a:
            boolean r1 = r2 instanceof java.lang.Integer
            goto L3e
        L3d:
            r1 = 0
        L3e:
            if (r1 == 0) goto L41
            return
        L41:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "Wrong object type used with protocol message reflection."
            r1.<init>(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Cclass.m3813final(mM, java.lang.Object):void");
    }

    /* renamed from: for, reason: not valid java name */
    public static int m3814for(EnumC3327mM enumC3327mM, Object obj) {
        switch (enumC3327mM.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                Logger logger = AbstractC3666s8.f15399do;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                Logger logger2 = AbstractC3666s8.f15399do;
                return 4;
            case 2:
                return AbstractC3666s8.m8063instanceof(((Long) obj).longValue());
            case 3:
                return AbstractC3666s8.m8063instanceof(((Long) obj).longValue());
            case 4:
                return AbstractC3666s8.m8058default(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                Logger logger3 = AbstractC3666s8.f15399do;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                Logger logger4 = AbstractC3666s8.f15399do;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                Logger logger5 = AbstractC3666s8.f15399do;
                return 1;
            case 8:
                if (!(obj instanceof AbstractC3370n6)) {
                    return AbstractC3666s8.m8077volatile((String) obj);
                }
                Logger logger6 = AbstractC3666s8.f15399do;
                int size = ((AbstractC3370n6) obj).size();
                return AbstractC3666s8.m8076transient(size) + size;
            case 9:
                Logger logger7 = AbstractC3666s8.f15399do;
                return ((Cfinally) obj).mo3871do();
            case 10:
                if (obj instanceof Cimport) {
                    return AbstractC3666s8.m8060finally((Cimport) obj);
                }
                Logger logger8 = AbstractC3666s8.f15399do;
                int mo3871do = ((Cfinally) obj).mo3871do();
                return AbstractC3666s8.m8076transient(mo3871do) + mo3871do;
            case 11:
                if (obj instanceof AbstractC3370n6) {
                    Logger logger9 = AbstractC3666s8.f15399do;
                    int size2 = ((AbstractC3370n6) obj).size();
                    return AbstractC3666s8.m8076transient(size2) + size2;
                }
                Logger logger10 = AbstractC3666s8.f15399do;
                int length = ((byte[]) obj).length;
                return AbstractC3666s8.m8076transient(length) + length;
            case 12:
                return AbstractC3666s8.m8076transient(((Integer) obj).intValue());
            case 13:
                return obj instanceof Cthrow.Cdo ? AbstractC3666s8.m8058default(((Cthrow.Cdo) obj).m3997do()) : AbstractC3666s8.m8058default(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger11 = AbstractC3666s8.f15399do;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger12 = AbstractC3666s8.f15399do;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return AbstractC3666s8.m8076transient((intValue >> 31) ^ (intValue << 1));
            case 17:
                long longValue = ((Long) obj).longValue();
                return AbstractC3666s8.m8063instanceof((longValue >> 63) ^ (longValue << 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3815if(EnumC3327mM enumC3327mM, int i, Object obj) {
        int m8064interface = AbstractC3666s8.m8064interface(i);
        if (enumC3327mM == EnumC3327mM.f14333do) {
            m8064interface *= 2;
        }
        return m3814for(enumC3327mM, obj) + m8064interface;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3816new(Cdo<?> cdo, Object obj) {
        cdo.mo3830new();
        cdo.mo3829if();
        cdo.mo3828for();
        return m3815if(null, 0, obj);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m3817super(AbstractC3666s8 abstractC3666s8, EnumC3327mM enumC3327mM, int i, Object obj) {
        if (enumC3327mM == EnumC3327mM.f14333do) {
            abstractC3666s8.r(i, 3);
            ((Cfinally) obj).mo3870case(abstractC3666s8);
            abstractC3666s8.r(i, 4);
            return;
        }
        abstractC3666s8.r(i, enumC3327mM.f14336for);
        switch (enumC3327mM.ordinal()) {
            case 0:
                abstractC3666s8.i(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                abstractC3666s8.g(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                abstractC3666s8.v(((Long) obj).longValue());
                break;
            case 3:
                abstractC3666s8.v(((Long) obj).longValue());
                break;
            case 4:
                abstractC3666s8.k(((Integer) obj).intValue());
                break;
            case 5:
                abstractC3666s8.i(((Long) obj).longValue());
                break;
            case 6:
                abstractC3666s8.g(((Integer) obj).intValue());
                break;
            case 7:
                abstractC3666s8.a(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof AbstractC3370n6)) {
                    abstractC3666s8.q((String) obj);
                    break;
                } else {
                    abstractC3666s8.e((AbstractC3370n6) obj);
                    break;
                }
            case 9:
                ((Cfinally) obj).mo3870case(abstractC3666s8);
                break;
            case 10:
                abstractC3666s8.m((Cfinally) obj);
                break;
            case 11:
                if (!(obj instanceof AbstractC3370n6)) {
                    byte[] bArr = (byte[]) obj;
                    abstractC3666s8.c(bArr, bArr.length);
                    break;
                } else {
                    abstractC3666s8.e((AbstractC3370n6) obj);
                    break;
                }
            case 12:
                abstractC3666s8.t(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof Cthrow.Cdo)) {
                    abstractC3666s8.k(((Integer) obj).intValue());
                    break;
                } else {
                    abstractC3666s8.k(((Cthrow.Cdo) obj).m3997do());
                    break;
                }
            case 14:
                abstractC3666s8.g(((Integer) obj).intValue());
                break;
            case 15:
                abstractC3666s8.i(((Long) obj).longValue());
                break;
            case 16:
                int intValue = ((Integer) obj).intValue();
                abstractC3666s8.t((intValue >> 31) ^ (intValue << 1));
                break;
            case 17:
                long longValue = ((Long) obj).longValue();
                abstractC3666s8.v((longValue >> 63) ^ (longValue << 1));
                break;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final Iterator<Map.Entry<T, Object>> m3818catch() {
        boolean z = this.f6580if;
        Ctransient<T, Object> ctransient = this.f6578do;
        return z ? new Cimport.Cif(ctransient.entrySet().iterator()) : ctransient.entrySet().iterator();
    }

    /* renamed from: class, reason: not valid java name */
    public final void m3819class(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof Cimport) {
            value = ((Cimport) value).m3945do(null);
        }
        key.mo3828for();
        EnumC3504pM mo3827else = key.mo3827else();
        EnumC3504pM enumC3504pM = EnumC3504pM.MESSAGE;
        Ctransient<T, Object> ctransient = this.f6578do;
        if (mo3827else != enumC3504pM) {
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                byte[] bArr2 = new byte[bArr.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                value = bArr2;
            }
            ctransient.put(key, value);
            return;
        }
        Object m3825try = m3825try(key);
        if (m3825try != null) {
            ctransient.put(key, key.mo3826class(((Cfinally) m3825try).mo3873new(), (Cfinally) value).m3876else());
            return;
        }
        if (value instanceof byte[]) {
            byte[] bArr3 = (byte[]) value;
            byte[] bArr4 = new byte[bArr3.length];
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            value = bArr4;
        }
        ctransient.put(key, value);
    }

    /* renamed from: const, reason: not valid java name */
    public final void m3820const(T t, Object obj) {
        t.mo3828for();
        t.mo3830new();
        m3813final(null, obj);
        if (obj instanceof Cimport) {
            this.f6580if = true;
        }
        this.f6578do.put(t, obj);
    }

    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Cclass<T> clone() {
        Ctransient<T, Object> ctransient;
        Cclass<T> cclass = new Cclass<>();
        int i = 0;
        while (true) {
            ctransient = this.f6578do;
            if (i >= ctransient.m4007new()) {
                break;
            }
            Map.Entry<T, Object> m4004for = ctransient.m4004for(i);
            cclass.m3820const(m4004for.getKey(), m4004for.getValue());
            i++;
        }
        for (Map.Entry<T, Object> entry : ctransient.m4009try()) {
            cclass.m3820const(entry.getKey(), entry.getValue());
        }
        cclass.f6580if = this.f6580if;
        return cclass;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m3822else() {
        Ctransient<T, Object> ctransient;
        int i = 0;
        int i2 = 0;
        while (true) {
            ctransient = this.f6578do;
            if (i >= ctransient.m4007new()) {
                break;
            }
            Map.Entry<T, Object> m4004for = ctransient.m4004for(i);
            i2 += m3816new(m4004for.getKey(), m4004for.getValue());
            i++;
        }
        for (Map.Entry<T, Object> entry : ctransient.m4009try()) {
            i2 += m3816new(entry.getKey(), entry.getValue());
        }
        return i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Cclass) {
            return this.f6578do.equals(((Cclass) obj).f6578do);
        }
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m3823goto() {
        return this.f6578do.isEmpty();
    }

    public final int hashCode() {
        return this.f6578do.hashCode();
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m3824this() {
        int i = 0;
        while (true) {
            Ctransient<T, Object> ctransient = this.f6578do;
            if (i >= ctransient.m4007new()) {
                Iterator<Map.Entry<T, Object>> it = ctransient.m4009try().iterator();
                while (it.hasNext()) {
                    if (!m3811break(it.next())) {
                        return false;
                    }
                }
                return true;
            }
            if (!m3811break(ctransient.m4004for(i))) {
                return false;
            }
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final Object m3825try(T t) {
        Object obj = this.f6578do.get(t);
        return obj instanceof Cimport ? ((Cimport) obj).m3945do(null) : obj;
    }

    public Cclass(int i) {
        int i2 = Ctransient.f6659new;
        Cprotected cprotected = new Cprotected(0);
        this.f6578do = cprotected;
        if (!this.f6579do) {
            cprotected.mo3982else();
            this.f6579do = true;
        }
        if (this.f6579do) {
            return;
        }
        cprotected.mo3982else();
        this.f6579do = true;
    }
}
