package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.cloudbridge.AppEventsCAPIManager;
import com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C0346Ll;
import defpackage.C3756th;
import defpackage.C4119zq;
import defpackage.Cabstract;
import defpackage.Ccontinue;
import defpackage.EnumC0658Zq;
import defpackage.RunnableC0667a2;
import defpackage.RunnableC0727b2;
import defpackage.Y1;
import defpackage.Z1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class AppEventQueue {
    private static final int FLUSH_PERIOD_IN_SECONDS = 15;
    private static final int NO_CONNECTIVITY_ERROR_CODE = -1;
    private static ScheduledFuture<?> scheduledFuture;
    public static final AppEventQueue INSTANCE = new AppEventQueue();
    private static final String TAG = AppEventQueue.class.getName();
    private static final int NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER = 100;
    private static volatile AppEventCollection appEventCollection = new AppEventCollection();
    private static final ScheduledExecutorService singleThreadExecutor = Executors.newSingleThreadScheduledExecutor();
    private static final Runnable flushRunnable = new RunnableC0727b2(0);

    private AppEventQueue() {
    }

    public static final void add(AccessTokenAppIdPair accessTokenAppIdPair, AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            C0173Do.m401try(accessTokenAppIdPair, "accessTokenAppId");
            C0173Do.m401try(appEvent, "appEvent");
            singleThreadExecutor.execute(new RunnableC0667a2(0, accessTokenAppIdPair, appEvent));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: add$lambda-3, reason: not valid java name */
    public static final void m5301add$lambda3(AccessTokenAppIdPair accessTokenAppIdPair, AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            C0173Do.m401try(accessTokenAppIdPair, "$accessTokenAppId");
            C0173Do.m401try(appEvent, "$appEvent");
            appEventCollection.addEvent(accessTokenAppIdPair, appEvent);
            if (AppEventsLogger.Companion.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY && appEventCollection.getEventCount() > NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER) {
                flushAndWait(FlushReason.EVENT_THRESHOLD);
            } else if (scheduledFuture == null) {
                scheduledFuture = singleThreadExecutor.schedule(flushRunnable, 15L, TimeUnit.SECONDS);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final GraphRequest buildRequestForSession(AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState, boolean z, FlushStatistics flushStatistics) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return null;
        }
        try {
            C0173Do.m401try(accessTokenAppIdPair, "accessTokenAppId");
            C0173Do.m401try(sessionEventsState, "appEvents");
            C0173Do.m401try(flushStatistics, "flushState");
            String applicationId = accessTokenAppIdPair.getApplicationId();
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(applicationId, false);
            String str = GraphRequest.f9271for;
            String format = String.format("%s/activities", Arrays.copyOf(new Object[]{applicationId}, 1));
            C0173Do.m399new(format, "java.lang.String.format(format, *args)");
            GraphRequest m5289goto = GraphRequest.Cfor.m5289goto(null, format, null, null);
            m5289goto.f9280do = true;
            Bundle bundle = m5289goto.f9274do;
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("access_token", accessTokenAppIdPair.getAccessTokenString());
            String pushNotificationsRegistrationId = InternalAppEventsLogger.Companion.getPushNotificationsRegistrationId();
            if (pushNotificationsRegistrationId != null) {
                bundle.putString("device_token", pushNotificationsRegistrationId);
            }
            String installReferrer = AppEventsLoggerImpl.Companion.getInstallReferrer();
            if (installReferrer != null) {
                bundle.putString("install_referrer", installReferrer);
            }
            m5289goto.f9274do = bundle;
            int populateRequest = sessionEventsState.populateRequest(m5289goto, C3756th.m8299do(), queryAppSettings != null ? queryAppSettings.supportsImplicitLogging() : false, z);
            if (populateRequest == 0) {
                return null;
            }
            flushStatistics.setNumEvents(flushStatistics.getNumEvents() + populateRequest);
            m5289goto.m5271this(new Ccontinue(accessTokenAppIdPair, m5289goto, sessionEventsState, flushStatistics, 1));
            return m5289goto;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: buildRequestForSession$lambda-4, reason: not valid java name */
    public static final void m5302buildRequestForSession$lambda4(AccessTokenAppIdPair accessTokenAppIdPair, GraphRequest graphRequest, SessionEventsState sessionEventsState, FlushStatistics flushStatistics, C0346Ll c0346Ll) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            C0173Do.m401try(accessTokenAppIdPair, "$accessTokenAppId");
            C0173Do.m401try(graphRequest, "$postRequest");
            C0173Do.m401try(sessionEventsState, "$appEvents");
            C0173Do.m401try(flushStatistics, "$flushState");
            C0173Do.m401try(c0346Ll, "response");
            handleResponse(accessTokenAppIdPair, graphRequest, c0346Ll, sessionEventsState, flushStatistics);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final List<GraphRequest> buildRequests(AppEventCollection appEventCollection2, FlushStatistics flushStatistics) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return null;
        }
        try {
            C0173Do.m401try(appEventCollection2, "appEventCollection");
            C0173Do.m401try(flushStatistics, "flushResults");
            boolean m8300else = C3756th.m8300else(C3756th.m8299do());
            ArrayList arrayList = new ArrayList();
            for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection2.keySet()) {
                SessionEventsState sessionEventsState = appEventCollection2.get(accessTokenAppIdPair);
                if (sessionEventsState == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                GraphRequest buildRequestForSession = buildRequestForSession(accessTokenAppIdPair, sessionEventsState, m8300else, flushStatistics);
                if (buildRequestForSession != null) {
                    arrayList.add(buildRequestForSession);
                    if (AppEventsCAPIManager.INSTANCE.isEnabled$facebook_core_release()) {
                        AppEventsConversionsAPITransformerWebRequests.transformGraphRequestAndSendToCAPIGEndPoint(buildRequestForSession);
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
            return null;
        }
    }

    public static final void flush(FlushReason flushReason) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            C0173Do.m401try(flushReason, "reason");
            singleThreadExecutor.execute(new Y1(flushReason, 0));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: flush$lambda-2, reason: not valid java name */
    public static final void m5305flush$lambda2(FlushReason flushReason) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            C0173Do.m401try(flushReason, "$reason");
            flushAndWait(flushReason);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final void flushAndWait(FlushReason flushReason) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            C0173Do.m401try(flushReason, "reason");
            appEventCollection.addPersistedEvents(AppEventDiskStore.readAndClearStore());
            try {
                FlushStatistics sendEventsToServer = sendEventsToServer(flushReason, appEventCollection);
                if (sendEventsToServer != null) {
                    Intent intent = new Intent(AppEventsLogger.ACTION_APP_EVENTS_FLUSHED);
                    intent.putExtra(AppEventsLogger.APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED, sendEventsToServer.getNumEvents());
                    intent.putExtra(AppEventsLogger.APP_EVENTS_EXTRA_FLUSH_RESULT, sendEventsToServer.getResult());
                    C4119zq.m8809do(C3756th.m8299do()).m8810for(intent);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: flushRunnable$lambda-0, reason: not valid java name */
    public static final void m5306flushRunnable$lambda0() {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            scheduledFuture = null;
            if (AppEventsLogger.Companion.getFlushBehavior() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                flushAndWait(FlushReason.TIMER);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final Set<AccessTokenAppIdPair> getKeySet() {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return null;
        }
        try {
            return appEventCollection.keySet();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
            return null;
        }
    }

    public static final void handleResponse(AccessTokenAppIdPair accessTokenAppIdPair, GraphRequest graphRequest, C0346Ll c0346Ll, SessionEventsState sessionEventsState, FlushStatistics flushStatistics) {
        FlushResult flushResult;
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            C0173Do.m401try(accessTokenAppIdPair, "accessTokenAppId");
            C0173Do.m401try(graphRequest, "request");
            C0173Do.m401try(c0346Ll, "response");
            C0173Do.m401try(sessionEventsState, "appEvents");
            C0173Do.m401try(flushStatistics, "flushState");
            FacebookRequestError facebookRequestError = c0346Ll.f1995do;
            FlushResult flushResult2 = FlushResult.SUCCESS;
            int i = 2;
            if (facebookRequestError == null) {
                flushResult = flushResult2;
            } else if (facebookRequestError.f9264new == -1) {
                flushResult = FlushResult.NO_CONNECTIVITY;
            } else {
                C0173Do.m399new(String.format("Failed:\n  Response: %s\n  Error %s", Arrays.copyOf(new Object[]{c0346Ll.toString(), facebookRequestError.toString()}, 2)), "java.lang.String.format(format, *args)");
                flushResult = FlushResult.SERVER_ERROR;
            }
            C3756th c3756th = C3756th.f15751do;
            C3756th.m8295break(EnumC0658Zq.APP_EVENTS);
            sessionEventsState.clearInFlightAndStats(facebookRequestError != null);
            FlushResult flushResult3 = FlushResult.NO_CONNECTIVITY;
            if (flushResult == flushResult3) {
                C3756th.m8304new().execute(new Cabstract(i, accessTokenAppIdPair, sessionEventsState));
            }
            if (flushResult == flushResult2 || flushStatistics.getResult() == flushResult3) {
                return;
            }
            flushStatistics.setResult(flushResult);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleResponse$lambda-5, reason: not valid java name */
    public static final void m5308handleResponse$lambda5(AccessTokenAppIdPair accessTokenAppIdPair, SessionEventsState sessionEventsState) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            C0173Do.m401try(accessTokenAppIdPair, "$accessTokenAppId");
            C0173Do.m401try(sessionEventsState, "$appEvents");
            AppEventStore.persistEvents(accessTokenAppIdPair, sessionEventsState);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final void persistToDisk() {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            singleThreadExecutor.execute(new Z1(0));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: persistToDisk$lambda-1, reason: not valid java name */
    public static final void m5311persistToDisk$lambda1() {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return;
        }
        try {
            AppEventStore appEventStore = AppEventStore.INSTANCE;
            AppEventStore.persistEvents(appEventCollection);
            appEventCollection = new AppEventCollection();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
        }
    }

    public static final FlushStatistics sendEventsToServer(FlushReason flushReason, AppEventCollection appEventCollection2) {
        if (CrashShieldHandler.isObjectCrashing(AppEventQueue.class)) {
            return null;
        }
        try {
            C0173Do.m401try(flushReason, "reason");
            C0173Do.m401try(appEventCollection2, "appEventCollection");
            FlushStatistics flushStatistics = new FlushStatistics();
            List<GraphRequest> buildRequests = buildRequests(appEventCollection2, flushStatistics);
            if (!(!buildRequests.isEmpty())) {
                return null;
            }
            Logger.Companion companion = Logger.Companion;
            EnumC0658Zq enumC0658Zq = EnumC0658Zq.APP_EVENTS;
            String str = TAG;
            C0173Do.m399new(str, "TAG");
            companion.log(enumC0658Zq, str, "Flushing %d events due to %s.", Integer.valueOf(flushStatistics.getNumEvents()), flushReason.toString());
            Iterator<GraphRequest> it = buildRequests.iterator();
            while (it.hasNext()) {
                it.next().m5267for();
            }
            return flushStatistics;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppEventQueue.class);
            return null;
        }
    }
}
