package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cswitch;
import androidx.datastore.preferences.protobuf.Cthrow;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.common.ConnectionResult;
import defpackage.AbstractC3370n6;
import defpackage.AbstractC3666s8;
import defpackage.BB;
import defpackage.C3184jy;
import defpackage.C3736tJ;
import defpackage.EnumC0429Ph;
import defpackage.EnumC3504pM;
import defpackage.InterfaceC0267Hu;
import defpackage.InterfaceC0440Ps;
import defpackage.Qy;
import defpackage.V1;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* renamed from: androidx.datastore.preferences.protobuf.private, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cprivate<T> implements BB<T> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f6615do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0267Hu f6616do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cbreak<?> f6617do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdefault f6618do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfinally f6619do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cimplements<?, ?> f6620do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Creturn f6621do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f6622do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f6623do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object[] f6624do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f6625for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f6626for;

    /* renamed from: if, reason: not valid java name */
    public final int f6627if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f6628if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int[] f6629if;

    /* renamed from: new, reason: not valid java name */
    public final int f6630new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f6631new;

    /* renamed from: for, reason: not valid java name */
    public static final int[] f6614for = new int[0];

    /* renamed from: do, reason: not valid java name */
    public static final Unsafe f6613do = C3736tJ.m8257super();

    public Cprivate(int[] iArr, Object[] objArr, int i, int i2, Cfinally cfinally, boolean z, int[] iArr2, int i3, int i4, InterfaceC0267Hu interfaceC0267Hu, Creturn creturn, Cimplements cimplements, Cbreak cbreak, Cdefault cdefault) {
        this.f6623do = iArr;
        this.f6624do = objArr;
        this.f6615do = i;
        this.f6627if = i2;
        this.f6628if = cfinally instanceof Cfinal;
        this.f6626for = z;
        this.f6622do = cbreak != null && cbreak.mo3771try(cfinally);
        this.f6631new = false;
        this.f6629if = iArr2;
        this.f6625for = i3;
        this.f6630new = i4;
        this.f6616do = interfaceC0267Hu;
        this.f6621do = creturn;
        this.f6620do = cimplements;
        this.f6617do = cbreak;
        this.f6619do = cfinally;
        this.f6618do = cdefault;
    }

    /* renamed from: default, reason: not valid java name */
    public static long m3952default(int i) {
        return i & 1048575;
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m3953extends(long j, Object obj) {
        return ((Integer) C3736tJ.m8248final(j, obj)).intValue();
    }

    /* renamed from: finally, reason: not valid java name */
    public static long m3954finally(long j, Object obj) {
        return ((Long) C3736tJ.m8248final(j, obj)).longValue();
    }

    /* renamed from: native, reason: not valid java name */
    public static List m3955native(long j, Object obj) {
        return (List) C3736tJ.m8248final(j, obj);
    }

    /* renamed from: switch, reason: not valid java name */
    public static Cprivate m3956switch(InterfaceC0440Ps interfaceC0440Ps, InterfaceC0267Hu interfaceC0267Hu, Creturn creturn, Cimplements cimplements, Cbreak cbreak, Cdefault cdefault) {
        if (interfaceC0440Ps instanceof Qy) {
            return m3958throws((Qy) interfaceC0440Ps, interfaceC0267Hu, creturn, cimplements, cbreak, cdefault);
        }
        throw null;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m3957synchronized(int i, Object obj, Celse celse) {
        if (!(obj instanceof String)) {
            celse.m3857if(i, (AbstractC3370n6) obj);
        } else {
            celse.f6583do.p(i, (String) obj);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static <T> Cprivate<T> m3958throws(Qy qy, InterfaceC0267Hu interfaceC0267Hu, Creturn creturn, Cimplements<?, ?> cimplements, Cbreak<?> cbreak, Cdefault cdefault) {
        int i;
        int charAt;
        int charAt2;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        char charAt3;
        int i8;
        char charAt4;
        int i9;
        char charAt5;
        int i10;
        char charAt6;
        int i11;
        char charAt7;
        int i12;
        char charAt8;
        int i13;
        char charAt9;
        int i14;
        char charAt10;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int objectFieldOffset;
        int i23;
        int i24;
        int i25;
        Field m3959volatile;
        char charAt11;
        int i26;
        int i27;
        Field m3959volatile2;
        Field m3959volatile3;
        int i28;
        char charAt12;
        int i29;
        char charAt13;
        int i30;
        char charAt14;
        int i31;
        char charAt15;
        char charAt16;
        int i32 = 0;
        boolean z = qy.mo718if() == 2;
        String m2005try = qy.m2005try();
        int length = m2005try.length();
        int charAt17 = m2005try.charAt(0);
        if (charAt17 >= 55296) {
            int i33 = charAt17 & 8191;
            int i34 = 1;
            int i35 = 13;
            while (true) {
                i = i34 + 1;
                charAt16 = m2005try.charAt(i34);
                if (charAt16 < 55296) {
                    break;
                }
                i33 |= (charAt16 & 8191) << i35;
                i35 += 13;
                i34 = i;
            }
            charAt17 = i33 | (charAt16 << i35);
        } else {
            i = 1;
        }
        int i36 = i + 1;
        int charAt18 = m2005try.charAt(i);
        if (charAt18 >= 55296) {
            int i37 = charAt18 & 8191;
            int i38 = 13;
            while (true) {
                i31 = i36 + 1;
                charAt15 = m2005try.charAt(i36);
                if (charAt15 < 55296) {
                    break;
                }
                i37 |= (charAt15 & 8191) << i38;
                i38 += 13;
                i36 = i31;
            }
            charAt18 = i37 | (charAt15 << i38);
            i36 = i31;
        }
        if (charAt18 == 0) {
            iArr = f6614for;
            i6 = 0;
            i4 = 0;
            charAt = 0;
            i5 = 0;
            charAt2 = 0;
            i3 = 0;
        } else {
            int i39 = i36 + 1;
            int charAt19 = m2005try.charAt(i36);
            if (charAt19 >= 55296) {
                int i40 = charAt19 & 8191;
                int i41 = 13;
                while (true) {
                    i14 = i39 + 1;
                    charAt10 = m2005try.charAt(i39);
                    if (charAt10 < 55296) {
                        break;
                    }
                    i40 |= (charAt10 & 8191) << i41;
                    i41 += 13;
                    i39 = i14;
                }
                charAt19 = i40 | (charAt10 << i41);
                i39 = i14;
            }
            int i42 = i39 + 1;
            int charAt20 = m2005try.charAt(i39);
            if (charAt20 >= 55296) {
                int i43 = charAt20 & 8191;
                int i44 = 13;
                while (true) {
                    i13 = i42 + 1;
                    charAt9 = m2005try.charAt(i42);
                    if (charAt9 < 55296) {
                        break;
                    }
                    i43 |= (charAt9 & 8191) << i44;
                    i44 += 13;
                    i42 = i13;
                }
                charAt20 = i43 | (charAt9 << i44);
                i42 = i13;
            }
            int i45 = i42 + 1;
            int charAt21 = m2005try.charAt(i42);
            if (charAt21 >= 55296) {
                int i46 = charAt21 & 8191;
                int i47 = 13;
                while (true) {
                    i12 = i45 + 1;
                    charAt8 = m2005try.charAt(i45);
                    if (charAt8 < 55296) {
                        break;
                    }
                    i46 |= (charAt8 & 8191) << i47;
                    i47 += 13;
                    i45 = i12;
                }
                charAt21 = i46 | (charAt8 << i47);
                i45 = i12;
            }
            int i48 = i45 + 1;
            charAt = m2005try.charAt(i45);
            if (charAt >= 55296) {
                int i49 = charAt & 8191;
                int i50 = 13;
                while (true) {
                    i11 = i48 + 1;
                    charAt7 = m2005try.charAt(i48);
                    if (charAt7 < 55296) {
                        break;
                    }
                    i49 |= (charAt7 & 8191) << i50;
                    i50 += 13;
                    i48 = i11;
                }
                charAt = i49 | (charAt7 << i50);
                i48 = i11;
            }
            int i51 = i48 + 1;
            int charAt22 = m2005try.charAt(i48);
            if (charAt22 >= 55296) {
                int i52 = charAt22 & 8191;
                int i53 = 13;
                while (true) {
                    i10 = i51 + 1;
                    charAt6 = m2005try.charAt(i51);
                    if (charAt6 < 55296) {
                        break;
                    }
                    i52 |= (charAt6 & 8191) << i53;
                    i53 += 13;
                    i51 = i10;
                }
                charAt22 = i52 | (charAt6 << i53);
                i51 = i10;
            }
            int i54 = i51 + 1;
            charAt2 = m2005try.charAt(i51);
            if (charAt2 >= 55296) {
                int i55 = charAt2 & 8191;
                int i56 = 13;
                while (true) {
                    i9 = i54 + 1;
                    charAt5 = m2005try.charAt(i54);
                    if (charAt5 < 55296) {
                        break;
                    }
                    i55 |= (charAt5 & 8191) << i56;
                    i56 += 13;
                    i54 = i9;
                }
                charAt2 = i55 | (charAt5 << i56);
                i54 = i9;
            }
            int i57 = i54 + 1;
            int charAt23 = m2005try.charAt(i54);
            if (charAt23 >= 55296) {
                int i58 = charAt23 & 8191;
                int i59 = i57;
                int i60 = 13;
                while (true) {
                    i8 = i59 + 1;
                    charAt4 = m2005try.charAt(i59);
                    if (charAt4 < 55296) {
                        break;
                    }
                    i58 |= (charAt4 & 8191) << i60;
                    i60 += 13;
                    i59 = i8;
                }
                charAt23 = i58 | (charAt4 << i60);
                i2 = i8;
            } else {
                i2 = i57;
            }
            int i61 = i2 + 1;
            int charAt24 = m2005try.charAt(i2);
            if (charAt24 >= 55296) {
                int i62 = charAt24 & 8191;
                int i63 = i61;
                int i64 = 13;
                while (true) {
                    i7 = i63 + 1;
                    charAt3 = m2005try.charAt(i63);
                    if (charAt3 < 55296) {
                        break;
                    }
                    i62 |= (charAt3 & 8191) << i64;
                    i64 += 13;
                    i63 = i7;
                }
                charAt24 = i62 | (charAt3 << i64);
                i61 = i7;
            }
            int[] iArr2 = new int[charAt24 + charAt2 + charAt23];
            i3 = (charAt19 * 2) + charAt20;
            i4 = charAt22;
            i5 = charAt24;
            i32 = charAt19;
            i36 = i61;
            int i65 = charAt21;
            iArr = iArr2;
            i6 = i65;
        }
        Object[] m2004new = qy.m2004new();
        Class<?> cls = qy.mo717for().getClass();
        int[] iArr3 = new int[i4 * 3];
        Object[] objArr = new Object[i4 * 2];
        int i66 = charAt2 + i5;
        int i67 = i5;
        int i68 = i66;
        int i69 = 0;
        int i70 = 0;
        while (i36 < length) {
            int i71 = i36 + 1;
            int charAt25 = m2005try.charAt(i36);
            if (charAt25 >= 55296) {
                int i72 = charAt25 & 8191;
                int i73 = i71;
                int i74 = 13;
                while (true) {
                    i30 = i73 + 1;
                    charAt14 = m2005try.charAt(i73);
                    i15 = length;
                    if (charAt14 < 55296) {
                        break;
                    }
                    i72 |= (charAt14 & 8191) << i74;
                    i74 += 13;
                    i73 = i30;
                    length = i15;
                }
                charAt25 = i72 | (charAt14 << i74);
                i16 = i30;
            } else {
                i15 = length;
                i16 = i71;
            }
            int i75 = i16 + 1;
            int charAt26 = m2005try.charAt(i16);
            if (charAt26 >= 55296) {
                int i76 = charAt26 & 8191;
                int i77 = i75;
                int i78 = 13;
                while (true) {
                    i29 = i77 + 1;
                    charAt13 = m2005try.charAt(i77);
                    i17 = i66;
                    if (charAt13 < 55296) {
                        break;
                    }
                    i76 |= (charAt13 & 8191) << i78;
                    i78 += 13;
                    i77 = i29;
                    i66 = i17;
                }
                charAt26 = i76 | (charAt13 << i78);
                i18 = i29;
            } else {
                i17 = i66;
                i18 = i75;
            }
            int i79 = charAt26 & 255;
            int i80 = i5;
            if ((charAt26 & 1024) != 0) {
                iArr[i70] = i69;
                i70++;
            }
            boolean z2 = z;
            Unsafe unsafe = f6613do;
            if (i79 >= 51) {
                int i81 = i18 + 1;
                int charAt27 = m2005try.charAt(i18);
                if (charAt27 >= 55296) {
                    int i82 = charAt27 & 8191;
                    int i83 = i81;
                    int i84 = 13;
                    while (true) {
                        i28 = i83 + 1;
                        charAt12 = m2005try.charAt(i83);
                        i19 = charAt;
                        if (charAt12 < 55296) {
                            break;
                        }
                        i82 |= (charAt12 & 8191) << i84;
                        i84 += 13;
                        i83 = i28;
                        charAt = i19;
                    }
                    charAt27 = i82 | (charAt12 << i84);
                    i27 = i28;
                } else {
                    i19 = charAt;
                    i27 = i81;
                }
                int i85 = i79 - 51;
                int i86 = i27;
                if (i85 == 9 || i85 == 17) {
                    objArr[((i69 / 3) * 2) + 1] = m2004new[i3];
                    i3++;
                } else if (i85 == 12 && (charAt17 & 1) == 1) {
                    objArr[((i69 / 3) * 2) + 1] = m2004new[i3];
                    i3++;
                }
                int i87 = charAt27 * 2;
                Object obj = m2004new[i87];
                if (obj instanceof Field) {
                    m3959volatile2 = (Field) obj;
                } else {
                    m3959volatile2 = m3959volatile(cls, (String) obj);
                    m2004new[i87] = m3959volatile2;
                }
                int objectFieldOffset2 = (int) unsafe.objectFieldOffset(m3959volatile2);
                int i88 = i87 + 1;
                Object obj2 = m2004new[i88];
                if (obj2 instanceof Field) {
                    m3959volatile3 = (Field) obj2;
                } else {
                    m3959volatile3 = m3959volatile(cls, (String) obj2);
                    m2004new[i88] = m3959volatile3;
                }
                int objectFieldOffset3 = (int) unsafe.objectFieldOffset(m3959volatile3);
                i20 = i3;
                objectFieldOffset = objectFieldOffset2;
                i23 = i86;
                i21 = i6;
                i22 = charAt25;
                i25 = objectFieldOffset3;
                i24 = 0;
            } else {
                i19 = charAt;
                i20 = i3 + 1;
                Field m3959volatile4 = m3959volatile(cls, (String) m2004new[i3]);
                if (i79 == 9 || i79 == 17) {
                    i21 = i6;
                    objArr[((i69 / 3) * 2) + 1] = m3959volatile4.getType();
                } else {
                    if (i79 == 27 || i79 == 49) {
                        i21 = i6;
                        i26 = i20 + 1;
                        objArr[((i69 / 3) * 2) + 1] = m2004new[i20];
                    } else if (i79 == 12 || i79 == 30 || i79 == 44) {
                        i21 = i6;
                        if ((charAt17 & 1) == 1) {
                            i26 = i20 + 1;
                            objArr[((i69 / 3) * 2) + 1] = m2004new[i20];
                        }
                    } else {
                        if (i79 == 50) {
                            int i89 = i67 + 1;
                            iArr[i67] = i69;
                            int i90 = (i69 / 3) * 2;
                            int i91 = i20 + 1;
                            objArr[i90] = m2004new[i20];
                            if ((charAt26 & 2048) != 0) {
                                i20 = i91 + 1;
                                objArr[i90 + 1] = m2004new[i91];
                                i21 = i6;
                                i67 = i89;
                            } else {
                                i67 = i89;
                                i20 = i91;
                            }
                        }
                        i21 = i6;
                    }
                    i22 = charAt25;
                    i20 = i26;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(m3959volatile4);
                    if ((charAt17 & 1) == 1 || i79 > 17) {
                        i23 = i18;
                        i24 = 0;
                        i25 = 0;
                    } else {
                        int i92 = i18 + 1;
                        int charAt28 = m2005try.charAt(i18);
                        if (charAt28 >= 55296) {
                            int i93 = charAt28 & 8191;
                            int i94 = 13;
                            while (true) {
                                i23 = i92 + 1;
                                charAt11 = m2005try.charAt(i92);
                                if (charAt11 < 55296) {
                                    break;
                                }
                                i93 |= (charAt11 & 8191) << i94;
                                i94 += 13;
                                i92 = i23;
                            }
                            charAt28 = i93 | (charAt11 << i94);
                        } else {
                            i23 = i92;
                        }
                        int i95 = (charAt28 / 32) + (i32 * 2);
                        Object obj3 = m2004new[i95];
                        if (obj3 instanceof Field) {
                            m3959volatile = (Field) obj3;
                        } else {
                            m3959volatile = m3959volatile(cls, (String) obj3);
                            m2004new[i95] = m3959volatile;
                        }
                        i25 = (int) unsafe.objectFieldOffset(m3959volatile);
                        i24 = charAt28 % 32;
                    }
                    if (i79 >= 18 && i79 <= 49) {
                        iArr[i68] = objectFieldOffset;
                        i68++;
                    }
                }
                i22 = charAt25;
                objectFieldOffset = (int) unsafe.objectFieldOffset(m3959volatile4);
                if ((charAt17 & 1) == 1) {
                }
                i23 = i18;
                i24 = 0;
                i25 = 0;
                if (i79 >= 18) {
                    iArr[i68] = objectFieldOffset;
                    i68++;
                }
            }
            int i96 = i69 + 1;
            iArr3[i69] = i22;
            int i97 = i96 + 1;
            iArr3[i96] = ((charAt26 & 256) != 0 ? 268435456 : 0) | ((charAt26 & AdRequest.MAX_CONTENT_URL_LENGTH) != 0 ? 536870912 : 0) | (i79 << 20) | objectFieldOffset;
            i69 = i97 + 1;
            iArr3[i97] = (i24 << 20) | i25;
            i3 = i20;
            i5 = i80;
            i6 = i21;
            length = i15;
            i66 = i17;
            i36 = i23;
            z = z2;
            charAt = i19;
        }
        return new Cprivate<>(iArr3, objArr, i6, charAt, qy.mo717for(), z, iArr, i5, i66, interfaceC0267Hu, creturn, cimplements, cbreak, cdefault);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static Field m3959volatile(Class<?> cls, String str) {
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

    /* renamed from: abstract, reason: not valid java name */
    public final <E> void m3960abstract(Object obj, int i, Cvolatile cvolatile, BB<E> bb, Cthis cthis) {
        cvolatile.mo3781else(this.f6621do.mo3984for(i & 1048575, obj), bb, cthis);
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m3961break(int i, Object obj, Object obj2) {
        return m3981while(i, obj) == m3981while(i, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [BB] */
    /* JADX WARN: Type inference failed for: r4v5, types: [BB] */
    /* JADX WARN: Type inference failed for: r4v6, types: [BB] */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19, types: [BB] */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    @Override // defpackage.BB
    /* renamed from: case */
    public final boolean mo147case(T t) {
        int i;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.f6625for) {
                return !this.f6622do || this.f6617do.mo3766for(t).m3824this();
            }
            int i5 = this.f6629if[i3];
            int[] iArr = this.f6623do;
            int i6 = iArr[i5];
            int m3980transient = m3980transient(i5);
            boolean z2 = this.f6626for;
            if (z2) {
                i = 0;
            } else {
                int i7 = iArr[i5 + 2];
                int i8 = i7 & 1048575;
                i = 1 << (i7 >>> 20);
                if (i8 != i2) {
                    i4 = f6613do.getInt(t, i8);
                    i2 = i8;
                }
            }
            if ((268435456 & m3980transient) != 0) {
                if (!(z2 ? m3981while(i5, t) : (i4 & i) != 0)) {
                    return false;
                }
            }
            int i9 = (267386880 & m3980transient) >>> 20;
            if (i9 == 9 || i9 == 17) {
                if (z2) {
                    z = m3981while(i5, t);
                } else if ((i & i4) == 0) {
                    z = false;
                }
                if (z && !m3966final(i5).mo147case(C3736tJ.m8248final(m3980transient & 1048575, t))) {
                    return false;
                }
            } else {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (m3968import(i6, i5, t) && !m3966final(i5).mo147case(C3736tJ.m8248final(m3980transient & 1048575, t))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Object m8248final = C3736tJ.m8248final(m3980transient & 1048575, t);
                            Cdefault cdefault = this.f6618do;
                            Cthrows mo3841new = cdefault.mo3841new(m8248final);
                            if (!mo3841new.isEmpty() && cdefault.mo3839goto(m3964const(i5)).f6649if.f14335do == EnumC3504pM.MESSAGE) {
                                Iterator it = mo3841new.values().iterator();
                                ?? r6 = 0;
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    Object next = it.next();
                                    r6 = r6;
                                    if (r6 == 0) {
                                        r6 = C3184jy.f13856do.m7180do(next.getClass());
                                    }
                                    if (!r6.mo147case(next)) {
                                        z = false;
                                        break;
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) C3736tJ.m8248final(m3980transient & 1048575, t);
                if (!list.isEmpty()) {
                    ?? m3966final = m3966final(i5);
                    int i10 = 0;
                    while (true) {
                        if (i10 >= list.size()) {
                            break;
                        }
                        if (!m3966final.mo147case(list.get(i10))) {
                            z = false;
                            break;
                        }
                        i10++;
                    }
                }
                if (!z) {
                    return false;
                }
            }
            i3++;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final <UT, UB> UB m3962catch(Object obj, int i, UB ub, Cimplements<UT, UB> cimplements) {
        int i2 = this.f6623do[i];
        Object m8248final = C3736tJ.m8248final(m3980transient(i) & 1048575, obj);
        if (m8248final == null) {
            return ub;
        }
        Cthrow.Cif m3963class = m3963class(i);
        if (m3963class == null) {
            return ub;
        }
        Cdefault cdefault = this.f6618do;
        Cthrows mo3838for = cdefault.mo3838for(m8248final);
        Cswitch.Cdo<?, ?> mo3839goto = cdefault.mo3839goto(m3964const(i));
        Iterator it = mo3838for.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            ((Integer) entry.getValue()).intValue();
            if (!m3963class.m3998do()) {
                if (ub == null) {
                    ub = (UB) cimplements.mo3888const();
                }
                int m3992do = Cswitch.m3992do(mo3839goto, entry.getKey(), entry.getValue());
                byte[] bArr = new byte[m3992do];
                Logger logger = AbstractC3666s8.f15399do;
                AbstractC3666s8.Cif cif = new AbstractC3666s8.Cif(bArr, m3992do);
                try {
                    Cswitch.m3993if(cif, mo3839goto, entry.getKey(), entry.getValue());
                    if (cif.f15405do - cif.f15407if != 0) {
                        throw new IllegalStateException("Did not write as much data as expected.");
                    }
                    cimplements.mo3897new(ub, i2, new AbstractC3370n6.Ctry(bArr));
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* renamed from: class, reason: not valid java name */
    public final Cthrow.Cif m3963class(int i) {
        return (Cthrow.Cif) this.f6624do[((i / 3) * 2) + 1];
    }

    /* renamed from: const, reason: not valid java name */
    public final Object m3964const(int i) {
        return this.f6624do[(i / 3) * 2];
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m3965continue(Object obj, int i, Cvolatile cvolatile) {
        if ((536870912 & i) != 0) {
            C3736tJ.m8256return(obj, i & 1048575, cvolatile.mo3788implements());
        } else if (this.f6628if) {
            C3736tJ.m8256return(obj, i & 1048575, cvolatile.mo3785for());
        } else {
            C3736tJ.m8256return(obj, i & 1048575, cvolatile.mo3792native());
        }
    }

    @Override // defpackage.BB
    /* renamed from: do */
    public final void mo148do(T t, T t2) {
        t2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f6623do;
            if (i >= iArr.length) {
                if (this.f6626for) {
                    return;
                }
                Class<?> cls = Cinterface.f6607do;
                Cimplements<?, ?> cimplements = this.f6620do;
                cimplements.mo3898super(t, cimplements.mo3886catch(cimplements.mo3890else(t), cimplements.mo3890else(t2)));
                if (this.f6622do) {
                    Cinterface.m3928package(this.f6617do, t, t2);
                    return;
                }
                return;
            }
            int m3980transient = m3980transient(i);
            long j = 1048575 & m3980transient;
            int i2 = iArr[i];
            switch ((m3980transient & 267386880) >>> 20) {
                case 0:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.f15688do.mo8266const(t, j, C3736tJ.m8241break(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 1:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.f15688do.mo8267final(t, j, C3736tJ.m8243catch(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 2:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8255public(t, j, C3736tJ.m8245const(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 3:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8255public(t, j, C3736tJ.m8245const(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 4:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8253native(t, C3736tJ.m8244class(j, t2), j);
                        m3970interface(i, t);
                        break;
                    }
                case 5:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8255public(t, j, C3736tJ.m8245const(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 6:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8253native(t, C3736tJ.m8244class(j, t2), j);
                        m3970interface(i, t);
                        break;
                    }
                case 7:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.f15688do.mo8264catch(t, j, C3736tJ.m8242case(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 8:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8256return(t, j, C3736tJ.m8248final(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 9:
                    m3975return(i, t, t2);
                    break;
                case 10:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8256return(t, j, C3736tJ.m8248final(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 11:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8253native(t, C3736tJ.m8244class(j, t2), j);
                        m3970interface(i, t);
                        break;
                    }
                case 12:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8253native(t, C3736tJ.m8244class(j, t2), j);
                        m3970interface(i, t);
                        break;
                    }
                case 13:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8253native(t, C3736tJ.m8244class(j, t2), j);
                        m3970interface(i, t);
                        break;
                    }
                case 14:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8255public(t, j, C3736tJ.m8245const(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 15:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8253native(t, C3736tJ.m8244class(j, t2), j);
                        m3970interface(i, t);
                        break;
                    }
                case 16:
                    if (!m3981while(i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8255public(t, j, C3736tJ.m8245const(j, t2));
                        m3970interface(i, t);
                        break;
                    }
                case 17:
                    m3975return(i, t, t2);
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
                    this.f6621do.mo3985if(t, j, t2);
                    break;
                case 50:
                    Class<?> cls2 = Cinterface.f6607do;
                    C3736tJ.m8256return(t, j, this.f6618do.mo3837else(C3736tJ.m8248final(j, t), C3736tJ.m8248final(j, t2)));
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
                    if (!m3968import(i2, i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8256return(t, j, C3736tJ.m8248final(j, t2));
                        m3973protected(i2, i, t);
                        break;
                    }
                case 60:
                    m3976static(i, t, t2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!m3968import(i2, i, t2)) {
                        break;
                    } else {
                        C3736tJ.m8256return(t, j, C3736tJ.m8248final(j, t2));
                        m3973protected(i2, i, t);
                        break;
                    }
                case 68:
                    m3976static(i, t, t2);
                    break;
            }
            i += 3;
        }
    }

    @Override // defpackage.BB
    /* renamed from: else */
    public final void mo149else(T t) {
        int[] iArr;
        int i;
        int i2 = this.f6625for;
        while (true) {
            iArr = this.f6629if;
            i = this.f6630new;
            if (i2 >= i) {
                break;
            }
            long m3980transient = m3980transient(iArr[i2]) & 1048575;
            Object m8248final = C3736tJ.m8248final(m3980transient, t);
            if (m8248final != null) {
                C3736tJ.m8256return(t, m3980transient, this.f6618do.mo3836do(m8248final));
            }
            i2++;
        }
        int length = iArr.length;
        while (i < length) {
            this.f6621do.mo3983do(iArr[i], t);
            i++;
        }
        this.f6620do.mo3884break(t);
        if (this.f6622do) {
            this.f6617do.mo3763case(t);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final BB m3966final(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.f6624do;
        BB bb = (BB) objArr[i2];
        if (bb != null) {
            return bb;
        }
        BB<T> m7180do = C3184jy.f13856do.m7180do((Class) objArr[i2 + 1]);
        objArr[i2] = m7180do;
        return m7180do;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
    
        if (androidx.datastore.preferences.protobuf.Cinterface.m3929private(defpackage.C3736tJ.m8248final(r7, r11), defpackage.C3736tJ.m8248final(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
    
        if (androidx.datastore.preferences.protobuf.Cinterface.m3929private(defpackage.C3736tJ.m8248final(r7, r11), defpackage.C3736tJ.m8248final(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
    
        if (defpackage.C3736tJ.m8245const(r7, r11) == defpackage.C3736tJ.m8245const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0095, code lost:
    
        if (defpackage.C3736tJ.m8244class(r7, r11) == defpackage.C3736tJ.m8244class(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a9, code lost:
    
        if (defpackage.C3736tJ.m8245const(r7, r11) == defpackage.C3736tJ.m8245const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bb, code lost:
    
        if (defpackage.C3736tJ.m8244class(r7, r11) == defpackage.C3736tJ.m8244class(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cd, code lost:
    
        if (defpackage.C3736tJ.m8244class(r7, r11) == defpackage.C3736tJ.m8244class(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00df, code lost:
    
        if (defpackage.C3736tJ.m8244class(r7, r11) == defpackage.C3736tJ.m8244class(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f5, code lost:
    
        if (androidx.datastore.preferences.protobuf.Cinterface.m3929private(defpackage.C3736tJ.m8248final(r7, r11), defpackage.C3736tJ.m8248final(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010b, code lost:
    
        if (androidx.datastore.preferences.protobuf.Cinterface.m3929private(defpackage.C3736tJ.m8248final(r7, r11), defpackage.C3736tJ.m8248final(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0121, code lost:
    
        if (androidx.datastore.preferences.protobuf.Cinterface.m3929private(defpackage.C3736tJ.m8248final(r7, r11), defpackage.C3736tJ.m8248final(r7, r12)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0133, code lost:
    
        if (defpackage.C3736tJ.m8242case(r7, r11) == defpackage.C3736tJ.m8242case(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0145, code lost:
    
        if (defpackage.C3736tJ.m8244class(r7, r11) == defpackage.C3736tJ.m8244class(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0159, code lost:
    
        if (defpackage.C3736tJ.m8245const(r7, r11) == defpackage.C3736tJ.m8245const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016b, code lost:
    
        if (defpackage.C3736tJ.m8244class(r7, r11) == defpackage.C3736tJ.m8244class(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x017e, code lost:
    
        if (defpackage.C3736tJ.m8245const(r7, r11) == defpackage.C3736tJ.m8245const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0191, code lost:
    
        if (defpackage.C3736tJ.m8245const(r7, r11) == defpackage.C3736tJ.m8245const(r7, r12)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01aa, code lost:
    
        if (java.lang.Float.floatToIntBits(defpackage.C3736tJ.m8243catch(r7, r11)) == java.lang.Float.floatToIntBits(defpackage.C3736tJ.m8243catch(r7, r12))) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c5, code lost:
    
        if (java.lang.Double.doubleToLongBits(defpackage.C3736tJ.m8241break(r7, r11)) == java.lang.Double.doubleToLongBits(defpackage.C3736tJ.m8241break(r7, r12))) goto L109;
     */
    @Override // defpackage.BB
    /* renamed from: for */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo150for(T r11, T r12) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Cprivate.mo150for(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x05df A[LOOP:1: B:22:0x05dd->B:23:0x05df, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x05ea  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x05b8 A[Catch: all -> 0x05d8, TryCatch #3 {all -> 0x05d8, blocks: (B:17:0x0046, B:33:0x005c, B:58:0x059f, B:69:0x05b3, B:71:0x05b8, B:72:0x05bd), top: B:16:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x05c3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x05d4 A[SYNTHETIC] */
    @Override // defpackage.BB
    /* renamed from: goto */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo151goto(T r20, androidx.datastore.preferences.protobuf.Cvolatile r21, androidx.datastore.preferences.protobuf.Cthis r22) {
        /*
            Method dump skipped, instructions count: 1660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Cprivate.mo151goto(java.lang.Object, androidx.datastore.preferences.protobuf.volatile, androidx.datastore.preferences.protobuf.this):void");
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
    @Override // defpackage.BB
    /* renamed from: if */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo152if(T r11) {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Cprivate.mo152if(java.lang.Object):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0237  */
    /* renamed from: implements, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3967implements(java.lang.Object r21, androidx.datastore.preferences.protobuf.Celse r22) {
        /*
            Method dump skipped, instructions count: 1310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Cprivate.m3967implements(java.lang.Object, androidx.datastore.preferences.protobuf.else):void");
    }

    /* renamed from: import, reason: not valid java name */
    public final boolean m3968import(int i, int i2, Object obj) {
        return C3736tJ.m8244class((long) (this.f6623do[i2 + 2] & 1048575), obj) == i;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m3969instanceof(Celse celse, int i, Object obj, int i2) {
        if (obj != null) {
            Object m3964const = m3964const(i2);
            Cdefault cdefault = this.f6618do;
            Cswitch.Cdo<?, ?> mo3839goto = cdefault.mo3839goto(m3964const);
            Cthrows mo3841new = cdefault.mo3841new(obj);
            AbstractC3666s8 abstractC3666s8 = celse.f6583do;
            abstractC3666s8.getClass();
            for (Map.Entry entry : mo3841new.entrySet()) {
                abstractC3666s8.r(i, 2);
                abstractC3666s8.t(Cswitch.m3992do(mo3839goto, entry.getKey(), entry.getValue()));
                Cswitch.m3993if(abstractC3666s8, mo3839goto, entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m3970interface(int i, Object obj) {
        if (this.f6626for) {
            return;
        }
        int i2 = this.f6623do[i + 2];
        long j = i2 & 1048575;
        C3736tJ.m8253native(obj, C3736tJ.m8244class(j, obj) | (1 << (i2 >>> 20)), j);
    }

    @Override // defpackage.BB
    /* renamed from: new */
    public final int mo153new(T t) {
        return this.f6626for ? m3979throw(t) : m3978super(t);
    }

    /* renamed from: package, reason: not valid java name */
    public final int m3971package(int i) {
        if (i < this.f6615do || i > this.f6627if) {
            return -1;
        }
        int[] iArr = this.f6623do;
        int length = (iArr.length / 3) - 1;
        int i2 = 0;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* renamed from: private, reason: not valid java name */
    public final <E> void m3972private(Object obj, long j, Cvolatile cvolatile, BB<E> bb, Cthis cthis) {
        cvolatile.mo3809volatile(this.f6621do.mo3984for(j, obj), bb, cthis);
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m3973protected(int i, int i2, Object obj) {
        C3736tJ.m8253native(obj, i, this.f6623do[i2 + 2] & 1048575);
    }

    /* renamed from: public, reason: not valid java name */
    public final <K, V> void m3974public(Object obj, int i, Object obj2, Cthis cthis, Cvolatile cvolatile) {
        long m3980transient = m3980transient(i) & 1048575;
        Object m8248final = C3736tJ.m8248final(m3980transient, obj);
        Cdefault cdefault = this.f6618do;
        if (m8248final == null) {
            m8248final = cdefault.mo3835case();
            C3736tJ.m8256return(obj, m3980transient, m8248final);
        } else if (cdefault.mo3842try(m8248final)) {
            Cthrows mo3835case = cdefault.mo3835case();
            cdefault.mo3837else(mo3835case, m8248final);
            C3736tJ.m8256return(obj, m3980transient, mo3835case);
            m8248final = mo3835case;
        }
        cvolatile.mo3804this(cdefault.mo3838for(m8248final), cdefault.mo3839goto(obj2), cthis);
    }

    /* renamed from: return, reason: not valid java name */
    public final void m3975return(int i, Object obj, Object obj2) {
        long m3980transient = m3980transient(i) & 1048575;
        if (m3981while(i, obj2)) {
            Object m8248final = C3736tJ.m8248final(m3980transient, obj);
            Object m8248final2 = C3736tJ.m8248final(m3980transient, obj2);
            if (m8248final != null && m8248final2 != null) {
                C3736tJ.m8256return(obj, m3980transient, Cthrow.m3996if(m8248final, m8248final2));
                m3970interface(i, obj);
            } else if (m8248final2 != null) {
                C3736tJ.m8256return(obj, m3980transient, m8248final2);
                m3970interface(i, obj);
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final void m3976static(int i, Object obj, Object obj2) {
        int m3980transient = m3980transient(i);
        int i2 = this.f6623do[i];
        long j = m3980transient & 1048575;
        if (m3968import(i2, i, obj2)) {
            Object m8248final = C3736tJ.m8248final(j, obj);
            Object m8248final2 = C3736tJ.m8248final(j, obj2);
            if (m8248final != null && m8248final2 != null) {
                C3736tJ.m8256return(obj, j, Cthrow.m3996if(m8248final, m8248final2));
                m3973protected(i2, i, obj);
            } else if (m8248final2 != null) {
                C3736tJ.m8256return(obj, j, m8248final2);
                m3973protected(i2, i, obj);
            }
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m3977strictfp(Object obj, int i, Cvolatile cvolatile) {
        boolean z = (536870912 & i) != 0;
        Creturn creturn = this.f6621do;
        if (z) {
            cvolatile.mo3784finally(creturn.mo3984for(i & 1048575, obj));
        } else {
            cvolatile.mo3793new(creturn.mo3984for(i & 1048575, obj));
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final int m3978super(T t) {
        boolean z;
        int i;
        int i2;
        int i3;
        int m8062import;
        int m8078while;
        int m3938this;
        int m8064interface;
        int m8076transient;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int[] iArr = this.f6623do;
            if (i5 >= iArr.length) {
                Cimplements<?, ?> cimplements = this.f6620do;
                int mo3893goto = cimplements.mo3893goto(cimplements.mo3890else(t)) + i6;
                return this.f6622do ? mo3893goto + this.f6617do.mo3766for(t).m3822else() : mo3893goto;
            }
            int m3980transient = m3980transient(i5);
            int i8 = iArr[i5];
            int i9 = (267386880 & m3980transient) >>> 20;
            boolean z2 = this.f6631new;
            Unsafe unsafe = f6613do;
            if (i9 <= 17) {
                i2 = iArr[i5 + 2];
                int i10 = i2 & 1048575;
                i3 = 1 << (i2 >>> 20);
                z = z2;
                if (i10 != i4) {
                    i7 = unsafe.getInt(t, i10);
                    i4 = i10;
                }
                i = 1048575;
            } else {
                z = z2;
                if (!z || i9 < EnumC0429Ph.f2810do.m1794do() || i9 > EnumC0429Ph.f2812if.m1794do()) {
                    i = 1048575;
                    i2 = 0;
                } else {
                    i = 1048575;
                    i2 = iArr[i5 + 2] & 1048575;
                }
                i3 = 0;
            }
            long j = m3980transient & i;
            switch (i9) {
                case 0:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8062import(i8);
                        i6 += m8062import;
                        break;
                    }
                case 1:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8071static(i8);
                        i6 += m8062import;
                        break;
                    }
                case 2:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8059extends(i8, unsafe.getLong(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 3:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8061implements(i8, unsafe.getLong(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 4:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8075throws(i8, unsafe.getInt(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 5:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8070return(i8);
                        i6 += m8062import;
                        break;
                    }
                case 6:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8069public(i8);
                        i6 += m8062import;
                        break;
                    }
                case 7:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8074throw(i8);
                        i6 += m8062import;
                        break;
                    }
                case 8:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(t, j);
                        m8078while = object instanceof AbstractC3370n6 ? AbstractC3666s8.m8078while(i8, (AbstractC3370n6) object) : AbstractC3666s8.m8072strictfp(i8, (String) object);
                        i6 = m8078while + i6;
                        break;
                    }
                case 9:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = Cinterface.m3935super(i8, m3966final(i5), unsafe.getObject(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 10:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8078while(i8, (AbstractC3370n6) unsafe.getObject(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 11:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8068protected(i8, unsafe.getInt(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 12:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8065native(i8, unsafe.getInt(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 13:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8066package(i8);
                        i6 += m8062import;
                        break;
                    }
                case 14:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8067private(i8);
                        i6 += m8062import;
                        break;
                    }
                case 15:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8056abstract(i8, unsafe.getInt(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 16:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8057continue(i8, unsafe.getLong(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 17:
                    if ((i7 & i3) == 0) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8073switch(i8, (Cfinally) unsafe.getObject(t, j), m3966final(i5));
                        i6 += m8062import;
                        break;
                    }
                case 18:
                    m8062import = Cinterface.m3920goto(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 19:
                    m8062import = Cinterface.m3908case(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 20:
                    m8062import = Cinterface.m3911const(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 21:
                    m8062import = Cinterface.m3940throws(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 22:
                    m8062import = Cinterface.m3909catch(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    m8062import = Cinterface.m3920goto(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    m8062import = Cinterface.m3908case(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    m8062import = Cinterface.m3914do(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 26:
                    m8062import = Cinterface.m3932return(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 27:
                    m8062import = Cinterface.m3939throw(i8, (List) unsafe.getObject(t, j), m3966final(i5));
                    i6 += m8062import;
                    break;
                case 28:
                    m8062import = Cinterface.m3919for(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 29:
                    m8062import = Cinterface.m3933static(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 30:
                    m8062import = Cinterface.m3927new(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 31:
                    m8062import = Cinterface.m3908case(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 32:
                    m8062import = Cinterface.m3920goto(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 33:
                    m8062import = Cinterface.m3944while(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 34:
                    m8062import = Cinterface.m3926native(i8, (List) unsafe.getObject(t, j));
                    i6 += m8062import;
                    break;
                case 35:
                    m3938this = Cinterface.m3938this((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    m3938this = Cinterface.m3915else((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 37:
                    m3938this = Cinterface.m3917final((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    m3938this = Cinterface.m3913default((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    m3938this = Cinterface.m3910class((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    m3938this = Cinterface.m3938this((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    m3938this = Cinterface.m3915else((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    m3938this = Cinterface.m3921if((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    m3938this = Cinterface.m3936switch((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    m3938this = Cinterface.m3942try((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    m3938this = Cinterface.m3915else((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    m3938this = Cinterface.m3938this((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    m3938this = Cinterface.m3923import((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    m3938this = Cinterface.m3931public((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i2, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i8);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i6 = V1.m2501for(m8076transient, m8064interface, m3938this, i6);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    m8062import = Cinterface.m3907break(i8, (List) unsafe.getObject(t, j), m3966final(i5));
                    i6 += m8062import;
                    break;
                case 50:
                    m8062import = this.f6618do.mo3840if(i8, unsafe.getObject(t, j), m3964const(i5));
                    i6 += m8062import;
                    break;
                case 51:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8062import(i8);
                        i6 += m8062import;
                        break;
                    }
                case 52:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8071static(i8);
                        i6 += m8062import;
                        break;
                    }
                case 53:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8059extends(i8, m3954finally(j, t));
                        i6 += m8062import;
                        break;
                    }
                case 54:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8061implements(i8, m3954finally(j, t));
                        i6 += m8062import;
                        break;
                    }
                case 55:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8075throws(i8, m3953extends(j, t));
                        i6 += m8062import;
                        break;
                    }
                case 56:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8070return(i8);
                        i6 += m8062import;
                        break;
                    }
                case 57:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8069public(i8);
                        i6 += m8062import;
                        break;
                    }
                case 58:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8074throw(i8);
                        i6 += m8062import;
                        break;
                    }
                case 59:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(t, j);
                        m8078while = object2 instanceof AbstractC3370n6 ? AbstractC3666s8.m8078while(i8, (AbstractC3370n6) object2) : AbstractC3666s8.m8072strictfp(i8, (String) object2);
                        i6 = m8078while + i6;
                        break;
                    }
                case 60:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = Cinterface.m3935super(i8, m3966final(i5), unsafe.getObject(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 61:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8078while(i8, (AbstractC3370n6) unsafe.getObject(t, j));
                        i6 += m8062import;
                        break;
                    }
                case 62:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8068protected(i8, m3953extends(j, t));
                        i6 += m8062import;
                        break;
                    }
                case 63:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8065native(i8, m3953extends(j, t));
                        i6 += m8062import;
                        break;
                    }
                case 64:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8066package(i8);
                        i6 += m8062import;
                        break;
                    }
                case 65:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8067private(i8);
                        i6 += m8062import;
                        break;
                    }
                case 66:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8056abstract(i8, m3953extends(j, t));
                        i6 += m8062import;
                        break;
                    }
                case 67:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8057continue(i8, m3954finally(j, t));
                        i6 += m8062import;
                        break;
                    }
                case 68:
                    if (!m3968import(i8, i5, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8073switch(i8, (Cfinally) unsafe.getObject(t, j), m3966final(i5));
                        i6 += m8062import;
                        break;
                    }
            }
            i5 += 3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0472  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0529  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x053c  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0242  */
    @Override // defpackage.BB
    /* renamed from: this */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo154this(java.lang.Object r18, androidx.datastore.preferences.protobuf.Celse r19) {
        /*
            Method dump skipped, instructions count: 1562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Cprivate.mo154this(java.lang.Object, androidx.datastore.preferences.protobuf.else):void");
    }

    /* renamed from: throw, reason: not valid java name */
    public final int m3979throw(T t) {
        int m8062import;
        int m3938this;
        int m8064interface;
        int m8076transient;
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f6623do;
            if (i >= iArr.length) {
                Cimplements<?, ?> cimplements = this.f6620do;
                return cimplements.mo3893goto(cimplements.mo3890else(t)) + i2;
            }
            int m3980transient = m3980transient(i);
            int i3 = (267386880 & m3980transient) >>> 20;
            int i4 = iArr[i];
            long j = m3980transient & 1048575;
            int i5 = (i3 < EnumC0429Ph.f2810do.m1794do() || i3 > EnumC0429Ph.f2812if.m1794do()) ? 0 : iArr[i + 2] & 1048575;
            boolean z = this.f6631new;
            Unsafe unsafe = f6613do;
            switch (i3) {
                case 0:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8062import(i4);
                        i2 += m8062import;
                        break;
                    }
                case 1:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8071static(i4);
                        i2 += m8062import;
                        break;
                    }
                case 2:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8059extends(i4, C3736tJ.m8245const(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 3:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8061implements(i4, C3736tJ.m8245const(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 4:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8075throws(i4, C3736tJ.m8244class(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 5:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8070return(i4);
                        i2 += m8062import;
                        break;
                    }
                case 6:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8069public(i4);
                        i2 += m8062import;
                        break;
                    }
                case 7:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8074throw(i4);
                        i2 += m8062import;
                        break;
                    }
                case 8:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        Object m8248final = C3736tJ.m8248final(j, t);
                        m8062import = m8248final instanceof AbstractC3370n6 ? AbstractC3666s8.m8078while(i4, (AbstractC3370n6) m8248final) : AbstractC3666s8.m8072strictfp(i4, (String) m8248final);
                        i2 += m8062import;
                        break;
                    }
                case 9:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = Cinterface.m3935super(i4, m3966final(i), C3736tJ.m8248final(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 10:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8078while(i4, (AbstractC3370n6) C3736tJ.m8248final(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 11:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8068protected(i4, C3736tJ.m8244class(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 12:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8065native(i4, C3736tJ.m8244class(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 13:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8066package(i4);
                        i2 += m8062import;
                        break;
                    }
                case 14:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8067private(i4);
                        i2 += m8062import;
                        break;
                    }
                case 15:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8056abstract(i4, C3736tJ.m8244class(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 16:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8057continue(i4, C3736tJ.m8245const(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 17:
                    if (!m3981while(i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8073switch(i4, (Cfinally) C3736tJ.m8248final(j, t), m3966final(i));
                        i2 += m8062import;
                        break;
                    }
                case 18:
                    m8062import = Cinterface.m3920goto(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 19:
                    m8062import = Cinterface.m3908case(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 20:
                    m8062import = Cinterface.m3911const(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 21:
                    m8062import = Cinterface.m3940throws(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 22:
                    m8062import = Cinterface.m3909catch(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case ConnectionResult.API_DISABLED /* 23 */:
                    m8062import = Cinterface.m3920goto(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    m8062import = Cinterface.m3908case(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case Constants.MAX_TREE_DEPTH /* 25 */:
                    m8062import = Cinterface.m3914do(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 26:
                    m8062import = Cinterface.m3932return(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 27:
                    m8062import = Cinterface.m3939throw(i4, m3955native(j, t), m3966final(i));
                    i2 += m8062import;
                    break;
                case 28:
                    m8062import = Cinterface.m3919for(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 29:
                    m8062import = Cinterface.m3933static(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 30:
                    m8062import = Cinterface.m3927new(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 31:
                    m8062import = Cinterface.m3908case(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 32:
                    m8062import = Cinterface.m3920goto(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 33:
                    m8062import = Cinterface.m3944while(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 34:
                    m8062import = Cinterface.m3926native(i4, m3955native(j, t));
                    i2 += m8062import;
                    break;
                case 35:
                    m3938this = Cinterface.m3938this((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    m3938this = Cinterface.m3915else((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 37:
                    m3938this = Cinterface.m3917final((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    m3938this = Cinterface.m3913default((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    m3938this = Cinterface.m3910class((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    m3938this = Cinterface.m3938this((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    m3938this = Cinterface.m3915else((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    m3938this = Cinterface.m3921if((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    m3938this = Cinterface.m3936switch((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    m3938this = Cinterface.m3942try((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    m3938this = Cinterface.m3915else((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    m3938this = Cinterface.m3938this((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    m3938this = Cinterface.m3923import((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    m3938this = Cinterface.m3931public((List) unsafe.getObject(t, j));
                    if (m3938this > 0) {
                        if (z) {
                            unsafe.putInt(t, i5, m3938this);
                        }
                        m8064interface = AbstractC3666s8.m8064interface(i4);
                        m8076transient = AbstractC3666s8.m8076transient(m3938this);
                        i2 = V1.m2501for(m8076transient, m8064interface, m3938this, i2);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    m8062import = Cinterface.m3907break(i4, m3955native(j, t), m3966final(i));
                    i2 += m8062import;
                    break;
                case 50:
                    m8062import = this.f6618do.mo3840if(i4, C3736tJ.m8248final(j, t), m3964const(i));
                    i2 += m8062import;
                    break;
                case 51:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8062import(i4);
                        i2 += m8062import;
                        break;
                    }
                case 52:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8071static(i4);
                        i2 += m8062import;
                        break;
                    }
                case 53:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8059extends(i4, m3954finally(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 54:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8061implements(i4, m3954finally(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 55:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8075throws(i4, m3953extends(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 56:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8070return(i4);
                        i2 += m8062import;
                        break;
                    }
                case 57:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8069public(i4);
                        i2 += m8062import;
                        break;
                    }
                case 58:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8074throw(i4);
                        i2 += m8062import;
                        break;
                    }
                case 59:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        Object m8248final2 = C3736tJ.m8248final(j, t);
                        m8062import = m8248final2 instanceof AbstractC3370n6 ? AbstractC3666s8.m8078while(i4, (AbstractC3370n6) m8248final2) : AbstractC3666s8.m8072strictfp(i4, (String) m8248final2);
                        i2 += m8062import;
                        break;
                    }
                case 60:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = Cinterface.m3935super(i4, m3966final(i), C3736tJ.m8248final(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 61:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8078while(i4, (AbstractC3370n6) C3736tJ.m8248final(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 62:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8068protected(i4, m3953extends(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 63:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8065native(i4, m3953extends(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 64:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8066package(i4);
                        i2 += m8062import;
                        break;
                    }
                case 65:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8067private(i4);
                        i2 += m8062import;
                        break;
                    }
                case 66:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8056abstract(i4, m3953extends(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 67:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8057continue(i4, m3954finally(j, t));
                        i2 += m8062import;
                        break;
                    }
                case 68:
                    if (!m3968import(i4, i, t)) {
                        break;
                    } else {
                        m8062import = AbstractC3666s8.m8073switch(i4, (Cfinally) C3736tJ.m8248final(j, t), m3966final(i));
                        i2 += m8062import;
                        break;
                    }
            }
            i += 3;
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public final int m3980transient(int i) {
        return this.f6623do[i + 1];
    }

    @Override // defpackage.BB
    /* renamed from: try */
    public final T mo155try() {
        return (T) this.f6616do.mo894do(this.f6619do);
    }

    /* renamed from: while, reason: not valid java name */
    public final boolean m3981while(int i, Object obj) {
        boolean equals;
        if (!this.f6626for) {
            int i2 = this.f6623do[i + 2];
            return (C3736tJ.m8244class((long) (i2 & 1048575), obj) & (1 << (i2 >>> 20))) != 0;
        }
        int m3980transient = m3980transient(i);
        long j = m3980transient & 1048575;
        switch ((m3980transient & 267386880) >>> 20) {
            case 0:
                return C3736tJ.m8241break(j, obj) != 0.0d;
            case 1:
                return C3736tJ.m8243catch(j, obj) != 0.0f;
            case 2:
                return C3736tJ.m8245const(j, obj) != 0;
            case 3:
                return C3736tJ.m8245const(j, obj) != 0;
            case 4:
                return C3736tJ.m8244class(j, obj) != 0;
            case 5:
                return C3736tJ.m8245const(j, obj) != 0;
            case 6:
                return C3736tJ.m8244class(j, obj) != 0;
            case 7:
                return C3736tJ.m8242case(j, obj);
            case 8:
                Object m8248final = C3736tJ.m8248final(j, obj);
                if (m8248final instanceof String) {
                    equals = ((String) m8248final).isEmpty();
                    break;
                } else {
                    if (!(m8248final instanceof AbstractC3370n6)) {
                        throw new IllegalArgumentException();
                    }
                    equals = AbstractC3370n6.f14461do.equals(m8248final);
                    break;
                }
            case 9:
                return C3736tJ.m8248final(j, obj) != null;
            case 10:
                equals = AbstractC3370n6.f14461do.equals(C3736tJ.m8248final(j, obj));
                break;
            case 11:
                return C3736tJ.m8244class(j, obj) != 0;
            case 12:
                return C3736tJ.m8244class(j, obj) != 0;
            case 13:
                return C3736tJ.m8244class(j, obj) != 0;
            case 14:
                return C3736tJ.m8245const(j, obj) != 0;
            case 15:
                return C3736tJ.m8244class(j, obj) != 0;
            case 16:
                return C3736tJ.m8245const(j, obj) != 0;
            case 17:
                return C3736tJ.m8248final(j, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
        return !equals;
    }
}
