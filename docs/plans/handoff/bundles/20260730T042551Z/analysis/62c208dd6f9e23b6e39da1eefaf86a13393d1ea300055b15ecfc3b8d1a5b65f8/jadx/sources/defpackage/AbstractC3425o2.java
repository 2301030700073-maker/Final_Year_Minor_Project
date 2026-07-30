package defpackage;

import defpackage.C3366n2;
import java.lang.ref.WeakReference;

/* renamed from: o2, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3425o2 implements C3366n2.Cif {
    private final WeakReference<C3366n2.Cif> appStateCallback;
    private final C3366n2 appStateMonitor;
    private EnumC3601r2 currentAppState;
    private boolean isRegisteredForAppState;

    public AbstractC3425o2() {
        this(C3366n2.m7530do());
    }

    public EnumC3601r2 getAppState() {
        return this.currentAppState;
    }

    public WeakReference<C3366n2.Cif> getAppStateCallback() {
        return this.appStateCallback;
    }

    public void incrementTsnsCount(int i) {
        this.appStateMonitor.f14425do.addAndGet(i);
    }

    @Override // defpackage.C3366n2.Cif
    public void onUpdateAppState(EnumC3601r2 enumC3601r2) {
        EnumC3601r2 enumC3601r22 = this.currentAppState;
        EnumC3601r2 enumC3601r23 = EnumC3601r2.APPLICATION_PROCESS_STATE_UNKNOWN;
        if (enumC3601r22 == enumC3601r23) {
            this.currentAppState = enumC3601r2;
        } else {
            if (enumC3601r22 == enumC3601r2 || enumC3601r2 == enumC3601r23) {
                return;
            }
            this.currentAppState = EnumC3601r2.FOREGROUND_BACKGROUND;
        }
    }

    public void registerForAppState() {
        if (this.isRegisteredForAppState) {
            return;
        }
        C3366n2 c3366n2 = this.appStateMonitor;
        this.currentAppState = c3366n2.f14426do;
        c3366n2.m7536new(this.appStateCallback);
        this.isRegisteredForAppState = true;
    }

    public void unregisterForAppState() {
        if (this.isRegisteredForAppState) {
            C3366n2 c3366n2 = this.appStateMonitor;
            WeakReference<C3366n2.Cif> weakReference = this.appStateCallback;
            synchronized (c3366n2.f14423do) {
                c3366n2.f14423do.remove(weakReference);
            }
            this.isRegisteredForAppState = false;
        }
    }

    public AbstractC3425o2(C3366n2 c3366n2) {
        this.isRegisteredForAppState = false;
        this.currentAppState = EnumC3601r2.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.appStateMonitor = c3366n2;
        this.appStateCallback = new WeakReference<>(this);
    }
}
