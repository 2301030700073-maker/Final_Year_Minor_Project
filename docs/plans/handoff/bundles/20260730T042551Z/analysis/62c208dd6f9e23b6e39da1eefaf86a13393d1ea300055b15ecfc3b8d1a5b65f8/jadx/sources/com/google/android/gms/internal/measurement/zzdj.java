package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import defpackage.InterfaceC0456Qm;
import java.util.Map;

/* loaded from: classes.dex */
public interface zzdj extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(zzdo zzdoVar);

    void getAppInstanceId(zzdo zzdoVar);

    void getCachedAppInstanceId(zzdo zzdoVar);

    void getConditionalUserProperties(String str, String str2, zzdo zzdoVar);

    void getCurrentScreenClass(zzdo zzdoVar);

    void getCurrentScreenName(zzdo zzdoVar);

    void getGmpAppId(zzdo zzdoVar);

    void getMaxUserProperties(String str, zzdo zzdoVar);

    void getSessionId(zzdo zzdoVar);

    void getTestFlag(zzdo zzdoVar, int i);

    void getUserProperties(String str, String str2, boolean z, zzdo zzdoVar);

    void initForTests(Map map);

    void initialize(InterfaceC0456Qm interfaceC0456Qm, zzdw zzdwVar, long j);

    void isDataCollectionEnabled(zzdo zzdoVar);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, zzdo zzdoVar, long j);

    void logHealthData(int i, String str, InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, InterfaceC0456Qm interfaceC0456Qm3);

    void onActivityCreated(InterfaceC0456Qm interfaceC0456Qm, Bundle bundle, long j);

    void onActivityDestroyed(InterfaceC0456Qm interfaceC0456Qm, long j);

    void onActivityPaused(InterfaceC0456Qm interfaceC0456Qm, long j);

    void onActivityResumed(InterfaceC0456Qm interfaceC0456Qm, long j);

    void onActivitySaveInstanceState(InterfaceC0456Qm interfaceC0456Qm, zzdo zzdoVar, long j);

    void onActivityStarted(InterfaceC0456Qm interfaceC0456Qm, long j);

    void onActivityStopped(InterfaceC0456Qm interfaceC0456Qm, long j);

    void performAction(Bundle bundle, zzdo zzdoVar, long j);

    void registerOnMeasurementEventListener(zzdp zzdpVar);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(InterfaceC0456Qm interfaceC0456Qm, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(zzdp zzdpVar);

    void setInstanceIdProvider(zzdu zzduVar);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setSgtmDebugInfo(Intent intent);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, InterfaceC0456Qm interfaceC0456Qm, boolean z, long j);

    void unregisterOnMeasurementEventListener(zzdp zzdpVar);
}
