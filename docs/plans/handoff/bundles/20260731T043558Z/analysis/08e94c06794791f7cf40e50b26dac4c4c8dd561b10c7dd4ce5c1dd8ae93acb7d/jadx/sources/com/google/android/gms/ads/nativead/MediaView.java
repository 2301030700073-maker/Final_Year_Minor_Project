package com.google.android.gms.ads.nativead;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbhu;
import com.google.android.gms.internal.ads.zzbhw;
import com.google.android.gms.internal.ads.zzbjc;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public class MediaView extends FrameLayout {
    private MediaContent zza;
    private boolean zzb;
    private zzbhu zzc;
    private ImageView.ScaleType zzd;
    private boolean zze;
    private zzbhw zzf;

    public MediaView(Context context) {
        super(context);
    }

    public MediaContent getMediaContent() {
        return this.zza;
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.zze = true;
        this.zzd = scaleType;
        zzbhw zzbhwVar = this.zzf;
        if (zzbhwVar != null) {
            zzbhwVar.zza(scaleType);
        }
    }

    public void setMediaContent(MediaContent mediaContent) {
        boolean zzt;
        this.zzb = true;
        this.zza = mediaContent;
        zzbhu zzbhuVar = this.zzc;
        if (zzbhuVar != null) {
            zzbhuVar.zza(mediaContent);
        }
        if (mediaContent == null) {
            return;
        }
        try {
            zzbjc zzb = mediaContent.zzb();
            if (zzb != null) {
                if (!mediaContent.hasVideoContent()) {
                    if (mediaContent.zza()) {
                        zzt = zzb.zzt(ObjectWrapper.wrap(this));
                    }
                    removeAllViews();
                }
                zzt = zzb.zzn(ObjectWrapper.wrap(this));
                if (zzt) {
                    return;
                }
                removeAllViews();
            }
        } catch (RemoteException e) {
            removeAllViews();
            zzo.zzg("", e);
        }
    }

    protected final synchronized void zza(zzbhu zzbhuVar) {
        this.zzc = zzbhuVar;
        if (this.zzb) {
            zzbhuVar.zza(this.zza);
        }
    }

    protected final synchronized void zzb(zzbhw zzbhwVar) {
        this.zzf = zzbhwVar;
        if (this.zze) {
            zzbhwVar.zza(this.zzd);
        }
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
