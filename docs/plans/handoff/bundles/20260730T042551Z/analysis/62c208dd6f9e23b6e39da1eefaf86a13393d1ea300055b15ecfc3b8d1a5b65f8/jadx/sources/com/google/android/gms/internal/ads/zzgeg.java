package com.google.android.gms.internal.ads;

import defpackage.V1;
import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzgeg {
    private final zzgsx zza;
    private final List zzb;
    private final zzglo zzc;

    private zzgeg(zzgsx zzgsxVar, List list) {
        this.zza = zzgsxVar;
        this.zzb = list;
        this.zzc = zzglo.zza;
    }

    public /* synthetic */ zzgeg(zzgsx zzgsxVar, List list, zzglo zzgloVar, zzgef zzgefVar) {
        this.zza = zzgsxVar;
        this.zzb = list;
        this.zzc = zzgloVar;
    }

    public static final zzgeg zza(zzgsx zzgsxVar) {
        zzh(zzgsxVar);
        return new zzgeg(zzgsxVar, zzg(zzgsxVar));
    }

    public static final zzgeg zzb(zzgek zzgekVar) {
        zzged zzgedVar = new zzged();
        zzgeb zzgebVar = new zzgeb(zzgekVar, null);
        zzgebVar.zzd();
        zzgebVar.zzc();
        zzgedVar.zza(zzgebVar);
        return zzgedVar.zzb();
    }

    private final Object zzf(zzgky zzgkyVar, Class cls, Class cls2) {
        int i = zzger.zza;
        zzgsx zzgsxVar = this.zza;
        int zzb = zzgsxVar.zzb();
        int i2 = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzgsv zzgsvVar : zzgsxVar.zzh()) {
            if (zzgsvVar.zzk() == 3) {
                if (!zzgsvVar.zzj()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzgsvVar.zza())));
                }
                if (zzgsvVar.zzf() == zzgtp.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzgsvVar.zza())));
                }
                if (zzgsvVar.zzk() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzgsvVar.zza())));
                }
                if (zzgsvVar.zza() == zzb) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z = true;
                }
                z2 &= zzgsvVar.zzb().zzb() == zzgsj.ASYMMETRIC_PUBLIC;
                i2++;
            }
        }
        if (i2 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        zzgnc zzb2 = zzgnf.zzb(cls2);
        zzb2.zzc(this.zzc);
        for (int i3 = 0; i3 < this.zzb.size(); i3++) {
            zzgsv zzd = this.zza.zzd(i3);
            if (zzd.zzk() == 3) {
                zzgee zzgeeVar = (zzgee) this.zzb.get(i3);
                if (zzgeeVar == null) {
                    throw new GeneralSecurityException("Key parsing of key with index " + i3 + " and type_url " + zzd.zzb().zzg() + " failed, unable to get primitive");
                }
                zzgdx zza = zzgeeVar.zza();
                try {
                    Object zzb3 = zzgkyVar.zzb(zza, cls2);
                    if (zzd.zza() == this.zza.zzb()) {
                        zzb2.zzb(zzb3, zza, zzd);
                    } else {
                        zzb2.zza(zzb3, zza, zzd);
                    }
                } catch (GeneralSecurityException e) {
                    throw new GeneralSecurityException(V1.m2499else("Unable to get primitive ", cls2.toString(), " for key of type ", zzd.zzb().zzg(), ", see https://developers.google.com/tink/faq/registration_errors"), e);
                }
            }
        }
        return zzgkyVar.zzc(zzb2.zzd(), cls);
    }

    private static List zzg(zzgsx zzgsxVar) {
        zzgdz zzgdzVar;
        ArrayList arrayList = new ArrayList(zzgsxVar.zza());
        for (zzgsv zzgsvVar : zzgsxVar.zzh()) {
            int zza = zzgsvVar.zza();
            try {
                zzgnh zza2 = zzgnh.zza(zzgsvVar.zzb().zzg(), zzgsvVar.zzb().zzf(), zzgsvVar.zzb().zzb(), zzgsvVar.zzf(), zzgsvVar.zzf() == zzgtp.RAW ? null : Integer.valueOf(zzgsvVar.zza()));
                zzgmk zzc = zzgmk.zzc();
                zzgeo zza3 = zzgeo.zza();
                zzgdx zzglkVar = !zzc.zzj(zza2) ? new zzglk(zza2, zza3) : zzc.zza(zza2, zza3);
                int zzk = zzgsvVar.zzk() - 2;
                if (zzk == 1) {
                    zzgdzVar = zzgdz.zza;
                } else if (zzk == 2) {
                    zzgdzVar = zzgdz.zzb;
                } else {
                    if (zzk != 3) {
                        throw new GeneralSecurityException("Unknown key status");
                    }
                    zzgdzVar = zzgdz.zzc;
                }
                arrayList.add(new zzgee(zzglkVar, zzgdzVar, zza, zza == zzgsxVar.zzb(), null));
            } catch (GeneralSecurityException unused) {
                arrayList.add(null);
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzh(zzgsx zzgsxVar) {
        if (zzgsxVar == null || zzgsxVar.zza() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
    }

    public final String toString() {
        int i = zzger.zza;
        zzgsy zza = zzgtc.zza();
        zzgsx zzgsxVar = this.zza;
        zza.zzb(zzgsxVar.zzb());
        for (zzgsv zzgsvVar : zzgsxVar.zzh()) {
            zzgsz zza2 = zzgta.zza();
            zza2.zzc(zzgsvVar.zzb().zzg());
            zza2.zzd(zzgsvVar.zzk());
            zza2.zzb(zzgsvVar.zzf());
            zza2.zza(zzgsvVar.zza());
            zza.zza((zzgta) zza2.zzbr());
        }
        return ((zzgtc) zza.zzbr()).toString();
    }

    public final zzgsx zzc() {
        return this.zza;
    }

    public final Object zzd(zzgdr zzgdrVar, Class cls) {
        zzgky zzgkyVar = (zzgky) zzgdrVar;
        Class zza = zzgkyVar.zza(cls);
        if (zza != null) {
            return zzf(zzgkyVar, cls, zza);
        }
        throw new GeneralSecurityException("No wrapper found for ".concat(cls.getName()));
    }
}
