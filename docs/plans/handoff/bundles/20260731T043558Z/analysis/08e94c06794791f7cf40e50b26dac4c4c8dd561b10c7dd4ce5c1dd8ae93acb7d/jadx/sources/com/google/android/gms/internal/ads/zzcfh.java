package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcfh extends zzcfe {
    public static final /* synthetic */ int zzd = 0;
    private static final Set zze = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzf = new DecimalFormat("#,###");
    private File zzg;
    private boolean zzh;

    public zzcfh(zzcdr zzcdrVar) {
        super(zzcdrVar);
        File cacheDir = this.zza.getCacheDir();
        if (cacheDir == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(zzftx.zza().zza(cacheDir, "admobVideoStreams"));
        this.zzg = file;
        if (!file.isDirectory() && !this.zzg.mkdirs()) {
            String absolutePath = this.zzg.getAbsolutePath();
            String.valueOf(absolutePath);
            String valueOf = String.valueOf(absolutePath);
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not create preload cache directory at ".concat(valueOf));
            this.zzg = null;
            return;
        }
        if (this.zzg.setReadable(true, false) && this.zzg.setExecutable(true, false)) {
            return;
        }
        String absolutePath2 = this.zzg.getAbsolutePath();
        String.valueOf(absolutePath2);
        String valueOf2 = String.valueOf(absolutePath2);
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not set cache file permissions at ".concat(valueOf2));
        this.zzg = null;
    }

    private final File zza(File file) {
        zzfty zza = zzftx.zza();
        File file2 = this.zzg;
        String name = file.getName();
        String.valueOf(name);
        return new File(zza.zza(file2, String.valueOf(name).concat(".done")));
    }

    @Override // com.google.android.gms.internal.ads.zzcfe
    public final void zzl() {
        this.zzh = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x0409, code lost:
    
        r34 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x040b, code lost:
    
        r13.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0413, code lost:
    
        if (com.google.android.gms.ads.internal.util.zze.zzm(3) == false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0415, code lost:
    
        r0 = r15.format((long) r1);
        r3 = new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 22) + java.lang.String.valueOf(r37).length());
        r3.append(r16);
        r3.append(r0);
        r3.append(" bytes from ");
        r3.append(r37);
        com.google.android.gms.ads.internal.util.client.zzo.zzd(r3.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0447, code lost:
    
        r11.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0450, code lost:
    
        if (r0.isFile() == false) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0452, code lost:
    
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x045e, code lost:
    
        r0.createNewFile();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x04cd  */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25, types: [int] */
    /* JADX WARN: Type inference failed for: r1v45 */
    @Override // com.google.android.gms.internal.ads.zzcfe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zze(final java.lang.String r37) {
        /*
            Method dump skipped, instructions count: 1321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfh.zze(java.lang.String):boolean");
    }
}
