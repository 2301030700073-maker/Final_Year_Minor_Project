package androidx.multidex;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import defpackage.C0266Ht;
import java.io.File;

/* loaded from: classes.dex */
public class MultiDexApplication extends Application {
    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        ApplicationInfo applicationInfo;
        super.attachBaseContext(context);
        if (C0266Ht.f1408do) {
            return;
        }
        try {
            try {
                applicationInfo = getApplicationInfo();
            } catch (Exception e) {
                throw new RuntimeException("MultiDex installation failed (" + e.getMessage() + ").");
            }
        } catch (RuntimeException unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            return;
        }
        C0266Ht.m891if(this, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir));
    }
}
