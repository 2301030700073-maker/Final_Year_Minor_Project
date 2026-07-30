package com.facebook.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C0466Ra;
import defpackage.C2819gd;
import defpackage.C3633rc;
import defpackage.C3756th;
import defpackage.C3928wc;
import defpackage.C4105zc;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class CustomTab {
    public static final Companion Companion = new Companion(null);
    private Uri uri;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public Uri getURIForAction(String str, Bundle bundle) {
            C0173Do.m401try(str, NativeProtocol.WEB_DIALOG_ACTION);
            Utility utility = Utility.INSTANCE;
            return Utility.buildUri(ServerProtocol.getDialogAuthority(), C3756th.m8306try() + "/dialog/" + str, bundle);
        }
    }

    public CustomTab(String str, Bundle bundle) {
        Uri uRIForAction;
        C0173Do.m401try(str, NativeProtocol.WEB_DIALOG_ACTION);
        bundle = bundle == null ? new Bundle() : bundle;
        GamingAction[] valuesCustom = GamingAction.valuesCustom();
        ArrayList arrayList = new ArrayList(valuesCustom.length);
        for (GamingAction gamingAction : valuesCustom) {
            arrayList.add(gamingAction.getRawValue());
        }
        if (arrayList.contains(str)) {
            Utility utility = Utility.INSTANCE;
            uRIForAction = Utility.buildUri(ServerProtocol.getGamingDialogAuthority(), C0173Do.m397goto(str, "/dialog/"), bundle);
        } else {
            uRIForAction = Companion.getURIForAction(str, bundle);
        }
        this.uri = uRIForAction;
    }

    public static Uri getURIForAction(String str, Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(CustomTab.class)) {
            return null;
        }
        try {
            return Companion.getURIForAction(str, bundle);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, CustomTab.class);
            return null;
        }
    }

    public final Uri getUri() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return this.uri;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final boolean openCustomTab(Activity activity, String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            C0173Do.m401try(activity, "activity");
            ReentrantLock reentrantLock = C3633rc.f15297do;
            reentrantLock.lock();
            C4105zc c4105zc = C3633rc.f15299do;
            C3633rc.f15299do = null;
            reentrantLock.unlock();
            C3928wc m8577do = new C3928wc.Cnew(c4105zc).m8577do();
            Intent intent = m8577do.f16367do;
            intent.setPackage(str);
            try {
                intent.setData(this.uri);
                C0466Ra.startActivity(activity, intent, m8577do.f16368do);
                return true;
            } catch (ActivityNotFoundException unused) {
                return false;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public final void setUri(Uri uri) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(uri, "<set-?>");
            this.uri = uri;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
