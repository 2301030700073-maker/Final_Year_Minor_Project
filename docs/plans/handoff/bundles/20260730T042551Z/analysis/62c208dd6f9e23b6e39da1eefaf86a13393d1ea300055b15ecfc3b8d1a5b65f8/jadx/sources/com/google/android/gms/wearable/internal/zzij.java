package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
final class zzij implements Callable {
    final /* synthetic */ ParcelFileDescriptor zza;
    final /* synthetic */ byte[] zzb;

    public zzij(zzim zzimVar, ParcelFileDescriptor parcelFileDescriptor, byte[] bArr) {
        this.zza = parcelFileDescriptor;
        this.zzb = bArr;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        if (Log.isLoggable("WearableClient", 3)) {
            "processAssets: writing data to FD : ".concat(String.valueOf(this.zza));
        }
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.zza);
        try {
            try {
                autoCloseOutputStream.write(this.zzb);
                autoCloseOutputStream.flush();
                if (Log.isLoggable("WearableClient", 3)) {
                    String.valueOf(this.zza);
                }
                Boolean bool = Boolean.TRUE;
                try {
                    if (Log.isLoggable("WearableClient", 3)) {
                        String.valueOf(this.zza);
                    }
                    autoCloseOutputStream.close();
                    return bool;
                } catch (IOException unused) {
                    return bool;
                }
            } catch (IOException unused2) {
                String.valueOf(this.zza);
                return Boolean.FALSE;
            }
        } finally {
            try {
                if (Log.isLoggable("WearableClient", 3)) {
                    String.valueOf(this.zza);
                }
                autoCloseOutputStream.close();
            } catch (IOException unused3) {
            }
        }
    }
}
