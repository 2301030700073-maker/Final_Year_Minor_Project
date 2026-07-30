package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzfd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbga;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class NativeAdView extends FrameLayout {
    private final FrameLayout zza;
    private final zzbga zzb;

    public NativeAdView(Context context) {
        super(context);
        this.zza = zzd(context);
        this.zzb = zze();
    }

    private final FrameLayout zzd(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    private final zzbga zze() {
        if (isInEditMode()) {
            return null;
        }
        FrameLayout frameLayout = this.zza;
        return zzbc.zza().zzj(frameLayout.getContext(), this, frameLayout);
    }

    private final void zzf(String str, View view) {
        zzbga zzbgaVar = this.zzb;
        if (zzbgaVar == null) {
            return;
        }
        try {
            zzbgaVar.zzdt(str, new BinderC3652rv(view));
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zza);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.zza;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public void destroy() {
        zzbga zzbgaVar = this.zzb;
        if (zzbgaVar == null) {
            return;
        }
        try {
            zzbgaVar.zzc();
        } catch (RemoteException e) {
            zzo.zzh("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.zzb != null) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzls)).booleanValue()) {
                try {
                    this.zzb.zzd(new BinderC3652rv(motionEvent));
                } catch (RemoteException e) {
                    zzo.zzh("Unable to call handleTouchEvent on delegate", e);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public AdChoicesView getAdChoicesView() {
        View zza = zza("3011");
        if (zza instanceof AdChoicesView) {
            return (AdChoicesView) zza;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return zza("3005");
    }

    public final View getBodyView() {
        return zza("3004");
    }

    public final View getCallToActionView() {
        return zza("3002");
    }

    public final View getHeadlineView() {
        return zza("3001");
    }

    public final View getIconView() {
        return zza("3003");
    }

    public final View getImageView() {
        return zza("3008");
    }

    public final MediaView getMediaView() {
        View zza = zza("3010");
        if (zza instanceof MediaView) {
            return (MediaView) zza;
        }
        if (zza == null) {
            return null;
        }
        zzo.zze("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return zza("3007");
    }

    public final View getStarRatingView() {
        return zza("3009");
    }

    public final View getStoreView() {
        return zza("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        zzbga zzbgaVar = this.zzb;
        if (zzbgaVar == null) {
            return;
        }
        try {
            zzbgaVar.zze(new BinderC3652rv(view), i);
        } catch (RemoteException e) {
            zzo.zzh("Unable to call onVisibilityChanged on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        addView(this.zza);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.zza == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        zzf("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        zzf("3005", view);
    }

    public final void setBodyView(View view) {
        zzf("3004", view);
    }

    public final void setCallToActionView(View view) {
        zzf("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        zzbga zzbgaVar = this.zzb;
        if (zzbgaVar == null) {
            return;
        }
        try {
            zzbgaVar.zzdu(new BinderC3652rv(view));
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        zzf("3001", view);
    }

    public final void setIconView(View view) {
        zzf("3003", view);
    }

    public final void setImageView(View view) {
        zzf("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        zzf("3010", mediaView);
        if (mediaView == null) {
            return;
        }
        mediaView.zza(new zzb(this));
        mediaView.zzb(new zzc(this));
    }

    public void setNativeAd(NativeAd nativeAd) {
        zzbga zzbgaVar = this.zzb;
        if (zzbgaVar == null) {
            return;
        }
        try {
            zzbgaVar.zzdx((InterfaceC0456Qm) nativeAd.zza());
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        zzf("3007", view);
    }

    public final void setStarRatingView(View view) {
        zzf("3009", view);
    }

    public final void setStoreView(View view) {
        zzf("3006", view);
    }

    public final View zza(String str) {
        zzbga zzbgaVar = this.zzb;
        if (zzbgaVar != null) {
            try {
                InterfaceC0456Qm zzb = zzbgaVar.zzb(str);
                if (zzb != null) {
                    return (View) BinderC3652rv.o(zzb);
                }
            } catch (RemoteException e) {
                zzo.zzh("Unable to call getAssetView on delegate", e);
            }
        }
        return null;
    }

    public final /* synthetic */ void zzb(MediaContent mediaContent) {
        zzbga zzbgaVar = this.zzb;
        if (zzbgaVar == null) {
            return;
        }
        try {
            if (mediaContent instanceof zzfd) {
                zzbgaVar.zzdv(((zzfd) mediaContent).zzc());
            } else if (mediaContent == null) {
                zzbgaVar.zzdv(null);
            } else {
                zzo.zze("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setMediaContent on delegate", e);
        }
    }

    public final void zzc(ImageView.ScaleType scaleType) {
        zzbga zzbgaVar = this.zzb;
        if (zzbgaVar == null || scaleType == null) {
            return;
        }
        try {
            zzbgaVar.zzdw(new BinderC3652rv(scaleType));
        } catch (RemoteException e) {
            zzo.zzh("Unable to call setMediaViewImageScaleType on delegate", e);
        }
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.zza = zzd(context);
        this.zzb = zze();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zza = zzd(context);
        this.zzb = zze();
    }

    @TargetApi(21)
    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.zza = zzd(context);
        this.zzb = zze();
    }
}
