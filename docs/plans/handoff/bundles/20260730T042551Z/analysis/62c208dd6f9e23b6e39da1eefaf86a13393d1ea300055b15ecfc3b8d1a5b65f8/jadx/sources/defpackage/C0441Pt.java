package defpackage;

import defpackage.AbstractC3890vx;
import j$.util.DesugarCollections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: Pt, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0441Pt extends AbstractC3890vx {

    /* renamed from: do, reason: not valid java name */
    public final Map<AbstractC3890vx.Cdo<?>, Object> f2834do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f2835do;

    /* renamed from: Pt$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0459Qp implements InterfaceC2650dk<Map.Entry<AbstractC3890vx.Cdo<?>, Object>, CharSequence> {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f2836do = new Cdo();

        public Cdo() {
            super(1);
        }

        @Override // defpackage.InterfaceC2650dk
        /* renamed from: this */
        public final CharSequence mo364this(Map.Entry<AbstractC3890vx.Cdo<?>, Object> entry) {
            Map.Entry<AbstractC3890vx.Cdo<?>, Object> entry2 = entry;
            C0173Do.m401try(entry2, "entry");
            return "  " + entry2.getKey().f16155do + " = " + entry2.getValue();
        }
    }

    public C0441Pt() {
        this(false, 3);
    }

    public /* synthetic */ C0441Pt(boolean z, int i) {
        this((i & 1) != 0 ? new LinkedHashMap() : null, (i & 2) != 0 ? true : z);
    }

    @Override // defpackage.AbstractC3890vx
    /* renamed from: do, reason: not valid java name */
    public final Map<AbstractC3890vx.Cdo<?>, Object> mo1811do() {
        Map<AbstractC3890vx.Cdo<?>, Object> unmodifiableMap = DesugarCollections.unmodifiableMap(this.f2834do);
        C0173Do.m399new(unmodifiableMap, "unmodifiableMap(preferencesMap)");
        return unmodifiableMap;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0441Pt)) {
            return false;
        }
        return C0173Do.m394do(this.f2834do, ((C0441Pt) obj).f2834do);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1812for() {
        if (!(!this.f2835do.get())) {
            throw new IllegalStateException("Do mutate preferences once returned to DataStore.".toString());
        }
    }

    public final int hashCode() {
        return this.f2834do.hashCode();
    }

    @Override // defpackage.AbstractC3890vx
    /* renamed from: if, reason: not valid java name */
    public final <T> T mo1813if(AbstractC3890vx.Cdo<T> cdo) {
        C0173Do.m401try(cdo, "key");
        return (T) this.f2834do.get(cdo);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m1814new(AbstractC3890vx.Cdo<?> cdo, Object obj) {
        C0173Do.m401try(cdo, "key");
        m1812for();
        Map<AbstractC3890vx.Cdo<?>, Object> map = this.f2834do;
        if (obj == null) {
            m1812for();
            map.remove(cdo);
        } else {
            if (!(obj instanceof Set)) {
                map.put(cdo, obj);
                return;
            }
            Set unmodifiableSet = DesugarCollections.unmodifiableSet(E8.l((Iterable) obj));
            C0173Do.m399new(unmodifiableSet, "unmodifiableSet(value.toSet())");
            map.put(cdo, unmodifiableSet);
        }
    }

    public final String toString() {
        Set<Map.Entry<AbstractC3890vx.Cdo<?>, Object>> entrySet = this.f2834do.entrySet();
        Cdo cdo = Cdo.f2836do;
        C0173Do.m401try(entrySet, "<this>");
        StringBuilder sb = new StringBuilder();
        E8.f(entrySet, sb, ",\n", "{\n", "\n}", -1, "...", cdo);
        String sb2 = sb.toString();
        C0173Do.m399new(sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }

    public C0441Pt(Map<AbstractC3890vx.Cdo<?>, Object> map, boolean z) {
        C0173Do.m401try(map, "preferencesMap");
        this.f2834do = map;
        this.f2835do = new AtomicBoolean(z);
    }
}
