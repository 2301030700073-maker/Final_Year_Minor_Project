package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzaqv implements zzaqw {
    private static final Logger zzb = Logger.getLogger(zzaqv.class.getName());
    final ThreadLocal zza = new zzaqu(this);

    public abstract zzaqz zza(String str, byte[] bArr, String str2);

    @Override // com.google.android.gms.internal.ads.zzaqw
    public final zzaqz zzb(zzhed zzhedVar, zzara zzaraVar) {
        int zza;
        long zzc;
        long zzb2 = zzhedVar.zzb();
        ((ByteBuffer) this.zza.get()).rewind().limit(8);
        do {
            zza = zzhedVar.zza((ByteBuffer) this.zza.get());
            if (zza == 8) {
                ((ByteBuffer) this.zza.get()).rewind();
                long zze = zzaqy.zze((ByteBuffer) this.zza.get());
                byte[] bArr = null;
                if (zze < 8 && zze > 1) {
                    Logger logger = zzb;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(zze);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) this.zza.get()).get(bArr2);
                try {
                    String str = new String(bArr2, "ISO-8859-1");
                    if (zze == 1) {
                        ((ByteBuffer) this.zza.get()).limit(16);
                        zzhedVar.zza((ByteBuffer) this.zza.get());
                        ((ByteBuffer) this.zza.get()).position(8);
                        zzc = zzaqy.zzf((ByteBuffer) this.zza.get()) - 16;
                    } else {
                        zzc = zze == 0 ? zzhedVar.zzc() - zzhedVar.zzb() : zze - 8;
                    }
                    if ("uuid".equals(str)) {
                        ((ByteBuffer) this.zza.get()).limit(((ByteBuffer) this.zza.get()).limit() + 16);
                        zzhedVar.zza((ByteBuffer) this.zza.get());
                        bArr = new byte[16];
                        for (int position = ((ByteBuffer) this.zza.get()).position() - 16; position < ((ByteBuffer) this.zza.get()).position(); position++) {
                            bArr[position - (((ByteBuffer) this.zza.get()).position() - 16)] = ((ByteBuffer) this.zza.get()).get(position);
                        }
                        zzc -= 16;
                    }
                    long j = zzc;
                    zzaqz zza2 = zza(str, bArr, zzaraVar instanceof zzaqz ? ((zzaqz) zzaraVar).zza() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    ((ByteBuffer) this.zza.get()).rewind();
                    zza2.zzb(zzhedVar, (ByteBuffer) this.zza.get(), j, this);
                    return zza2;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (zza >= 0);
        zzhedVar.zze(zzb2);
        throw new EOFException();
    }
}
