package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdqc extends zzbjb {
    private final Context zza;
    private final zzdlq zzb;
    private zzdmp zzc;
    private zzdll zzd;

    public zzdqc(Context context, zzdlq zzdlqVar, zzdmp zzdmpVar, zzdll zzdllVar) {
        this.zza = context;
        this.zzb = zzdlqVar;
        this.zzc = zzdmpVar;
        this.zzd = zzdllVar;
    }

    final /* synthetic */ zzdll zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final String zze(String str) {
        return (String) this.zzb.zzad().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final zzbii zzf(String str) {
        return (zzbii) this.zzb.zzaa().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final List zzg() {
        try {
            zzdlq zzdlqVar = this.zzb;
            SimpleArrayMap zzaa = zzdlqVar.zzaa();
            SimpleArrayMap zzad = zzdlqVar.zzad();
            String[] strArr = new String[zzaa.getSize() + zzad.getSize()];
            int i = 0;
            for (int i2 = 0; i2 < zzaa.getSize(); i2++) {
                strArr[i] = (String) zzaa.keyAt(i2);
                i++;
            }
            for (int i3 = 0; i3 < zzad.getSize(); i3++) {
                strArr[i] = (String) zzad.keyAt(i3);
                i++;
            }
            return Arrays.asList(strArr);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "InternalNativeCustomTemplateAdShim.getAvailableAssetNames");
            return new ArrayList();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final String zzh() {
        return this.zzb.zzS();
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzi(String str) {
        zzdll zzdllVar = this.zzd;
        if (zzdllVar != null) {
            zzdllVar.zza(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzj() {
        zzdll zzdllVar = this.zzd;
        if (zzdllVar != null) {
            zzdllVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final com.google.android.gms.ads.internal.client.zzed zzk() {
        return this.zzb.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzl() {
        zzdll zzdllVar = this.zzd;
        if (zzdllVar != null) {
            zzdllVar.zzd();
        }
        this.zzd = null;
        this.zzc = null;
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final IObjectWrapper zzm() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final boolean zzn(IObjectWrapper iObjectWrapper) {
        zzdmp zzdmpVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof ViewGroup) || (zzdmpVar = this.zzc) == null || !zzdmpVar.zzd((ViewGroup) unwrap)) {
            return false;
        }
        this.zzb.zzT().zzaq(new zzdqb(this, NativeCustomFormatAd.ASSET_NAME_VIDEO));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final boolean zzo() {
        zzdll zzdllVar = this.zzd;
        if (zzdllVar != null && !zzdllVar.zzM()) {
            return false;
        }
        zzdlq zzdlqVar = this.zzb;
        return zzdlqVar.zzW() != null && zzdlqVar.zzT() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final boolean zzp() {
        zzdlq zzdlqVar = this.zzb;
        zzehf zzZ = zzdlqVar.zzZ();
        if (zzZ == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Trying to start OMID session before creation.");
            return false;
        }
        com.google.android.gms.ads.internal.zzt.zzu().zze(zzZ.zza());
        if (zzdlqVar.zzW() == null) {
            return true;
        }
        zzdlqVar.zzW().zze("onSdkLoaded", new ArrayMap());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzq(IObjectWrapper iObjectWrapper) {
        zzdll zzdllVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof View) || this.zzb.zzZ() == null || (zzdllVar = this.zzd) == null) {
            return;
        }
        zzdllVar.zzN((View) unwrap);
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final void zzr() {
        try {
            String zzac = this.zzb.zzac();
            if (Objects.equals(zzac, "Google")) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Illegal argument specified for omid partner name.");
            } else if (TextUtils.isEmpty(zzac)) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Not starting OMID session. OM partner name has not been configured.");
            } else {
                zzdll zzdllVar = this.zzd;
                if (zzdllVar != null) {
                    zzdllVar.zzL(zzac, false);
                }
            }
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final zzbif zzs() throws RemoteException {
        try {
            return this.zzd.zzP().zza();
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzt.zzh().zzg(e, "InternalNativeCustomTemplateAdShim.getMediaContent");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjc
    public final boolean zzt(IObjectWrapper iObjectWrapper) {
        zzdmp zzdmpVar;
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof ViewGroup) || (zzdmpVar = this.zzc) == null || !zzdmpVar.zze((ViewGroup) unwrap)) {
            return false;
        }
        this.zzb.zzU().zzaq(new zzdqb(this, NativeCustomFormatAd.ASSET_NAME_VIDEO));
        return true;
    }
}
