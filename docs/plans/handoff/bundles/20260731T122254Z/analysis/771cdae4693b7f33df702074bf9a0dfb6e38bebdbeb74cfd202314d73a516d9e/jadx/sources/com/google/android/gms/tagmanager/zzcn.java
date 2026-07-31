package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.zzaf;
import com.google.android.gms.internal.zzpx;
import com.google.android.gms.internal.zzqf;
import com.google.android.gms.internal.zzrm;
import com.google.android.gms.internal.zzrn;
import com.google.android.gms.tagmanager.zzp;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

/* loaded from: classes.dex */
class zzcn implements zzp.zzf {
    private final Context mContext;
    private final String zzaKy;
    private zzbf<zzpx.zza> zzaMU;
    private final ExecutorService zzaNb = Executors.newSingleThreadExecutor();

    zzcn(Context context, String str) {
        this.mContext = context;
        this.zzaKy = str;
    }

    private zzqf.zzc zza(ByteArrayOutputStream byteArrayOutputStream) {
        try {
            return zzaz.zzey(byteArrayOutputStream.toString("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            zzbg.zzay("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            return null;
        } catch (JSONException e2) {
            zzbg.zzaC("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
    }

    private void zzd(zzpx.zza zzaVar) throws IllegalArgumentException {
        if (zzaVar.zziO == null && zzaVar.zzaPa == null) {
            throw new IllegalArgumentException("Resource and SupplementedResource are NULL.");
        }
    }

    private zzqf.zzc zzr(byte[] bArr) {
        try {
            zzqf.zzc zzb = zzqf.zzb(zzaf.zzf.zzc(bArr));
            if (zzb != null) {
                zzbg.zzaB("The container was successfully loaded from the resource (using binary file)");
            }
            return zzb;
        } catch (zzqf.zzg e) {
            zzbg.zzaC("The resource file is invalid. The container from the binary file is invalid");
            return null;
        } catch (zzrm e2) {
            zzbg.zzaz("The resource file is corrupted. The container cannot be extracted from the binary file");
            return null;
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public synchronized void release() {
        this.zzaNb.shutdown();
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zza(zzbf<zzpx.zza> zzbfVar) {
        this.zzaMU = zzbfVar;
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zzb(final zzpx.zza zzaVar) {
        this.zzaNb.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzcn.2
            @Override // java.lang.Runnable
            public void run() {
                zzcn.this.zzc(zzaVar);
            }
        });
    }

    boolean zzc(zzpx.zza zzaVar) {
        File zzzo = zzzo();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(zzzo);
            try {
                try {
                    fileOutputStream.write(zzrn.zzf(zzaVar));
                    try {
                        return true;
                    } catch (IOException e) {
                        return true;
                    }
                } catch (IOException e2) {
                    zzbg.zzaC("Error writing resource to disk. Removing resource from disk.");
                    zzzo.delete();
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (IOException e3) {
                        zzbg.zzaC("error closing stream for writing resource to disk");
                        return false;
                    }
                }
            } finally {
                try {
                    fileOutputStream.close();
                } catch (IOException e4) {
                    zzbg.zzaC("error closing stream for writing resource to disk");
                }
            }
        } catch (FileNotFoundException e5) {
            zzbg.zzaz("Error opening resource file for writing");
            return false;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public zzqf.zzc zziR(int i) {
        StringBuilder sb;
        try {
            InputStream openRawResource = this.mContext.getResources().openRawResource(i);
            zzbg.zzaB("Attempting to load a container from the resource ID " + i + " (" + this.mContext.getResources().getResourceName(i) + ")");
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzqf.zzc(openRawResource, byteArrayOutputStream);
                zzqf.zzc zza = zza(byteArrayOutputStream);
                if (zza == null) {
                    return zzr(byteArrayOutputStream.toByteArray());
                }
                zzbg.zzaB("The container was successfully loaded from the resource (using JSON file format)");
                return zza;
            } catch (IOException e) {
                sb = new StringBuilder();
                sb.append("Error reading the default container with resource ID ");
                sb.append(i);
                sb.append(" (");
                sb.append(this.mContext.getResources().getResourceName(i));
                sb.append(")");
                zzbg.zzaC(sb.toString());
                return null;
            }
        } catch (Resources.NotFoundException e2) {
            sb = new StringBuilder();
            sb.append("Failed to load the container. No default container resource found with the resource ID ");
            sb.append(i);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzp.zzf
    public void zzyw() {
        this.zzaNb.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzcn.1
            @Override // java.lang.Runnable
            public void run() {
                zzcn.this.zzzn();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
    
        if (r0 == com.google.android.gms.tagmanager.zzcb.zza.CONTAINER_DEBUG) goto L10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.FileInputStream] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0090 -> B:15:0x0095). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void zzzn() {
        /*
            r3 = this;
            com.google.android.gms.tagmanager.zzbf<com.google.android.gms.internal.zzpx$zza> r0 = r3.zzaMU
            if (r0 != 0) goto Lc
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Callback must be set before execute"
            r0.<init>(r1)
            throw r0
        Lc:
            com.google.android.gms.tagmanager.zzbf<com.google.android.gms.internal.zzpx$zza> r0 = r3.zzaMU
            r0.zzyv()
            java.lang.String r0 = "Attempting to load resource from disk"
            com.google.android.gms.tagmanager.zzbg.zzaB(r0)
            com.google.android.gms.tagmanager.zzcb r0 = com.google.android.gms.tagmanager.zzcb.zzzf()
            com.google.android.gms.tagmanager.zzcb$zza r0 = r0.zzzg()
            com.google.android.gms.tagmanager.zzcb$zza r1 = com.google.android.gms.tagmanager.zzcb.zza.CONTAINER
            if (r0 == r1) goto L2e
            com.google.android.gms.tagmanager.zzcb r0 = com.google.android.gms.tagmanager.zzcb.zzzf()
            com.google.android.gms.tagmanager.zzcb$zza r0 = r0.zzzg()
            com.google.android.gms.tagmanager.zzcb$zza r1 = com.google.android.gms.tagmanager.zzcb.zza.CONTAINER_DEBUG
            if (r0 != r1) goto L46
        L2e:
            java.lang.String r0 = r3.zzaKy
            com.google.android.gms.tagmanager.zzcb r1 = com.google.android.gms.tagmanager.zzcb.zzzf()
            java.lang.String r1 = r1.getContainerId()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L46
            com.google.android.gms.tagmanager.zzbf<com.google.android.gms.internal.zzpx$zza> r0 = r3.zzaMU
            com.google.android.gms.tagmanager.zzbf$zza r1 = com.google.android.gms.tagmanager.zzbf.zza.NOT_AVAILABLE
            r0.zza(r1)
            return
        L46:
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> La6
            java.io.File r1 = r3.zzzo()     // Catch: java.io.FileNotFoundException -> La6
            r0.<init>(r1)     // Catch: java.io.FileNotFoundException -> La6
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L6b java.lang.IllegalArgumentException -> L6d java.io.IOException -> L7e
            r1.<init>()     // Catch: java.lang.Throwable -> L6b java.lang.IllegalArgumentException -> L6d java.io.IOException -> L7e
            com.google.android.gms.internal.zzqf.zzc(r0, r1)     // Catch: java.lang.Throwable -> L6b java.lang.IllegalArgumentException -> L6d java.io.IOException -> L7e
            byte[] r1 = r1.toByteArray()     // Catch: java.lang.Throwable -> L6b java.lang.IllegalArgumentException -> L6d java.io.IOException -> L7e
            com.google.android.gms.internal.zzpx$zza r1 = com.google.android.gms.internal.zzpx.zza.zzs(r1)     // Catch: java.lang.Throwable -> L6b java.lang.IllegalArgumentException -> L6d java.io.IOException -> L7e
            r3.zzd(r1)     // Catch: java.lang.Throwable -> L6b java.lang.IllegalArgumentException -> L6d java.io.IOException -> L7e
            com.google.android.gms.tagmanager.zzbf<com.google.android.gms.internal.zzpx$zza> r2 = r3.zzaMU     // Catch: java.lang.Throwable -> L6b java.lang.IllegalArgumentException -> L6d java.io.IOException -> L7e
            r2.zzz(r1)     // Catch: java.lang.Throwable -> L6b java.lang.IllegalArgumentException -> L6d java.io.IOException -> L7e
            r0.close()     // Catch: java.io.IOException -> L8f
            goto L95
        L6b:
            r1 = move-exception
            goto L9b
        L6d:
            r1 = move-exception
            com.google.android.gms.tagmanager.zzbf<com.google.android.gms.internal.zzpx$zza> r1 = r3.zzaMU     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.tagmanager.zzbf$zza r2 = com.google.android.gms.tagmanager.zzbf.zza.IO_ERROR     // Catch: java.lang.Throwable -> L6b
            r1.zza(r2)     // Catch: java.lang.Throwable -> L6b
            java.lang.String r1 = "Failed to read the resource from disk. The resource is inconsistent"
            com.google.android.gms.tagmanager.zzbg.zzaC(r1)     // Catch: java.lang.Throwable -> L6b
            r0.close()     // Catch: java.io.IOException -> L8f
            goto L95
        L7e:
            r1 = move-exception
            com.google.android.gms.tagmanager.zzbf<com.google.android.gms.internal.zzpx$zza> r1 = r3.zzaMU     // Catch: java.lang.Throwable -> L6b
            com.google.android.gms.tagmanager.zzbf$zza r2 = com.google.android.gms.tagmanager.zzbf.zza.IO_ERROR     // Catch: java.lang.Throwable -> L6b
            r1.zza(r2)     // Catch: java.lang.Throwable -> L6b
            java.lang.String r1 = "Failed to read the resource from disk"
            com.google.android.gms.tagmanager.zzbg.zzaC(r1)     // Catch: java.lang.Throwable -> L6b
            r0.close()     // Catch: java.io.IOException -> L8f
            goto L95
        L8f:
            r0 = move-exception
            java.lang.String r0 = "Error closing stream for reading resource from disk"
            com.google.android.gms.tagmanager.zzbg.zzaC(r0)
        L95:
            java.lang.String r0 = "The Disk resource was successfully read."
            com.google.android.gms.tagmanager.zzbg.zzaB(r0)
            return
        L9b:
            r0.close()     // Catch: java.io.IOException -> L9f
            goto La5
        L9f:
            r0 = move-exception
            java.lang.String r0 = "Error closing stream for reading resource from disk"
            com.google.android.gms.tagmanager.zzbg.zzaC(r0)
        La5:
            throw r1
        La6:
            r0 = move-exception
            java.lang.String r0 = "Failed to find the resource in the disk"
            com.google.android.gms.tagmanager.zzbg.zzay(r0)
            com.google.android.gms.tagmanager.zzbf<com.google.android.gms.internal.zzpx$zza> r0 = r3.zzaMU
            com.google.android.gms.tagmanager.zzbf$zza r1 = com.google.android.gms.tagmanager.zzbf.zza.NOT_AVAILABLE
            r0.zza(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzcn.zzzn():void");
    }

    File zzzo() {
        return new File(this.mContext.getDir("google_tagmanager", 0), "resource_" + this.zzaKy);
    }
}
