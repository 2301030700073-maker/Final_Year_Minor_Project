package defpackage;

import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: u9, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3785u9 implements InterfaceC2911i9, InterfaceC3373n9 {

    /* renamed from: do, reason: not valid java name */
    public static final C3608r9 f15859do = new C3608r9(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3402ng f15863do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3491p9 f15864do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f15860do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    public final HashMap f15866if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    public final HashMap f15865for = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f15861do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference<Boolean> f15862do = new AtomicReference<>();

    public C3785u9(Executor executor, ArrayList arrayList, ArrayList arrayList2, InterfaceC3491p9 interfaceC3491p9) {
        C3402ng c3402ng = new C3402ng(executor);
        this.f15863do = c3402ng;
        this.f15864do = interfaceC3491p9;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(C0793c9.m4889for(c3402ng, C3402ng.class, MF.class, InterfaceC3950wy.class));
        arrayList3.add(C0793c9.m4889for(this, InterfaceC3373n9.class, new Class[0]));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            C0793c9 c0793c9 = (C0793c9) it.next();
            if (c0793c9 != null) {
                arrayList3.add(c0793c9);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList4.add(it2.next());
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((InterfaceC3655ry) it3.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(this.f15864do.mo7562do(componentRegistrar));
                        it3.remove();
                    }
                } catch (C0305Jo unused) {
                    it3.remove();
                }
            }
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                Object[] array = ((C0793c9) it4.next()).f8500do.toArray();
                int length = array.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        Object obj = array[i];
                        if (obj.toString().contains("kotlinx.coroutines.CoroutineDispatcher")) {
                            if (this.f15861do.contains(obj.toString())) {
                                it4.remove();
                                break;
                            }
                            this.f15861do.add(obj.toString());
                        }
                        i++;
                    }
                }
            }
            if (this.f15860do.isEmpty()) {
                C0183Ec.m489do(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.f15860do.keySet());
                arrayList6.addAll(arrayList3);
                C0183Ec.m489do(arrayList6);
            }
            Iterator it5 = arrayList3.iterator();
            while (it5.hasNext()) {
                final C0793c9 c0793c92 = (C0793c9) it5.next();
                this.f15860do.put(c0793c92, new C0503Sp(new InterfaceC3655ry() { // from class: q9
                    @Override // defpackage.InterfaceC3655ry
                    public final Object get() {
                        C3785u9 c3785u9 = C3785u9.this;
                        c3785u9.getClass();
                        C0793c9 c0793c93 = c0793c92;
                        return c0793c93.f8501do.mo1186try(new Xz(c0793c93, c3785u9));
                    }
                }));
            }
            arrayList5.addAll(m8376this(arrayList3));
            arrayList5.addAll(m8372break());
            m8375goto();
        }
        Iterator it6 = arrayList5.iterator();
        while (it6.hasNext()) {
            ((Runnable) it6.next()).run();
        }
        Boolean bool = this.f15862do.get();
        if (bool != null) {
            m8374else(this.f15860do, bool.booleanValue());
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final ArrayList m8372break() {
        int i;
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        Iterator it = this.f15860do.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            C0793c9 c0793c9 = (C0793c9) entry.getKey();
            if ((c0793c9.f8503if == 0 ? 1 : 0) == 0) {
                InterfaceC3655ry interfaceC3655ry = (InterfaceC3655ry) entry.getValue();
                Iterator it2 = c0793c9.f8500do.iterator();
                while (it2.hasNext()) {
                    Dy dy = (Dy) it2.next();
                    if (!hashMap.containsKey(dy)) {
                        hashMap.put(dy, new HashSet());
                    }
                    ((Set) hashMap.get(dy)).add(interfaceC3655ry);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            Object key = entry2.getKey();
            HashMap hashMap2 = this.f15865for;
            if (hashMap2.containsKey(key)) {
                C0525Tp c0525Tp = (C0525Tp) hashMap2.get(entry2.getKey());
                Iterator it3 = ((Set) entry2.getValue()).iterator();
                while (it3.hasNext()) {
                    arrayList.add(new RunnableC3667s9(i, c0525Tp, (InterfaceC3655ry) it3.next()));
                }
            } else {
                hashMap2.put((Dy) entry2.getKey(), new C0525Tp((Set) ((Collection) entry2.getValue())));
            }
        }
        return arrayList;
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: case */
    public final synchronized <T> InterfaceC3655ry<T> mo2878case(Dy<T> dy) {
        if (dy == null) {
            throw new NullPointerException("Null interface requested.");
        }
        return (InterfaceC3655ry) this.f15866if.get(dy);
    }

    /* renamed from: catch, reason: not valid java name */
    public final synchronized <T> InterfaceC3655ry<Set<T>> m8373catch(Dy<T> dy) {
        C0525Tp c0525Tp = (C0525Tp) this.f15865for.get(dy);
        if (c0525Tp != null) {
            return c0525Tp;
        }
        return f15859do;
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: do */
    public final <T> InterfaceC0118Bd<T> mo2879do(Dy<T> dy) {
        InterfaceC3655ry<T> mo2878case = mo2878case(dy);
        return mo2878case == null ? new C2954iw(C2954iw.f13594do, C2954iw.f13595do) : mo2878case instanceof C2954iw ? (C2954iw) mo2878case : new C2954iw(null, mo2878case);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m8374else(Map<C0793c9<?>, InterfaceC3655ry<?>> map, boolean z) {
        ArrayDeque arrayDeque;
        for (Map.Entry<C0793c9<?>, InterfaceC3655ry<?>> entry : map.entrySet()) {
            C0793c9<?> key = entry.getKey();
            InterfaceC3655ry<?> value = entry.getValue();
            int i = key.f8498do;
            if (!(i == 1)) {
                if ((i == 2) && z) {
                }
            }
            value.get();
        }
        C3402ng c3402ng = this.f15863do;
        synchronized (c3402ng) {
            try {
                arrayDeque = c3402ng.f14546do;
                if (arrayDeque != null) {
                    c3402ng.f14546do = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                c3402ng.m7602new((C3284lg) it.next());
            }
        }
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: for */
    public final Object mo2881for(Class cls) {
        return mo2883if(Dy.m416do(cls));
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8375goto() {
        for (C0793c9 c0793c9 : this.f15860do.keySet()) {
            for (C0513Td c0513Td : c0793c9.f8504if) {
                boolean z = c0513Td.f3716do == 2;
                Dy<?> dy = c0513Td.f3717do;
                if (z) {
                    HashMap hashMap = this.f15865for;
                    if (!hashMap.containsKey(dy)) {
                        hashMap.put(dy, new C0525Tp(Collections.emptySet()));
                    }
                }
                HashMap hashMap2 = this.f15866if;
                if (hashMap2.containsKey(dy)) {
                    continue;
                } else {
                    int i = c0513Td.f3716do;
                    if (i == 1) {
                        throw new C3238kt(String.format("Unsatisfied dependency for component %s: %s", c0793c9, dy));
                    }
                    if (!(i == 2)) {
                        hashMap2.put(dy, new C2954iw(C2954iw.f13594do, C2954iw.f13595do));
                    }
                }
            }
        }
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: if */
    public final Object mo2883if(Dy dy) {
        InterfaceC3655ry mo2878case = mo2878case(dy);
        if (mo2878case == null) {
            return null;
        }
        return mo2878case.get();
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: new */
    public final InterfaceC3655ry mo2884new(Class cls) {
        return mo2878case(Dy.m416do(cls));
    }

    /* renamed from: this, reason: not valid java name */
    public final ArrayList m8376this(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0793c9 c0793c9 = (C0793c9) it.next();
            if (c0793c9.f8503if == 0) {
                InterfaceC3655ry interfaceC3655ry = (InterfaceC3655ry) this.f15860do.get(c0793c9);
                Iterator it2 = c0793c9.f8500do.iterator();
                while (it2.hasNext()) {
                    Dy dy = (Dy) it2.next();
                    HashMap hashMap = this.f15866if;
                    if (hashMap.containsKey(dy)) {
                        arrayList2.add(new RunnableC0667a2(3, (C2954iw) ((InterfaceC3655ry) hashMap.get(dy)), interfaceC3655ry));
                    } else {
                        hashMap.put(dy, interfaceC3655ry);
                    }
                }
            }
        }
        return arrayList2;
    }

    @Override // defpackage.InterfaceC2911i9
    /* renamed from: try */
    public final Set mo2885try(Dy dy) {
        return (Set) m8373catch(dy).get();
    }
}
