package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.util.Base64;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.ByteArrayOutputStream;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzduf {
    private final Context zza;
    private final ApplicationInfo zzb;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private final int zzc = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzja)).intValue();
    private final int zzd = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjb)).intValue();

    public zzduf(Context context) {
        this.zza = context;
        this.zzb = context.getApplicationInfo();
    }

    public final JSONObject zza() {
        String str;
        String encodeToString;
        JSONObject jSONObject = new JSONObject();
        try {
            Context context = this.zza;
            String str2 = this.zzb.packageName;
            zzfqw zzfqwVar = com.google.android.gms.ads.internal.util.zzs.zza;
            jSONObject.put(FacebookRequestErrorClassification.KEY_NAME, Wrappers.packageManager(context).getApplicationLabel(str2));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        jSONObject.put("packageName", this.zzb.packageName);
        com.google.android.gms.ads.internal.zzv.zzq();
        Drawable drawable = null;
        try {
            str = com.google.android.gms.ads.internal.util.zzs.zzq(this.zza);
        } catch (RemoteException unused2) {
            str = null;
        }
        jSONObject.put("adMobAppId", str);
        if (this.zze.isEmpty()) {
            try {
                drawable = Wrappers.packageManager(this.zza).getApplicationLabelAndIcon(this.zzb.packageName).f15569if;
            } catch (PackageManager.NameNotFoundException unused3) {
            }
            if (drawable == null) {
                encodeToString = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                drawable.setBounds(0, 0, this.zzc, this.zzd);
                Bitmap createBitmap = Bitmap.createBitmap(this.zzc, this.zzd, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.zze = encodeToString;
        }
        if (!this.zze.isEmpty()) {
            jSONObject.put("icon", this.zze);
            jSONObject.put("iconWidthPx", this.zzc);
            jSONObject.put("iconHeightPx", this.zzd);
        }
        return jSONObject;
    }
}
