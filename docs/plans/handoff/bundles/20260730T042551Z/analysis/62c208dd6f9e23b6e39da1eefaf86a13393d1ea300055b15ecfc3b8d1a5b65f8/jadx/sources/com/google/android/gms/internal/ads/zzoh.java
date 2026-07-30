package com.google.android.gms.internal.ads;

import android.media.AudioFormat;
import android.media.AudioTrack;
import j$.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
final class zzoh {
    public static final zzoh zza;
    public final int zzb;
    public final int zzc;
    private final zzfxs zzd;

    static {
        zzoh zzohVar;
        if (zzei.zza >= 33) {
            zzfxr zzfxrVar = new zzfxr();
            for (int i = 1; i <= 10; i++) {
                zzfxrVar.zzf(Integer.valueOf(zzei.zzi(i)));
            }
            zzohVar = new zzoh(2, zzfxrVar.zzi());
        } else {
            zzohVar = new zzoh(2, 10);
        }
        zza = zzohVar;
    }

    public zzoh(int i, int i2) {
        this.zzb = i;
        this.zzc = i2;
        this.zzd = null;
    }

    public zzoh(int i, Set set) {
        this.zzb = i;
        zzfxs zzl = zzfxs.zzl(set);
        this.zzd = zzl;
        zzfzt it = zzl.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 = Math.max(i2, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.zzc = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzoh)) {
            return false;
        }
        zzoh zzohVar = (zzoh) obj;
        return this.zzb == zzohVar.zzb && this.zzc == zzohVar.zzc && Objects.equals(this.zzd, zzohVar.zzd);
    }

    public final int hashCode() {
        zzfxs zzfxsVar = this.zzd;
        return (((this.zzb * 31) + this.zzc) * 31) + (zzfxsVar == null ? 0 : zzfxsVar.hashCode());
    }

    public final String toString() {
        return "AudioProfile[format=" + this.zzb + ", maxChannelCount=" + this.zzc + ", channelMasks=" + String.valueOf(this.zzd) + "]";
    }

    public final int zza(int i, zze zzeVar) {
        boolean isDirectPlaybackSupported;
        if (this.zzd != null) {
            return this.zzc;
        }
        if (zzei.zza < 29) {
            Integer num = (Integer) zzoi.zzb.getOrDefault(Integer.valueOf(this.zzb), 0);
            num.getClass();
            return num.intValue();
        }
        int i2 = this.zzb;
        for (int i3 = 10; i3 > 0; i3--) {
            int zzi = zzei.zzi(i3);
            if (zzi != 0) {
                isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i2).setSampleRate(i).setChannelMask(zzi).build(), zzeVar.zza().zza);
                if (isDirectPlaybackSupported) {
                    return i3;
                }
            }
        }
        return 0;
    }

    public final boolean zzb(int i) {
        if (this.zzd == null) {
            return i <= this.zzc;
        }
        int zzi = zzei.zzi(i);
        if (zzi == 0) {
            return false;
        }
        return this.zzd.contains(Integer.valueOf(zzi));
    }
}
