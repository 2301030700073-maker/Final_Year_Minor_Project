package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes3.dex */
final class zzik implements Runnable {
    final /* synthetic */ Uri zza;
    final /* synthetic */ BaseImplementation.ResultHolder zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzim zze;

    public zzik(zzim zzimVar, Uri uri, BaseImplementation.ResultHolder resultHolder, boolean z, String str) {
        this.zze = zzimVar;
        this.zza = uri;
        this.zzb = resultHolder;
        this.zzc = z;
        this.zzd = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!"file".equals(this.zza.getScheme())) {
            this.zzb.setFailedResult(new Status(10, "Channel.receiveFile used with non-file URI"));
            return;
        }
        File file = new File(this.zza.getPath());
        try {
            ParcelFileDescriptor open = ParcelFileDescriptor.open(file, (true != this.zzc ? 0 : 33554432) | 671088640);
            try {
                try {
                    ((zzfb) this.zze.getService()).zzC(new zzii(this.zzb), this.zzd, open);
                } catch (RemoteException unused) {
                    this.zzb.setFailedResult(new Status(8));
                    try {
                        open.close();
                    } catch (IOException unused2) {
                    }
                }
            } finally {
                try {
                    open.close();
                } catch (IOException unused3) {
                }
            }
        } catch (FileNotFoundException unused4) {
            "File couldn't be opened for Channel.receiveFile: ".concat(file.toString());
            this.zzb.setFailedResult(new Status(13));
        }
    }
}
