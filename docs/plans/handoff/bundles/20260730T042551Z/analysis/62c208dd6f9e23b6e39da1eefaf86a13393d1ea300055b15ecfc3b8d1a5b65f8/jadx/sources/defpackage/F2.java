package defpackage;

import defpackage.AbstractC3884vr;
import j$.util.Map;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class F2<K, V> extends C2680eE<K, V> implements Map<K, V>, j$.util.Map {

    /* renamed from: do, reason: not valid java name */
    public E2 f965do;

    public F2() {
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f965do == null) {
            this.f965do = new E2(this);
        }
        E2 e2 = this.f965do;
        if (((AbstractC3884vr) e2).f16132do == null) {
            ((AbstractC3884vr) e2).f16132do = new AbstractC3884vr.Cif();
        }
        return ((AbstractC3884vr) e2).f16132do;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map, j$.util.Map
    public final Set<K> keySet() {
        if (this.f965do == null) {
            this.f965do = new E2(this);
        }
        E2 e2 = this.f965do;
        if (((AbstractC3884vr) e2).f16131do == null) {
            ((AbstractC3884vr) e2).f16131do = new AbstractC3884vr.Cfor();
        }
        return ((AbstractC3884vr) e2).f16131do;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final void putAll(java.util.Map<? extends K, ? extends V> map) {
        m6528if(map.size() + this.f12632for);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final Collection<V> values() {
        if (this.f965do == null) {
            this.f965do = new E2(this);
        }
        E2 e2 = this.f965do;
        if (((AbstractC3884vr) e2).f16133do == null) {
            ((AbstractC3884vr) e2).f16133do = new AbstractC3884vr.Ctry();
        }
        return ((AbstractC3884vr) e2).f16133do;
    }

    public F2(int i) {
        super(i);
    }

    public F2(F2 f2) {
        super(f2);
    }
}
