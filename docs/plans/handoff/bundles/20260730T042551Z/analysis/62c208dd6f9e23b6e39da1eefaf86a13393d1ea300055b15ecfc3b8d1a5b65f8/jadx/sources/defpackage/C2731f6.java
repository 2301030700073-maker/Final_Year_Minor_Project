package defpackage;

import defpackage.InterfaceC0521Tl;
import defpackage.InterfaceC2742fH;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArraySet;

/* renamed from: f6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2731f6 {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0521Tl f12830do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2742fH f12831do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f12832do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f12833do;

    /* renamed from: if, reason: not valid java name */
    public final ConcurrentHashMap f12834if;

    /* renamed from: f6$do, reason: invalid class name */
    public class Cdo extends ThreadLocal<ConcurrentLinkedQueue<Object>> {
        @Override // java.lang.ThreadLocal
        public final ConcurrentLinkedQueue<Object> initialValue() {
            return new ConcurrentLinkedQueue<>();
        }
    }

    /* renamed from: f6$if, reason: invalid class name */
    public class Cif extends ThreadLocal<Boolean> {
        @Override // java.lang.ThreadLocal
        public final Boolean initialValue() {
            return Boolean.FALSE;
        }
    }

    public C2731f6() {
        InterfaceC2742fH.Cdo cdo = InterfaceC2742fH.f12892do;
        InterfaceC0521Tl.Cdo cdo2 = InterfaceC0521Tl.f3743do;
        this.f12832do = new ConcurrentHashMap();
        this.f12834if = new ConcurrentHashMap();
        new Cdo();
        new Cif();
        new ConcurrentHashMap();
        this.f12831do = cdo;
        this.f12833do = "default";
        this.f12830do = cdo2;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m6639do(C3579qg c3579qg, C4050yg c4050yg) {
        try {
            Object m8763do = c4050yg.m8763do();
            if (m8763do == null) {
                return;
            }
            try {
                c3579qg.m7905do(m8763do);
            } catch (InvocationTargetException e) {
                m6640for("Could not dispatch event: " + m8763do.getClass() + " to handler " + c3579qg, e);
                throw null;
            }
        } catch (InvocationTargetException e2) {
            m6640for("Producer " + c4050yg + " threw an exception.", e2);
            throw null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m6640for(String str, InvocationTargetException invocationTargetException) {
        Throwable cause = invocationTargetException.getCause();
        if (cause != null) {
            StringBuilder m6916goto = defpackage.Cif.m6916goto(str, ": ");
            m6916goto.append(cause.getMessage());
            throw new RuntimeException(m6916goto.toString(), cause);
        }
        StringBuilder m6916goto2 = defpackage.Cif.m6916goto(str, ": ");
        m6916goto2.append(invocationTargetException.getMessage());
        throw new RuntimeException(m6916goto2.toString(), invocationTargetException);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6641if(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Object to register must not be null.");
        }
        this.f12831do.mo6651do(this);
        InterfaceC0521Tl.Cdo cdo = (InterfaceC0521Tl.Cdo) this.f12830do;
        HashMap m2286do = cdo.m2286do(obj);
        Iterator it = m2286do.keySet().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            ConcurrentHashMap concurrentHashMap = this.f12834if;
            ConcurrentHashMap concurrentHashMap2 = this.f12832do;
            if (!hasNext) {
                HashMap m2287if = cdo.m2287if(obj);
                for (Class cls : m2287if.keySet()) {
                    Set set = (Set) concurrentHashMap2.get(cls);
                    if (set == null) {
                        set = new CopyOnWriteArraySet();
                        Set set2 = (Set) concurrentHashMap2.putIfAbsent(cls, set);
                        if (set2 != null) {
                            set = set2;
                        }
                    }
                    if (!set.addAll((Set) m2287if.get(cls))) {
                        throw new IllegalArgumentException("Object already registered.");
                    }
                }
                for (Map.Entry entry : m2287if.entrySet()) {
                    C4050yg c4050yg = (C4050yg) concurrentHashMap.get((Class) entry.getKey());
                    if (c4050yg != null && c4050yg.f16810do) {
                        for (C3579qg c3579qg : (Set) entry.getValue()) {
                            if (!c4050yg.f16810do) {
                                break;
                            } else if (c3579qg.f15146do) {
                                m6639do(c3579qg, c4050yg);
                            }
                        }
                    }
                }
                return;
            }
            Class cls2 = (Class) it.next();
            C4050yg c4050yg2 = (C4050yg) m2286do.get(cls2);
            C4050yg c4050yg3 = (C4050yg) concurrentHashMap.putIfAbsent(cls2, c4050yg2);
            if (c4050yg3 != null) {
                throw new IllegalArgumentException("Producer method for type " + cls2 + " found on type " + c4050yg2.f16808do.getClass() + ", but already registered by type " + c4050yg3.f16808do.getClass() + ".");
            }
            Set set3 = (Set) concurrentHashMap2.get(cls2);
            if (set3 != null && !set3.isEmpty()) {
                Iterator it2 = set3.iterator();
                while (it2.hasNext()) {
                    m6639do((C3579qg) it2.next(), c4050yg2);
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6642new(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Object to unregister must not be null.");
        }
        this.f12831do.mo6651do(this);
        InterfaceC0521Tl.Cdo cdo = (InterfaceC0521Tl.Cdo) this.f12830do;
        for (Map.Entry entry : cdo.m2286do(obj).entrySet()) {
            Class cls = (Class) entry.getKey();
            ConcurrentHashMap concurrentHashMap = this.f12834if;
            C4050yg c4050yg = (C4050yg) concurrentHashMap.get(cls);
            C4050yg c4050yg2 = (C4050yg) entry.getValue();
            if (c4050yg2 == null || !c4050yg2.equals(c4050yg)) {
                throw new IllegalArgumentException("Missing event producer for an annotated method. Is " + obj.getClass() + " registered?");
            }
            ((C4050yg) concurrentHashMap.remove(cls)).f16810do = false;
        }
        for (Map.Entry entry2 : cdo.m2287if(obj).entrySet()) {
            Set<C3579qg> set = (Set) this.f12832do.get((Class) entry2.getKey());
            Collection<?> collection = (Collection) entry2.getValue();
            if (set == null || !set.containsAll(collection)) {
                throw new IllegalArgumentException("Missing event handler for an annotated method. Is " + obj.getClass() + " registered?");
            }
            for (C3579qg c3579qg : set) {
                if (collection.contains(c3579qg)) {
                    c3579qg.f15146do = false;
                }
            }
            set.removeAll(collection);
        }
    }

    public final String toString() {
        return Creturn.m7984try(new StringBuilder("[Bus \""), this.f12833do, "\"]");
    }
}
