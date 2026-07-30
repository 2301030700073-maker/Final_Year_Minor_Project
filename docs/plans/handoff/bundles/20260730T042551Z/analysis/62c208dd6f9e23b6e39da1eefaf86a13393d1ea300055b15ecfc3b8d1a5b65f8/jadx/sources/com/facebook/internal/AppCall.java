package com.facebook.internal;

import android.content.Intent;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C2819gd;
import java.util.UUID;

/* loaded from: classes.dex */
public final class AppCall {
    public static final Companion Companion = new Companion(null);
    private static AppCall currentPendingCall;
    private final UUID callId;
    private int requestCode;
    private Intent requestIntent;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final synchronized boolean setCurrentPendingCall(AppCall appCall) {
            AppCall currentPendingCall;
            currentPendingCall = getCurrentPendingCall();
            AppCall.access$setCurrentPendingCall$cp(appCall);
            return currentPendingCall != null;
        }

        public final synchronized AppCall finishPendingCall(UUID uuid, int i) {
            C0173Do.m401try(uuid, "callId");
            AppCall currentPendingCall = getCurrentPendingCall();
            if (currentPendingCall != null && C0173Do.m394do(currentPendingCall.getCallId(), uuid) && currentPendingCall.getRequestCode() == i) {
                setCurrentPendingCall(null);
                return currentPendingCall;
            }
            return null;
        }

        public final AppCall getCurrentPendingCall() {
            return AppCall.access$getCurrentPendingCall$cp();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AppCall(int i) {
        this(i, null, 2, 0 == true ? 1 : 0);
    }

    public AppCall(int i, UUID uuid) {
        C0173Do.m401try(uuid, "callId");
        this.requestCode = i;
        this.callId = uuid;
    }

    public static final /* synthetic */ AppCall access$getCurrentPendingCall$cp() {
        if (CrashShieldHandler.isObjectCrashing(AppCall.class)) {
            return null;
        }
        try {
            return currentPendingCall;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppCall.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$setCurrentPendingCall$cp(AppCall appCall) {
        if (CrashShieldHandler.isObjectCrashing(AppCall.class)) {
            return;
        }
        try {
            currentPendingCall = appCall;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, AppCall.class);
        }
    }

    public static final synchronized AppCall finishPendingCall(UUID uuid, int i) {
        synchronized (AppCall.class) {
            if (CrashShieldHandler.isObjectCrashing(AppCall.class)) {
                return null;
            }
            try {
                return Companion.finishPendingCall(uuid, i);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, AppCall.class);
                return null;
            }
        }
    }

    public final UUID getCallId() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.callId;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final int getRequestCode() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return this.requestCode;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    public final Intent getRequestIntent() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.requestIntent;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final boolean setPending() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return Companion.setCurrentPendingCall(this);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public final void setRequestCode(int i) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.requestCode = i;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void setRequestIntent(Intent intent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.requestIntent = intent;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ AppCall(int r1, java.util.UUID r2, int r3, defpackage.C2819gd r4) {
        /*
            r0 = this;
            r3 = r3 & 2
            if (r3 == 0) goto Ld
            java.util.UUID r2 = java.util.UUID.randomUUID()
            java.lang.String r3 = "randomUUID()"
            defpackage.C0173Do.m399new(r2, r3)
        Ld:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.AppCall.<init>(int, java.util.UUID, int, gd):void");
    }
}
