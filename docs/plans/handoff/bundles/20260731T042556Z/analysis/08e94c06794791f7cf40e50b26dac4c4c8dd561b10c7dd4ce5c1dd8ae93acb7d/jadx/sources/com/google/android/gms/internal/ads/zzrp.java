package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzrp extends zzch {
    private int zzd;
    private int zze;
    private boolean zzf;
    private int zzg;
    private byte[] zzh = zzep.zzb;
    private int zzi;
    private long zzj;

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long zza(long j) {
        return Math.max(0L, j - zzep.zzr(this.zze + this.zzd, this.zzb.zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void zzd(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.zzg);
        this.zzj += min / this.zzb.zze;
        this.zzg -= min;
        byteBuffer.position(position + min);
        if (this.zzg <= 0) {
            int i2 = i - min;
            int length = (this.zzi + i2) - this.zzh.length;
            ByteBuffer zzk = zzk(length);
            int i3 = this.zzi;
            String str = zzep.zza;
            int max = Math.max(0, Math.min(length, i3));
            zzk.put(this.zzh, 0, max);
            int max2 = Math.max(0, Math.min(length - max, i2));
            byteBuffer.limit(byteBuffer.position() + max2);
            zzk.put(byteBuffer);
            byteBuffer.limit(limit);
            int i4 = i2 - max2;
            int i5 = this.zzi - max;
            this.zzi = i5;
            byte[] bArr = this.zzh;
            System.arraycopy(bArr, max, bArr, 0, i5);
            byteBuffer.get(this.zzh, this.zzi, i4);
            this.zzi += i4;
            zzk.flip();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzch, com.google.android.gms.internal.ads.zzcg
    public final ByteBuffer zzf() {
        int i;
        if (super.zzg() && (i = this.zzi) > 0) {
            zzk(i).put(this.zzh, 0, this.zzi).flip();
            this.zzi = 0;
        }
        return super.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzch, com.google.android.gms.internal.ads.zzcg
    public final boolean zzg() {
        return super.zzg() && this.zzi == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public final zzcd zzm(zzcd zzcdVar) throws zzcf {
        if (!zzep.zzA(zzcdVar.zzd)) {
            throw new zzcf("Unhandled input format:", zzcdVar);
        }
        this.zzf = true;
        return (this.zzd == 0 && this.zze == 0) ? zzcd.zza : zzcdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzch
    protected final void zzn() {
        if (this.zzf) {
            if (this.zzi > 0) {
                this.zzj += r0 / this.zzb.zze;
            }
            this.zzi = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzch
    protected final void zzo() {
        if (this.zzf) {
            this.zzf = false;
            int i = this.zze;
            int i2 = this.zzb.zze;
            this.zzh = new byte[i * i2];
            this.zzg = this.zzd * i2;
        }
        this.zzi = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzch
    protected final void zzp() {
        this.zzh = zzep.zzb;
    }

    public final void zzq(int i, int i2) {
        this.zzd = i;
        this.zze = i2;
    }

    public final void zzr() {
        this.zzj = 0L;
    }

    public final long zzs() {
        return this.zzj;
    }
}
