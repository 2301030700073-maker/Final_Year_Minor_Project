package com.google.firebase.perf.session;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.perf.session.gauges.GaugeManager;
import defpackage.AbstractC3425o2;
import defpackage.C3366n2;
import defpackage.EnumC3601r2;
import defpackage.InterfaceC3788uC;
import defpackage.RunnableC0320Kh;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

@Keep
/* loaded from: classes3.dex */
public class SessionManager extends AbstractC3425o2 {

    @SuppressLint({"StaticFieldLeak"})
    private static final SessionManager instance = new SessionManager();
    private final C3366n2 appStateMonitor;
    private final Set<WeakReference<InterfaceC3788uC>> clients;
    private final GaugeManager gaugeManager;
    private PerfSession perfSession;
    private Future syncInitFuture;

    private SessionManager() {
        this(GaugeManager.getInstance(), PerfSession.m6117for(UUID.randomUUID().toString()), C3366n2.m7530do());
    }

    public static SessionManager getInstance() {
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$setApplicationContext$0(Context context, PerfSession perfSession) {
        this.gaugeManager.initializeGaugeMetadataManager(context);
        if (perfSession.f11970do) {
            this.gaugeManager.logGaugeMetadata(perfSession.f11968break, EnumC3601r2.FOREGROUND);
        }
    }

    private void logGaugeMetadataIfCollectionEnabled(EnumC3601r2 enumC3601r2) {
        PerfSession perfSession = this.perfSession;
        if (perfSession.f11970do) {
            this.gaugeManager.logGaugeMetadata(perfSession.f11968break, enumC3601r2);
        }
    }

    private void startOrStopCollectingGauges(EnumC3601r2 enumC3601r2) {
        PerfSession perfSession = this.perfSession;
        if (perfSession.f11970do) {
            this.gaugeManager.startCollectingGauges(perfSession, enumC3601r2);
        } else {
            this.gaugeManager.stopCollectingGauges();
        }
    }

    public Future getSyncInitFuture() {
        return this.syncInitFuture;
    }

    public void initializeGaugeCollection() {
        EnumC3601r2 enumC3601r2 = EnumC3601r2.FOREGROUND;
        logGaugeMetadataIfCollectionEnabled(enumC3601r2);
        startOrStopCollectingGauges(enumC3601r2);
    }

    @Override // defpackage.AbstractC3425o2, defpackage.C3366n2.Cif
    public void onUpdateAppState(EnumC3601r2 enumC3601r2) {
        super.onUpdateAppState(enumC3601r2);
        if (this.appStateMonitor.f14429for) {
            return;
        }
        if (enumC3601r2 == EnumC3601r2.FOREGROUND) {
            updatePerfSession(PerfSession.m6117for(UUID.randomUUID().toString()));
        } else if (this.perfSession.m6120new()) {
            updatePerfSession(PerfSession.m6117for(UUID.randomUUID().toString()));
        } else {
            startOrStopCollectingGauges(enumC3601r2);
        }
    }

    public final PerfSession perfSession() {
        return this.perfSession;
    }

    public void registerForSessionUpdates(WeakReference<InterfaceC3788uC> weakReference) {
        synchronized (this.clients) {
            this.clients.add(weakReference);
        }
    }

    public void setApplicationContext(Context context) {
        this.syncInitFuture = Executors.newSingleThreadExecutor().submit(new RunnableC0320Kh(this, context, this.perfSession, 1));
    }

    public void setPerfSession(PerfSession perfSession) {
        this.perfSession = perfSession;
    }

    public void stopGaugeCollectionIfSessionRunningTooLong() {
        if (this.perfSession.m6120new()) {
            this.gaugeManager.stopCollectingGauges();
        }
    }

    public void unregisterForSessionUpdates(WeakReference<InterfaceC3788uC> weakReference) {
        synchronized (this.clients) {
            this.clients.remove(weakReference);
        }
    }

    public void updatePerfSession(PerfSession perfSession) {
        if (perfSession.f11968break == this.perfSession.f11968break) {
            return;
        }
        this.perfSession = perfSession;
        synchronized (this.clients) {
            Iterator<WeakReference<InterfaceC3788uC>> it = this.clients.iterator();
            while (it.hasNext()) {
                InterfaceC3788uC interfaceC3788uC = it.next().get();
                if (interfaceC3788uC != null) {
                    interfaceC3788uC.mo111do(perfSession);
                } else {
                    it.remove();
                }
            }
        }
        logGaugeMetadataIfCollectionEnabled(this.appStateMonitor.f14426do);
        startOrStopCollectingGauges(this.appStateMonitor.f14426do);
    }

    public SessionManager(GaugeManager gaugeManager, PerfSession perfSession, C3366n2 c3366n2) {
        this.clients = new HashSet();
        this.gaugeManager = gaugeManager;
        this.perfSession = perfSession;
        this.appStateMonitor = c3366n2;
        registerForAppState();
    }
}
