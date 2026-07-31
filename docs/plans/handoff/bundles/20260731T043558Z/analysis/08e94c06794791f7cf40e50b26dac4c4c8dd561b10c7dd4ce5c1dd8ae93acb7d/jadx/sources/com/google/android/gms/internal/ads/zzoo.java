package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.util.SparseArray;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import java.io.IOException;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzoo implements zzmi {
    private final zzdc zza;
    private final zzbd zzb;
    private final zzbe zzc;
    private final zzon zzd;
    private final SparseArray zze;
    private zzds zzf;
    private zzbb zzg;
    private zzdm zzh;
    private boolean zzi;

    private final zzmj zzae() {
        return zzad(this.zzd.zzb());
    }

    private final zzmj zzaf() {
        return zzad(this.zzd.zzc());
    }

    private final zzmj zzag(int i, zzuu zzuuVar) {
        zzbb zzbbVar = this.zzg;
        zzbbVar.getClass();
        if (zzuuVar != null) {
            return this.zzd.zze(zzuuVar) != null ? zzad(zzuuVar) : zzaa(zzbf.zza, i, zzuuVar);
        }
        zzbf zzq = zzbbVar.zzq();
        if (i >= zzq.zza()) {
            zzq = zzbf.zza;
        }
        return zzaa(zzq, i, null);
    }

    private final zzmj zzah(zzau zzauVar) {
        zzuu zzuuVar;
        return (!(zzauVar instanceof zzib) || (zzuuVar = ((zzib) zzauVar).zzh) == null) ? zzZ() : zzad(zzuuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzA() {
        if (this.zzi) {
            return;
        }
        final zzmj zzZ = zzZ();
        this.zzi = true;
        zzY(zzZ, -1, new zzdn(zzZ) { // from class: com.google.android.gms.internal.ads.zzni
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzB(final int i, final int i2, final boolean z) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1033, new zzdn(zzaf, i, i2, z) { // from class: com.google.android.gms.internal.ads.zznt
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzC(final zzhs zzhsVar) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1007, new zzdn(zzaf, zzhsVar) { // from class: com.google.android.gms.internal.ads.zzoe
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzD(final String str, final long j, final long j2) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1008, new zzdn(zzaf, str, j2, j) { // from class: com.google.android.gms.internal.ads.zzoh
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzE(final zzv zzvVar, final zzht zzhtVar) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1009, new zzdn() { // from class: com.google.android.gms.internal.ads.zzoi
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzk(zzmj.this, zzvVar, zzhtVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzF(final long j) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1010, new zzdn(zzaf, j) { // from class: com.google.android.gms.internal.ads.zzoj
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzG(final int i, final long j, final long j2) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1011, new zzdn(zzaf, i, j, j2) { // from class: com.google.android.gms.internal.ads.zzok
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzH(final String str) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1012, new zzdn(zzaf, str) { // from class: com.google.android.gms.internal.ads.zzol
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzI(final zzhs zzhsVar) {
        final zzmj zzae = zzae();
        zzY(zzae, 1013, new zzdn(zzae, zzhsVar) { // from class: com.google.android.gms.internal.ads.zzmn
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzJ(final Exception exc) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1014, new zzdn(zzaf, exc) { // from class: com.google.android.gms.internal.ads.zzmo
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzK(final Exception exc) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, AnalyticsListener.EVENT_AUDIO_CODEC_ERROR, new zzdn(zzaf, exc) { // from class: com.google.android.gms.internal.ads.zzmp
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzL(final zzqb zzqbVar) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, AnalyticsListener.EVENT_AUDIO_TRACK_INITIALIZED, new zzdn(zzaf, zzqbVar) { // from class: com.google.android.gms.internal.ads.zzmq
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzM(final zzqb zzqbVar) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, AnalyticsListener.EVENT_AUDIO_TRACK_RELEASED, new zzdn(zzaf, zzqbVar) { // from class: com.google.android.gms.internal.ads.zzmr
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzN(final zzhs zzhsVar) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1015, new zzdn(zzaf, zzhsVar) { // from class: com.google.android.gms.internal.ads.zzmt
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzO(final String str, final long j, final long j2) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1016, new zzdn(zzaf, str, j2, j) { // from class: com.google.android.gms.internal.ads.zzmu
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzP(final zzv zzvVar, final zzht zzhtVar) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1017, new zzdn() { // from class: com.google.android.gms.internal.ads.zzmv
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzl(zzmj.this, zzvVar, zzhtVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzQ(final int i, final long j) {
        final zzmj zzae = zzae();
        zzY(zzae, 1018, new zzdn() { // from class: com.google.android.gms.internal.ads.zzmw
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzm(zzmj.this, i, j);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzR(final String str) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 1019, new zzdn(zzaf, str) { // from class: com.google.android.gms.internal.ads.zzmy
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzS(final zzhs zzhsVar) {
        final zzmj zzae = zzae();
        zzY(zzae, 1020, new zzdn() { // from class: com.google.android.gms.internal.ads.zzmz
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzdm(zzmj.this, zzhsVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzT(final Object obj, final long j) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 26, new zzdn() { // from class: com.google.android.gms.internal.ads.zzna
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj2) {
                ((zzml) obj2).zzo(zzmj.this, obj, j);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzU(final long j, final int i) {
        final zzmj zzae = zzae();
        zzY(zzae, 1021, new zzdn(zzae, j, i) { // from class: com.google.android.gms.internal.ads.zznb
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzV(final Exception exc) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, new zzdn(zzaf, exc) { // from class: com.google.android.gms.internal.ads.zznc
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzW(final int i) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 1034, new zzdn(zzZ, i) { // from class: com.google.android.gms.internal.ads.zznd
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzyz
    public final void zzX(final int i, final long j, final long j2) {
        final zzmj zzad = zzad(this.zzd.zzd());
        zzY(zzad, 1006, new zzdn() { // from class: com.google.android.gms.internal.ads.zzof
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzdl(zzmj.this, i, j, j2);
            }
        });
    }

    protected final void zzY(zzmj zzmjVar, int i, zzdn zzdnVar) {
        this.zze.put(i, zzmjVar);
        zzds zzdsVar = this.zzf;
        zzdsVar.zzd(i, zzdnVar);
        zzdsVar.zze();
    }

    protected final zzmj zzZ() {
        return zzad(this.zzd.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zza(zzbb zzbbVar, zzay zzayVar) {
    }

    @RequiresNonNull({"player"})
    protected final zzmj zzaa(zzbf zzbfVar, int i, zzuu zzuuVar) {
        zzuu zzuuVar2 = true == zzbfVar.zzg() ? null : zzuuVar;
        long zzb = this.zza.zzb();
        boolean z = zzbfVar.equals(this.zzg.zzq()) && i == this.zzg.zzs();
        long j = 0;
        if (zzuuVar2 == null || !zzuuVar2.zzb()) {
            if (z) {
                j = this.zzg.zzA();
            } else if (!zzbfVar.zzg()) {
                long j2 = zzbfVar.zzb(i, this.zzc, 0L).zzl;
                j = zzep.zzp(0L);
            }
        } else if (z && this.zzg.zzy() == zzuuVar2.zzb && this.zzg.zzz() == zzuuVar2.zzc) {
            j = this.zzg.zzu();
        }
        return new zzmj(zzb, zzbfVar, i, zzuuVar2, j, this.zzg.zzq(), this.zzg.zzs(), this.zzd.zza(), this.zzg.zzu(), this.zzg.zzw());
    }

    final /* synthetic */ void zzab(zzbb zzbbVar, zzml zzmlVar, zzs zzsVar) {
        zzmlVar.zzdn(zzbbVar, new zzmk(zzsVar, this.zze));
    }

    final /* synthetic */ void zzac() {
        final zzmj zzZ = zzZ();
        zzY(zzZ, AnalyticsListener.EVENT_PLAYER_RELEASED, new zzdn(zzZ) { // from class: com.google.android.gms.internal.ads.zzog
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
        this.zzf.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzc(final zzak zzakVar, final int i) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 1, new zzdn(zzZ, zzakVar, i) { // from class: com.google.android.gms.internal.ads.zznm
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzcT(int i, zzuu zzuuVar, final zzul zzulVar, final zzuq zzuqVar, final int i2) {
        final zzmj zzag = zzag(i, zzuuVar);
        zzY(zzag, 1000, new zzdn(zzag, zzulVar, zzuqVar, i2) { // from class: com.google.android.gms.internal.ads.zznf
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzcU(int i, zzuu zzuuVar, final zzul zzulVar, final zzuq zzuqVar) {
        final zzmj zzag = zzag(i, zzuuVar);
        zzY(zzag, 1001, new zzdn(zzag, zzulVar, zzuqVar) { // from class: com.google.android.gms.internal.ads.zzng
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzcV(int i, zzuu zzuuVar, final zzul zzulVar, final zzuq zzuqVar) {
        final zzmj zzag = zzag(i, zzuuVar);
        zzY(zzag, 1002, new zzdn(zzag, zzulVar, zzuqVar) { // from class: com.google.android.gms.internal.ads.zznh
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzcW(int i, zzuu zzuuVar, final zzul zzulVar, final zzuq zzuqVar, final IOException iOException, final boolean z) {
        final zzmj zzag = zzag(i, zzuuVar);
        zzY(zzag, 1003, new zzdn() { // from class: com.google.android.gms.internal.ads.zznj
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzh(zzmj.this, zzulVar, zzuqVar, iOException, z);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void zzcX(int i, zzuu zzuuVar, final zzuq zzuqVar) {
        final zzmj zzag = zzag(i, zzuuVar);
        zzY(zzag, 1004, new zzdn() { // from class: com.google.android.gms.internal.ads.zznk
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzdk(zzmj.this, zzuqVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzd(final zzbn zzbnVar) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 2, new zzdn(zzZ, zzbnVar) { // from class: com.google.android.gms.internal.ads.zznn
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zze(final zzan zzanVar) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 14, new zzdn(zzZ, zzanVar) { // from class: com.google.android.gms.internal.ads.zzoa
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzf(final boolean z) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 3, new zzdn(zzZ, z) { // from class: com.google.android.gms.internal.ads.zzno
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzg(final zzax zzaxVar) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 13, new zzdn(zzZ, zzaxVar) { // from class: com.google.android.gms.internal.ads.zznp
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzh(final boolean z, final int i) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, -1, new zzdn(zzZ, z, i) { // from class: com.google.android.gms.internal.ads.zznq
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzi(final int i) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 4, new zzdn() { // from class: com.google.android.gms.internal.ads.zznr
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zze(zzmj.this, i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzj(final boolean z, final int i) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 5, new zzdn(zzZ, z, i) { // from class: com.google.android.gms.internal.ads.zzns
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzk(final int i) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 6, new zzdn(zzZ, i) { // from class: com.google.android.gms.internal.ads.zznu
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzl(final boolean z) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 7, new zzdn(zzZ, z) { // from class: com.google.android.gms.internal.ads.zznv
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzm(final zzau zzauVar) {
        final zzmj zzah = zzah(zzauVar);
        zzY(zzah, 10, new zzdn() { // from class: com.google.android.gms.internal.ads.zznw
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzg(zzmj.this, zzauVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzn(final zzau zzauVar) {
        final zzmj zzah = zzah(zzauVar);
        zzY(zzah, 10, new zzdn(zzah, zzauVar) { // from class: com.google.android.gms.internal.ads.zznx
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzp(final zzav zzavVar) {
        final zzmj zzZ = zzZ();
        zzY(zzZ, 12, new zzdn(zzZ, zzavVar) { // from class: com.google.android.gms.internal.ads.zznz
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzq(final int i) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 21, new zzdn(zzaf, i) { // from class: com.google.android.gms.internal.ads.zzoc
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzr(final float f) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 22, new zzdn(zzaf, f) { // from class: com.google.android.gms.internal.ads.zzms
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzs(final boolean z) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 23, new zzdn(zzaf, z) { // from class: com.google.android.gms.internal.ads.zzob
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzt(final zzbv zzbvVar) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 25, new zzdn() { // from class: com.google.android.gms.internal.ads.zzod
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                zzmj zzmjVar = zzmj.this;
                zzbv zzbvVar2 = zzbvVar;
                ((zzml) obj).zzp(zzmjVar, zzbvVar2);
                int i = zzbvVar2.zzb;
                int i2 = zzbvVar2.zzc;
                float f = zzbvVar2.zzd;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzu(final int i, final int i2) {
        final zzmj zzaf = zzaf();
        zzY(zzaf, 24, new zzdn(zzaf, i, i2) { // from class: com.google.android.gms.internal.ads.zzne
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzv(zzml zzmlVar) {
        this.zzf.zzb(zzmlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzw(zzml zzmlVar) {
        this.zzf.zzc(zzmlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzx(final zzbb zzbbVar, Looper looper) {
        boolean z = true;
        if (this.zzg != null && !this.zzd.zzi().isEmpty()) {
            z = false;
        }
        zzgmd.zzh(z);
        zzbbVar.getClass();
        this.zzg = zzbbVar;
        this.zzh = this.zza.zzd(looper, null);
        this.zzf = this.zzf.zza(looper, new zzdo() { // from class: com.google.android.gms.internal.ads.zzmm
            @Override // com.google.android.gms.internal.ads.zzdo
            public final /* synthetic */ void zza(Object obj, zzs zzsVar) {
                zzoo.this.zzab(zzbbVar, (zzml) obj, zzsVar);
            }
        });
    }

    private final zzmj zzad(zzuu zzuuVar) {
        this.zzg.getClass();
        zzbf zze = zzuuVar == null ? null : this.zzd.zze(zzuuVar);
        if (zzuuVar != null && zze != null) {
            return zzaa(zze, zze.zzo(zzuuVar.zza, this.zzb).zzc, zzuuVar);
        }
        int zzs = this.zzg.zzs();
        zzbf zzq = this.zzg.zzq();
        if (zzs >= zzq.zza()) {
            zzq = zzbf.zza;
        }
        return zzaa(zzq, zzs, null);
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzy() {
        zzdm zzdmVar = this.zzh;
        zzdmVar.getClass();
        zzdmVar.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzmx
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzoo.this.zzac();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzz(List list, zzuu zzuuVar) {
        zzbb zzbbVar = this.zzg;
        zzbbVar.getClass();
        this.zzd.zzh(list, zzuuVar, zzbbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzb(zzbf zzbfVar, final int i) {
        zzbb zzbbVar = this.zzg;
        zzbbVar.getClass();
        this.zzd.zzg(zzbbVar);
        final zzmj zzZ = zzZ();
        zzY(zzZ, 0, new zzdn(zzZ, i) { // from class: com.google.android.gms.internal.ads.zznl
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zzo(final zzba zzbaVar, final zzba zzbaVar2, final int i) {
        if (i == 1) {
            this.zzi = false;
            i = 1;
        }
        zzon zzonVar = this.zzd;
        zzbb zzbbVar = this.zzg;
        zzbbVar.getClass();
        zzonVar.zzf(zzbbVar);
        final zzmj zzZ = zzZ();
        zzY(zzZ, 11, new zzdn() { // from class: com.google.android.gms.internal.ads.zzny
            @Override // com.google.android.gms.internal.ads.zzdn
            public final /* synthetic */ void zza(Object obj) {
                ((zzml) obj).zzdj(zzmj.this, zzbaVar, zzbaVar2, i);
            }
        });
    }

    public zzoo(zzdc zzdcVar) {
        zzdcVar.getClass();
        this.zza = zzdcVar;
        this.zzf = new zzds(zzep.zze(), zzdcVar, zzom.zza);
        zzbd zzbdVar = new zzbd();
        this.zzb = zzbdVar;
        this.zzc = new zzbe();
        this.zzd = new zzon(zzbdVar);
        this.zze = new SparseArray();
    }
}
