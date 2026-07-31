package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzakl implements zzaem {
    private final zzaem zza;
    private final zzakg zzb;
    private zzaki zzg;
    private zzv zzh;
    private boolean zzi;
    private int zzd = 0;
    private int zze = 0;
    private byte[] zzf = zzep.zzb;
    private final zzeg zzc = new zzeg();

    public zzakl(zzaem zzaemVar, zzakg zzakgVar) {
        this.zza = zzaemVar;
        this.zzb = zzakgVar;
    }

    private final void zzc(int i) {
        int length = this.zzf.length;
        int i2 = this.zze;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.zzd;
        int max = Math.max(i3 + i3, i + i3);
        byte[] bArr = this.zzf;
        byte[] bArr2 = max <= bArr.length ? bArr : new byte[max];
        System.arraycopy(bArr, this.zzd, bArr2, 0, i3);
        this.zzd = 0;
        this.zze = i3;
        this.zzf = bArr2;
    }

    public final void zza(boolean z) {
        this.zzi = true;
    }

    final /* synthetic */ void zzb(long j, int i, zzaka zzakaVar) {
        this.zzh.getClass();
        zzgpe zzgpeVar = zzakaVar.zza;
        long j2 = zzakaVar.zzc;
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(zzgpeVar.size());
        Iterator<E> it = zzgpeVar.iterator();
        while (it.hasNext()) {
            arrayList.add(((zzcm) it.next()).zzb());
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayList);
        bundle.putLong("d", j2);
        Parcel obtain = Parcel.obtain();
        obtain.writeBundle(bundle);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        zzeg zzegVar = this.zzc;
        int length = marshall.length;
        zzegVar.zzb(marshall, length);
        zzaem zzaemVar = this.zza;
        zzaemVar.zzz(zzegVar, length);
        long j3 = zzakaVar.zzb;
        if (j3 == C.TIME_UNSET) {
            zzgmd.zzh(this.zzh.zzt == Long.MAX_VALUE);
        } else {
            long j4 = this.zzh.zzt;
            j = j4 == Long.MAX_VALUE ? j + j3 : j3 + j4;
        }
        zzaemVar.zzx(j, i | 1, length, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zzu(zzv zzvVar) {
        String str = zzvVar.zzo;
        str.getClass();
        zzgmd.zza(zzas.zzg(str) == 3);
        if (!zzvVar.equals(this.zzh)) {
            this.zzh = zzvVar;
            zzakg zzakgVar = this.zzb;
            this.zzg = zzakgVar.zza(zzvVar) ? zzakgVar.zzc(zzvVar) : null;
        }
        if (this.zzg == null) {
            this.zza.zzu(zzvVar);
            return;
        }
        zzaem zzaemVar = this.zza;
        zzt zza = zzvVar.zza();
        zza.zzm(MimeTypes.APPLICATION_MEDIA3_CUES);
        zza.zzj(str);
        zza.zzr(Long.MAX_VALUE);
        zza.zzK(this.zzb.zzb(zzvVar));
        zzaemVar.zzu(zza.zzM());
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final int zzv(zzj zzjVar, int i, boolean z, int i2) throws IOException {
        if (this.zzg == null) {
            return this.zza.zzv(zzjVar, i, z, 0);
        }
        zzc(i);
        int zza = zzjVar.zza(this.zzf, this.zze, i);
        if (zza != -1) {
            this.zze += zza;
            return zza;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zzw(zzeg zzegVar, int i, int i2) {
        if (this.zzg == null) {
            this.zza.zzw(zzegVar, i, i2);
            return;
        }
        zzc(i);
        zzegVar.zzm(this.zzf, this.zze, i);
        this.zze += i;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zzx(final long j, final int i, int i2, int i3, zzael zzaelVar) {
        if (this.zzg == null) {
            this.zza.zzx(j, i, i2, i3, zzaelVar);
            return;
        }
        zzgmd.zzb(zzaelVar == null, "DRM on subtitles is not supported");
        int i4 = (this.zze - i3) - i2;
        try {
            this.zzg.zza(this.zzf, i4, i2, zzakh.zza(), new zzdg() { // from class: com.google.android.gms.internal.ads.zzakk
                @Override // com.google.android.gms.internal.ads.zzdg
                public final /* synthetic */ void zza(Object obj) {
                    zzakl.this.zzb(j, i, (zzaka) obj);
                }
            });
        } catch (RuntimeException e) {
            if (!this.zzi) {
                throw e;
            }
            zzdt.zzd("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e);
        }
        int i5 = i4 + i2;
        this.zzd = i5;
        if (i5 == this.zze) {
            this.zzd = 0;
            this.zze = 0;
        }
    }
}
