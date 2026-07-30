package defpackage;

import java.io.Closeable;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* renamed from: yA, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4022yA implements InterfaceC0800cG, Closeable {

    /* renamed from: do, reason: not valid java name */
    public static final TreeMap<Integer, C4022yA> f16684do = new TreeMap<>();

    /* renamed from: break, reason: not valid java name */
    public volatile String f16685break;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final double[] f16686do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f16687do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long[] f16688do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String[] f16689do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[][] f16690do;

    /* renamed from: for, reason: not valid java name */
    public final int f16691for;

    /* renamed from: new, reason: not valid java name */
    public int f16692new;

    public C4022yA(int i) {
        this.f16691for = i;
        int i2 = i + 1;
        this.f16687do = new int[i2];
        this.f16688do = new long[i2];
        this.f16686do = new double[i2];
        this.f16689do = new String[i2];
        this.f16690do = new byte[i2][];
    }

    /* renamed from: for, reason: not valid java name */
    public static C4022yA m8700for(int i, String str) {
        TreeMap<Integer, C4022yA> treeMap = f16684do;
        synchronized (treeMap) {
            Map.Entry<Integer, C4022yA> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry == null) {
                C4022yA c4022yA = new C4022yA(i);
                c4022yA.f16685break = str;
                c4022yA.f16692new = i;
                return c4022yA;
            }
            treeMap.remove(ceilingEntry.getKey());
            C4022yA value = ceilingEntry.getValue();
            value.f16685break = str;
            value.f16692new = i;
            return value;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m8701case(int i) {
        this.f16687do[i] = 1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // defpackage.InterfaceC0800cG
    /* renamed from: do */
    public final String mo4894do() {
        return this.f16685break;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8702goto(int i, String str) {
        this.f16687do[i] = 4;
        this.f16689do[i] = str;
    }

    @Override // defpackage.InterfaceC0800cG
    /* renamed from: if */
    public final void mo4895if(C0585Wj c0585Wj) {
        for (int i = 1; i <= this.f16692new; i++) {
            int i2 = this.f16687do[i];
            if (i2 == 1) {
                c0585Wj.m2764new(i);
            } else if (i2 == 2) {
                c0585Wj.m2762for(i, this.f16688do[i]);
            } else if (i2 == 3) {
                c0585Wj.m2763if(i, this.f16686do[i]);
            } else if (i2 == 4) {
                c0585Wj.m2760case(i, this.f16689do[i]);
            } else if (i2 == 5) {
                c0585Wj.m2761do(i, this.f16690do[i]);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8703new(int i, long j) {
        this.f16687do[i] = 2;
        this.f16688do[i] = j;
    }

    public final void release() {
        TreeMap<Integer, C4022yA> treeMap = f16684do;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f16691for), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator<Integer> it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i;
                }
            }
        }
    }
}
