package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzxy extends zzya implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final int zzm;
    private final boolean zzn;

    public zzxy(int i, zzbg zzbgVar, int i2, zzxt zzxtVar, int i3, String str, String str2) {
        super(i, zzbgVar, i2);
        int i4;
        int i5;
        boolean z;
        int i6 = 0;
        this.zzf = zzlp.zzaa(i3, false);
        int i7 = this.zzd.zze;
        int i8 = zzxtVar.zzC;
        this.zzg = 1 == (i7 & 1);
        this.zzh = (i7 & 2) != 0;
        zzgpe zzj = str2 != null ? zzgpe.zzj(str2) : zzxtVar.zzy.isEmpty() ? zzgpe.zzj("") : zzxtVar.zzy;
        int i9 = 0;
        while (true) {
            if (i9 >= zzj.size()) {
                i4 = 0;
                i9 = Integer.MAX_VALUE;
                break;
            }
            zzv zzvVar = this.zzd;
            String str3 = (String) zzj.get(i9);
            boolean z2 = zzxtVar.zzD;
            i4 = zzyi.zzj(zzvVar, str3, false);
            if (i4 > 0) {
                break;
            } else {
                i9++;
            }
        }
        this.zzi = i9;
        this.zzj = i4;
        if (str2 != null) {
            i5 = 1088;
        } else {
            int i10 = zzxtVar.zzA;
            i5 = 0;
        }
        int zzm = zzyi.zzm(this.zzd.zzf, i5);
        this.zzk = zzm;
        zzv zzvVar2 = this.zzd;
        this.zzn = (1088 & zzvVar2.zzf) != 0;
        int zzn = zzyi.zzn(zzvVar2, zzxtVar.zzz);
        this.zzl = zzn;
        int zzj2 = zzyi.zzj(this.zzd, str, zzyi.zzi(str) == null);
        this.zzm = zzj2;
        if (i4 > 0 || ((zzxtVar.zzy.isEmpty() && zzm > 0) || ((zzxtVar.zzy.isEmpty() && zzn != Integer.MAX_VALUE) || this.zzg || (this.zzh && zzj2 > 0)))) {
            z = true;
        } else {
            boolean z3 = zzxtVar.zzx;
            z = false;
        }
        if (zzlp.zzaa(i3, zzxtVar.zzV) && z) {
            i6 = 1;
        }
        this.zze = i6;
    }

    @Override // com.google.android.gms.internal.ads.zzya
    public final int zza() {
        return this.zze;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxy zzxyVar) {
        zzgot zza = zzgot.zzg().zzd(this.zzf, zzxyVar.zzf).zza(Integer.valueOf(this.zzi), Integer.valueOf(zzxyVar.zzi), zzgqy.zzb().zza());
        int i = this.zzj;
        zzgot zzb = zza.zzb(i, zzxyVar.zzj);
        int i2 = this.zzk;
        zzgot zzb2 = zzb.zzb(i2, zzxyVar.zzk).zza(Integer.valueOf(this.zzl), Integer.valueOf(zzxyVar.zzl), zzgqy.zzb().zza()).zzd(this.zzg, zzxyVar.zzg).zza(Boolean.valueOf(this.zzh), Boolean.valueOf(zzxyVar.zzh), i == 0 ? zzgqy.zzb() : zzgqy.zzb().zza()).zzb(this.zzm, zzxyVar.zzm);
        if (i2 == 0) {
            zzb2 = zzb2.zzc(this.zzn, zzxyVar.zzn);
        }
        return zzb2.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzya
    public final /* bridge */ /* synthetic */ boolean zzc(zzya zzyaVar) {
        return false;
    }
}
