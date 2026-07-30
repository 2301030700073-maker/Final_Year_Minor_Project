package com.google.android.gms.internal.ads;

import j$.util.Map;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes.dex */
public abstract class zzfxq implements Map, Serializable, j$.util.Map {
    private transient zzfxs zza;
    private transient zzfxs zzb;
    private transient zzfxi zzc;

    public static zzfxq zzc(Map map) {
        Set entrySet = map.entrySet();
        zzfxp zzfxpVar = new zzfxp(entrySet instanceof Collection ? entrySet.size() : 4);
        zzfxpVar.zzb(entrySet);
        return zzfxpVar.zzc();
    }

    public static zzfxq zzd() {
        return zzfze.zza;
    }

    public static zzfxq zze(Object obj, Object obj2) {
        zzfwk.zzb("dialog_not_shown_reason", obj2);
        return zzfze.zzj(1, new Object[]{"dialog_not_shown_reason", obj2}, null);
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
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
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean equals(Object obj) {
        return zzfyk.zzb(this, obj);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map, j$.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map, j$.util.Map
    public final int hashCode() {
        return zzfzp.zza(entrySet());
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ boolean remove(Object obj, Object obj2) {
        return Map.CC.$default$remove(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    public final String toString() {
        int size = size();
        zzfwk.zza(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public abstract zzfxi zza();

    @Override // java.util.Map, j$.util.Map
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzfxi values() {
        zzfxi zzfxiVar = this.zzc;
        if (zzfxiVar != null) {
            return zzfxiVar;
        }
        zzfxi zza = zza();
        this.zzc = zza;
        return zza;
    }

    public abstract zzfxs zzf();

    public abstract zzfxs zzg();

    @Override // java.util.Map, j$.util.Map
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzfxs entrySet() {
        zzfxs zzfxsVar = this.zza;
        if (zzfxsVar != null) {
            return zzfxsVar;
        }
        zzfxs zzf = zzf();
        this.zza = zzf;
        return zzf;
    }

    @Override // java.util.Map, j$.util.Map
    /* renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public final zzfxs keySet() {
        zzfxs zzfxsVar = this.zzb;
        if (zzfxsVar != null) {
            return zzfxsVar;
        }
        zzfxs zzg = zzg();
        this.zzb = zzg;
        return zzg;
    }
}
