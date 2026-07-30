package com.google.protobuf;

import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import defpackage.AB;
import defpackage.AbstractC3429o6;
import defpackage.AbstractC3725t8;
import defpackage.C2956iy;
import defpackage.C3677sJ;
import defpackage.EnumC0407Oh;
import defpackage.EnumC3445oM;
import defpackage.InterfaceC0245Gu;
import defpackage.InterfaceC0418Os;
import defpackage.Py;
import defpackage.V1;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import sun.misc.Unsafe;

/* renamed from: com.google.protobuf.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthrows<T> implements AB<T> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f12120do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0245Gu f12121do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cabstract<?, ?> f12122do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase<?> f12123do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cpublic f12124do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cstatic f12125do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cthrow f12126do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f12127do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f12128do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object[] f12129do;

    /* renamed from: if, reason: not valid java name */
    public final boolean f12130if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f12131if;

    /* renamed from: for, reason: not valid java name */
    public static final int[] f12119for = new int[0];

    /* renamed from: do, reason: not valid java name */
    public static final Unsafe f12118do = C3677sJ.m8107throw();

    public Cthrows(int[] iArr, Object[] objArr, int i, int i2, Cstatic cstatic, int[] iArr2, int i3, int i4, InterfaceC0245Gu interfaceC0245Gu, Cthrow cthrow, Cabstract cabstract, Ccase ccase, Cpublic cpublic) {
        this.f12128do = iArr;
        this.f12129do = objArr;
        boolean z = cstatic instanceof Cthis;
        this.f12127do = ccase != null && ccase.mo6185new(cstatic);
        this.f12130if = false;
        this.f12131if = iArr2;
        this.f12120do = i3;
        this.f12121do = interfaceC0245Gu;
        this.f12126do = cthrow;
        this.f12122do = cabstract;
        this.f12123do = ccase;
        this.f12125do = cstatic;
        this.f12124do = cpublic;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m6312const(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof Cthis) {
            return ((Cthis) obj).m6298finally();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x025c  */
    /* renamed from: import, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.protobuf.Cthrows<T> m6313import(defpackage.Py r32, defpackage.InterfaceC0245Gu r33, com.google.protobuf.Cthrow r34, com.google.protobuf.Cabstract<?, ?> r35, com.google.protobuf.Ccase<?> r36, com.google.protobuf.Cpublic r37) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Cthrows.m6313import(Py, Gu, com.google.protobuf.throw, com.google.protobuf.abstract, com.google.protobuf.case, com.google.protobuf.public):com.google.protobuf.throws");
    }

    /* renamed from: native, reason: not valid java name */
    public static int m6314native(long j, Object obj) {
        return ((Integer) C3677sJ.m8105super(j, obj)).intValue();
    }

    /* renamed from: public, reason: not valid java name */
    public static long m6315public(long j, Object obj) {
        return ((Long) C3677sJ.m8105super(j, obj)).longValue();
    }

    /* renamed from: return, reason: not valid java name */
    public static Field m6316return(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder m2493break = V1.m2493break("Field ", str, " for ");
            m2493break.append(cls.getName());
            m2493break.append(" not found. Known fields are ");
            m2493break.append(Arrays.toString(declaredFields));
            throw new RuntimeException(m2493break.toString());
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static Cthrows m6317while(InterfaceC0418Os interfaceC0418Os, InterfaceC0245Gu interfaceC0245Gu, Cthrow cthrow, Cabstract cabstract, Ccase ccase, Cpublic cpublic) {
        if (interfaceC0418Os instanceof Py) {
            return m6313import((Py) interfaceC0418Os, interfaceC0245Gu, cthrow, cabstract, ccase, cpublic);
        }
        throw null;
    }

    /* renamed from: break, reason: not valid java name */
    public final AB m6318break(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.f12129do;
        AB ab = (AB) objArr[i2];
        if (ab != null) {
            return ab;
        }
        AB<T> m6984do = C2956iy.f13602do.m6984do((Class) objArr[i2 + 1]);
        objArr[i2] = m6984do;
        return m6984do;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [AB] */
    /* JADX WARN: Type inference failed for: r0v23, types: [AB] */
    /* JADX WARN: Type inference failed for: r1v11, types: [AB] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25, types: [AB] */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    @Override // defpackage.AB
    /* renamed from: case */
    public final boolean mo47case(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i5 >= this.f12120do) {
                return !this.f12127do || this.f12123do.mo6184if(t).m6258this();
            }
            int i6 = this.f12131if[i5];
            int[] iArr = this.f12128do;
            int i7 = iArr[i6];
            int m6328throws = m6328throws(i6);
            int i8 = iArr[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = f12118do.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if (((268435456 & m6328throws) != 0) && !m6320class(t, i6, i, i2, i10)) {
                return false;
            }
            int i11 = (267386880 & m6328throws) >>> 20;
            if (i11 != 9 && i11 != 17) {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (m6322final(i7, i6, t) && !m6318break(i6).mo47case(C3677sJ.m8105super(m6328throws & 1048575, t))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 != 50) {
                            continue;
                        } else {
                            Object m8105super = C3677sJ.m8105super(m6328throws & 1048575, t);
                            Cpublic cpublic = this.f12124do;
                            Cnative mo6282for = cpublic.mo6282for(m8105super);
                            if (!mo6282for.isEmpty()) {
                                if (cpublic.mo6284new(this.f12129do[(i6 / 3) * 2]).f12079if.f14515do == EnumC3445oM.MESSAGE) {
                                    Iterator it = mo6282for.values().iterator();
                                    ?? r1 = 0;
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        r1 = r1;
                                        if (r1 == 0) {
                                            r1 = C2956iy.f13602do.m6984do(next.getClass());
                                        }
                                        if (!r1.mo47case(next)) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) C3677sJ.m8105super(m6328throws & 1048575, t);
                if (!list.isEmpty()) {
                    ?? m6318break = m6318break(i6);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= list.size()) {
                            break;
                        }
                        if (!m6318break.mo47case(list.get(i12))) {
                            z = false;
                            break;
                        }
                        i12++;
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (m6320class(t, i6, i, i2, i10) && !m6318break(i6).mo47case(C3677sJ.m8105super(m6328throws & 1048575, t))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m6319catch(int i, Object obj) {
        boolean equals;
        int i2 = this.f12128do[i + 2];
        long j = i2 & 1048575;
        if (j != 1048575) {
            return ((1 << (i2 >>> 20)) & C3677sJ.m8092const(j, obj)) != 0;
        }
        int m6328throws = m6328throws(i);
        long j2 = m6328throws & 1048575;
        switch ((m6328throws & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(C3677sJ.m8090catch(j2, obj)) != 0;
            case 1:
                return Float.floatToRawIntBits(C3677sJ.m8091class(j2, obj)) != 0;
            case 2:
                return C3677sJ.m8095final(j2, obj) != 0;
            case 3:
                return C3677sJ.m8095final(j2, obj) != 0;
            case 4:
                return C3677sJ.m8092const(j2, obj) != 0;
            case 5:
                return C3677sJ.m8095final(j2, obj) != 0;
            case 6:
                return C3677sJ.m8092const(j2, obj) != 0;
            case 7:
                return C3677sJ.m8094else(j2, obj);
            case 8:
                Object m8105super = C3677sJ.m8105super(j2, obj);
                if (m8105super instanceof String) {
                    equals = ((String) m8105super).isEmpty();
                    break;
                } else {
                    if (!(m8105super instanceof AbstractC3429o6)) {
                        throw new IllegalArgumentException();
                    }
                    equals = AbstractC3429o6.f14685do.equals(m8105super);
                    break;
                }
            case 9:
                return C3677sJ.m8105super(j2, obj) != null;
            case 10:
                equals = AbstractC3429o6.f14685do.equals(C3677sJ.m8105super(j2, obj));
                break;
            case 11:
                return C3677sJ.m8092const(j2, obj) != 0;
            case 12:
                return C3677sJ.m8092const(j2, obj) != 0;
            case 13:
                return C3677sJ.m8092const(j2, obj) != 0;
            case 14:
                return C3677sJ.m8095final(j2, obj) != 0;
            case 15:
                return C3677sJ.m8092const(j2, obj) != 0;
            case 16:
                return C3677sJ.m8095final(j2, obj) != 0;
            case 17:
                return C3677sJ.m8105super(j2, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
        return !equals;
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m6320class(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m6319catch(i, t) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02de  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0600  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01d9  */
    /* renamed from: default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6321default(java.lang.Object r24, com.google.protobuf.Ctry r25) {
        /*
            Method dump skipped, instructions count: 1832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Cthrows.m6321default(java.lang.Object, com.google.protobuf.try):void");
    }

    @Override // defpackage.AB
    /* renamed from: do */
    public final void mo48do(T t, T t2) {
        if (!m6312const(t)) {
            throw new IllegalArgumentException("Mutating immutable message: " + t);
        }
        t2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f12128do;
            if (i >= iArr.length) {
                Class<?> cls = Cfinally.f12067do;
                Cabstract<?, ?> cabstract = this.f12122do;
                cabstract.mo6169case(t, cabstract.mo6176try(cabstract.mo6170do(t), cabstract.mo6170do(t2)));
                if (this.f12127do) {
                    Cfinally.m6214extends(this.f12123do, t, t2);
                    return;
                }
                return;
            }
            int m6328throws = m6328throws(i);
            long j = 1048575 & m6328throws;
            int i2 = iArr[i];
            switch ((m6328throws & 267386880) >>> 20) {
                case 0:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.f15433do.mo8114const(t, j, C3677sJ.m8090catch(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 1:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.f15433do.mo8115final(t, j, C3677sJ.m8091class(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 2:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8103return(t, j, C3677sJ.m8095final(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 3:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8103return(t, j, C3677sJ.m8095final(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 4:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8102public(t, C3677sJ.m8092const(j, t2), j);
                        m6323static(i, t);
                        break;
                    }
                case 5:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8103return(t, j, C3677sJ.m8095final(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 6:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8102public(t, C3677sJ.m8092const(j, t2), j);
                        m6323static(i, t);
                        break;
                    }
                case 7:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.f15433do.mo8112catch(t, j, C3677sJ.m8094else(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 8:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8104static(t, j, C3677sJ.m8105super(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 9:
                    m6324super(i, t, t2);
                    break;
                case 10:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8104static(t, j, C3677sJ.m8105super(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 11:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8102public(t, C3677sJ.m8092const(j, t2), j);
                        m6323static(i, t);
                        break;
                    }
                case 12:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8102public(t, C3677sJ.m8092const(j, t2), j);
                        m6323static(i, t);
                        break;
                    }
                case 13:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8102public(t, C3677sJ.m8092const(j, t2), j);
                        m6323static(i, t);
                        break;
                    }
                case 14:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8103return(t, j, C3677sJ.m8095final(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 15:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8102public(t, C3677sJ.m8092const(j, t2), j);
                        m6323static(i, t);
                        break;
                    }
                case 16:
                    if (!m6319catch(i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8103return(t, j, C3677sJ.m8095final(j, t2));
                        m6323static(i, t);
                        break;
                    }
                case 17:
                    m6324super(i, t, t2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case ConnectionResult.API_DISABLED /* 23 */:
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                case Constants.MAX_TREE_DEPTH /* 25 */:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f12126do.mo6310if(t, j, t2);
                    break;
                case 50:
                    Class<?> cls2 = Cfinally.f12067do;
                    C3677sJ.m8104static(t, j, this.f12124do.mo6285try(C3677sJ.m8105super(j, t), C3677sJ.m8105super(j, t2)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (!m6322final(i2, i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8104static(t, j, C3677sJ.m8105super(j, t2));
                        m6325switch(i2, i, t);
                        break;
                    }
                case 60:
                    m6327throw(i, t, t2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!m6322final(i2, i, t2)) {
                        break;
                    } else {
                        C3677sJ.m8104static(t, j, C3677sJ.m8105super(j, t2));
                        m6325switch(i2, i, t);
                        break;
                    }
                case 68:
                    m6327throw(i, t, t2);
                    break;
            }
            i += 3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.AB
    /* renamed from: else */
    public final void mo49else(T t) {
        if (m6312const(t)) {
            if (t instanceof Cthis) {
                Cthis cthis = (Cthis) t;
                cthis.m6301public();
                cthis.m6299native();
                cthis.m6300package();
            }
            int[] iArr = this.f12128do;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int m6328throws = m6328throws(i);
                long j = 1048575 & m6328throws;
                int i2 = (m6328throws & 267386880) >>> 20;
                Unsafe unsafe = f12118do;
                if (i2 != 9) {
                    if (i2 != 60 && i2 != 68) {
                        switch (i2) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case ConnectionResult.API_DISABLED /* 23 */:
                            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                            case Constants.MAX_TREE_DEPTH /* 25 */:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                this.f12126do.mo6309do(j, t);
                                break;
                            case 50:
                                Object object = unsafe.getObject(t, j);
                                if (object != null) {
                                    unsafe.putObject(t, j, this.f12124do.mo6281do(object));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (m6322final(iArr[i], i, t)) {
                        m6318break(i).mo49else(unsafe.getObject(t, j));
                    }
                }
                if (m6319catch(i, t)) {
                    m6318break(i).mo49else(unsafe.getObject(t, j));
                }
            }
            this.f12122do.mo6175new(t);
            if (this.f12127do) {
                this.f12123do.mo6186try(t);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final boolean m6322final(int i, int i2, Object obj) {
        return C3677sJ.m8092const((long) (this.f12128do[i2 + 2] & 1048575), obj) == i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
    
        if (com.google.protobuf.Cfinally.m6216finally(defpackage.C3677sJ.m8105super(r7, r11), defpackage.C3677sJ.m8105super(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
    
        if (com.google.protobuf.Cfinally.m6216finally(defpackage.C3677sJ.m8105super(r7, r11), defpackage.C3677sJ.m8105super(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
    
        if (defpackage.C3677sJ.m8095final(r7, r11) == defpackage.C3677sJ.m8095final(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0095, code lost:
    
        if (defpackage.C3677sJ.m8092const(r7, r11) == defpackage.C3677sJ.m8092const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a9, code lost:
    
        if (defpackage.C3677sJ.m8095final(r7, r11) == defpackage.C3677sJ.m8095final(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bb, code lost:
    
        if (defpackage.C3677sJ.m8092const(r7, r11) == defpackage.C3677sJ.m8092const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cd, code lost:
    
        if (defpackage.C3677sJ.m8092const(r7, r11) == defpackage.C3677sJ.m8092const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00df, code lost:
    
        if (defpackage.C3677sJ.m8092const(r7, r11) == defpackage.C3677sJ.m8092const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f5, code lost:
    
        if (com.google.protobuf.Cfinally.m6216finally(defpackage.C3677sJ.m8105super(r7, r11), defpackage.C3677sJ.m8105super(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010b, code lost:
    
        if (com.google.protobuf.Cfinally.m6216finally(defpackage.C3677sJ.m8105super(r7, r11), defpackage.C3677sJ.m8105super(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0121, code lost:
    
        if (com.google.protobuf.Cfinally.m6216finally(defpackage.C3677sJ.m8105super(r7, r11), defpackage.C3677sJ.m8105super(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0133, code lost:
    
        if (defpackage.C3677sJ.m8094else(r7, r11) == defpackage.C3677sJ.m8094else(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0145, code lost:
    
        if (defpackage.C3677sJ.m8092const(r7, r11) == defpackage.C3677sJ.m8092const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0159, code lost:
    
        if (defpackage.C3677sJ.m8095final(r7, r11) == defpackage.C3677sJ.m8095final(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016b, code lost:
    
        if (defpackage.C3677sJ.m8092const(r7, r11) == defpackage.C3677sJ.m8092const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x017e, code lost:
    
        if (defpackage.C3677sJ.m8095final(r7, r11) == defpackage.C3677sJ.m8095final(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0191, code lost:
    
        if (defpackage.C3677sJ.m8095final(r7, r11) == defpackage.C3677sJ.m8095final(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01aa, code lost:
    
        if (java.lang.Float.floatToIntBits(defpackage.C3677sJ.m8091class(r7, r11)) == java.lang.Float.floatToIntBits(defpackage.C3677sJ.m8091class(r7, r12))) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c5, code lost:
    
        if (java.lang.Double.doubleToLongBits(defpackage.C3677sJ.m8090catch(r7, r11)) == java.lang.Double.doubleToLongBits(defpackage.C3677sJ.m8090catch(r7, r12))) goto L109;
     */
    @Override // defpackage.AB
    /* renamed from: for */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo50for(T r11, T r12) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Cthrows.mo50for(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // defpackage.AB
    /* renamed from: goto */
    public final void mo51goto(Object obj, Ctry ctry) {
        ctry.getClass();
        m6321default(obj, ctry);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01f2, code lost:
    
        if (r4 != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00da, code lost:
    
        if (r4 != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01f5, code lost:
    
        r8 = 1237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01f7, code lost:
    
        r4 = r8;
     */
    @Override // defpackage.AB
    /* renamed from: if */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo52if(T r11) {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Cthrows.mo52if(java.lang.Object):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // defpackage.AB
    /* renamed from: new */
    public final int mo53new(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int m8203import;
        int m8219while;
        int m6236this;
        int m8205interface;
        int m8217transient;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = this.f12128do;
            if (i8 >= iArr.length) {
                Cabstract<?, ?> cabstract = this.f12122do;
                int mo6174if = cabstract.mo6174if(cabstract.mo6170do(t)) + i9;
                return this.f12127do ? mo6174if + this.f12123do.mo6184if(t).m6255else() : mo6174if;
            }
            int m6328throws = m6328throws(i8);
            int i10 = (267386880 & m6328throws) >>> 20;
            int i11 = iArr[i8];
            int i12 = iArr[i8 + 2];
            int i13 = i12 & i5;
            Unsafe unsafe = f12118do;
            if (i10 <= 17) {
                if (i13 != i6) {
                    i7 = i13 == i5 ? 0 : unsafe.getInt(t, i13);
                    i6 = i13;
                }
                i = i6;
                i2 = i7;
                i3 = 1 << (i12 >>> 20);
            } else {
                i = i6;
                i2 = i7;
                i3 = 0;
            }
            long j = i5 & m6328throws;
            if (i10 < EnumC0407Oh.f2661do.m1674do() || i10 > EnumC0407Oh.f2663if.m1674do()) {
                i13 = 0;
            }
            boolean z = this.f12130if;
            switch (i10) {
                case 0:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8203import(i11);
                        i9 += m8203import;
                        break;
                    }
                case 1:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8212static(i11);
                        i9 += m8203import;
                        break;
                    }
                case 2:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8200extends(i11, unsafe.getLong(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 3:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8202implements(i11, unsafe.getLong(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 4:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8216throws(i11, unsafe.getInt(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 5:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8211return(i11);
                        i9 += m8203import;
                        break;
                    }
                case 6:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8210public(i11);
                        i9 += m8203import;
                        break;
                    }
                case 7:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8215throw(i11);
                        i9 += m8203import;
                        break;
                    }
                case 8:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        Object object = unsafe.getObject(t, j);
                        m8219while = object instanceof AbstractC3429o6 ? AbstractC3725t8.m8219while(i11, (AbstractC3429o6) object) : AbstractC3725t8.m8213strictfp(i11, (String) object);
                        i9 = m8219while + i9;
                        break;
                    }
                case 9:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = Cfinally.m6233super(i11, m6318break(i8), unsafe.getObject(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 10:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8219while(i11, (AbstractC3429o6) unsafe.getObject(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 11:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8209protected(i11, unsafe.getInt(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 12:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8206native(i11, unsafe.getInt(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 13:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8207package(i11);
                        i9 += m8203import;
                        break;
                    }
                case 14:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8208private(i11);
                        i9 += m8203import;
                        break;
                    }
                case 15:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8197abstract(i11, unsafe.getInt(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 16:
                    i4 = i;
                    if (!m6320class(t, i8, i4, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8198continue(i11, unsafe.getLong(t, j));
                        i9 += m8203import;
                        break;
                    }
                case 17:
                    i4 = i;
                    if (!m6320class(t, i8, i, i2, i3)) {
                        break;
                    } else {
                        m8203import = AbstractC3725t8.m8214switch(i11, (Cstatic) unsafe.getObject(t, j), m6318break(i8));
                        i9 += m8203import;
                        break;
                    }
                case 18:
                    m8203import = Cfinally.m6218goto(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 19:
                    m8203import = Cfinally.m6206case(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 20:
                    m8203import = Cfinally.m6209const(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 21:
                    m8203import = Cfinally.m6238throws(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 22:
                    m8203import = Cfinally.m6207catch(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    m8203import = Cfinally.m6218goto(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    m8203import = Cfinally.m6206case(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    m8203import = Cfinally.m6212do(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 26:
                    m8203import = Cfinally.m6230return(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 27:
                    m8203import = Cfinally.m6237throw(i11, (List) unsafe.getObject(t, j), m6318break(i8));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 28:
                    m8203import = Cfinally.m6217for(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 29:
                    m8203import = Cfinally.m6231static(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 30:
                    m8203import = Cfinally.m6225new(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 31:
                    m8203import = Cfinally.m6206case(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 32:
                    m8203import = Cfinally.m6218goto(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 33:
                    m8203import = Cfinally.m6242while(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 34:
                    m8203import = Cfinally.m6224native(i11, (List) unsafe.getObject(t, j));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 35:
                    m6236this = Cfinally.m6236this((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 36:
                    m6236this = Cfinally.m6213else((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 37:
                    m6236this = Cfinally.m6215final((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 38:
                    m6236this = Cfinally.m6211default((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 39:
                    m6236this = Cfinally.m6208class((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 40:
                    m6236this = Cfinally.m6236this((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 41:
                    m6236this = Cfinally.m6213else((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 42:
                    m6236this = Cfinally.m6219if((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 43:
                    m6236this = Cfinally.m6234switch((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 44:
                    m6236this = Cfinally.m6240try((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 45:
                    m6236this = Cfinally.m6213else((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 46:
                    m6236this = Cfinally.m6236this((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 47:
                    m6236this = Cfinally.m6221import((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 48:
                    m6236this = Cfinally.m6229public((List) unsafe.getObject(t, j));
                    if (m6236this > 0) {
                        if (z) {
                            unsafe.putInt(t, i13, m6236this);
                        }
                        m8205interface = AbstractC3725t8.m8205interface(i11);
                        m8217transient = AbstractC3725t8.m8217transient(m6236this);
                        i9 = V1.m2501for(m8217transient, m8205interface, m6236this, i9);
                    }
                    i4 = i;
                    break;
                case 49:
                    m8203import = Cfinally.m6205break(i11, (List) unsafe.getObject(t, j), m6318break(i8));
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 50:
                    m8203import = this.f12124do.mo6283if(i11, unsafe.getObject(t, j), this.f12129do[(i8 / 3) * 2]);
                    i4 = i;
                    i9 += m8203import;
                    break;
                case 51:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8203import(i11);
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 52:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8212static(i11);
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 53:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8200extends(i11, m6315public(j, t));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 54:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8202implements(i11, m6315public(j, t));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 55:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8216throws(i11, m6314native(j, t));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 56:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8211return(i11);
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 57:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8210public(i11);
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 58:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8215throw(i11);
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 59:
                    if (m6322final(i11, i8, t)) {
                        Object object2 = unsafe.getObject(t, j);
                        m8219while = object2 instanceof AbstractC3429o6 ? AbstractC3725t8.m8219while(i11, (AbstractC3429o6) object2) : AbstractC3725t8.m8213strictfp(i11, (String) object2);
                        i4 = i;
                        i9 = m8219while + i9;
                        break;
                    }
                    i4 = i;
                    break;
                case 60:
                    if (m6322final(i11, i8, t)) {
                        m8203import = Cfinally.m6233super(i11, m6318break(i8), unsafe.getObject(t, j));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 61:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8219while(i11, (AbstractC3429o6) unsafe.getObject(t, j));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 62:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8209protected(i11, m6314native(j, t));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 63:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8206native(i11, m6314native(j, t));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 64:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8207package(i11);
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 65:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8208private(i11);
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 66:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8197abstract(i11, m6314native(j, t));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 67:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8198continue(i11, m6315public(j, t));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                case 68:
                    if (m6322final(i11, i8, t)) {
                        m8203import = AbstractC3725t8.m8214switch(i11, (Cstatic) unsafe.getObject(t, j), m6318break(i8));
                        i4 = i;
                        i9 += m8203import;
                        break;
                    }
                    i4 = i;
                    break;
                default:
                    i4 = i;
                    break;
            }
            i8 += 3;
            i5 = 1048575;
            i7 = i2;
            i6 = i4;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final void m6323static(int i, Object obj) {
        int i2 = this.f12128do[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        C3677sJ.m8102public(obj, (1 << (i2 >>> 20)) | C3677sJ.m8092const(j, obj), j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: super, reason: not valid java name */
    public final void m6324super(int i, Object obj, Object obj2) {
        if (m6319catch(i, obj2)) {
            long m6328throws = m6328throws(i) & 1048575;
            Unsafe unsafe = f12118do;
            Object object = unsafe.getObject(obj2, m6328throws);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f12128do[i] + " is present but null: " + obj2);
            }
            AB m6318break = m6318break(i);
            if (!m6319catch(i, obj)) {
                if (m6312const(object)) {
                    Object mo54try = m6318break.mo54try();
                    m6318break.mo48do(mo54try, object);
                    unsafe.putObject(obj, m6328throws, mo54try);
                } else {
                    unsafe.putObject(obj, m6328throws, object);
                }
                m6323static(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, m6328throws);
            if (!m6312const(object2)) {
                Object mo54try2 = m6318break.mo54try();
                m6318break.mo48do(mo54try2, object2);
                unsafe.putObject(obj, m6328throws, mo54try2);
                object2 = mo54try2;
            }
            m6318break.mo48do(object2, object);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m6325switch(int i, int i2, Object obj) {
        C3677sJ.m8102public(obj, i, this.f12128do[i2 + 2] & 1048575);
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m6326this(int i, Object obj, Object obj2) {
        return m6319catch(i, obj) == m6319catch(i, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: throw, reason: not valid java name */
    public final void m6327throw(int i, Object obj, Object obj2) {
        int[] iArr = this.f12128do;
        int i2 = iArr[i];
        if (m6322final(i2, i, obj2)) {
            long m6328throws = m6328throws(i) & 1048575;
            Unsafe unsafe = f12118do;
            Object object = unsafe.getObject(obj2, m6328throws);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2);
            }
            AB m6318break = m6318break(i);
            if (!m6322final(i2, i, obj)) {
                if (m6312const(object)) {
                    Object mo54try = m6318break.mo54try();
                    m6318break.mo48do(mo54try, object);
                    unsafe.putObject(obj, m6328throws, mo54try);
                } else {
                    unsafe.putObject(obj, m6328throws, object);
                }
                m6325switch(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, m6328throws);
            if (!m6312const(object2)) {
                Object mo54try2 = m6318break.mo54try();
                m6318break.mo48do(mo54try2, object2);
                unsafe.putObject(obj, m6328throws, mo54try2);
                object2 = mo54try2;
            }
            m6318break.mo48do(object2, object);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final int m6328throws(int i) {
        return this.f12128do[i + 1];
    }

    @Override // defpackage.AB
    /* renamed from: try */
    public final T mo54try() {
        return (T) this.f12121do.mo771do(this.f12125do);
    }
}
