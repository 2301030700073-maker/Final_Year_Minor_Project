package com.google.android.gms.internal.ads;

import io.sentry.protocol.DebugImage;
import java.io.EOFException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzarb implements zzarc {
    private static final Logger zzb = Logger.getLogger(zzarb.class.getName());
    final ThreadLocal zza = new zzara(this);

    public abstract zzarf zza(String str, byte[] bArr, String str2);

    @Override // com.google.android.gms.internal.ads.zzarc
    public final zzarf zzb(zziet zzietVar, zzarg zzargVar) throws IOException {
        int zza;
        long zzb2;
        long zzc = zzietVar.zzc();
        ThreadLocal threadLocal = this.zza;
        ((ByteBuffer) threadLocal.get()).rewind().limit(8);
        do {
            zza = zzietVar.zza((ByteBuffer) threadLocal.get());
            if (zza == 8) {
                ((ByteBuffer) threadLocal.get()).rewind();
                long zza2 = zzare.zza((ByteBuffer) threadLocal.get());
                byte[] bArr = null;
                if (zza2 < 8 && zza2 > 1) {
                    Logger logger = zzb;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(zza2);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                ((ByteBuffer) threadLocal.get()).get(bArr2);
                try {
                    String str = new String(bArr2, "ISO-8859-1");
                    if (zza2 == 1) {
                        ThreadLocal threadLocal2 = this.zza;
                        ((ByteBuffer) threadLocal2.get()).limit(16);
                        zzietVar.zza((ByteBuffer) threadLocal2.get());
                        ((ByteBuffer) threadLocal2.get()).position(8);
                        zzb2 = zzare.zzd((ByteBuffer) threadLocal2.get()) - 16;
                    } else {
                        zzb2 = zza2 == 0 ? zzietVar.zzb() - zzietVar.zzc() : zza2 - 8;
                    }
                    if (DebugImage.JsonKeys.UUID.equals(str)) {
                        ThreadLocal threadLocal3 = this.zza;
                        ((ByteBuffer) threadLocal3.get()).limit(((ByteBuffer) threadLocal3.get()).limit() + 16);
                        zzietVar.zza((ByteBuffer) threadLocal3.get());
                        bArr = new byte[16];
                        for (int position = ((ByteBuffer) threadLocal3.get()).position() - 16; position < ((ByteBuffer) threadLocal3.get()).position(); position++) {
                            bArr[position - (((ByteBuffer) threadLocal3.get()).position() - 16)] = ((ByteBuffer) threadLocal3.get()).get(position);
                        }
                        zzb2 -= 16;
                    }
                    long j = zzb2;
                    zzarf zza3 = zza(str, bArr, zzargVar instanceof zzarf ? ((zzarf) zzargVar).zza() : "");
                    ThreadLocal threadLocal4 = this.zza;
                    ((ByteBuffer) threadLocal4.get()).rewind();
                    zza3.zzb(zzietVar, (ByteBuffer) threadLocal4.get(), j, this);
                    return zza3;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (zza >= 0);
        zzietVar.zzd(zzc);
        throw new EOFException();
    }
}
