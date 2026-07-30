package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.ads.AdError;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes.dex */
public final class zzfv extends zzfr {
    private final ContentResolver zza;
    private Uri zzb;
    private AssetFileDescriptor zzc;
    private FileInputStream zzd;
    private long zze;
    private boolean zzf;

    public zzfv(Context context) {
        super(false);
        this.zza = context.getContentResolver();
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i, int i2) {
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
                throw new zzfu(e, AdError.SERVER_ERROR_CODE);
            }
        }
        FileInputStream fileInputStream = this.zzd;
        int i3 = zzei.zza;
        int read = fileInputStream.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.zze;
        if (j2 != -1) {
            this.zze = j2 - read;
        }
        zzg(read);
        return read;
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final long zzb(zzgd zzgdVar) {
        int i;
        AssetFileDescriptor openAssetFileDescriptor;
        long j;
        try {
            try {
                Uri normalizeScheme = zzgdVar.zza.normalizeScheme();
                this.zzb = normalizeScheme;
                zzi(zzgdVar);
                if ("content".equals(normalizeScheme.getScheme())) {
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                    openAssetFileDescriptor = this.zza.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
                } else {
                    openAssetFileDescriptor = this.zza.openAssetFileDescriptor(normalizeScheme, "r");
                }
                this.zzc = openAssetFileDescriptor;
                if (openAssetFileDescriptor == null) {
                    IOException iOException = new IOException("Could not open file descriptor for: ".concat(String.valueOf(normalizeScheme)));
                    i = AdError.SERVER_ERROR_CODE;
                    try {
                        throw new zzfu(iOException, AdError.SERVER_ERROR_CODE);
                    } catch (IOException e) {
                        e = e;
                        if (true == (e instanceof FileNotFoundException)) {
                            i = 2005;
                        }
                        throw new zzfu(e, i);
                    }
                }
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.zzd = fileInputStream;
                if (length != -1 && zzgdVar.zze > length) {
                    throw new zzfu(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(zzgdVar.zze + startOffset) - startOffset;
                if (skip != zzgdVar.zze) {
                    throw new zzfu(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    long size = channel.size();
                    if (size == 0) {
                        this.zze = -1L;
                        j = -1;
                    } else {
                        j = size - channel.position();
                        this.zze = j;
                        if (j < 0) {
                            throw new zzfu(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                        }
                    }
                } else {
                    j = length - skip;
                    this.zze = j;
                    if (j < 0) {
                        throw new zzfu(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                    }
                }
                long j2 = zzgdVar.zzf;
                if (j2 != -1) {
                    if (j != -1) {
                        j2 = Math.min(j, j2);
                    }
                    this.zze = j2;
                }
                this.zzf = true;
                zzj(zzgdVar);
                long j3 = zzgdVar.zzf;
                return j3 != -1 ? j3 : this.zze;
            } catch (IOException e2) {
                e = e2;
                i = AdError.SERVER_ERROR_CODE;
            }
        } catch (zzfu e3) {
            throw e3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final void zzd() {
        this.zzb = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream = this.zzd;
                    if (fileInputStream != null) {
                        fileInputStream.close();
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
                            zzh();
                        }
                    } catch (IOException e) {
                        throw new zzfu(e, AdError.SERVER_ERROR_CODE);
                    }
                } catch (IOException e2) {
                    throw new zzfu(e2, AdError.SERVER_ERROR_CODE);
                }
            } catch (Throwable th) {
                this.zzc = null;
                if (this.zzf) {
                    this.zzf = false;
                    zzh();
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
                    zzh();
                }
                throw th2;
            } catch (IOException e3) {
                throw new zzfu(e3, AdError.SERVER_ERROR_CODE);
            }
        }
    }
}
