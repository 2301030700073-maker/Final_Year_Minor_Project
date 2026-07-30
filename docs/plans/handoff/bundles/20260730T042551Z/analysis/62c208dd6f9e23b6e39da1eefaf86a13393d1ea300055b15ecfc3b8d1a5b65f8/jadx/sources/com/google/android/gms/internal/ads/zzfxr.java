package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzfxr extends zzfxg {
    Object[] zzd;
    private int zze;

    public zzfxr() {
        super(4);
    }

    @Override // com.google.android.gms.internal.ads.zzfxg, com.google.android.gms.internal.ads.zzfxh
    public final /* bridge */ /* synthetic */ zzfxh zzb(Object obj) {
        zzf(obj);
        return this;
    }

    public final zzfxr zzf(Object obj) {
        obj.getClass();
        if (this.zzd != null) {
            int zzh = zzfxs.zzh(this.zzb);
            Object[] objArr = this.zzd;
            if (zzh <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int zza = zzfxf.zza(hashCode);
                while (true) {
                    int i = zza & length;
                    Object[] objArr2 = this.zzd;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        zza = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.zze += hashCode;
                        super.zza(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.zzd = null;
        super.zza(obj);
        return this;
    }

    public final zzfxr zzg(Object... objArr) {
        if (this.zzd != null) {
            for (int i = 0; i < 2; i++) {
                zzf(objArr[i]);
            }
        } else {
            zzd(objArr, 2);
        }
        return this;
    }

    public final zzfxr zzh(Iterable iterable) {
        iterable.getClass();
        if (this.zzd != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                zzf(it.next());
            }
        } else {
            super.zzc(iterable);
        }
        return this;
    }

    public final zzfxs zzi() {
        zzfxs zzv;
        boolean zzw;
        int i = this.zzb;
        if (i == 0) {
            return zzfzf.zza;
        }
        if (i == 1) {
            Object obj = this.zza[0];
            Objects.requireNonNull(obj);
            return new zzfzq(obj);
        }
        if (this.zzd == null || zzfxs.zzh(i) != this.zzd.length) {
            zzv = zzfxs.zzv(this.zzb, this.zza);
            this.zzb = zzv.size();
        } else {
            int i2 = this.zzb;
            Object[] objArr = this.zza;
            zzw = zzfxs.zzw(i2, objArr.length);
            if (zzw) {
                objArr = Arrays.copyOf(objArr, i2);
            }
            zzv = new zzfzf(objArr, this.zze, this.zzd, r6.length - 1, this.zzb);
        }
        this.zzc = true;
        this.zzd = null;
        return zzv;
    }

    public zzfxr(int i, boolean z) {
        super(i);
        this.zzd = new Object[zzfxs.zzh(i)];
    }
}
