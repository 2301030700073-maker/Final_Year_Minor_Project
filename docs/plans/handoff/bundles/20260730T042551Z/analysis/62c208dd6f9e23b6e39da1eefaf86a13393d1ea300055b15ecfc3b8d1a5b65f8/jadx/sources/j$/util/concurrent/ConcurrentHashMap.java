package j$.util.concurrent;

import com.google.android.gms.common.api.Api;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;

/* loaded from: classes2.dex */
public class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, v {
    static final int g = Runtime.getRuntime().availableProcessors();
    private static final j$.sun.misc.b h;
    private static final long i;
    private static final long j;
    private static final long k;
    private static final long l;
    private static final long m;
    private static final int n;
    private static final int o;
    private static final ObjectStreamField[] serialPersistentFields;
    private static final long serialVersionUID = 7249069246763182397L;
    volatile transient l[] a;
    private volatile transient l[] b;
    private volatile transient long baseCount;
    private volatile transient c[] c;
    private volatile transient int cellsBusy;
    private transient i d;
    private transient t e;
    private transient e f;
    private volatile transient int sizeCtl;
    private volatile transient int transferIndex;

    static {
        Class cls = Integer.TYPE;
        serialPersistentFields = new ObjectStreamField[]{new ObjectStreamField("segments", o[].class), new ObjectStreamField("segmentMask", cls), new ObjectStreamField("segmentShift", cls)};
        j$.sun.misc.b h2 = j$.sun.misc.b.h();
        h = h2;
        i = h2.j(ConcurrentHashMap.class, "sizeCtl");
        j = h2.j(ConcurrentHashMap.class, "transferIndex");
        k = h2.j(ConcurrentHashMap.class, "baseCount");
        l = h2.j(ConcurrentHashMap.class, "cellsBusy");
        m = h2.j(c.class, "value");
        n = h2.a(l[].class);
        int b = h2.b(l[].class);
        if (((b - 1) & b) != 0) {
            throw new ExceptionInInitializerError("array index scale not a power of two");
        }
        o = 31 - Integer.numberOfLeadingZeros(b);
    }

    public ConcurrentHashMap() {
    }

    public ConcurrentHashMap(int i2) {
        this(i2, 0.75f, 1);
    }

    public ConcurrentHashMap(int i2, float f, int i3) {
        if (f <= 0.0f || i2 < 0 || i3 <= 0) {
            throw new IllegalArgumentException();
        }
        long j2 = (long) (((i2 < i3 ? i3 : i2) / f) + 1.0d);
        this.sizeCtl = j2 >= 1073741824 ? 1073741824 : m((int) j2);
    }

    public ConcurrentHashMap(Map<? extends K, ? extends V> map) {
        this.sizeCtl = 16;
        putAll(map);
    }

