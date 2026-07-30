package com.google.android.gms.internal.ads;

import defpackage.Creturn;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzged {
    private final List zza = new ArrayList();
    private final zzglo zzb = zzglo.zza;
    private boolean zzc = false;

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd() {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzgeb) it.next()).zza = false;
        }
    }

    public final zzged zza(zzgeb zzgebVar) {
        if (zzgebVar.zzf != null) {
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }
        if (zzgebVar.zza) {
            zzd();
        }
        zzgebVar.zzf = this;
        this.zza.add(zzgebVar);
        return this;
    }

    public final zzgeg zzb() {
        zzgec zzgecVar;
        int i;
        int i2;
        zzgec zzgecVar2;
        zzgec zzgecVar3;
        if (this.zzc) {
            throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
        }
        char c = 1;
        this.zzc = true;
        List list = this.zza;
        zzgst zzc = zzgsx.zzc();
        ArrayList arrayList = new ArrayList(list.size());
        List list2 = this.zza;
        char c2 = 0;
        int i3 = 0;
        while (i3 < list2.size() - 1) {
            int i4 = i3 + 1;
            zzgec zzgecVar4 = ((zzgeb) list2.get(i3)).zze;
            zzgecVar2 = zzgec.zza;
            if (zzgecVar4 == zzgecVar2) {
                zzgec zzgecVar5 = ((zzgeb) list2.get(i4)).zze;
                zzgecVar3 = zzgec.zza;
                if (zzgecVar5 != zzgecVar3) {
                    throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                }
            }
            i3 = i4;
        }
        HashSet hashSet = new HashSet();
        Integer num = null;
        for (zzgeb zzgebVar : this.zza) {
            zzgdz unused = zzgebVar.zzb;
            if (zzgebVar.zze == null) {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
            zzgec zzgecVar6 = zzgebVar.zze;
            zzgecVar = zzgec.zza;
            int i5 = 4;
            if (zzgecVar6 == zzgecVar) {
                i = 0;
                while (true) {
                    if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                        break;
                    }
                    SecureRandom secureRandom = new SecureRandom();
                    byte[] bArr = new byte[i5];
                    int i6 = 0;
                    while (i6 == 0) {
                        secureRandom.nextBytes(bArr);
                        i6 = ((bArr[c2] & 255) << 24) | ((bArr[c] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                        c2 = 0;
                        i5 = 4;
                    }
                    i = i6;
                }
            } else {
                zzgec unused2 = zzgebVar.zze;
                i = 0;
            }
            Integer valueOf = Integer.valueOf(i);
            if (hashSet.contains(valueOf)) {
                throw new GeneralSecurityException(Creturn.m7981if("Id ", i, " is used twice in the keyset"));
            }
            hashSet.add(valueOf);
            zzgeb.zza(zzgebVar);
            zzgdx zza = zzgma.zzb().zza(zzgebVar.zzd, c != zzgebVar.zzd.zza() ? null : valueOf);
            HashSet hashSet2 = hashSet;
            zzgee zzgeeVar = new zzgee(zza, zzgebVar.zzb, i, zzgebVar.zza, null);
            zzgdz zzgdzVar = zzgebVar.zzb;
            zzgnh zzgnhVar = (zzgnh) zzgmk.zzc().zzd(zza, zzgnh.class, zzgeo.zza());
            Integer zzf = zzgnhVar.zzf();
            if (zzf != null && zzf.intValue() != i) {
                throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
            }
            zzgdz zzgdzVar2 = zzgdz.zza;
            if (zzgdzVar2.equals(zzgdzVar)) {
                i2 = 3;
            } else if (zzgdz.zzb.equals(zzgdzVar)) {
                i2 = 4;
            } else {
                if (!zzgdz.zzc.equals(zzgdzVar)) {
                    throw new IllegalStateException("Unknown key status");
                }
                i2 = 5;
            }
            zzgsu zzc2 = zzgsv.zzc();
            zzgsi zza2 = zzgsl.zza();
            zza2.zzb(zzgnhVar.zzg());
            zza2.zzc(zzgnhVar.zze());
            zza2.zza(zzgnhVar.zzb());
            zzc2.zza(zza2);
            zzc2.zzd(i2);
            zzc2.zzb(i);
            zzc2.zzc(zzgnhVar.zzc());
            zzc.zza((zzgsv) zzc2.zzbr());
            if (zzgebVar.zza) {
                if (num != null) {
                    throw new GeneralSecurityException("Two primaries were set");
                }
                if (zzgebVar.zzb != zzgdzVar2) {
                    throw new GeneralSecurityException("Primary key is not enabled");
                }
                num = valueOf;
            }
            arrayList.add(zzgeeVar);
            c = 1;
            c2 = 0;
            hashSet = hashSet2;
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        zzc.zzb(num.intValue());
        zzgsx zzgsxVar = (zzgsx) zzc.zzbr();
        zzgeg.zzh(zzgsxVar);
        return new zzgeg(zzgsxVar, arrayList, this.zzb, null);
    }
}
