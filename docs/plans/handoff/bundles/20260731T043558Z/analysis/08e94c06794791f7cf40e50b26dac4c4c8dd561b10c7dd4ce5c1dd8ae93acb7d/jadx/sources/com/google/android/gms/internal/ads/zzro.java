package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzro extends zzch {
    private static final int zzd = Float.floatToIntBits(Float.NaN);

    private static void zzq(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        if (floatToIntBits == zzd) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void zzd(ByteBuffer byteBuffer) {
        ByteBuffer zzk;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.zzb.zzd;
        if (i2 == 21) {
            zzk = zzk((i / 3) * 4);
            while (position < limit) {
                zzq(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), zzk);
                position += 3;
            }
        } else if (i2 == 22) {
            zzk = zzk(i);
            while (position < limit) {
                int i3 = byteBuffer.get(position) & 255;
                int i4 = (byteBuffer.get(position + 1) & 255) << 8;
                zzq(i3 | i4 | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), zzk);
                position += 4;
            }
        } else if (i2 == 1342177280) {
            zzk = zzk((i / 3) * 4);
            while (position < limit) {
                zzq(((byteBuffer.get(position + 2) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position) & 255) << 24), zzk);
                position += 3;
            }
        } else {
            if (i2 != 1610612736) {
                throw new IllegalStateException();
            }
            zzk = zzk(i);
            while (position < limit) {
                int i5 = byteBuffer.get(position + 3) & 255;
                int i6 = (byteBuffer.get(position + 2) & 255) << 8;
                zzq(i5 | i6 | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position) & 255) << 24), zzk);
                position += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        zzk.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzch
    public final zzcd zzm(zzcd zzcdVar) throws zzcf {
        int i = zzcdVar.zzd;
        String str = zzep.zza;
        if (i == 21 || i == 1342177280 || i == 22 || i == 1610612736) {
            return new zzcd(zzcdVar.zzb, zzcdVar.zzc, 4);
        }
        if (i == 4) {
            return zzcd.zza;
        }
        throw new zzcf("Unhandled input format:", zzcdVar);
    }
}
