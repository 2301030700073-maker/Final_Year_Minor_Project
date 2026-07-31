package com.fsck.k9;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.fsck.k9.job.K9JobManager;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.io.CloseableKt;
import kotlinx.io.Sink$CC;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.qualifier.StringQualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Core implements KoinComponent {
    public static final Lazy appConfig$delegate;
    public static final Lazy appCoroutineScope$delegate;
    public static final Lazy context$delegate;
    public static final Lazy jobManager$delegate;
    public static final Lazy notificationController$delegate;
    public static final Lazy preferences$delegate;

    static {
        Core core = new Core();
        K9$special$$inlined$inject$default$1 k9$special$$inlined$inject$default$1 = new K9$special$$inlined$inject$default$1(core, 8);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        context$delegate = ResultKt.lazy(lazyThreadSafetyMode, k9$special$$inlined$inject$default$1);
        appConfig$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(core, 9));
        jobManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(core, 10));
        appCoroutineScope$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Core$special$$inlined$inject$default$4(core, new StringQualifier("AppCoroutineScope"), 0));
        preferences$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(core, 11));
        notificationController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(core, 12));
    }

    public static final void setServicesEnabled(Context context) {
        context.getClass();
        Context applicationContext = context.getApplicationContext();
        boolean z = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccounts().size() > 0;
        applicationContext.getClass();
        PackageManager packageManager = applicationContext.getPackageManager();
        for (Class cls : ((DefaultAppConfig) appConfig$delegate.getValue()).componentsToDisable) {
            if (z != (packageManager.getComponentEnabledSetting(new ComponentName(applicationContext, (Class<?>) cls)) == 1)) {
                packageManager.setComponentEnabledSetting(new ComponentName(applicationContext, (Class<?>) cls), z ? 1 : 2, 1);
            }
        }
        if (z) {
            ((K9JobManager) jobManager$delegate.getValue()).scheduleAllMailJobs();
        }
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }
}
