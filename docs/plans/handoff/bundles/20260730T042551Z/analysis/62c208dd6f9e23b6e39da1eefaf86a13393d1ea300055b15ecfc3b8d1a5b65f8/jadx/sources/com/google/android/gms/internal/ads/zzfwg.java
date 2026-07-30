package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;

/* loaded from: classes.dex */
abstract class zzfwg extends zzfwj implements Serializable {
    private final transient Map zza;
    private transient int zzb;

    public zzfwg(Map map) {
        zzfun.zze(map.isEmpty());
        this.zza = map;
    }

    public static /* bridge */ /* synthetic */ void zzo(zzfwg zzfwgVar, Object obj) {
        Object obj2;
        try {
            obj2 = zzfwgVar.zza.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfwgVar.zzb -= size;
        }
    }

    public abstract Collection zza();

    public Collection zzb(Collection collection) {
        throw null;
    }

    public Collection zzc(Object obj, Collection collection) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfyl
    public final int zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public final Collection zzf() {
        return new zzfwi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    final Iterator zzg() {
        return new zzfvq(this);
    }

    public final List zzh(Object obj, List list, zzfwd zzfwdVar) {
        return list instanceof RandomAccess ? new zzfvz(this, obj, list, zzfwdVar) : new zzfwf(this, obj, list, zzfwdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public Map zzj() {
        throw null;
    }

    public final Map zzk() {
        Map map = this.zza;
        return map instanceof NavigableMap ? new zzfvx(this, (NavigableMap) map) : map instanceof SortedMap ? new zzfwa(this, (SortedMap) map) : new zzfvt(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfwj
    public Set zzl() {
        throw null;
    }

    public final Set zzm() {
        Map map = this.zza;
        return map instanceof NavigableMap ? new zzfvy(this, (NavigableMap) map) : map instanceof SortedMap ? new zzfwb(this, (SortedMap) map) : new zzfvw(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfyl
    public final void zzp() {
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfwj, com.google.android.gms.internal.ads.zzfyl
    public final boolean zzq(Object obj, Object obj2) {
        Collection collection = (Collection) this.zza.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.zzb++;
            return true;
        }
        Collection zza = zza();
        if (!zza.add(obj2)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.zzb++;
        this.zza.put(obj, zza);
        return true;
    }
}
