package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgwe implements zzhed {
    private final List zza;
    private final zzhel zzb;

    @Nullable
    private final zzgwe zzc;

    private zzgwe(zzhlg zzhlgVar, List list, zzhel zzhelVar) throws GeneralSecurityException {
        this.zza = list;
        this.zzb = zzhelVar;
        if (zzhcw.zza.zza()) {
            HashSet hashSet = new HashSet();
            for (zzhlf zzhlfVar : zzhlgVar.zzb()) {
                if (hashSet.contains(Integer.valueOf(zzhlfVar.zzc()))) {
                    int zzc = zzhlfVar.zzc();
                    StringBuilder sb = new StringBuilder(String.valueOf(zzc).length() + 121);
                    sb.append("KeyID ");
                    sb.append(zzc);
                    sb.append(" is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
                    throw new GeneralSecurityException(sb.toString());
                }
                hashSet.add(Integer.valueOf(zzhlfVar.zzc()));
            }
            if (!hashSet.contains(Integer.valueOf(zzhlgVar.zza()))) {
                throw new GeneralSecurityException("Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
            }
        }
        this.zzc = null;
    }

    /* synthetic */ zzgwe(zzhlg zzhlgVar, List list, zzhel zzhelVar, byte[] bArr) {
        this(zzhlgVar, list, zzhelVar);
    }

    private zzgwe(List list, zzhel zzhelVar, zzgwe zzgweVar) {
        this.zza = list;
        this.zzb = zzhelVar;
        this.zzc = zzgweVar;
    }

    static final zzgwe zza(zzhlg zzhlgVar) throws GeneralSecurityException {
        zzn(zzhlgVar);
        return new zzgwe(zzhlgVar, zzl(zzhlgVar), zzhel.zza);
    }

    public static final zzgwe zzf(zzgwj zzgwjVar) throws GeneralSecurityException {
        zzgvz zzgvzVar = new zzgvz();
        zzgvx zzgvxVar = new zzgvx(zzgwjVar, null);
        zzgvxVar.zzb();
        zzgvxVar.zza();
        zzgvzVar.zza(zzgvxVar);
        return zzgvzVar.zzb();
    }

    static /* synthetic */ zzgwe zzh(final zzgwe zzgweVar) {
        final zzhel zzhelVar = zzgweVar.zzb;
        if (zzhelVar.zza()) {
            return zzgweVar;
        }
        zzgwa zzgwaVar = new zzgwa() { // from class: com.google.android.gms.internal.ads.zzgwd
            @Override // com.google.android.gms.internal.ads.zzgwa
            public final /* synthetic */ void zza(zzgwc zzgwcVar) {
                zzhew.zza().zzb().zza(zzgwe.this, zzhelVar, "keyset_handle", "get_key");
            }
        };
        List<zzgwc> list = zzgweVar.zza;
        ArrayList arrayList = new ArrayList(list.size());
        for (zzgwc zzgwcVar : list) {
            arrayList.add(new zzgwc(zzgwcVar.zzf(), zzgwcVar.zzj(), zzgwcVar.zzg(), zzgwcVar.zzh(), zzgwcVar.zzi(), zzgwaVar, null));
        }
        return new zzgwe(arrayList, zzhelVar, zzgweVar);
    }

    static /* synthetic */ int zzj(zzgvv zzgvvVar) {
        if (zzgvv.zza.equals(zzgvvVar)) {
            return 3;
        }
        if (zzgvv.zzb.equals(zzgvvVar)) {
            return 4;
        }
        if (zzgvv.zzc.equals(zzgvvVar)) {
            return 5;
        }
        throw new IllegalStateException("Unknown key status");
    }

    private static List zzl(zzhlg zzhlgVar) throws GeneralSecurityException {
        zzgvt zzheiVar;
        boolean z;
        zzgwa zzgwaVar;
        ArrayList arrayList = new ArrayList(zzhlgVar.zzc());
        for (zzhlf zzhlfVar : zzhlgVar.zzb()) {
            int zzc = zzhlfVar.zzc();
            try {
                zzhfw zzo = zzo(zzhlfVar);
                zzhfb zza = zzhfb.zza();
                zzgwn zza2 = zzgwn.zza();
                zzgvt zzheiVar2 = !zza.zzf(zzo) ? new zzhei(zzo, zza2) : zza.zzg(zzo, zza2);
                z = false;
                zzheiVar = zzheiVar2;
            } catch (GeneralSecurityException e) {
                if (zzhcw.zza.zza()) {
                    throw e;
                }
                zzheiVar = new zzhei(zzo(zzhlfVar), zzgwn.zza());
                z = true;
            }
            if (zzhcw.zza.zza() && !zzp(zzhlfVar.zzk())) {
                throw new GeneralSecurityException("Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets.");
            }
            int zzk = zzhlfVar.zzk();
            boolean z2 = zzc == zzhlgVar.zza();
            zzgwaVar = zzgwc.zza;
            arrayList.add(new zzgwc(zzheiVar, zzk, zzc, z2, z, zzgwaVar, null));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private final zzgwe zzm() {
        zzgwe zzgweVar = this.zzc;
        return zzgweVar == null ? this : zzgweVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzn(zzhlg zzhlgVar) throws GeneralSecurityException {
        if (zzhlgVar == null || zzhlgVar.zzc() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
    }

    private static zzhfw zzo(zzhlf zzhlfVar) throws GeneralSecurityException {
        return zzhfw.zza(zzhlfVar.zzb().zza(), zzhlfVar.zzb().zzb(), zzhlfVar.zzb().zzc(), zzhlfVar.zzd(), zzhlfVar.zzd() == zzhlt.RAW ? null : Integer.valueOf(zzhlfVar.zzc()));
    }

    private static boolean zzp(int i) {
        int i2 = i - 2;
        return i2 == 1 || i2 == 2 || i2 == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzhlf zzq(zzgvt zzgvtVar, int i, int i2) throws GeneralSecurityException {
        zzhfw zzhfwVar = (zzhfw) zzhfb.zza().zzh(zzgvtVar, zzhfw.class, zzgwn.zza());
        Integer zze = zzhfwVar.zze();
        if (zze != null && zze.intValue() != i2) {
            throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
        }
        zzhle zze2 = zzhlf.zze();
        zzhkv zzd = zzhkx.zzd();
        zzd.zza(zzhfwVar.zzg());
        zzd.zzb(zzhfwVar.zzb());
        zzd.zzc(zzhfwVar.zzc());
        zze2.zzb(zzd);
        zze2.zze(i);
        zze2.zzc(i2);
        zze2.zzd(zzhfwVar.zzd());
        return (zzhlf) zze2.zzbu();
    }

    public final String toString() {
        zzhlg zzb = zzb();
        int i = zzgwq.zza;
        zzhlh zza = zzhlk.zza();
        zza.zza(zzb.zza());
        for (zzhlf zzhlfVar : zzb.zzb()) {
            zzhli zza2 = zzhlj.zza();
            zza2.zza(zzhlfVar.zzb().zza());
            zza2.zzd(zzhlfVar.zzk());
            zza2.zzc(zzhlfVar.zzd());
            zza2.zzb(zzhlfVar.zzc());
            zza.zzb((zzhlj) zza2.zzbu());
        }
        return ((zzhlk) zza.zzbu()).toString();
    }

    final zzhlg zzb() {
        try {
            zzhld zzh = zzhlg.zzh();
            for (zzgwc zzgwcVar : this.zza) {
                zzh.zzb(zzq(zzgwcVar.zza(), zzgwcVar.zzj(), zzgwcVar.zzc()));
                if (zzgwcVar.zzd()) {
                    zzh.zza(zzgwcVar.zzc());
                }
            }
            return (zzhlg) zzh.zzbu();
        } catch (GeneralSecurityException e) {
            throw new zzhgh(e);
        }
    }

    public final zzgwc zzc() {
        for (zzgwc zzgwcVar : this.zza) {
            if (zzgwcVar != null && zzgwcVar.zzd()) {
                if (zzgwcVar.zzb() == zzgvv.zza) {
                    return zzgwcVar;
                }
                throw new IllegalStateException("Keyset has primary which isn't enabled");
            }
        }
        throw new IllegalStateException("Keyset has no valid primary");
    }

    @Override // com.google.android.gms.internal.ads.zzhed
    public final int zzd() {
        return this.zza.size();
    }

    public final zzgwc zze(int i) {
        if (i < 0 || i >= zzd()) {
            int zzd = zzd();
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 34 + String.valueOf(zzd).length());
            sb.append("Invalid index ");
            sb.append(i);
            sb.append(" for keyset of size ");
            sb.append(zzd);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        List list = this.zza;
        zzgwc zzgwcVar = (zzgwc) list.get(i);
        if (!zzp(zzgwcVar.zzj())) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 42);
            sb2.append("Keyset-Entry at position ");
            sb2.append(i);
            sb2.append(" has wrong status");
            throw new IllegalStateException(sb2.toString());
        }
        if (!zzgwcVar.zzi()) {
            return (zzgwc) list.get(i);
        }
        StringBuilder sb3 = new StringBuilder(String.valueOf(i).length() + 48);
        sb3.append("Keyset-Entry at position ");
        sb3.append(i);
        sb3.append(" didn't parse correctly");
        throw new IllegalStateException(sb3.toString());
    }

    public final Object zzg(zzgvq zzgvqVar, Class cls) throws GeneralSecurityException {
        if (!(zzgvqVar instanceof zzhds)) {
            throw new GeneralSecurityException("Currently only subclasses of InternalConfiguration are accepted");
        }
        zzhds zzhdsVar = (zzhds) zzgvqVar;
        zzhlg zzb = zzm().zzb();
        int i = zzgwq.zza;
        int zza = zzb.zza();
        boolean z = true;
        int i2 = 0;
        boolean z2 = false;
        for (zzhlf zzhlfVar : zzb.zzb()) {
            if (zzhlfVar.zzk() == 3) {
                if (!zzhlfVar.zza()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzhlfVar.zzc())));
                }
                if (zzhlfVar.zzd() == zzhlt.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzhlfVar.zzc())));
                }
                if (zzhlfVar.zzk() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzhlfVar.zzc())));
                }
                if (zzhlfVar.zzc() == zza) {
                    if (z2) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z2 = true;
                }
                z &= zzhlfVar.zzb().zzc() == zzhkw.ASYMMETRIC_PUBLIC;
                i2++;
            }
        }
        if (i2 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z2 && !z) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        for (int i3 = 0; i3 < zzd(); i3++) {
            List list = this.zza;
            if (((zzgwc) list.get(i3)).zzi() || !zzp(((zzgwc) list.get(i3)).zzj())) {
                String zza2 = zzb.zzd(i3).zzb().zza();
                StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 44 + String.valueOf(zza2).length() + 32);
                sb.append("Key parsing of key with index ");
                sb.append(i3);
                sb.append(" and type_url ");
                sb.append(zza2);
                sb.append(" failed, unable to get primitive");
                throw new GeneralSecurityException(sb.toString());
            }
        }
        return zzhdsVar.zza(zzm(), this.zzb, cls);
    }
}
