package com.google.android.gms.internal;

import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.internal.zzb;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;

/* loaded from: classes.dex */
public class zzt implements zzf {
    protected static final boolean DEBUG = zzs.DEBUG;
    private static int zzao = GamesStatusCodes.STATUS_ACHIEVEMENT_UNLOCK_FAILURE;
    private static int zzap = 4096;
    protected final zzy zzaq;
    protected final zzu zzar;

    public zzt(zzy zzyVar) {
        this(zzyVar, new zzu(zzap));
    }

    public zzt(zzy zzyVar, zzu zzuVar) {
        this.zzaq = zzyVar;
        this.zzar = zzuVar;
    }

    protected static Map<String, String> zza(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }

    private void zza(long j, zzk<?> zzkVar, byte[] bArr, StatusLine statusLine) {
        if (DEBUG || j > zzao) {
            Object[] objArr = new Object[5];
            objArr[0] = zzkVar;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(zzkVar.zzu().zze());
            zzs.zzb("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    private static void zza(String str, zzk<?> zzkVar, zzr zzrVar) throws zzr {
        zzo zzu = zzkVar.zzu();
        int zzt = zzkVar.zzt();
        try {
            zzu.zza(zzrVar);
            zzkVar.zzc(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(zzt)));
        } catch (zzr e) {
            zzkVar.zzc(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(zzt)));
            throw e;
        }
    }

    private void zza(Map<String, String> map, zzb.zza zzaVar) {
        if (zzaVar == null) {
            return;
        }
        if (zzaVar.zzb != null) {
            map.put("If-None-Match", zzaVar.zzb);
        }
        if (zzaVar.zzd > 0) {
            map.put("If-Modified-Since", DateUtils.formatDate(new Date(zzaVar.zzd)));
        }
    }

    private byte[] zza(HttpEntity httpEntity) throws IOException, zzp {
        zzaa zzaaVar = new zzaa(this.zzar, (int) httpEntity.getContentLength());
        byte[] bArr = null;
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new zzp();
            }
            byte[] zzb = this.zzar.zzb(1024);
            while (true) {
                try {
                    int read = content.read(zzb);
                    if (read == -1) {
                        break;
                    }
                    zzaaVar.write(zzb, 0, read);
                } catch (Throwable th) {
                    th = th;
                    bArr = zzb;
                    try {
                        httpEntity.consumeContent();
                    } catch (IOException e) {
                        zzs.zza("Error occured when calling consumingContent", new Object[0]);
                    }
                    this.zzar.zza(bArr);
                    zzaaVar.close();
                    throw th;
                }
            }
            byte[] byteArray = zzaaVar.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException e2) {
                zzs.zza("Error occured when calling consumingContent", new Object[0]);
            }
            this.zzar.zza(zzb);
            zzaaVar.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00be, code lost:
    
        throw new java.io.IOException();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.google.android.gms.internal.zzt] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [long] */
    @Override // com.google.android.gms.internal.zzf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.zzi zza(com.google.android.gms.internal.zzk<?> r24) throws com.google.android.gms.internal.zzr {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzt.zza(com.google.android.gms.internal.zzk):com.google.android.gms.internal.zzi");
    }
}
