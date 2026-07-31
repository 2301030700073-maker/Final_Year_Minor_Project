package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.soloader.MinElf;
import io.sentry.instrumentation.file.SentryFileInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfsp {
    public static boolean zza(zzbaa zzbaaVar) {
        int ordinal = zzbaaVar.ordinal();
        return ordinal == 1 || ordinal == 2 || ordinal == 3 || ordinal == 4 || ordinal == 5;
    }

    public static final zzbaa zzb(Context context, zzfrs zzfrsVar) {
        zzbaa zzbaaVar;
        FileInputStream create;
        byte[] bArr;
        zzbaa zzbaaVar2;
        File file = new File(new File(context.getApplicationInfo().dataDir), "lib");
        if (file.exists()) {
            File[] listFiles = file.listFiles(new zzgsh(Pattern.compile(".*\\.so$", 2)));
            if (listFiles == null || listFiles.length == 0) {
                if (zzfrsVar != null) {
                    zzfrsVar.zze(5017, "No .so");
                } else {
                    zzfrsVar = null;
                }
                zzbaaVar = zzbaa.UNKNOWN;
            } else {
                try {
                    File file2 = listFiles[0];
                    create = SentryFileInputStream.Factory.create(new FileInputStream(file2), file2);
                    try {
                        bArr = new byte[20];
                    } finally {
                    }
                } catch (IOException e) {
                    zzc(null, e.toString(), context, zzfrsVar);
                }
                if (create.read(bArr) == 20) {
                    byte[] bArr2 = {0, 0};
                    if (bArr[5] == 2) {
                        zzc(bArr, null, context, zzfrsVar);
                        zzbaaVar2 = zzbaa.UNSUPPORTED;
                    } else {
                        bArr2[0] = bArr[19];
                        bArr2[1] = bArr[18];
                        short s = ByteBuffer.wrap(bArr2).getShort();
                        if (s == 3) {
                            zzbaaVar2 = zzbaa.X86;
                        } else if (s == 40) {
                            zzbaaVar2 = zzbaa.ARM7;
                        } else if (s == 62) {
                            zzbaaVar2 = zzbaa.X86_64;
                        } else if (s == 183) {
                            zzbaaVar2 = zzbaa.ARM64;
                        } else if (s != 243) {
                            zzc(bArr, null, context, zzfrsVar);
                            zzbaaVar2 = zzbaa.UNSUPPORTED;
                        } else {
                            zzbaaVar2 = zzbaa.RISCV64;
                        }
                    }
                    create.close();
                    zzbaaVar = zzbaaVar2;
                } else {
                    create.close();
                    zzbaaVar = zzbaa.UNSUPPORTED;
                }
            }
        } else {
            if (zzfrsVar != null) {
                zzfrsVar.zze(5017, "No lib/");
            } else {
                zzfrsVar = null;
            }
            zzbaaVar = zzbaa.UNKNOWN;
        }
        if (zzbaaVar == zzbaa.UNKNOWN) {
            String zzd = zzd(context, zzfrsVar);
            if (TextUtils.isEmpty(zzd)) {
                zzc(null, "Empty dev arch", context, zzfrsVar);
                zzbaaVar = zzbaa.UNSUPPORTED;
            } else if (zzd.equalsIgnoreCase("i686") || zzd.equalsIgnoreCase(MinElf.ISA.X86)) {
                zzbaaVar = zzbaa.X86;
            } else if (zzd.equalsIgnoreCase(MinElf.ISA.X86_64)) {
                zzbaaVar = zzbaa.X86_64;
            } else if (zzd.equalsIgnoreCase(MinElf.ISA.AARCH64)) {
                zzbaaVar = zzbaa.ARM64;
            } else if (zzd.equalsIgnoreCase(MinElf.ISA.ARM) || zzd.equalsIgnoreCase("armv71")) {
                zzbaaVar = zzbaa.ARM7;
            } else if (zzd.equalsIgnoreCase("riscv64")) {
                zzbaaVar = zzbaa.RISCV64;
            } else {
                zzc(null, zzd, context, zzfrsVar);
                zzbaaVar = zzbaa.UNSUPPORTED;
            }
        }
        if (zzfrsVar != null) {
            zzfrsVar.zze(5018, zzbaaVar.name());
        }
        return zzbaaVar;
    }

    private static final void zzc(byte[] bArr, String str, Context context, zzfrs zzfrsVar) {
        if (zzfrsVar == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("os.arch:");
        sb.append(zzgmt.OS_ARCH.zza());
        sb.append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb.append("supported_abis:");
                sb.append(Arrays.toString(strArr));
                sb.append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sb.append("CPU_ABI:");
        sb.append(Build.CPU_ABI);
        sb.append(";CPU_ABI2:");
        sb.append(Build.CPU_ABI2);
        sb.append(";");
        if (bArr != null) {
            sb.append("ELF:");
            sb.append(Arrays.toString(bArr));
            sb.append(";");
        }
        if (str != null) {
            sb.append("dbg:");
            sb.append(str);
            sb.append(";");
        }
        zzfrsVar.zze(4007, sb.toString());
    }

    private static final String zzd(Context context, zzfrs zzfrsVar) {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String zza = zzgmt.OS_ARCH.zza();
        if (!TextUtils.isEmpty(zza) && hashSet.contains(zza)) {
            return zza;
        }
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null && strArr.length > 0) {
                return strArr[0];
            }
        } catch (IllegalAccessException e) {
            if (zzfrsVar != null) {
                zzfrsVar.zzc(2024, 0L, e);
            }
        } catch (NoSuchFieldException e2) {
            if (zzfrsVar != null) {
                zzfrsVar.zzc(2024, 0L, e2);
            }
        }
        return Build.CPU_ABI != null ? Build.CPU_ABI : Build.CPU_ABI2;
    }
}
