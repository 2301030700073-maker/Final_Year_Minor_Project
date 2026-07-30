package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdkt {
    private final com.google.android.gms.ads.internal.util.zzbo zza;
    private final Clock zzb;
    private final Executor zzc;

    public zzdkt(com.google.android.gms.ads.internal.util.zzbo zzboVar, Clock clock, Executor executor) {
        this.zza = zzboVar;
        this.zzb = clock;
        this.zzc = executor;
    }

    private final Bitmap zzc(byte[] bArr, BitmapFactory.Options options) {
        long elapsedRealtime = this.zzb.elapsedRealtime();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long elapsedRealtime2 = this.zzb.elapsedRealtime();
        if (decodeByteArray != null) {
            long j = elapsedRealtime2 - elapsedRealtime;
            com.google.android.gms.ads.internal.util.zze.zza("Decoded image w: " + decodeByteArray.getWidth() + " h:" + decodeByteArray.getHeight() + " bytes: " + decodeByteArray.getAllocationByteCount() + " time: " + j + " on ui thread: " + (Looper.getMainLooper().getThread() == Thread.currentThread()));
        }
        return decodeByteArray;
    }

    public final /* synthetic */ Bitmap zza(double d, boolean z, zzapi zzapiVar) {
        byte[] bArr = zzapiVar.zzb;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfY)).booleanValue()) {
            options.inJustDecodeBounds = true;
            zzc(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfZ)).intValue())) / 2);
            }
        }
        return zzc(bArr, options);
    }

    public final InterfaceFutureC3942wq zzb(String str, final double d, final boolean z) {
        return zzgch.zzm(this.zza.zza(str), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzdks
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return zzdkt.this.zza(d, z, (zzapi) obj);
            }
        }, this.zzc);
    }
}
