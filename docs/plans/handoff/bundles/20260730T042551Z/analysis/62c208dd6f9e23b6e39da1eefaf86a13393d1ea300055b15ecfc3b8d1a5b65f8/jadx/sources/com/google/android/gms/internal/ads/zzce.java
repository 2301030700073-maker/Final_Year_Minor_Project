package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzce {
    private final zzfxn zza;
    private final List zzb = new ArrayList();
    private ByteBuffer[] zzc = new ByteBuffer[0];
    private boolean zzd;

    public zzce(zzfxn zzfxnVar) {
        this.zza = zzfxnVar;
        zzcf zzcfVar = zzcf.zza;
        this.zzd = false;
    }

    private final int zzi() {
        return this.zzc.length - 1;
    }

    private final void zzj(ByteBuffer byteBuffer) {
        boolean z;
        do {
            int i = 0;
            z = false;
            while (i <= zzi()) {
                if (!this.zzc[i].hasRemaining()) {
                    zzch zzchVar = (zzch) this.zzb.get(i);
                    if (!zzchVar.zzh()) {
                        ByteBuffer byteBuffer2 = i > 0 ? this.zzc[i - 1] : byteBuffer.hasRemaining() ? byteBuffer : zzch.zza;
                        long remaining = byteBuffer2.remaining();
                        zzchVar.zze(byteBuffer2);
                        this.zzc[i] = zzchVar.zzb();
                        boolean z2 = true;
                        if (remaining - byteBuffer2.remaining() <= 0 && !this.zzc[i].hasRemaining()) {
                            z2 = false;
                        }
                        z |= z2;
                    } else if (!this.zzc[i].hasRemaining() && i < zzi()) {
                        ((zzch) this.zzb.get(i + 1)).zzd();
                    }
                }
                i++;
            }
        } while (z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzce)) {
            return false;
        }
        zzce zzceVar = (zzce) obj;
        if (this.zza.size() != zzceVar.zza.size()) {
            return false;
        }
        for (int i = 0; i < this.zza.size(); i++) {
            if (this.zza.get(i) != zzceVar.zza.get(i)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final zzcf zza(zzcf zzcfVar) {
        if (zzcfVar.equals(zzcf.zza)) {
            throw new zzcg("Unhandled input format:", zzcfVar);
        }
        for (int i = 0; i < this.zza.size(); i++) {
            zzch zzchVar = (zzch) this.zza.get(i);
            zzcf zza = zzchVar.zza(zzcfVar);
            if (zzchVar.zzg()) {
                zzcw.zzf(!zza.equals(zzcf.zza));
                zzcfVar = zza;
            }
        }
        return zzcfVar;
    }

    public final ByteBuffer zzb() {
        if (!zzh()) {
            return zzch.zza;
        }
        ByteBuffer byteBuffer = this.zzc[zzi()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        zzj(zzch.zza);
        return this.zzc[zzi()];
    }

    public final void zzc() {
        this.zzb.clear();
        this.zzd = false;
        for (int i = 0; i < this.zza.size(); i++) {
            zzch zzchVar = (zzch) this.zza.get(i);
            zzchVar.zzc();
            if (zzchVar.zzg()) {
                this.zzb.add(zzchVar);
            }
        }
        this.zzc = new ByteBuffer[this.zzb.size()];
        for (int i2 = 0; i2 <= zzi(); i2++) {
            this.zzc[i2] = ((zzch) this.zzb.get(i2)).zzb();
        }
    }

    public final void zzd() {
        if (!zzh() || this.zzd) {
            return;
        }
        this.zzd = true;
        ((zzch) this.zzb.get(0)).zzd();
    }

    public final void zze(ByteBuffer byteBuffer) {
        if (!zzh() || this.zzd) {
            return;
        }
        zzj(byteBuffer);
    }

    public final void zzf() {
        for (int i = 0; i < this.zza.size(); i++) {
            zzch zzchVar = (zzch) this.zza.get(i);
            zzchVar.zzc();
            zzchVar.zzf();
        }
        this.zzc = new ByteBuffer[0];
        zzcf zzcfVar = zzcf.zza;
        this.zzd = false;
    }

    public final boolean zzg() {
        return this.zzd && ((zzch) this.zzb.get(zzi())).zzh() && !this.zzc[zzi()].hasRemaining();
    }

    public final boolean zzh() {
        return !this.zzb.isEmpty();
    }
}
