package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
final class zznw {
    private final zzbo zza;
    private zzfxn zzb = zzfxn.zzn();
    private zzfxq zzc = zzfxq.zzd();
    private zzug zzd;
    private zzug zze;
    private zzug zzf;

    public zznw(zzbo zzboVar) {
        this.zza = zzboVar;
    }

    private static zzug zzj(zzbk zzbkVar, zzfxn zzfxnVar, zzug zzugVar, zzbo zzboVar) {
        zzbq zzn = zzbkVar.zzn();
        int zze = zzbkVar.zze();
        Object zzf = zzn.zzo() ? null : zzn.zzf(zze);
        int zzc = (zzbkVar.zzw() || zzn.zzo()) ? -1 : zzn.zzd(zze, zzboVar, false).zzc(zzei.zzs(zzbkVar.zzk()));
        for (int i = 0; i < zzfxnVar.size(); i++) {
            zzug zzugVar2 = (zzug) zzfxnVar.get(i);
            if (zzm(zzugVar2, zzf, zzbkVar.zzw(), zzbkVar.zzb(), zzbkVar.zzc(), zzc)) {
                return zzugVar2;
            }
        }
        if (zzfxnVar.isEmpty() && zzugVar != null) {
            if (zzm(zzugVar, zzf, zzbkVar.zzw(), zzbkVar.zzb(), zzbkVar.zzc(), zzc)) {
                return zzugVar;
            }
        }
        return null;
    }

    private final void zzk(zzfxp zzfxpVar, zzug zzugVar, zzbq zzbqVar) {
        if (zzugVar == null) {
            return;
        }
        if (zzbqVar.zza(zzugVar.zza) != -1) {
            zzfxpVar.zza(zzugVar, zzbqVar);
            return;
        }
        zzbq zzbqVar2 = (zzbq) this.zzc.get(zzugVar);
        if (zzbqVar2 != null) {
            zzfxpVar.zza(zzugVar, zzbqVar2);
        }
    }

    private final void zzl(zzbq zzbqVar) {
        zzfxp zzfxpVar = new zzfxp();
        if (this.zzb.isEmpty()) {
            zzk(zzfxpVar, this.zze, zzbqVar);
            if (!zzfuk.zza(this.zzf, this.zze)) {
                zzk(zzfxpVar, this.zzf, zzbqVar);
            }
            if (!zzfuk.zza(this.zzd, this.zze) && !zzfuk.zza(this.zzd, this.zzf)) {
                zzk(zzfxpVar, this.zzd, zzbqVar);
            }
        } else {
            for (int i = 0; i < this.zzb.size(); i++) {
                zzk(zzfxpVar, (zzug) this.zzb.get(i), zzbqVar);
            }
            if (!this.zzb.contains(this.zzd)) {
                zzk(zzfxpVar, this.zzd, zzbqVar);
            }
        }
        this.zzc = zzfxpVar.zzc();
    }

    private static boolean zzm(zzug zzugVar, Object obj, boolean z, int i, int i2, int i3) {
        if (!zzugVar.zza.equals(obj)) {
            return false;
        }
        if (z) {
            if (zzugVar.zzb != i || zzugVar.zzc != i2) {
                return false;
            }
        } else if (zzugVar.zzb != -1 || zzugVar.zze != i3) {
            return false;
        }
        return true;
    }

    public final zzbq zza(zzug zzugVar) {
        return (zzbq) this.zzc.get(zzugVar);
    }

    public final zzug zzb() {
        return this.zzd;
    }

    public final zzug zzc() {
        Object next;
        Object obj;
        if (this.zzb.isEmpty()) {
            return null;
        }
        zzfxn zzfxnVar = this.zzb;
        if (!(zzfxnVar instanceof List)) {
            Iterator<E> it = zzfxnVar.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            obj = next;
        } else {
            if (zzfxnVar.isEmpty()) {
                throw new NoSuchElementException();
            }
            obj = zzfxnVar.get(zzfxnVar.size() - 1);
        }
        return (zzug) obj;
    }

    public final zzug zzd() {
        return this.zze;
    }

    public final zzug zze() {
        return this.zzf;
    }

    public final void zzg(zzbk zzbkVar) {
        this.zzd = zzj(zzbkVar, this.zzb, this.zze, this.zza);
    }

    public final void zzh(List list, zzug zzugVar, zzbk zzbkVar) {
        this.zzb = zzfxn.zzl(list);
        if (!list.isEmpty()) {
            this.zze = (zzug) list.get(0);
            zzugVar.getClass();
            this.zzf = zzugVar;
        }
        if (this.zzd == null) {
            this.zzd = zzj(zzbkVar, this.zzb, this.zze, this.zza);
        }
        zzl(zzbkVar.zzn());
    }

    public final void zzi(zzbk zzbkVar) {
        this.zzd = zzj(zzbkVar, this.zzb, this.zze, this.zza);
        zzl(zzbkVar.zzn());
    }
}
