package defpackage;

import defpackage.AbstractC3932wg;
import defpackage.InterfaceC2919iH;
import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* renamed from: hH, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C2860hH<T extends InterfaceC2919iH & Comparable<? super T>> {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicIntegerFieldUpdater f13286do = AtomicIntegerFieldUpdater.newUpdater(C2860hH.class, "_size");
    private volatile int _size;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public T[] f13287do;

    /* renamed from: case, reason: not valid java name */
    public final void m6784case(int i) {
        while (i > 0) {
            Object[] objArr = this.f13287do;
            C0173Do.m398if(objArr);
            int i2 = (i - 1) / 2;
            Object obj = objArr[i2];
            C0173Do.m398if(obj);
            Object obj2 = objArr[i];
            C0173Do.m398if(obj2);
            if (((Comparable) obj).compareTo(obj2) <= 0) {
                return;
            }
            m6786else(i, i2);
            i = i2;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6785do(AbstractC3932wg.Cdo cdo) {
        cdo.mo6889break((AbstractC3932wg.Cif) this);
        T[] tArr = this.f13287do;
        if (tArr == null) {
            tArr = (T[]) new InterfaceC2919iH[4];
            this.f13287do = tArr;
        } else if (m6788if() >= tArr.length) {
            Object[] copyOf = Arrays.copyOf(tArr, m6788if() * 2);
            C0173Do.m399new(copyOf, "copyOf(this, newSize)");
            tArr = (T[]) ((InterfaceC2919iH[]) copyOf);
            this.f13287do = tArr;
        }
        int m6788if = m6788if();
        f13286do.set(this, m6788if + 1);
        tArr[m6788if] = cdo;
        cdo.f16381for = m6788if;
        m6784case(m6788if);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m6786else(int i, int i2) {
        T[] tArr = this.f13287do;
        C0173Do.m398if(tArr);
        T t = tArr[i2];
        C0173Do.m398if(t);
        T t2 = tArr[i];
        C0173Do.m398if(t2);
        tArr[i] = t;
        tArr[i2] = t2;
        t.mo6891this(i);
        t2.mo6891this(i2);
    }

    /* renamed from: for, reason: not valid java name */
    public final T m6787for() {
        T t;
        synchronized (this) {
            T[] tArr = this.f13287do;
            t = tArr != null ? tArr[0] : null;
        }
        return t;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m6788if() {
        return f13286do.get(this);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6789new(InterfaceC2919iH interfaceC2919iH) {
        synchronized (this) {
            if (interfaceC2919iH.mo6890case() != null) {
                m6790try(interfaceC2919iH.getIndex());
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final T m6790try(int i) {
        T[] tArr = this.f13287do;
        C0173Do.m398if(tArr);
        f13286do.set(this, m6788if() - 1);
        if (i < m6788if()) {
            m6786else(i, m6788if());
            int i2 = (i - 1) / 2;
            if (i > 0) {
                Object obj = tArr[i];
                C0173Do.m398if(obj);
                Object obj2 = tArr[i2];
                C0173Do.m398if(obj2);
                if (((Comparable) obj).compareTo(obj2) < 0) {
                    m6786else(i, i2);
                    m6784case(i2);
                }
            }
            while (true) {
                int i3 = (i * 2) + 1;
                if (i3 >= m6788if()) {
                    break;
                }
                Object[] objArr = this.f13287do;
                C0173Do.m398if(objArr);
                int i4 = i3 + 1;
                if (i4 < m6788if()) {
                    Object obj3 = objArr[i4];
                    C0173Do.m398if(obj3);
                    Object obj4 = objArr[i3];
                    C0173Do.m398if(obj4);
                    if (((Comparable) obj3).compareTo(obj4) < 0) {
                        i3 = i4;
                    }
                }
                Object obj5 = objArr[i];
                C0173Do.m398if(obj5);
                Object obj6 = objArr[i3];
                C0173Do.m398if(obj6);
                if (((Comparable) obj5).compareTo(obj6) <= 0) {
                    break;
                }
                m6786else(i, i3);
                i = i3;
            }
        }
        T t = (T) tArr[m6788if()];
        C0173Do.m398if(t);
        t.mo6889break(null);
        t.mo6891this(-1);
        tArr[m6788if()] = null;
        return t;
    }
}
