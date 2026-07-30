package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbif;
import com.google.android.gms.internal.ads.zzbih;
import com.google.android.gms.internal.ads.zzbsx;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzcex;
import com.google.android.gms.internal.ads.zzcwg;
import com.google.android.gms.internal.ads.zzdds;
import defpackage.BinderC3652rv;
import defpackage.C3513pV;
import defpackage.CallableC3925wV;
import defpackage.InterfaceC0456Qm;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

@SafeParcelable.Class(creator = "AdOverlayInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class AdOverlayInfoParcel extends AbstractSafeParcelable implements ReflectedParcelable {

    @SafeParcelable.Field(id = 2)
    public final zzc zza;

    @SafeParcelable.Field(getter = "getAdClickListenerAsBinder", id = 3, type = "android.os.IBinder")
    public final com.google.android.gms.ads.internal.client.zza zzb;

    @SafeParcelable.Field(getter = "getAdOverlayListenerAsBinder", id = 4, type = "android.os.IBinder")
    public final zzr zzc;

    @SafeParcelable.Field(getter = "getAdWebViewAsBinder", id = 5, type = "android.os.IBinder")
    public final zzcex zzd;

    @SafeParcelable.Field(getter = "getAppEventGmsgListenerAsBinder", id = 6, type = "android.os.IBinder")
    public final zzbih zze;

    @SafeParcelable.Field(id = 7)
    public final String zzf;

    @SafeParcelable.Field(id = 8)
    public final boolean zzg;

    @SafeParcelable.Field(id = 9)
    public final String zzh;

    @SafeParcelable.Field(getter = "getLeaveApplicationListenerAsBinder", id = 10, type = "android.os.IBinder")
    public final zzac zzi;

    @SafeParcelable.Field(id = 11)
    public final int zzj;

    @SafeParcelable.Field(id = 12)
    public final int zzk;

    @SafeParcelable.Field(id = 13)
    public final String zzl;

    @SafeParcelable.Field(id = 14)
    public final VersionInfoParcel zzm;

    @SafeParcelable.Field(id = 16)
    public final String zzn;

    @SafeParcelable.Field(id = 17)
    public final com.google.android.gms.ads.internal.zzl zzo;

    @SafeParcelable.Field(getter = "getAdMetadataGmsgListenerAsBinder", id = 18, type = "android.os.IBinder")
    public final zzbif zzp;

    @SafeParcelable.Field(id = 19)
    public final String zzq;

    @SafeParcelable.Field(id = ConnectionResult.API_DISABLED_FOR_CONNECTION)
    public final String zzr;

    @SafeParcelable.Field(id = Constants.MAX_TREE_DEPTH)
    public final String zzs;

    @SafeParcelable.Field(getter = "getAdFailedToShowEventEmitterAsBinder", id = 26, type = "android.os.IBinder")
    public final zzcwg zzt;

    @SafeParcelable.Field(getter = "getPhysicalClickListenerAsBinder", id = 27, type = "android.os.IBinder")
    public final zzdds zzu;

    @SafeParcelable.Field(getter = "getOfflineUtilsAsBinder", id = 28, type = "android.os.IBinder")
    public final zzbsx zzv;

    @SafeParcelable.Field(id = 29)
    public final boolean zzw;

    @SafeParcelable.Field(id = 30)
    public final long zzx;
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new zzo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final AtomicLong f9693do = new AtomicLong(0);

    /* renamed from: do, reason: not valid java name */
    public static final ConcurrentHashMap f9692do = new ConcurrentHashMap();

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzbif zzbifVar, zzbih zzbihVar, zzac zzacVar, zzcex zzcexVar, boolean z, int i, String str, VersionInfoParcel versionInfoParcel, zzdds zzddsVar, zzbsx zzbsxVar, boolean z2) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = zzcexVar;
        this.zzp = zzbifVar;
        this.zze = zzbihVar;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzacVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = str;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzddsVar;
        this.zzv = zzbsxVar;
        this.zzw = z2;
        this.zzx = f9693do.getAndIncrement();
    }

    public static final IBinder f(Object obj) {
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzmL)).booleanValue()) {
            return null;
        }
        return new BinderC3652rv(obj).asBinder();
    }

    public static AdOverlayInfoParcel zza(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e) {
            if (!((Boolean) zzbe.zzc().zza(zzbcl.zzmL)).booleanValue()) {
                return null;
            }
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdOverlayInfoParcel.getFromIntent");
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        SafeParcelWriter.writeIBinder(parcel, 3, f(this.zzb), false);
        SafeParcelWriter.writeIBinder(parcel, 4, f(this.zzc), false);
        SafeParcelWriter.writeIBinder(parcel, 5, f(this.zzd), false);
        SafeParcelWriter.writeIBinder(parcel, 6, f(this.zze), false);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzg);
        SafeParcelWriter.writeString(parcel, 9, this.zzh, false);
        SafeParcelWriter.writeIBinder(parcel, 10, f(this.zzi), false);
        SafeParcelWriter.writeInt(parcel, 11, this.zzj);
        SafeParcelWriter.writeInt(parcel, 12, this.zzk);
        SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
        SafeParcelWriter.writeParcelable(parcel, 14, this.zzm, i, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzn, false);
        SafeParcelWriter.writeParcelable(parcel, 17, this.zzo, i, false);
        SafeParcelWriter.writeIBinder(parcel, 18, f(this.zzp), false);
        SafeParcelWriter.writeString(parcel, 19, this.zzq, false);
        SafeParcelWriter.writeString(parcel, 24, this.zzr, false);
        SafeParcelWriter.writeString(parcel, 25, this.zzs, false);
        SafeParcelWriter.writeIBinder(parcel, 26, f(this.zzt), false);
        SafeParcelWriter.writeIBinder(parcel, 27, f(this.zzu), false);
        SafeParcelWriter.writeIBinder(parcel, 28, f(this.zzv), false);
        SafeParcelWriter.writeBoolean(parcel, 29, this.zzw);
        SafeParcelWriter.writeLong(parcel, 30, this.zzx);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzmL)).booleanValue()) {
            f9692do.put(Long.valueOf(this.zzx), new C3513pV(this.zzb, this.zzc, this.zzd, this.zzp, this.zze, this.zzi, this.zzt, this.zzu, this.zzv, zzbzw.zzd.schedule(new CallableC3925wV(this.zzx), ((Integer) zzbe.zzc().zza(zzbcl.zzmN)).intValue(), TimeUnit.SECONDS)));
        }
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzbif zzbifVar, zzbih zzbihVar, zzac zzacVar, zzcex zzcexVar, boolean z, int i, String str, String str2, VersionInfoParcel versionInfoParcel, zzdds zzddsVar, zzbsx zzbsxVar) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = zzcexVar;
        this.zzp = zzbifVar;
        this.zze = zzbihVar;
        this.zzf = str2;
        this.zzg = z;
        this.zzh = str;
        this.zzi = zzacVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzddsVar;
        this.zzv = zzbsxVar;
        this.zzw = false;
        this.zzx = f9693do.getAndIncrement();
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzac zzacVar, zzcex zzcexVar, int i, VersionInfoParcel versionInfoParcel, String str, com.google.android.gms.ads.internal.zzl zzlVar, String str2, String str3, String str4, zzcwg zzcwgVar, zzbsx zzbsxVar, String str5) {
        this.zza = null;
        this.zzb = null;
        this.zzc = zzrVar;
        this.zzd = zzcexVar;
        this.zzp = null;
        this.zze = null;
        this.zzg = false;
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzaT)).booleanValue()) {
            this.zzf = null;
            this.zzh = null;
        } else {
            this.zzf = str2;
            this.zzh = str3;
        }
        this.zzi = null;
        this.zzj = i;
        this.zzk = 1;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = str;
        this.zzo = zzlVar;
        this.zzq = str5;
        this.zzr = null;
        this.zzs = str4;
        this.zzt = zzcwgVar;
        this.zzu = null;
        this.zzv = zzbsxVar;
        this.zzw = false;
        this.zzx = f9693do.getAndIncrement();
    }

    public AdOverlayInfoParcel(com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzac zzacVar, zzcex zzcexVar, boolean z, int i, VersionInfoParcel versionInfoParcel, zzdds zzddsVar, zzbsx zzbsxVar) {
        this.zza = null;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = zzcexVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = zzacVar;
        this.zzj = i;
        this.zzk = 2;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzddsVar;
        this.zzv = zzbsxVar;
        this.zzw = false;
        this.zzx = f9693do.getAndIncrement();
    }

    @SafeParcelable.Constructor
    public AdOverlayInfoParcel(@SafeParcelable.Param(id = 2) zzc zzcVar, @SafeParcelable.Param(id = 3) IBinder iBinder, @SafeParcelable.Param(id = 4) IBinder iBinder2, @SafeParcelable.Param(id = 5) IBinder iBinder3, @SafeParcelable.Param(id = 6) IBinder iBinder4, @SafeParcelable.Param(id = 7) String str, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str2, @SafeParcelable.Param(id = 10) IBinder iBinder5, @SafeParcelable.Param(id = 11) int i, @SafeParcelable.Param(id = 12) int i2, @SafeParcelable.Param(id = 13) String str3, @SafeParcelable.Param(id = 14) VersionInfoParcel versionInfoParcel, @SafeParcelable.Param(id = 16) String str4, @SafeParcelable.Param(id = 17) com.google.android.gms.ads.internal.zzl zzlVar, @SafeParcelable.Param(id = 18) IBinder iBinder6, @SafeParcelable.Param(id = 19) String str5, @SafeParcelable.Param(id = 24) String str6, @SafeParcelable.Param(id = 25) String str7, @SafeParcelable.Param(id = 26) IBinder iBinder7, @SafeParcelable.Param(id = 27) IBinder iBinder8, @SafeParcelable.Param(id = 28) IBinder iBinder9, @SafeParcelable.Param(id = 29) boolean z2, @SafeParcelable.Param(id = 30) long j) {
        this.zza = zzcVar;
        this.zzf = str;
        this.zzg = z;
        this.zzh = str2;
        this.zzj = i;
        this.zzk = i2;
        this.zzl = str3;
        this.zzm = versionInfoParcel;
        this.zzn = str4;
        this.zzo = zzlVar;
        this.zzq = str5;
        this.zzr = str6;
        this.zzs = str7;
        this.zzw = z2;
        this.zzx = j;
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzmL)).booleanValue()) {
            C3513pV c3513pV = (C3513pV) f9692do.remove(Long.valueOf(j));
            if (c3513pV != null) {
                this.zzb = c3513pV.f14926do;
                this.zzc = c3513pV.f14928do;
                this.zzd = c3513pV.f14932do;
                this.zzp = c3513pV.f14929do;
                this.zze = c3513pV.f14930do;
                this.zzt = c3513pV.f14933do;
                this.zzu = c3513pV.f14934do;
                this.zzv = c3513pV.f14931do;
                this.zzi = c3513pV.f14927do;
                c3513pV.f14935do.cancel(false);
                return;
            }
            throw new NullPointerException("AdOverlayObjects is null");
        }
        this.zzb = (com.google.android.gms.ads.internal.client.zza) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder));
        this.zzc = (zzr) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder2));
        this.zzd = (zzcex) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder3));
        this.zzp = (zzbif) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder6));
        this.zze = (zzbih) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder4));
        this.zzi = (zzac) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder5));
        this.zzt = (zzcwg) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder7));
        this.zzu = (zzdds) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder8));
        this.zzv = (zzbsx) BinderC3652rv.o(InterfaceC0456Qm.Cdo.n(iBinder9));
    }

    public AdOverlayInfoParcel(zzc zzcVar, com.google.android.gms.ads.internal.client.zza zzaVar, zzr zzrVar, zzac zzacVar, VersionInfoParcel versionInfoParcel, zzcex zzcexVar, zzdds zzddsVar, String str) {
        this.zza = zzcVar;
        this.zzb = zzaVar;
        this.zzc = zzrVar;
        this.zzd = zzcexVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = zzacVar;
        this.zzj = -1;
        this.zzk = 4;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzddsVar;
        this.zzv = null;
        this.zzw = false;
        this.zzx = f9693do.getAndIncrement();
    }

    public AdOverlayInfoParcel(zzr zzrVar, zzcex zzcexVar, int i, VersionInfoParcel versionInfoParcel) {
        this.zzc = zzrVar;
        this.zzd = zzcexVar;
        this.zzj = 1;
        this.zzm = versionInfoParcel;
        this.zza = null;
        this.zzb = null;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzk = 1;
        this.zzl = null;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = null;
        this.zzw = false;
        this.zzx = f9693do.getAndIncrement();
    }

    public AdOverlayInfoParcel(zzcex zzcexVar, VersionInfoParcel versionInfoParcel, String str, String str2, int i, zzbsx zzbsxVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzcexVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = 14;
        this.zzk = 5;
        this.zzl = null;
        this.zzm = versionInfoParcel;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzr = str2;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = zzbsxVar;
        this.zzw = false;
        this.zzx = f9693do.getAndIncrement();
    }
}