    /* JADX WARN: Code restructure failed: missing block: B:155:0x013b, code lost:
    
        if (r25.c != r7) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x013d, code lost:
    
        r25.c = (j$.util.concurrent.c[]) java.util.Arrays.copyOf(r7, r8 << 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001a, code lost:
    
        if (r1.d(r25, r3, r5, r14) == false) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x019b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00ba A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void a(long r26, int r28) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.a(long, int):void");
    }

    static final boolean b(l[] lVarArr, int i2, l lVar) {
        return h.e(lVarArr, (i2 << o) + n, lVar);
    }

    static Class c(Object obj) {
        Type[] actualTypeArguments;
        if (!(obj instanceof Comparable)) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if (cls == String.class) {
            return cls;
        }
        Type[] genericInterfaces = cls.getGenericInterfaces();
        if (genericInterfaces == null) {
            return null;
        }
        for (Type type : genericInterfaces) {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (parameterizedType.getRawType() == Comparable.class && (actualTypeArguments = parameterizedType.getActualTypeArguments()) != null && actualTypeArguments.length == 1 && actualTypeArguments[0] == cls) {
                    return cls;
                }
            }
        }
        return null;
    }

    static int d(Class cls, Object obj, Object obj2) {
        if (obj2 == null || obj2.getClass() != cls) {
            return 0;
        }
        return ((Comparable) obj).compareTo(obj2);
    }

    private final l[] f() {
        while (true) {
            l[] lVarArr = this.a;
            if (lVarArr != null && lVarArr.length != 0) {
                return lVarArr;
            }
            int i2 = this.sizeCtl;
            if (i2 < 0) {
                Thread.yield();
            } else if (h.c(this, i, i2, -1)) {
                try {
                    l[] lVarArr2 = this.a;
                    if (lVarArr2 == null || lVarArr2.length == 0) {
                        int i3 = i2 > 0 ? i2 : 16;
                        l[] lVarArr3 = new l[i3];
                        this.a = lVarArr3;
                        i2 = i3 - (i3 >>> 2);
                        lVarArr2 = lVarArr3;
                    }
                    this.sizeCtl = i2;
                    return lVarArr2;
                } catch (Throwable th) {
                    this.sizeCtl = i2;
                    throw th;
                }
            }
        }
    }

    static final void i(l[] lVarArr, int i2, l lVar) {
        h.l(lVarArr, (i2 << o) + n, lVar);
    }

    static final int j(int i2) {
        return (i2 ^ (i2 >>> 16)) & Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    static final l l(l[] lVarArr, int i2) {
        return (l) h.g(lVarArr, (i2 << o) + n);
    }

    private static final int m(int i2) {
        int numberOfLeadingZeros = (-1) >>> Integer.numberOfLeadingZeros(i2 - 1);
        if (numberOfLeadingZeros < 0) {
            return 1;
        }
        if (numberOfLeadingZeros >= 1073741824) {
            return 1073741824;
        }
        return 1 + numberOfLeadingZeros;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10, types: [j$.util.concurrent.l] */
    /* JADX WARN: Type inference failed for: r13v12, types: [j$.util.concurrent.l] */
    /* JADX WARN: Type inference failed for: r4v8, types: [j$.util.concurrent.l] */
    /* JADX WARN: Type inference failed for: r6v17, types: [j$.util.concurrent.l] */
    /* JADX WARN: Type inference failed for: r6v22, types: [j$.util.concurrent.l] */
    private final void n(l[] lVarArr, l[] lVarArr2) {
        l[] lVarArr3;
        ConcurrentHashMap<K, V> concurrentHashMap;
        l[] lVarArr4;
        int i2;
        int i3;
        g gVar;
        ConcurrentHashMap<K, V> concurrentHashMap2;
        int i4;
        s sVar;
        int i5;
        ConcurrentHashMap<K, V> concurrentHashMap3 = this;
        int length = lVarArr.length;
        int i6 = g;
        int i7 = i6 > 1 ? (length >>> 3) / i6 : length;
        int i8 = i7 < 16 ? 16 : i7;
        if (lVarArr2 == null) {
            try {
                l[] lVarArr5 = new l[length << 1];
                concurrentHashMap3.b = lVarArr5;
                concurrentHashMap3.transferIndex = length;
                lVarArr3 = lVarArr5;
            } catch (Throwable unused) {
                concurrentHashMap3.sizeCtl = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                return;
            }
        } else {
            lVarArr3 = lVarArr2;
        }
        int length2 = lVarArr3.length;
        g gVar2 = new g(lVarArr3);
        l[] lVarArr6 = lVarArr;
        ConcurrentHashMap<K, V> concurrentHashMap4 = concurrentHashMap3;
        int i9 = 0;
        int i10 = 0;
        boolean z = true;
        boolean z2 = false;
        while (true) {
            if (z) {
                int i11 = i9 - 1;
                if (i11 >= i10 || z2) {
                    concurrentHashMap = concurrentHashMap4;
                    lVarArr4 = lVarArr6;
                    i9 = i11;
                    i10 = i10;
                } else {
                    int i12 = concurrentHashMap4.transferIndex;
                    if (i12 <= 0) {
                        concurrentHashMap = concurrentHashMap4;
                        lVarArr4 = lVarArr6;
                        i9 = -1;
                    } else {
                        j$.sun.misc.b bVar = h;
                        long j2 = j;
                        int i13 = i12 > i8 ? i12 - i8 : 0;
                        concurrentHashMap = concurrentHashMap4;
                        lVarArr4 = lVarArr6;
                        int i14 = i10;
                        if (bVar.c(this, j2, i12, i13)) {
                            i9 = i12 - 1;
                            i10 = i13;
                        } else {
                            lVarArr6 = lVarArr4;
                            i9 = i11;
                            i10 = i14;
                            concurrentHashMap4 = concurrentHashMap;
                        }
                    }
                }
                lVarArr6 = lVarArr4;
                concurrentHashMap4 = concurrentHashMap;
                z = false;
            } else {
                ConcurrentHashMap<K, V> concurrentHashMap5 = concurrentHashMap4;
                l[] lVarArr7 = lVarArr6;
                int i15 = i10;
                s sVar2 = null;
                if (i9 < 0 || i9 >= length || (i4 = i9 + length) >= length2) {
                    i2 = i8;
                    i3 = length2;
                    gVar = gVar2;
                    if (z2) {
                        this.b = null;
                        this.a = lVarArr3;
                        this.sizeCtl = (length << 1) - (length >>> 1);
                        return;
                    }
                    concurrentHashMap2 = this;
                    j$.sun.misc.b bVar2 = h;
                    long j3 = i;
                    int i16 = concurrentHashMap2.sizeCtl;
                    int i17 = i9;
                    if (!bVar2.c(this, j3, i16, i16 - 1)) {
                        concurrentHashMap4 = concurrentHashMap2;
                        i9 = i17;
                        lVarArr6 = lVarArr7;
                    } else {
                        if (i16 - 2 != ((Integer.numberOfLeadingZeros(length) | 32768) << 16)) {
                            return;
                        }
                        i9 = length;
                        concurrentHashMap4 = concurrentHashMap2;
                        lVarArr6 = lVarArr7;
                        z = true;
                        z2 = true;
                    }
                } else {
                    ?? l2 = l(lVarArr7, i9);
                    if (l2 == 0) {
                        z = b(lVarArr7, i9, gVar2);
                        i2 = i8;
                        gVar = gVar2;
                        lVarArr6 = lVarArr7;
                        concurrentHashMap4 = concurrentHashMap5;
                        i3 = length2;
                    } else {
                        int i18 = l2.a;
                        if (i18 == -1) {
                            concurrentHashMap2 = concurrentHashMap3;
                            i2 = i8;
                            gVar = gVar2;
                            lVarArr6 = lVarArr7;
                            concurrentHashMap4 = concurrentHashMap5;
                            z = true;
                            i3 = length2;
                        } else {
                            synchronized (l2) {
                                if (l(lVarArr7, i9) == l2) {
                                    if (i18 >= 0) {
                                        int i19 = i18 & length;
                                        s sVar3 = l2;
                                        for (s sVar4 = l2.d; sVar4 != null; sVar4 = sVar4.d) {
                                            int i20 = sVar4.a & length;
                                            if (i20 != i19) {
                                                sVar3 = sVar4;
                                                i19 = i20;
                                            }
                                        }
                                        if (i19 == 0) {
                                            sVar = sVar3;
                                        } else {
                                            sVar = null;
                                            sVar2 = sVar3;
                                        }
                                        l lVar = l2;
                                        while (lVar != sVar3) {
                                            int i21 = lVar.a;
                                            s sVar5 = sVar3;
                                            Object obj = lVar.b;
                                            int i22 = i8;
                                            Object obj2 = lVar.c;
                                            if ((i21 & length) == 0) {
                                                i5 = length2;
                                                sVar = new l(i21, obj, obj2, sVar);
                                            } else {
                                                i5 = length2;
                                                sVar2 = new l(i21, obj, obj2, sVar2);
                                            }
                                            lVar = lVar.d;
                                            sVar3 = sVar5;
                                            i8 = i22;
                                            length2 = i5;
                                        }
                                        i2 = i8;
                                        i3 = length2;
                                        i(lVarArr3, i9, sVar);
                                        i(lVarArr3, i4, sVar2);
                                        i(lVarArr7, i9, gVar2);
                                        gVar = gVar2;
                                    } else {
                                        i2 = i8;
                                        i3 = length2;
                                        if (l2 instanceof r) {
                                            r rVar = (r) l2;
                                            s sVar6 = null;
                                            s sVar7 = null;
                                            l lVar2 = rVar.f;
                                            int i23 = 0;
                                            int i24 = 0;
                                            s sVar8 = null;
                                            while (lVar2 != null) {
                                                r rVar2 = rVar;
                                                int i25 = lVar2.a;
                                                g gVar3 = gVar2;
                                                s sVar9 = new s(i25, lVar2.b, lVar2.c, null, null);
                                                if ((i25 & length) == 0) {
                                                    sVar9.h = sVar7;
                                                    if (sVar7 == null) {
                                                        sVar2 = sVar9;
                                                    } else {
                                                        sVar7.d = sVar9;
                                                    }
                                                    i23++;
                                                    sVar7 = sVar9;
                                                } else {
                                                    sVar9.h = sVar6;
                                                    if (sVar6 == null) {
                                                        sVar8 = sVar9;
                                                    } else {
                                                        sVar6.d = sVar9;
                                                    }
                                                    i24++;
                                                    sVar6 = sVar9;
                                                }
                                                lVar2 = lVar2.d;
                                                rVar = rVar2;
                                                gVar2 = gVar3;
                                            }
                                            r rVar3 = rVar;
                                            g gVar4 = gVar2;
                                            l q = i23 <= 6 ? q(sVar2) : i24 != 0 ? new r(sVar2) : rVar3;
                                            l q2 = i24 <= 6 ? q(sVar8) : i23 != 0 ? new r(sVar8) : rVar3;
                                            i(lVarArr3, i9, q);
                                            i(lVarArr3, i4, q2);
                                            gVar = gVar4;
                                            i(lVarArr, i9, gVar);
                                            lVarArr7 = lVarArr;
                                        }
                                    }
                                    z = true;
                                } else {
                                    i2 = i8;
                                    i3 = length2;
                                }
                                gVar = gVar2;
                            }
                            concurrentHashMap4 = this;
                            lVarArr6 = lVarArr7;
                        }
                    }
                    concurrentHashMap2 = this;
                }
                gVar2 = gVar;
                concurrentHashMap3 = concurrentHashMap2;
                i10 = i15;
                i8 = i2;
                length2 = i3;
            }
        }
    }

