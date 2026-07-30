package defpackage;

import android.content.Context;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.Validate;
import java.util.Set;

/* renamed from: gr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2833gr {

    /* renamed from: do, reason: not valid java name */
    public static final Set<String> f13220do = O4.m1630transient("ads_management", "create_event", "rsvp_event");

    static {
        C0173Do.m399new(C2833gr.class.toString(), "LoginManager::class.java.toString()");
    }

    public C2833gr() {
        Validate.sdkInitialized();
        C0173Do.m399new(C3756th.m8299do().getSharedPreferences("com.facebook.loginManager", 0), "getApplicationContext().getSharedPreferences(PREFERENCE_LOGIN_MANAGER, Context.MODE_PRIVATE)");
        if (!C3756th.f15752do || CustomTabUtils.getChromePackage() == null) {
            return;
        }
        C3869vc.m8476do(C3756th.m8299do(), "com.android.chrome", new C3633rc());
        Context m8299do = C3756th.m8299do();
        String packageName = C3756th.m8299do().getPackageName();
        if (packageName == null) {
            return;
        }
        Context applicationContext = m8299do.getApplicationContext();
        try {
            C3869vc.m8476do(applicationContext, packageName, new C3751tc(applicationContext));
        } catch (SecurityException unused) {
        }
    }
}
