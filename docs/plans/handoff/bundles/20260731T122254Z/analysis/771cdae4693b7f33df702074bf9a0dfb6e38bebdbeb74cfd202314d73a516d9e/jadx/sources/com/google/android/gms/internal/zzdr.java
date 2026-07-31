package com.google.android.gms.internal;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

@zzgd
/* loaded from: classes.dex */
public class zzdr {
    private static final Set<String> zzwF = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzwG = new DecimalFormat("#,###");
    private zzid zzoA;
    private File zzwH;
    private boolean zzwI;

    public zzdr(zzid zzidVar) {
        this.zzoA = zzidVar;
        File cacheDir = zzidVar.getContext().getCacheDir();
        if (cacheDir == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaC("Context.getCacheDir() returned null");
            return;
        }
        this.zzwH = new File(cacheDir, "admobVideoStreams");
        if (!this.zzwH.isDirectory() && !this.zzwH.mkdirs()) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaC("Could not create preload cache directory at " + this.zzwH.getAbsolutePath());
            this.zzwH = null;
            return;
        }
        if (this.zzwH.setReadable(true, false) && this.zzwH.setExecutable(true, false)) {
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzaC("Could not set cache file permissions at " + this.zzwH.getAbsolutePath());
        this.zzwH = null;
    }

    private String zzX(String str) {
        return com.google.android.gms.ads.internal.client.zzk.zzcA().zzax(str);
    }

    private File zza(File file) {
        return new File(this.zzwH, file.getName() + ".done");
    }

    private void zza(final String str, final File file) {
        com.google.android.gms.ads.internal.util.client.zza.zzGF.post(new Runnable() { // from class: com.google.android.gms.internal.zzdr.3
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheCanceled");
                hashMap.put("src", str);
                if (file != null) {
                    hashMap.put("cachedSrc", file.getAbsolutePath());
                }
                zzdr.this.zzoA.zzc("onPrecacheEvent", hashMap);
            }
        });
    }

    private void zza(final String str, final File file, final int i) {
        com.google.android.gms.ads.internal.util.client.zza.zzGF.post(new Runnable() { // from class: com.google.android.gms.internal.zzdr.2
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheComplete");
                hashMap.put("src", str);
                hashMap.put("cachedSrc", file.getAbsolutePath());
                hashMap.put("totalBytes", Integer.toString(i));
                zzdr.this.zzoA.zzc("onPrecacheEvent", hashMap);
            }
        });
    }

    private void zza(final String str, final File file, final int i, final int i2) {
        com.google.android.gms.ads.internal.util.client.zza.zzGF.post(new Runnable() { // from class: com.google.android.gms.internal.zzdr.1
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheProgress");
                hashMap.put("src", str);
                hashMap.put("cachedSrc", file.getAbsolutePath());
                hashMap.put("bytesLoaded", Integer.toString(i));
                hashMap.put("totalBytes", Integer.toString(i2));
                zzdr.this.zzoA.zzc("onPrecacheEvent", hashMap);
            }
        });
    }

    private static void zzb(File file) {
        if (file.isFile()) {
            file.setLastModified(System.currentTimeMillis());
        } else {
            try {
                file.createNewFile();
            } catch (IOException e) {
            }
        }
    }

    public void abort() {
        this.zzwI = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0210, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzb.zzay("Preloaded " + com.google.android.gms.internal.zzdr.zzwG.format(r3) + " bytes from " + r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0235, code lost:
    
        r6.setReadable(true, false);
        zzb(r3);
        zza(r26, r6, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0242, code lost:
    
        r7 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0244, code lost:
    
        com.google.android.gms.internal.zzdr.zzwF.remove(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0247, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0206, code lost:
    
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x020e, code lost:
    
        if (com.google.android.gms.ads.internal.util.client.zzb.zzL(3) == false) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:83:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0275  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean zzW(java.lang.String r26) {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdr.zzW(java.lang.String):boolean");
    }

    public int zzdQ() {
        if (this.zzwH == null) {
            return 0;
        }
        int i = 0;
        for (File file : this.zzwH.listFiles()) {
            if (!file.getName().endsWith(".done")) {
                i++;
            }
        }
        return i;
    }

    public boolean zzdR() {
        if (this.zzwH == null) {
            return false;
        }
        long j = Long.MAX_VALUE;
        File file = null;
        for (File file2 : this.zzwH.listFiles()) {
            if (!file2.getName().endsWith(".done")) {
                long lastModified = file2.lastModified();
                if (lastModified < j) {
                    file = file2;
                    j = lastModified;
                }
            }
        }
        if (file == null) {
            return false;
        }
        boolean delete = file.delete();
        File zza = zza(file);
        return zza.isFile() ? delete & zza.delete() : delete;
    }
}