    private final void o(l[] lVarArr, int i2) {
        int length = lVarArr.length;
        if (length < 64) {
            p(length << 1);
            return;
        }
        l l2 = l(lVarArr, i2);
        if (l2 == null || l2.a < 0) {
            return;
        }
        synchronized (l2) {
            if (l(lVarArr, i2) == l2) {
                s sVar = null;
                l lVar = l2;
                s sVar2 = null;
                while (lVar != null) {
                    s sVar3 = new s(lVar.a, lVar.b, lVar.c, null, null);
                    sVar3.h = sVar2;
                    if (sVar2 == null) {
                        sVar = sVar3;
                    } else {
                        sVar2.d = sVar3;
                    }
                    lVar = lVar.d;
                    sVar2 = sVar3;
                }
                i(lVarArr, i2, new r(sVar));
            }
        }
    }

    private final void p(int i2) {
        int length;
        int m2 = i2 >= 536870912 ? 1073741824 : m(i2 + (i2 >>> 1) + 1);
        while (true) {
            int i3 = this.sizeCtl;
            if (i3 < 0) {
                return;
            }
            l[] lVarArr = this.a;
            if (lVarArr == null || (length = lVarArr.length) == 0) {
                int i4 = i3 > m2 ? i3 : m2;
                if (h.c(this, i, i3, -1)) {
                    try {
                        if (this.a == lVarArr) {
                            this.a = new l[i4];
                            i3 = i4 - (i4 >>> 2);
                        }
                    } finally {
                        this.sizeCtl = i3;
                    }
                } else {
                    continue;
                }
            } else {
                if (m2 <= i3 || length >= 1073741824) {
                    return;
                }
                if (lVarArr == this.a) {
                    if (h.c(this, i, i3, ((Integer.numberOfLeadingZeros(length) | 32768) << 16) + 2)) {
                        n(lVarArr, null);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [j$.util.concurrent.l] */
    static l q(s sVar) {
        l lVar = null;
        l lVar2 = null;
        for (s sVar2 = sVar; sVar2 != null; sVar2 = sVar2.d) {
            l lVar3 = new l(sVar2.a, sVar2.b, sVar2.c);
            if (lVar2 == null) {
                lVar = lVar3;
            } else {
                lVar2.d = lVar3;
            }
            lVar2 = lVar3;
        }
        return lVar;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        long j2;
        boolean z;
        boolean z2;
        Object obj;
        this.sizeCtl = -1;
        objectInputStream.defaultReadObject();
        long j3 = 0;
        long j4 = 0;
        l lVar = null;
        while (true) {
            Object readObject = objectInputStream.readObject();
            Object readObject2 = objectInputStream.readObject();
            j2 = 1;
            if (readObject == null || readObject2 == null) {
                break;
            }
            j4++;
            lVar = new l(j(readObject.hashCode()), readObject, readObject2, lVar);
        }
        if (j4 == 0) {
            this.sizeCtl = 0;
            return;
        }
        long j5 = (long) ((j4 / 0.75f) + 1.0d);
        int m2 = j5 >= 1073741824 ? 1073741824 : m((int) j5);
        l[] lVarArr = new l[m2];
        int i2 = m2 - 1;
        while (lVar != null) {
            l lVar2 = lVar.d;
            int i3 = lVar.a;
            int i4 = i3 & i2;
            l l2 = l(lVarArr, i4);
            if (l2 == null) {
                z2 = true;
            } else {
                Object obj2 = lVar.b;
                if (l2.a >= 0) {
                    int i5 = 0;
                    for (l lVar3 = l2; lVar3 != null; lVar3 = lVar3.d) {
                        if (lVar3.a == i3 && ((obj = lVar3.b) == obj2 || (obj != null && obj2.equals(obj)))) {
                            z = false;
                            break;
                        }
                        i5++;
                    }
                    z = true;
                    if (!z || i5 < 8) {
                        z2 = z;
                    } else {
                        long j6 = j3 + 1;
                        lVar.d = l2;
                        l lVar4 = lVar;
                        s sVar = null;
                        s sVar2 = null;
                        while (lVar4 != null) {
                            long j7 = j6;
                            s sVar3 = new s(lVar4.a, lVar4.b, lVar4.c, null, null);
                            sVar3.h = sVar2;
                            if (sVar2 == null) {
                                sVar = sVar3;
                            } else {
                                sVar2.d = sVar3;
                            }
                            lVar4 = lVar4.d;
                            sVar2 = sVar3;
                            j6 = j7;
                        }
                        i(lVarArr, i4, new r(sVar));
                        j3 = j6;
                    }
                } else if (((r) l2).e(i3, obj2, lVar.c) == null) {
                    j3 += j2;
                }
                z2 = false;
            }
            j2 = 1;
            if (z2) {
                j3++;
                lVar.d = l2;
                i(lVarArr, i4, lVar);
            }
            lVar = lVar2;
        }
        this.a = lVarArr;
        this.sizeCtl = m2 - (m2 >>> 2);
        this.baseCount = j3;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        int i2 = 1;
        int i3 = 0;
        while (i2 < 16) {
            i3++;
            i2 <<= 1;
        }
        int i4 = 32 - i3;
        int i5 = i2 - 1;
        o[] oVarArr = new o[16];
        for (int i6 = 0; i6 < 16; i6++) {
            oVarArr[i6] = new o();
        }
        ObjectOutputStream.PutField putFields = objectOutputStream.putFields();
        putFields.put("segments", oVarArr);
        putFields.put("segmentShift", i4);
        putFields.put("segmentMask", i5);
        objectOutputStream.writeFields();
        l[] lVarArr = this.a;
        if (lVarArr != null) {
            q qVar = new q(lVarArr, lVarArr.length, 0, lVarArr.length);
            while (true) {
                l a = qVar.a();
                if (a == null) {
                    break;
                }
                objectOutputStream.writeObject(a.b);
                objectOutputStream.writeObject(a.c);
            }
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(null);
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public void clear() {
        l l2;
        l[] lVarArr = this.a;
        long j2 = 0;
        loop0: while (true) {
            int i2 = 0;
            while (lVarArr != null && i2 < lVarArr.length) {
                l2 = l(lVarArr, i2);
                if (l2 == null) {
                    i2++;
                } else {
                    int i3 = l2.a;
                    if (i3 == -1) {
                        break;
                    }
                    synchronized (l2) {
                        if (l(lVarArr, i2) == l2) {
                            for (l lVar = i3 >= 0 ? l2 : l2 instanceof r ? ((r) l2).f : null; lVar != null; lVar = lVar.d) {
                                j2--;
                            }
                            i(lVarArr, i2, null);
                            i2++;
                        }
                    }
                }
            }
            lVarArr = e(lVarArr, l2);
        }
        if (j2 != 0) {
            a(j2, -1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x010f, code lost:
    
        if (r3 == 0) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0111, code lost:
    
        a(r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0115, code lost:
    
        return r5;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object compute(java.lang.Object r14, java.util.function.BiFunction r15) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.compute(java.lang.Object, java.util.function.BiFunction):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f0, code lost:
    
        if (r5 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f2, code lost:
    
        a(1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f7, code lost:
    
        return r5;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object computeIfAbsent(java.lang.Object r12, java.util.function.Function r13) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.computeIfAbsent(java.lang.Object, java.util.function.Function):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00a9, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object computeIfPresent(java.lang.Object r14, java.util.function.BiFunction r15) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto Lbc
            if (r15 == 0) goto Lbc
            int r1 = r14.hashCode()
            int r1 = j(r1)
            j$.util.concurrent.l[] r2 = r13.a
            r3 = 0
            r5 = r0
            r4 = 0
        L12:
            if (r2 == 0) goto Lb6
            int r6 = r2.length
            if (r6 != 0) goto L19
            goto Lb6
        L19:
            int r6 = r6 + (-1)
            r6 = r6 & r1
            j$.util.concurrent.l r7 = l(r2, r6)
            if (r7 != 0) goto L24
            goto Lad
        L24:
            int r8 = r7.a
            r9 = -1
            if (r8 != r9) goto L2e
            j$.util.concurrent.l[] r2 = r13.e(r2, r7)
            goto L12
        L2e:
            monitor-enter(r7)
            j$.util.concurrent.l r10 = l(r2, r6)     // Catch: java.lang.Throwable -> L98
            if (r10 != r7) goto Laa
            if (r8 < 0) goto L6c
            r4 = 1
            r10 = r0
            r8 = r7
        L3a:
            int r11 = r8.a     // Catch: java.lang.Throwable -> L98
            if (r11 != r1) goto L61
            java.lang.Object r11 = r8.b     // Catch: java.lang.Throwable -> L98
            if (r11 == r14) goto L4a
            if (r11 == 0) goto L61
            boolean r11 = r14.equals(r11)     // Catch: java.lang.Throwable -> L98
            if (r11 == 0) goto L61
        L4a:
            java.lang.Object r5 = r8.c     // Catch: java.lang.Throwable -> L98
            java.lang.Object r5 = r15.apply(r14, r5)     // Catch: java.lang.Throwable -> L98
            if (r5 == 0) goto L55
            r8.c = r5     // Catch: java.lang.Throwable -> L98
            goto Laa
        L55:
            j$.util.concurrent.l r3 = r8.d     // Catch: java.lang.Throwable -> L98
            if (r10 == 0) goto L5c
            r10.d = r3     // Catch: java.lang.Throwable -> L98
            goto L5f
        L5c:
            i(r2, r6, r3)     // Catch: java.lang.Throwable -> L98
        L5f:
            r3 = -1
            goto Laa
        L61:
            j$.util.concurrent.l r10 = r8.d     // Catch: java.lang.Throwable -> L98
            if (r10 != 0) goto L66
            goto Laa
        L66:
            int r4 = r4 + 1
            r12 = r10
            r10 = r8
            r8 = r12
            goto L3a
        L6c:
            boolean r8 = r7 instanceof j$.util.concurrent.r     // Catch: java.lang.Throwable -> L98
            if (r8 == 0) goto L9d
            r4 = r7
            j$.util.concurrent.r r4 = (j$.util.concurrent.r) r4     // Catch: java.lang.Throwable -> L98
            j$.util.concurrent.s r8 = r4.e     // Catch: java.lang.Throwable -> L98
            if (r8 == 0) goto L9b
            j$.util.concurrent.s r8 = r8.b(r1, r14, r0)     // Catch: java.lang.Throwable -> L98
            if (r8 == 0) goto L9b
            java.lang.Object r5 = r8.c     // Catch: java.lang.Throwable -> L98
            java.lang.Object r5 = r15.apply(r14, r5)     // Catch: java.lang.Throwable -> L98
            if (r5 == 0) goto L88
            r8.c = r5     // Catch: java.lang.Throwable -> L98
            goto L9b
        L88:
            boolean r3 = r4.f(r8)     // Catch: java.lang.Throwable -> L98
            if (r3 == 0) goto L9a
            j$.util.concurrent.s r3 = r4.f     // Catch: java.lang.Throwable -> L98
            j$.util.concurrent.l r3 = q(r3)     // Catch: java.lang.Throwable -> L98
            i(r2, r6, r3)     // Catch: java.lang.Throwable -> L98
            goto L9a
        L98:
            r14 = move-exception
            goto Lb4
        L9a:
            r3 = -1
        L9b:
            r4 = 2
            goto Laa
        L9d:
            boolean r6 = r7 instanceof j$.util.concurrent.m     // Catch: java.lang.Throwable -> L98
            if (r6 != 0) goto La2
            goto Laa
        La2:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L98
            java.lang.String r15 = "Recursive update"
            r14.<init>(r15)     // Catch: java.lang.Throwable -> L98
            throw r14     // Catch: java.lang.Throwable -> L98
        Laa:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L98
            if (r4 == 0) goto L12
        Lad:
            if (r3 == 0) goto Lb3
            long r14 = (long) r3
            r13.a(r14, r4)
        Lb3:
            return r5
        Lb4:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L98
            throw r14
        Lb6:
            j$.util.concurrent.l[] r2 = r13.f()
            goto L12
        Lbc:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.computeIfPresent(java.lang.Object, java.util.function.BiFunction):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public final boolean containsValue(Object obj) {
        obj.getClass();
        l[] lVarArr = this.a;
        if (lVarArr != null) {
            q qVar = new q(lVarArr, lVarArr.length, 0, lVarArr.length);
            while (true) {
                l a = qVar.a();
                if (a == null) {
                    break;
                }
                Object obj2 = a.c;
                if (obj2 == obj) {
                    return true;
                }
                if (obj2 != null && obj.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    final l[] e(l[] lVarArr, l lVar) {
        l[] lVarArr2;
        int i2;
        if (!(lVar instanceof g) || (lVarArr2 = ((g) lVar).e) == null) {
            return this.a;
        }
        int numberOfLeadingZeros = Integer.numberOfLeadingZeros(lVarArr.length) | 32768;
        while (true) {
            if (lVarArr2 != this.b || this.a != lVarArr || (i2 = this.sizeCtl) >= 0 || (i2 >>> 16) != numberOfLeadingZeros || i2 == numberOfLeadingZeros + 1 || i2 == 65535 + numberOfLeadingZeros || this.transferIndex <= 0) {
                break;
            }
            if (h.c(this, i, i2, i2 + 1)) {
                n(lVarArr, lVarArr2);
                break;
            }
        }
        return lVarArr2;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        e eVar = this.f;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(this);
        this.f = eVar2;
        return eVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public final boolean equals(Object obj) {
        V value;
        V v;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        l[] lVarArr = this.a;
        int length = lVarArr == null ? 0 : lVarArr.length;
        q qVar = new q(lVarArr, length, 0, length);
        while (true) {
            l a = qVar.a();
            if (a == null) {
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    K key = entry.getKey();
                    if (key == null || (value = entry.getValue()) == null || (v = get(key)) == null || (value != v && !value.equals(v))) {
                        return false;
                    }
                }
                return true;
            }
            Object obj2 = a.c;
            Object obj3 = map.get(a.b);
            if (obj3 == null || (obj3 != obj2 && !obj3.equals(obj2))) {
                break;
            }
        }
        return false;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.v, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        l[] lVarArr = this.a;
        if (lVarArr == null) {
            return;
        }
        q qVar = new q(lVarArr, lVarArr.length, 0, lVarArr.length);
        while (true) {
            l a = qVar.a();
            if (a == null) {
                return;
            } else {
                biConsumer.accept(a.b, a.c);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b1, code lost:
    
        a(1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b6, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00a2, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final java.lang.Object g(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto Lc0
            if (r10 == 0) goto Lc0
            int r1 = r9.hashCode()
            int r1 = j(r1)
            j$.util.concurrent.l[] r2 = r8.a
            r3 = 0
        L10:
            if (r2 == 0) goto Lba
            int r4 = r2.length
            if (r4 != 0) goto L17
            goto Lba
        L17:
            int r4 = r4 + (-1)
            r4 = r4 & r1
            j$.util.concurrent.l r5 = l(r2, r4)
            if (r5 != 0) goto L2d
            j$.util.concurrent.l r5 = new j$.util.concurrent.l
            r5.<init>(r1, r9, r10)
            boolean r4 = b(r2, r4, r5)
            if (r4 == 0) goto L10
            goto Lb1
        L2d:
            int r6 = r5.a
            r7 = -1
            if (r6 != r7) goto L37
            j$.util.concurrent.l[] r2 = r8.e(r2, r5)
            goto L10
        L37:
            if (r11 == 0) goto L4c
            if (r6 != r1) goto L4c
            java.lang.Object r7 = r5.b
            if (r7 == r9) goto L47
            if (r7 == 0) goto L4c
            boolean r7 = r9.equals(r7)
            if (r7 == 0) goto L4c
        L47:
            java.lang.Object r7 = r5.c
            if (r7 == 0) goto L4c
            return r7
        L4c:
            monitor-enter(r5)
            j$.util.concurrent.l r7 = l(r2, r4)     // Catch: java.lang.Throwable -> Lb7
            if (r7 != r5) goto La3
            if (r6 < 0) goto L7e
            r3 = 1
            r6 = r5
        L57:
            int r7 = r6.a     // Catch: java.lang.Throwable -> Lb7
            if (r7 != r1) goto L6e
            java.lang.Object r7 = r6.b     // Catch: java.lang.Throwable -> Lb7
            if (r7 == r9) goto L67
            if (r7 == 0) goto L6e
            boolean r7 = r9.equals(r7)     // Catch: java.lang.Throwable -> Lb7
            if (r7 == 0) goto L6e
        L67:
            java.lang.Object r7 = r6.c     // Catch: java.lang.Throwable -> Lb7
            if (r11 != 0) goto La4
            r6.c = r10     // Catch: java.lang.Throwable -> Lb7
            goto La4
        L6e:
            j$.util.concurrent.l r7 = r6.d     // Catch: java.lang.Throwable -> Lb7
            if (r7 != 0) goto L7a
            j$.util.concurrent.l r7 = new j$.util.concurrent.l     // Catch: java.lang.Throwable -> Lb7
            r7.<init>(r1, r9, r10)     // Catch: java.lang.Throwable -> Lb7
            r6.d = r7     // Catch: java.lang.Throwable -> Lb7
            goto La3
        L7a:
            int r3 = r3 + 1
            r6 = r7
            goto L57
        L7e:
            boolean r6 = r5 instanceof j$.util.concurrent.r     // Catch: java.lang.Throwable -> Lb7
            if (r6 == 0) goto L96
            r3 = r5
            j$.util.concurrent.r r3 = (j$.util.concurrent.r) r3     // Catch: java.lang.Throwable -> Lb7
            j$.util.concurrent.s r3 = r3.e(r1, r9, r10)     // Catch: java.lang.Throwable -> Lb7
            if (r3 == 0) goto L93
            java.lang.Object r6 = r3.c     // Catch: java.lang.Throwable -> Lb7
            if (r11 != 0) goto L91
            r3.c = r10     // Catch: java.lang.Throwable -> Lb7
        L91:
            r7 = r6
            goto L94
        L93:
            r7 = r0
        L94:
            r3 = 2
            goto La4
        L96:
            boolean r6 = r5 instanceof j$.util.concurrent.m     // Catch: java.lang.Throwable -> Lb7
            if (r6 != 0) goto L9b
            goto La3
        L9b:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r10 = "Recursive update"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> Lb7
            throw r9     // Catch: java.lang.Throwable -> Lb7
        La3:
            r7 = r0
        La4:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Lb7
            if (r3 == 0) goto L10
            r9 = 8
            if (r3 < r9) goto Lae
            r8.o(r2, r4)
        Lae:
            if (r7 == 0) goto Lb1
            return r7
        Lb1:
            r9 = 1
            r8.a(r9, r3)
            return r0
        Lb7:
            r9 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Lb7
            throw r9
        Lba:
            j$.util.concurrent.l[] r2 = r8.f()
            goto L10
        Lc0:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.g(java.lang.Object, java.lang.Object, boolean):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004d, code lost:
    
        return (V) r1.c;
     */
    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(java.lang.Object r5) {
        /*
            r4 = this;
            int r0 = r5.hashCode()
            int r0 = j(r0)
            j$.util.concurrent.l[] r1 = r4.a
            r2 = 0
            if (r1 == 0) goto L4e
            int r3 = r1.length
            if (r3 <= 0) goto L4e
            int r3 = r3 + (-1)
            r3 = r3 & r0
            j$.util.concurrent.l r1 = l(r1, r3)
            if (r1 == 0) goto L4e
            int r3 = r1.a
            if (r3 != r0) goto L2c
            java.lang.Object r3 = r1.b
            if (r3 == r5) goto L29
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L29:
            java.lang.Object r5 = r1.c
            return r5
        L2c:
            if (r3 >= 0) goto L37
            j$.util.concurrent.l r5 = r1.a(r0, r5)
            if (r5 == 0) goto L36
            java.lang.Object r2 = r5.c
        L36:
            return r2
        L37:
            j$.util.concurrent.l r1 = r1.d
            if (r1 == 0) goto L4e
            int r3 = r1.a
            if (r3 != r0) goto L37
            java.lang.Object r3 = r1.b
            if (r3 == r5) goto L4b
            if (r3 == 0) goto L37
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L37
        L4b:
            java.lang.Object r5 = r1.c
            return r5
        L4e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        V v = get(obj);
        return v == null ? obj2 : v;
    }

    final Object h(Object obj, Object obj2, Object obj3) {
        int length;
        int i2;
        l l2;
        boolean z;
        Object obj4;
        s b;
        l q;
        Object obj5;
        int j2 = j(obj.hashCode());
        l[] lVarArr = this.a;
        while (true) {
            if (lVarArr == null || (length = lVarArr.length) == 0 || (l2 = l(lVarArr, (i2 = (length - 1) & j2))) == null) {
                break;
            }
            int i3 = l2.a;
            if (i3 == -1) {
                lVarArr = e(lVarArr, l2);
            } else {
                synchronized (l2) {
                    try {
                        if (l(lVarArr, i2) == l2) {
                            z = true;
                            if (i3 >= 0) {
                                l lVar = null;
                                l lVar2 = l2;
                                while (true) {
                                    if (lVar2.a != j2 || ((obj5 = lVar2.b) != obj && (obj5 == null || !obj.equals(obj5)))) {
                                        l lVar3 = lVar2.d;
                                        if (lVar3 == null) {
                                            break;
                                        }
                                        lVar = lVar2;
                                        lVar2 = lVar3;
                                    }
                                }
                                obj4 = lVar2.c;
                                if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                    if (obj2 != null) {
                                        lVar2.c = obj2;
                                    } else if (lVar != null) {
                                        lVar.d = lVar2.d;
                                    } else {
                                        q = lVar2.d;
                                        i(lVarArr, i2, q);
                                    }
                                }
                                obj4 = null;
                            } else if (l2 instanceof r) {
                                r rVar = (r) l2;
                                s sVar = rVar.e;
                                if (sVar != null && (b = sVar.b(j2, obj, null)) != null) {
                                    obj4 = b.c;
                                    if (obj3 == null || obj3 == obj4 || (obj4 != null && obj3.equals(obj4))) {
                                        if (obj2 != null) {
                                            b.c = obj2;
                                        } else if (rVar.f(b)) {
                                            q = q(rVar.f);
                                            i(lVarArr, i2, q);
                                        }
                                    }
                                }
                                obj4 = null;
                            } else if (l2 instanceof m) {
                                throw new IllegalStateException("Recursive update");
                            }
                        }
                        z = false;
                        obj4 = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    if (obj4 != null) {
                        if (obj2 == null) {
                            a(-1L, -1);
                        }
                        return obj4;
                    }
                }
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public final int hashCode() {
        l[] lVarArr = this.a;
        int i2 = 0;
        if (lVarArr != null) {
            q qVar = new q(lVarArr, lVarArr.length, 0, lVarArr.length);
            while (true) {
                l a = qVar.a();
                if (a == null) {
                    break;
                }
                i2 += a.c.hashCode() ^ a.b.hashCode();
            }
        }
        return i2;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public boolean isEmpty() {
        return k() <= 0;
    }

    final long k() {
        c[] cVarArr = this.c;
        long j2 = this.baseCount;
        if (cVarArr != null) {
            for (c cVar : cVarArr) {
                if (cVar != null) {
                    j2 += cVar.value;
                }
            }
        }
        return j2;
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public Set<K> keySet() {
        i iVar = this.d;
        if (iVar != null) {
            return iVar;
        }
        i iVar2 = new i(this);
        this.d = iVar2;
        return iVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00da, code lost:
    
        throw new java.lang.IllegalStateException("Recursive update");
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object merge(java.lang.Object r18, java.lang.Object r19, java.util.function.BiFunction r20) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.concurrent.ConcurrentHashMap.merge(java.lang.Object, java.lang.Object, java.util.function.BiFunction):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public V put(K k2, V v) {
        return (V) g(k2, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        p(map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            g(entry.getKey(), entry.getValue(), false);
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public V putIfAbsent(K k2, V v) {
        return (V) g(k2, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public V remove(Object obj) {
        return (V) h(obj, null, null);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        obj.getClass();
        return (obj2 == null || h(obj, null, obj2) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        if (obj == null) {
            throw null;
        }
        if (obj2 != null) {
            return h(obj, obj2, null);
        }
        throw null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        if (obj == null || obj2 == null || obj3 == null) {
            throw null;
        }
        return h(obj, obj3, obj2) != null;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        biFunction.getClass();
        l[] lVarArr = this.a;
        if (lVarArr == null) {
            return;
        }
        q qVar = new q(lVarArr, lVarArr.length, 0, lVarArr.length);
        while (true) {
            l a = qVar.a();
            if (a == null) {
                return;
            }
            Object obj = a.c;
            Object obj2 = a.b;
            do {
                Object apply = biFunction.apply(obj2, obj);
                apply.getClass();
                if (h(obj2, apply, obj) == null) {
                    obj = get(obj2);
                }
            } while (obj != null);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public int size() {
        long k2 = k();
        if (k2 < 0) {
            return 0;
        }
        return k2 > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : (int) k2;
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        l[] lVarArr = this.a;
        int length = lVarArr == null ? 0 : lVarArr.length;
        q qVar = new q(lVarArr, length, 0, length);
        StringBuilder sb = new StringBuilder("{");
        l a = qVar.a();
        if (a != null) {
            while (true) {
                Object obj = a.b;
                Object obj2 = a.c;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                a = qVar.a();
                if (a == null) {
                    break;
                }
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map, j$.util.Map
    public Collection<V> values() {
        t tVar = this.e;
        if (tVar != null) {
            return tVar;
        }
        t tVar2 = new t(this);
        this.e = tVar2;
        return tVar2;
    }
}
