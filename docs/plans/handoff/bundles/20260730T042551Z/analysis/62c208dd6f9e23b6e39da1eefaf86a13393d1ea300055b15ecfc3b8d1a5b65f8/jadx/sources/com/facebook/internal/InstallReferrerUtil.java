package com.facebook.internal;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C0772bo;
import defpackage.C3756th;
import defpackage.EF;

/* loaded from: classes.dex */
public final class InstallReferrerUtil {
    public static final InstallReferrerUtil INSTANCE = new InstallReferrerUtil();
    private static final String IS_REFERRER_UPDATED = "is_referrer_updated";

    public interface Callback {
        void onReceiveReferrerUrl(String str);
    }

    private InstallReferrerUtil() {
    }

    private final boolean isUpdated() {
        return C3756th.m8299do().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean(IS_REFERRER_UPDATED, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1] */
    private final void tryConnectReferrerInfo(final Callback callback) {
        final C0772bo c0772bo = new C0772bo(C3756th.m8299do());
        try {
            c0772bo.m4860if(new InstallReferrerStateListener() { // from class: com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerServiceDisconnected() {
                }

                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerSetupFinished(int i) {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        if (i != 0) {
                            if (i != 2) {
                                return;
                            }
                            InstallReferrerUtil.INSTANCE.updateReferrer();
                            return;
                        }
                        try {
                            String string = InstallReferrerClient.this.mo4859do().f9131do.getString("install_referrer");
                            if (string != null && (EF.k(string, "fb") || EF.k(string, "facebook"))) {
                                callback.onReceiveReferrerUrl(string);
                            }
                            InstallReferrerUtil.INSTANCE.updateReferrer();
                        } catch (RemoteException unused) {
                        }
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    public static final void tryUpdateReferrerInfo(Callback callback) {
        C0173Do.m401try(callback, "callback");
        InstallReferrerUtil installReferrerUtil = INSTANCE;
        if (installReferrerUtil.isUpdated()) {
            return;
        }
        installReferrerUtil.tryConnectReferrerInfo(callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateReferrer() {
        C3756th.m8299do().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean(IS_REFERRER_UPDATED, true).apply();
    }
}
