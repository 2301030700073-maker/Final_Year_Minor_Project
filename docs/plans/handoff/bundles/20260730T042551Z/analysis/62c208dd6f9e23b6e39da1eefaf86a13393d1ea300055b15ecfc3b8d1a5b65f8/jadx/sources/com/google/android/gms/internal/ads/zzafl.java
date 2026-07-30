package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzafl {
    private final ByteArrayOutputStream zza;
    private final DataOutputStream zzb;

    public zzafl() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(AdRequest.MAX_CONTENT_URL_LENGTH);
        this.zza = byteArrayOutputStream;
        this.zzb = new DataOutputStream(byteArrayOutputStream);
    }

    private static void zzb(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public final byte[] zza(zzafk zzafkVar) {
        this.zza.reset();
        try {
            zzb(this.zzb, zzafkVar.zza);
            String str = zzafkVar.zzb;
            if (str == null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            zzb(this.zzb, str);
            this.zzb.writeLong(zzafkVar.zzc);
            this.zzb.writeLong(zzafkVar.zzd);
            this.zzb.write(zzafkVar.zze);
            this.zzb.flush();
            return this.zza.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
