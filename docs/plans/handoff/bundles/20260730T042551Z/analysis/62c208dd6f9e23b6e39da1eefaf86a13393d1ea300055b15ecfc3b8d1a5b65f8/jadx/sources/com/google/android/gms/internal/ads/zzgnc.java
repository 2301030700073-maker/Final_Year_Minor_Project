package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgnc {
    private final Class zza;
    private zzgnd zzd;
    private Map zzb = new HashMap();
    private final List zzc = new ArrayList();
    private zzglo zze = zzglo.zza;

    public /* synthetic */ zzgnc(Class cls, zzgne zzgneVar) {
        this.zza = cls;
    }

    private final zzgnc zze(Object obj, zzgdx zzgdxVar, zzgsv zzgsvVar, boolean z) {
        byte[] zzc;
        zzgvo zzgvoVar;
        zzgvo zzgvoVar2;
        if (this.zzb == null) {
            throw new IllegalStateException("addEntry cannot be called after build");
        }
        if (obj == null) {
            throw new NullPointerException("`fullPrimitive` must not be null");
        }
        if (zzgsvVar.zzk() != 3) {
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        int ordinal = zzgsvVar.zzf().ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3) {
                    zzc = zzgds.zza;
                } else if (ordinal != 4) {
                    throw new GeneralSecurityException("unknown output prefix type");
                }
            }
            zzc = zzgml.zza(zzgsvVar.zza()).zzc();
        } else {
            zzc = zzgml.zzb(zzgsvVar.zza()).zzc();
        }
        zzgnd zzgndVar = new zzgnd(obj, zzgvo.zzb(zzc), zzgsvVar.zzk(), zzgsvVar.zzf(), zzgsvVar.zza(), zzgsvVar.zzb().zzg(), zzgdxVar, null);
        Map map = this.zzb;
        List list = this.zzc;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzgndVar);
        zzgvoVar = zzgndVar.zzb;
        List list2 = (List) map.put(zzgvoVar, DesugarCollections.unmodifiableList(arrayList));
        if (list2 != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(list2);
            arrayList2.add(zzgndVar);
            zzgvoVar2 = zzgndVar.zzb;
            map.put(zzgvoVar2, DesugarCollections.unmodifiableList(arrayList2));
        }
        list.add(zzgndVar);
        if (z) {
            if (this.zzd != null) {
                throw new IllegalStateException("you cannot set two primary primitives");
            }
            this.zzd = zzgndVar;
        }
        return this;
    }

    public final zzgnc zza(Object obj, zzgdx zzgdxVar, zzgsv zzgsvVar) {
        zze(obj, zzgdxVar, zzgsvVar, false);
        return this;
    }

    public final zzgnc zzb(Object obj, zzgdx zzgdxVar, zzgsv zzgsvVar) {
        zze(obj, zzgdxVar, zzgsvVar, true);
        return this;
    }

    public final zzgnc zzc(zzglo zzgloVar) {
        if (this.zzb == null) {
            throw new IllegalStateException("setAnnotations cannot be called after build");
        }
        this.zze = zzgloVar;
        return this;
    }

    public final zzgnf zzd() {
        Map map = this.zzb;
        if (map == null) {
            throw new IllegalStateException("build cannot be called twice");
        }
        zzgnf zzgnfVar = new zzgnf(map, this.zzc, this.zzd, this.zze, this.zza, null);
        this.zzb = null;
        return zzgnfVar;
    }
}
