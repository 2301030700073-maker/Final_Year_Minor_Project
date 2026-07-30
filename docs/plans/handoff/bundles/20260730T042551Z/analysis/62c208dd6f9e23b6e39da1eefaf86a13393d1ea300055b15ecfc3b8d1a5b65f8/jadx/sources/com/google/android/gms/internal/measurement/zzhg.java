package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import defpackage.AbstractC2838gw;
import defpackage.Bx;
import defpackage.C2680eE;
import defpackage.Ccase;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzhg {

    public static class zza {
        private static volatile AbstractC2838gw<zzhh> zza;

        private zza() {
        }

        public static AbstractC2838gw<zzhh> zza(Context context) {
            AbstractC2838gw<zzhh> zza2;
            boolean isDeviceProtectedStorage;
            AbstractC2838gw<zzhh> abstractC2838gw = zza;
            if (abstractC2838gw == null) {
                synchronized (zza.class) {
                    abstractC2838gw = zza;
                    if (abstractC2838gw == null) {
                        new zzhg();
                        if (zzhk.zza(Build.TYPE, Build.TAGS)) {
                            if (zzgs.zza()) {
                                isDeviceProtectedStorage = context.isDeviceProtectedStorage();
                                if (!isDeviceProtectedStorage) {
                                    context = context.createDeviceProtectedStorageContext();
                                }
                            }
                            zza2 = zzhg.zza(context);
                        } else {
                            zza2 = Ccase.f8559do;
                        }
                        zza = zza2;
                        abstractC2838gw = zza2;
                    }
                }
            }
            return abstractC2838gw;
        }
    }

    private static zzhh zza(Context context, File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                C2680eE c2680eE = new C2680eE();
                HashMap hashMap = new HashMap();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        String.valueOf(file);
                        context.getPackageName();
                        zzgy zzgyVar = new zzgy(c2680eE);
                        bufferedReader.close();
                        return zzgyVar;
                    }
                    String[] split = readLine.split(" ", 3);
                    if (split.length == 3) {
                        String zza2 = zza(split[0]);
                        String decode = Uri.decode(zza(split[1]));
                        String str = (String) hashMap.get(split[2]);
                        if (str == null) {
                            String zza3 = zza(split[2]);
                            str = Uri.decode(zza3);
                            if (str.length() < 1024 || str == zza3) {
                                hashMap.put(zza3, str);
                            }
                        }
                        C2680eE c2680eE2 = (C2680eE) c2680eE.getOrDefault(zza2, null);
                        if (c2680eE2 == null) {
                            c2680eE2 = new C2680eE();
                            c2680eE.put(zza2, c2680eE2);
                        }
                        c2680eE2.put(decode, str);
                    }
                }
            } finally {
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static AbstractC2838gw<File> zzb(Context context) {
        try {
            File file = new File(context.getDir("phenotype_hermetic", 0), "overrides.txt");
            return file.exists() ? new Bx(file) : Ccase.f8559do;
        } catch (RuntimeException unused) {
            return Ccase.f8559do;
        }
    }

    public static AbstractC2838gw<zzhh> zza(Context context) {
        AbstractC2838gw<zzhh> abstractC2838gw;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            StrictMode.allowThreadDiskWrites();
            AbstractC2838gw<File> zzb = zzb(context);
            if (zzb.mo243if()) {
                zzhh zza2 = zza(context, zzb.mo242do());
                zza2.getClass();
                abstractC2838gw = new Bx<>(zza2);
            } else {
                abstractC2838gw = Ccase.f8559do;
            }
            return abstractC2838gw;
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    private static final String zza(String str) {
        return new String(str);
    }
}
