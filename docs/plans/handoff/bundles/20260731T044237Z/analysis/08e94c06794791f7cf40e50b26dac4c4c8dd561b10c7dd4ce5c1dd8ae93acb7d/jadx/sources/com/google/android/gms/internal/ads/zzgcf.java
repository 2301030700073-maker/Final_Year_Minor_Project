package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.util.Pair;
import io.sentry.instrumentation.file.SentryFileInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgcf implements zzgcd {
    ClassLoader zza;
    private final Context zzb;
    private final ExecutorService zzc;
    private final zzgbk zzd;
    private final zzgcc zze;
    private final zzgjd zzf;
    private final Set zzh;
    private final long zzj;
    private final File zzk;
    private boolean zzl;
    private byte[] zzm;
    private final String zzg = "1758913286824";
    private final Map zzi = new HashMap();

    zzgcf(Context context, ExecutorService executorService, zzgbk zzgbkVar, zzgcc zzgccVar, File file, zzgjd zzgjdVar, long j, String str, String str2, String str3, Set set) {
        this.zzb = context;
        this.zzc = executorService;
        this.zzd = zzgbkVar;
        this.zze = zzgccVar;
        this.zzf = zzgjdVar;
        this.zzh = set;
        this.zzk = new File(file, "rbp");
        this.zzj = j;
    }

    private final void zze(File file, String str) {
        if (new File(file.toString().concat("/1758913286824.tmp")).exists()) {
            return;
        }
        File file2 = new File(file.toString().concat("/1758913286824.dex"));
        if (file2.exists()) {
            long length = file2.length();
            if (length > 0) {
                byte[] bArr = new byte[(int) length];
                FileInputStream fileInputStream = null;
                try {
                    try {
                        fileInputStream = SentryFileInputStream.Factory.create(new FileInputStream(file2), file2);
                        if (fileInputStream.read(bArr) > 0) {
                            zzavc zzg = zzavd.zzg();
                            byte[] bytes = Build.VERSION.SDK.getBytes();
                            zzhvi zzhviVar = zzhvi.zzb;
                            zzg.zzd(zzhvi.zzr(bytes, 0, bytes.length));
                            byte[] bytes2 = "1758913286824".getBytes();
                            zzg.zzc(zzhvi.zzr(bytes2, 0, bytes2.length));
                            throw new zzgcb();
                        }
                    } finally {
                        zzh(null);
                        zzf(file2);
                    }
                } catch (zzgcb | IOException e) {
                    this.zzf.zzd(301, e);
                }
            }
        }
    }

    private static void zzf(File file) {
        if (file.exists()) {
            file.delete();
        }
    }

    private static void zzg(String str) {
        zzf(new File(str));
    }

    private static void zzh(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x01e7 A[Catch: all -> 0x0252, zzfyp -> 0x0257, TryCatch #11 {all -> 0x0252, blocks: (B:5:0x0009, B:10:0x000f, B:12:0x0018, B:14:0x0027, B:17:0x0031, B:19:0x0033, B:22:0x008f, B:27:0x01c4, B:28:0x01db, B:29:0x01e1, B:31:0x01e7, B:34:0x01fd, B:39:0x020c, B:53:0x0211, B:54:0x0228, B:55:0x00c6, B:66:0x0114, B:77:0x018a, B:47:0x018d, B:50:0x01a0, B:51:0x01a6, B:46:0x01a9, B:87:0x006b, B:93:0x008c, B:98:0x0232, B:101:0x022f, B:103:0x0238, B:104:0x023d, B:105:0x023e, B:106:0x0243, B:108:0x0245, B:109:0x024a, B:111:0x024c, B:112:0x0251), top: B:4:0x0009, outer: #0 }] */
    @Override // com.google.android.gms.internal.ads.zzgcd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zza() {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgcf.zza():void");
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final synchronized boolean zzb() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final Method zzc(String str, String str2) {
        Future future = (Future) this.zzi.get(new Pair(str, str2));
        if (future == null) {
            this.zzf.zzb(302);
            return null;
        }
        try {
            return (Method) future.get(this.zzj, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException unused) {
            this.zzf.zzb(304);
            return null;
        } catch (TimeoutException unused2) {
            this.zzf.zzb(303);
            return null;
        }
    }

    final /* synthetic */ Method zzd(zzgch zzgchVar) {
        ClassLoader classLoader = this.zza;
        zzgcc zzgccVar = this.zze;
        byte[] bArr = this.zzm;
        String str = zzgchVar.zza;
        String str2 = zzgchVar.zzb;
        try {
            return classLoader.loadClass(zzgccVar.zzb(bArr, str)).getMethod(zzgccVar.zzb(bArr, str2), zzgchVar.zzc);
        } catch (zzgcb | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException e) {
            throw new IllegalStateException(e);
        }
    }
}
