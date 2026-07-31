package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgvz {
    private final List zza = new ArrayList();
    private final zzhel zzb = zzhel.zza;
    private boolean zzc = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final void zzc() {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzgvx) it.next()).zzd(false);
        }
    }

    public final zzgvz zza(zzgvx zzgvxVar) {
        if (zzgvxVar.zzh() != null) {
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }
        if (zzgvxVar.zzc()) {
            zzc();
        }
        zzgvxVar.zzi(this);
        this.zza.add(zzgvxVar);
        return this;
    }

    public final zzgwe zzb() throws GeneralSecurityException {
        zzgvy zzgvyVar;
        int i;
        zzgwa zzgwaVar;
        zzhlf zzq;
        zzgvy zzgvyVar2;
        zzgvy zzgvyVar3;
        if (this.zzc) {
            throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
        }
        char c = 1;
        this.zzc = true;
        List<zzgvx> list = this.zza;
        zzhld zzh = zzhlg.zzh();
        ArrayList arrayList = new ArrayList(list.size());
        int i2 = 0;
        int i3 = 0;
        while (i3 < list.size() - 1) {
            int i4 = i3 + 1;
            zzgvy zzg = ((zzgvx) list.get(i3)).zzg();
            zzgvyVar2 = zzgvy.zza;
            if (zzg == zzgvyVar2) {
                zzgvy zzg2 = ((zzgvx) list.get(i4)).zzg();
                zzgvyVar3 = zzgvy.zza;
                if (zzg2 != zzgvyVar3) {
                    throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                }
            }
            i3 = i4;
        }
        HashSet hashSet = new HashSet();
        byte[] bArr = null;
        Integer num = null;
        for (zzgvx zzgvxVar : list) {
            zzgvxVar.zze();
            if (zzgvxVar.zzg() == null) {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
            zzgvy zzg3 = zzgvxVar.zzg();
            zzgvyVar = zzgvy.zza;
            if (zzg3 == zzgvyVar) {
                i = i2;
                while (true) {
                    if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                        break;
                    }
                    int i5 = zzhgi.zza;
                    i = i2;
                    while (i == 0) {
                        byte[] zza = zzhfz.zza(4);
                        i = (zza[3] & 255) | ((zza[i2] & 255) << 24) | ((zza[c] & 255) << 16) | ((zza[2] & 255) << 8);
                    }
                }
            } else {
                zzgvxVar.zzg();
                i = i2;
            }
            Integer valueOf = Integer.valueOf(i);
            if (hashSet.contains(valueOf)) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 31);
                sb.append("Id ");
                sb.append(i);
                sb.append(" is used twice in the keyset");
                throw new GeneralSecurityException(sb.toString());
            }
            hashSet.add(valueOf);
            zzgvt zzc = zzhes.zza().zzc(zzgvxVar.zzf(), c != zzgvxVar.zzf().zza() ? null : valueOf);
            int zzj = zzgwe.zzj(zzgvxVar.zze());
            boolean zzc2 = zzgvxVar.zzc();
            zzgwaVar = zzgwc.zza;
            zzgwc zzgwcVar = new zzgwc(zzc, zzj, i, zzc2, false, zzgwaVar, null);
            zzq = zzgwe.zzq(zzc, zzgwe.zzj(zzgvxVar.zze()), i);
            zzh.zzb(zzq);
            if (zzgvxVar.zzc()) {
                if (num != null) {
                    throw new GeneralSecurityException("Two primaries were set");
                }
                if (zzgvxVar.zze() != zzgvv.zza) {
                    throw new GeneralSecurityException("Primary key is not enabled");
                }
                num = valueOf;
            }
            arrayList.add(zzgwcVar);
            c = 1;
            i2 = 0;
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        zzh.zza(num.intValue());
        zzhlg zzhlgVar = (zzhlg) zzh.zzbu();
        zzgwe.zzn(zzhlgVar);
        return zzgwe.zzh(new zzgwe(zzhlgVar, arrayList, this.zzb, bArr));
    }
}
