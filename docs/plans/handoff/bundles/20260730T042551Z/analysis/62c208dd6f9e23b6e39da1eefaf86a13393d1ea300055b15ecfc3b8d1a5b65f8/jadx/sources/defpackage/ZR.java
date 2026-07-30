package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.zzbu;
import com.google.android.gms.internal.measurement.zzbw;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzno;
import com.google.android.gms.measurement.internal.zzo;
import com.google.android.gms.measurement.internal.zzon;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class ZR extends zzbu implements YR {
    public ZR(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // defpackage.YR
    public final void c(zzae zzaeVar, zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzaeVar);
        zzbw.zza(a_, zzoVar);
        zzb(12, a_);
    }

    @Override // defpackage.YR
    /* renamed from: case */
    public final void mo2916case(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        zzb(4, a_);
    }

    @Override // defpackage.YR
    /* renamed from: catch */
    public final void mo2917catch(Bundle bundle, zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, bundle);
        zzbw.zza(a_, zzoVar);
        zzb(19, a_);
    }

    @Override // defpackage.YR
    /* renamed from: class */
    public final String mo2918class(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        Parcel zza = zza(11, a_);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // defpackage.YR
    public final void d(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        zzb(20, a_);
    }

    @Override // defpackage.YR
    /* renamed from: default */
    public final List<zzon> mo2919default(String str, String str2, boolean z, zzo zzoVar) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        zzbw.zza(a_, z);
        zzbw.zza(a_, zzoVar);
        Parcel zza = zza(14, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzon.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // defpackage.YR
    public final zzaj e(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        Parcel zza = zza(21, a_);
        zzaj zzajVar = (zzaj) zzbw.zza(zza, zzaj.CREATOR);
        zza.recycle();
        return zzajVar;
    }

    @Override // defpackage.YR
    /* renamed from: extends */
    public final byte[] mo2920extends(zzbf zzbfVar, String str) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzbfVar);
        a_.writeString(str);
        Parcel zza = zza(9, a_);
        byte[] createByteArray = zza.createByteArray();
        zza.recycle();
        return createByteArray;
    }

    @Override // defpackage.YR
    /* renamed from: final */
    public final void mo2921final(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        zzb(27, a_);
    }

    @Override // defpackage.YR
    /* renamed from: for */
    public final void mo2922for(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        zzb(18, a_);
    }

    @Override // defpackage.YR
    public final void j(zzon zzonVar, zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzonVar);
        zzbw.zza(a_, zzoVar);
        zzb(2, a_);
    }

    @Override // defpackage.YR
    public final List m(Bundle bundle, zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        zzbw.zza(a_, bundle);
        Parcel zza = zza(24, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzno.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // defpackage.YR
    /* renamed from: native */
    public final void mo2923native(long j, String str, String str2, String str3) {
        Parcel a_ = a_();
        a_.writeLong(j);
        a_.writeString(str);
        a_.writeString(str2);
        a_.writeString(str3);
        zzb(10, a_);
    }

    @Override // defpackage.YR
    /* renamed from: package */
    public final void mo2924package(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        zzb(6, a_);
    }

    @Override // defpackage.YR
    /* renamed from: protected */
    public final void mo2925protected(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        zzb(26, a_);
    }

    @Override // defpackage.YR
    /* renamed from: public */
    public final List<zzae> mo2926public(String str, String str2, String str3) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        a_.writeString(str3);
        Parcel zza = zza(17, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzae.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // defpackage.YR
    /* renamed from: static */
    public final void mo2927static(zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzoVar);
        zzb(25, a_);
    }

    @Override // defpackage.YR
    /* renamed from: throw */
    public final List<zzae> mo2928throw(String str, String str2, zzo zzoVar) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        zzbw.zza(a_, zzoVar);
        Parcel zza = zza(16, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzae.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // defpackage.YR
    /* renamed from: throws */
    public final List<zzon> mo2929throws(String str, String str2, String str3, boolean z) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        a_.writeString(str3);
        zzbw.zza(a_, z);
        Parcel zza = zza(15, a_);
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzon.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // defpackage.YR
    /* renamed from: while */
    public final void mo2930while(zzbf zzbfVar, zzo zzoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzbfVar);
        zzbw.zza(a_, zzoVar);
        zzb(1, a_);
    }
}
