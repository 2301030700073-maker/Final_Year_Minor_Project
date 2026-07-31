package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import androidx.media3.datasource.RawResourceDataSource;
import com.facebook.common.util.UriUtil;
import io.sentry.instrumentation.file.SentryFileInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgx extends zzft {
    private final Context zza;
    private zzgf zzb;
    private AssetFileDescriptor zzc;
    private InputStream zzd;
    private long zze;
    private boolean zzf;

    public zzgx(Context context) {
        super(false);
        this.zza = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 15);
        sb.append("rawresource:///");
        sb.append(i);
        return Uri.parse(sb.toString());
    }

    private static AssetFileDescriptor zzk(Context context, zzgf zzgfVar) throws zzgw {
        Resources resourcesForApplication;
        int identifier;
        Uri normalizeScheme = zzgfVar.zza.normalizeScheme();
        if (TextUtils.equals(RawResourceDataSource.RAW_RESOURCE_SCHEME, normalizeScheme.getScheme())) {
            resourcesForApplication = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() != 1) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 61);
                sb.append("rawresource:// URI must have exactly one path element, found ");
                sb.append(size);
                throw new zzgw(sb.toString());
            }
            identifier = zzl(pathSegments.get(0));
        } else {
            if (!TextUtils.equals(UriUtil.QUALIFIED_RESOURCE_SCHEME, normalizeScheme.getScheme())) {
                String scheme = normalizeScheme.getScheme();
                StringBuilder sb2 = new StringBuilder(String.valueOf(scheme).length() + 62);
                sb2.append("Unsupported URI scheme (");
                sb2.append(scheme);
                sb2.append("). Only android.resource is supported.");
                throw new zzgw(sb2.toString(), null, 1004);
            }
            String path = normalizeScheme.getPath();
            path.getClass();
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            String packageName = TextUtils.isEmpty(normalizeScheme.getHost()) ? context.getPackageName() : normalizeScheme.getHost();
            if (packageName.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new zzgw("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e, PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND);
                }
            }
            if (path.matches("\\d+")) {
                identifier = zzl(path);
            } else {
                StringBuilder sb3 = new StringBuilder(String.valueOf(packageName).length() + 1 + String.valueOf(path).length());
                sb3.append(packageName);
                sb3.append(":");
                sb3.append(path);
                identifier = resourcesForApplication.getIdentifier(sb3.toString(), "raw", null);
                if (identifier == 0) {
                    throw new zzgw("Resource not found.", null, PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND);
                }
            }
        }
        try {
            AssetFileDescriptor openRawResourceFd = resourcesForApplication.openRawResourceFd(identifier);
            if (openRawResourceFd != null) {
                return openRawResourceFd;
            }
            String valueOf = String.valueOf(normalizeScheme);
            String.valueOf(valueOf);
            throw new zzgw("Resource is compressed: ".concat(String.valueOf(valueOf)), null, 2000);
        } catch (Resources.NotFoundException e2) {
            throw new zzgw(null, e2, PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND);
        }
    }

    private static int zzl(String str) throws zzgw {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new zzgw("Resource identifier must be an integer.", null, 1004);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int zza(byte[] bArr, int i, int i2) throws zzgw {
        if (i2 == 0) {
            return 0;
        }
        long j = this.zze;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new zzgw(null, e, 2000);
            }
        }
        InputStream inputStream = this.zzd;
        String str = zzep.zza;
        InputStream inputStream2 = inputStream;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            if (this.zze == -1) {
                return -1;
            }
            throw new zzgw("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.zze;
        if (j2 != -1) {
            this.zze = j2 - read;
        }
        zzh(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    public final long zzb(zzgf zzgfVar) throws zzgw {
        long j;
        this.zzb = zzgfVar;
        zzf(zzgfVar);
        AssetFileDescriptor zzk = zzk(this.zza, zzgfVar);
        this.zzc = zzk;
        long length = zzk.getLength();
        FileDescriptor fileDescriptor = this.zzc.getFileDescriptor();
        FileInputStream create = SentryFileInputStream.Factory.create(new FileInputStream(fileDescriptor), fileDescriptor);
        this.zzd = create;
        if (length != -1) {
            try {
                if (zzgfVar.zze > length) {
                    throw new zzgw(null, null, 2008);
                }
            } catch (zzgw e) {
                throw e;
            } catch (IOException e2) {
                throw new zzgw(null, e2, 2000);
            }
        }
        long startOffset = this.zzc.getStartOffset();
        long j2 = zzgfVar.zze;
        long skip = create.skip(startOffset + j2) - startOffset;
        if (skip != j2) {
            throw new zzgw(null, null, 2008);
        }
        if (length == -1) {
            FileChannel channel = create.getChannel();
            if (channel.size() == 0) {
                this.zze = -1L;
                j = -1;
            } else {
                j = channel.size() - channel.position();
                this.zze = j;
                if (j < 0) {
                    throw new zzgw(null, null, 2008);
                }
            }
        } else {
            j = length - skip;
            this.zze = j;
            if (j < 0) {
                throw new zzgc(2008);
            }
        }
        long j3 = zzgfVar.zzf;
        if (j3 != -1) {
            this.zze = j == -1 ? j3 : Math.min(j, j3);
        }
        this.zzf = true;
        zzg(zzgfVar);
        return j3 != -1 ? j3 : this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    public final Uri zzc() {
        zzgf zzgfVar = this.zzb;
        if (zzgfVar != null) {
            return zzgfVar.zza;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    public final void zzd() throws zzgw {
        this.zzb = null;
        try {
            try {
                try {
                    InputStream inputStream = this.zzd;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    this.zzd = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.zzc;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                        this.zzc = null;
                        if (this.zzf) {
                            this.zzf = false;
                            zzi();
                        }
                    } catch (IOException e) {
                        throw new zzgw(null, e, 2000);
                    }
                } catch (IOException e2) {
                    throw new zzgw(null, e2, 2000);
                }
            } catch (Throwable th) {
                this.zzc = null;
                if (this.zzf) {
                    this.zzf = false;
                    zzi();
                }
                throw th;
            }
        } catch (Throwable th2) {
            this.zzd = null;
            try {
                AssetFileDescriptor assetFileDescriptor2 = this.zzc;
                if (assetFileDescriptor2 != null) {
                    assetFileDescriptor2.close();
                }
                this.zzc = null;
                if (this.zzf) {
                    this.zzf = false;
                    zzi();
                }
                throw th2;
            } catch (IOException e3) {
                throw new zzgw(null, e3, 2000);
            }
        }
    }
}
