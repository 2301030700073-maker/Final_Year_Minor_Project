package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbsn extends NativeAd {
    private final zzbht zza;
    private final zzbsm zzc;
    private final NativeAd.AdChoicesInfo zzd;
    private final List zzb = new ArrayList();
    private final List zze = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(16:0|1|2|3|(2:5|(5:8|(1:10)(1:17)|(3:12|13|14)(1:16)|15|6))|(3:19|20|(2:22|(5:25|(1:27)(1:34)|(3:29|30|31)(1:33)|32|23)))|36|37|(7:39|40|41|42|(2:44|45)|47|48)|53|40|41|42|(0)|47|48) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a4, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a5, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzo.zzh(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0097 A[Catch: RemoteException -> 0x00a4, TRY_LEAVE, TryCatch #2 {RemoteException -> 0x00a4, blocks: (B:42:0x008f, B:44:0x0097), top: B:41:0x008f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbsn(com.google.android.gms.internal.ads.zzbht r6) {
        /*
            r5 = this;
            java.lang.String r0 = ""
            r5.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5.zzb = r1
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            r5.zze = r1
            r5.zza = r6
            r1 = 0
            java.util.List r6 = r6.zzu()     // Catch: android.os.RemoteException -> L43
            if (r6 == 0) goto L47
            java.util.Iterator r6 = r6.iterator()     // Catch: android.os.RemoteException -> L43
        L20:
            boolean r2 = r6.hasNext()     // Catch: android.os.RemoteException -> L43
            if (r2 == 0) goto L47
            java.lang.Object r2 = r6.next()     // Catch: android.os.RemoteException -> L43
            boolean r3 = r2 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L43
            if (r3 == 0) goto L35
            android.os.IBinder r2 = (android.os.IBinder) r2     // Catch: android.os.RemoteException -> L43
            com.google.android.gms.internal.ads.zzbfw r2 = com.google.android.gms.internal.ads.zzbfv.zzg(r2)     // Catch: android.os.RemoteException -> L43
            goto L36
        L35:
            r2 = r1
        L36:
            if (r2 == 0) goto L20
            java.util.List r3 = r5.zzb     // Catch: android.os.RemoteException -> L43
            com.google.android.gms.internal.ads.zzbsm r4 = new com.google.android.gms.internal.ads.zzbsm     // Catch: android.os.RemoteException -> L43
            r4.<init>(r2)     // Catch: android.os.RemoteException -> L43
            r3.add(r4)     // Catch: android.os.RemoteException -> L43
            goto L20
        L43:
            r6 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r6)
        L47:
            com.google.android.gms.internal.ads.zzbht r6 = r5.zza     // Catch: android.os.RemoteException -> L76
            java.util.List r6 = r6.zzv()     // Catch: android.os.RemoteException -> L76
            if (r6 == 0) goto L7a
            java.util.Iterator r6 = r6.iterator()     // Catch: android.os.RemoteException -> L76
        L53:
            boolean r2 = r6.hasNext()     // Catch: android.os.RemoteException -> L76
            if (r2 == 0) goto L7a
            java.lang.Object r2 = r6.next()     // Catch: android.os.RemoteException -> L76
            boolean r3 = r2 instanceof android.os.IBinder     // Catch: android.os.RemoteException -> L76
            if (r3 == 0) goto L68
            android.os.IBinder r2 = (android.os.IBinder) r2     // Catch: android.os.RemoteException -> L76
            com.google.android.gms.ads.internal.client.zzdh r2 = com.google.android.gms.ads.internal.client.zzdg.zzb(r2)     // Catch: android.os.RemoteException -> L76
            goto L69
        L68:
            r2 = r1
        L69:
            if (r2 == 0) goto L53
            java.util.List r3 = r5.zze     // Catch: android.os.RemoteException -> L76
            com.google.android.gms.ads.internal.client.zzdi r4 = new com.google.android.gms.ads.internal.client.zzdi     // Catch: android.os.RemoteException -> L76
            r4.<init>(r2)     // Catch: android.os.RemoteException -> L76
            r3.add(r4)     // Catch: android.os.RemoteException -> L76
            goto L53
        L76:
            r6 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r6)
        L7a:
            com.google.android.gms.internal.ads.zzbht r6 = r5.zza     // Catch: android.os.RemoteException -> L88
            com.google.android.gms.internal.ads.zzbfw r6 = r6.zzk()     // Catch: android.os.RemoteException -> L88
            if (r6 == 0) goto L8c
            com.google.android.gms.internal.ads.zzbsm r2 = new com.google.android.gms.internal.ads.zzbsm     // Catch: android.os.RemoteException -> L88
            r2.<init>(r6)     // Catch: android.os.RemoteException -> L88
            goto L8d
        L88:
            r6 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r6)
        L8c:
            r2 = r1
        L8d:
            r5.zzc = r2
            com.google.android.gms.internal.ads.zzbht r6 = r5.zza     // Catch: android.os.RemoteException -> La4
            com.google.android.gms.internal.ads.zzbfp r6 = r6.zzi()     // Catch: android.os.RemoteException -> La4
            if (r6 == 0) goto La8
            com.google.android.gms.internal.ads.zzbsk r6 = new com.google.android.gms.internal.ads.zzbsk     // Catch: android.os.RemoteException -> La4
            com.google.android.gms.internal.ads.zzbht r2 = r5.zza     // Catch: android.os.RemoteException -> La4
            com.google.android.gms.internal.ads.zzbfp r2 = r2.zzi()     // Catch: android.os.RemoteException -> La4
            r6.<init>(r2)     // Catch: android.os.RemoteException -> La4
            r1 = r6
            goto La8
        La4:
            r6 = move-exception
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r0, r6)
        La8:
            r5.zzd = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbsn.<init>(com.google.android.gms.internal.ads.zzbht):void");
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.zza.zzw();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void destroy() {
        try {
            this.zza.zzx();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void enableCustomClickGesture() {
        try {
            this.zza.zzD();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getAdvertiser() {
        try {
            return this.zza.zzn();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getBody() {
        try {
            return this.zza.zzo();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getCallToAction() {
        try {
            return this.zza.zzp();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Bundle getExtras() {
        try {
            Bundle zzf = this.zza.zzf();
            if (zzf != null) {
                return zzf;
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getHeadline() {
        try {
            return this.zza.zzq();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final NativeAd.Image getIcon() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<NativeAd.Image> getImages() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final MediaContent getMediaContent() {
        try {
            if (this.zza.zzj() != null) {
                return new com.google.android.gms.ads.internal.client.zzfd(this.zza.zzj(), null);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
        return null;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getPrice() {
        try {
            return this.zza.zzs();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzdy zzdyVar;
        try {
            zzdyVar = this.zza.zzg();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            zzdyVar = null;
        }
        return ResponseInfo.zza(zzdyVar);
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final Double getStarRating() {
        try {
            double zze = this.zza.zze();
            if (zze == -1.0d) {
                return null;
            }
            return Double.valueOf(zze);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final String getStore() {
        try {
            return this.zza.zzt();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.zza.zzH();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.zza.zzI();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            try {
                if (this.zza.zzI()) {
                    if (muteThisAdReason == null) {
                        this.zza.zzy(null);
                        return;
                    } else if (muteThisAdReason instanceof com.google.android.gms.ads.internal.client.zzdi) {
                        this.zza.zzy(((com.google.android.gms.ads.internal.client.zzdi) muteThisAdReason).zza());
                        return;
                    } else {
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
                        return;
                    }
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Ad is not custom mute enabled");
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zza.zzz(bundle);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordCustomClickGesture() {
        try {
            this.zza.zzA();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void recordEvent(Bundle bundle) {
        try {
            this.zza.zzB(bundle);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to record native event", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zza.zzJ(bundle);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zza.zzC(bundle);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.zza.zzE(new com.google.android.gms.ads.internal.client.zzde(muteThisAdListener));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zza.zzF(new com.google.android.gms.ads.internal.client.zzfs(onPaidEventListener));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to setOnPaidEventListener", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.zza.zzG(new zzbsu(unconfirmedClickListener));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Failed to setUnconfirmedClickListener", e);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd
    public final /* bridge */ /* synthetic */ Object zza() {
        try {
            return this.zza.zzm();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            return null;
        }
    }
}
