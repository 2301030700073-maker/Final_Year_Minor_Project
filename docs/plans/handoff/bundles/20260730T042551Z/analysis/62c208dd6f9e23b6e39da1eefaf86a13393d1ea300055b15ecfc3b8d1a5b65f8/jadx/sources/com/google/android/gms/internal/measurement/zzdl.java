package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdl extends zzbu implements zzdj {
    public zzdl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void beginAdUnitExposure(String str, long j) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeLong(j);
        zzb(23, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        zzbw.zza(a_, bundle);
        zzb(9, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void clearMeasurementEnabled(long j) {
        Parcel a_ = a_();
        a_.writeLong(j);
        zzb(43, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void endAdUnitExposure(String str, long j) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeLong(j);
        zzb(24, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void generateEventId(zzdo zzdoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        zzb(22, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getAppInstanceId(zzdo zzdoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        zzb(20, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getCachedAppInstanceId(zzdo zzdoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        zzb(19, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getConditionalUserProperties(String str, String str2, zzdo zzdoVar) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        zzbw.zza(a_, zzdoVar);
        zzb(10, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getCurrentScreenClass(zzdo zzdoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        zzb(17, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getCurrentScreenName(zzdo zzdoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        zzb(16, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getGmpAppId(zzdo zzdoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        zzb(21, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getMaxUserProperties(String str, zzdo zzdoVar) {
        Parcel a_ = a_();
        a_.writeString(str);
        zzbw.zza(a_, zzdoVar);
        zzb(6, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getSessionId(zzdo zzdoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        zzb(46, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getTestFlag(zzdo zzdoVar, int i) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        a_.writeInt(i);
        zzb(38, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void getUserProperties(String str, String str2, boolean z, zzdo zzdoVar) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        zzbw.zza(a_, z);
        zzbw.zza(a_, zzdoVar);
        zzb(5, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void initForTests(Map map) {
        Parcel a_ = a_();
        a_.writeMap(map);
        zzb(37, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void initialize(InterfaceC0456Qm interfaceC0456Qm, zzdw zzdwVar, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        zzbw.zza(a_, zzdwVar);
        a_.writeLong(j);
        zzb(1, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void isDataCollectionEnabled(zzdo zzdoVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdoVar);
        zzb(40, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        zzbw.zza(a_, bundle);
        zzbw.zza(a_, z);
        zzbw.zza(a_, z2);
        a_.writeLong(j);
        zzb(2, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzdo zzdoVar, long j) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        zzbw.zza(a_, bundle);
        zzbw.zza(a_, zzdoVar);
        a_.writeLong(j);
        zzb(3, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void logHealthData(int i, String str, InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, InterfaceC0456Qm interfaceC0456Qm3) {
        Parcel a_ = a_();
        a_.writeInt(i);
        a_.writeString(str);
        zzbw.zza(a_, interfaceC0456Qm);
        zzbw.zza(a_, interfaceC0456Qm2);
        zzbw.zza(a_, interfaceC0456Qm3);
        zzb(33, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityCreated(InterfaceC0456Qm interfaceC0456Qm, Bundle bundle, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        zzbw.zza(a_, bundle);
        a_.writeLong(j);
        zzb(27, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityDestroyed(InterfaceC0456Qm interfaceC0456Qm, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        a_.writeLong(j);
        zzb(28, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityPaused(InterfaceC0456Qm interfaceC0456Qm, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        a_.writeLong(j);
        zzb(29, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityResumed(InterfaceC0456Qm interfaceC0456Qm, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        a_.writeLong(j);
        zzb(30, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivitySaveInstanceState(InterfaceC0456Qm interfaceC0456Qm, zzdo zzdoVar, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        zzbw.zza(a_, zzdoVar);
        a_.writeLong(j);
        zzb(31, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityStarted(InterfaceC0456Qm interfaceC0456Qm, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        a_.writeLong(j);
        zzb(25, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void onActivityStopped(InterfaceC0456Qm interfaceC0456Qm, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        a_.writeLong(j);
        zzb(26, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void performAction(Bundle bundle, zzdo zzdoVar, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, bundle);
        zzbw.zza(a_, zzdoVar);
        a_.writeLong(j);
        zzb(32, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void registerOnMeasurementEventListener(zzdp zzdpVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdpVar);
        zzb(35, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void resetAnalyticsData(long j) {
        Parcel a_ = a_();
        a_.writeLong(j);
        zzb(12, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, bundle);
        a_.writeLong(j);
        zzb(8, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setConsent(Bundle bundle, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, bundle);
        a_.writeLong(j);
        zzb(44, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setConsentThirdParty(Bundle bundle, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, bundle);
        a_.writeLong(j);
        zzb(45, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setCurrentScreen(InterfaceC0456Qm interfaceC0456Qm, String str, String str2, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, interfaceC0456Qm);
        a_.writeString(str);
        a_.writeString(str2);
        a_.writeLong(j);
        zzb(15, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setDataCollectionEnabled(boolean z) {
        Parcel a_ = a_();
        zzbw.zza(a_, z);
        zzb(39, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel a_ = a_();
        zzbw.zza(a_, bundle);
        zzb(42, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setEventInterceptor(zzdp zzdpVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdpVar);
        zzb(34, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setInstanceIdProvider(zzdu zzduVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzduVar);
        zzb(18, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel a_ = a_();
        zzbw.zza(a_, z);
        a_.writeLong(j);
        zzb(11, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setMinimumSessionDuration(long j) {
        Parcel a_ = a_();
        a_.writeLong(j);
        zzb(13, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setSessionTimeoutDuration(long j) {
        Parcel a_ = a_();
        a_.writeLong(j);
        zzb(14, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setSgtmDebugInfo(Intent intent) {
        Parcel a_ = a_();
        zzbw.zza(a_, intent);
        zzb(48, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setUserId(String str, long j) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeLong(j);
        zzb(7, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void setUserProperty(String str, String str2, InterfaceC0456Qm interfaceC0456Qm, boolean z, long j) {
        Parcel a_ = a_();
        a_.writeString(str);
        a_.writeString(str2);
        zzbw.zza(a_, interfaceC0456Qm);
        zzbw.zza(a_, z);
        a_.writeLong(j);
        zzb(4, a_);
    }

    @Override // com.google.android.gms.internal.measurement.zzdj
    public final void unregisterOnMeasurementEventListener(zzdp zzdpVar) {
        Parcel a_ = a_();
        zzbw.zza(a_, zzdpVar);
        zzb(36, a_);
    }
}
