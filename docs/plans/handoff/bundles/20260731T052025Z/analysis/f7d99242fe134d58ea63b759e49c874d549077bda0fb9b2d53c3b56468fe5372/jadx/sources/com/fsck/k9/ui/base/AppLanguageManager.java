package com.fsck.k9.ui.base;

import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.camera.camera2.compat.Api24Compat;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.ui.base.locale.SystemLocaleManager;
import java.util.Locale;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.internal.ContextScope;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.display.coreSettings.DefaultDisplayCoreSettingsPreferenceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppLanguageManager {
    public final SharedFlowImpl _appLocale;
    public final SharedFlowImpl _overrideLocale;
    public final SharedFlowImpl appLocale;
    public final CoroutineScope coroutineScope;
    public Locale currentOverrideLocale;
    public final DefaultDisplayCoreSettingsPreferenceManager displayCoreSettingsPreferenceManager;
    public final SharedFlowImpl overrideLocale;
    public final AppLanguageManager$$ExternalSyntheticLambda0 systemLocaleListener;
    public final SystemLocaleManager systemLocaleManager;

    public AppLanguageManager(SystemLocaleManager systemLocaleManager, DefaultDisplayCoreSettingsPreferenceManager defaultDisplayCoreSettingsPreferenceManager) {
        ContextScope MainScope = JobKt.MainScope();
        this.systemLocaleManager = systemLocaleManager;
        this.coroutineScope = MainScope;
        this.displayCoreSettingsPreferenceManager = defaultDisplayCoreSettingsPreferenceManager;
        SharedFlowImpl MutableSharedFlow$default = FlowKt.MutableSharedFlow$default(0, 6, null);
        this._overrideLocale = MutableSharedFlow$default;
        SharedFlowImpl MutableSharedFlow$default2 = FlowKt.MutableSharedFlow$default(0, 6, null);
        this._appLocale = MutableSharedFlow$default2;
        this.overrideLocale = MutableSharedFlow$default;
        this.appLocale = MutableSharedFlow$default2;
        this.systemLocaleListener = new AppLanguageManager$$ExternalSyntheticLambda0(this);
    }

    public final void setLocale(String str) {
        Locale build;
        Locale locale;
        Locale locale2;
        Continuation continuation = null;
        if (str.length() == 0) {
            locale = null;
        } else {
            if (str.length() == 5 && str.charAt(2) == '_') {
                build = new Locale.Builder().setLanguage(str.substring(0, 2)).setRegion(str.substring(3)).build();
            } else {
                build = new Locale.Builder().setLanguage(str).build();
            }
            locale = build;
        }
        this.currentOverrideLocale = locale;
        if (locale == null) {
            Configuration configuration = Resources.getSystem().getConfiguration();
            configuration.getClass();
            locale2 = Api24Compat.getCurrentLocale(configuration);
        } else {
            locale2 = locale;
        }
        Locale.setDefault(locale2);
        SystemLocaleManager systemLocaleManager = this.systemLocaleManager;
        AppLanguageManager$$ExternalSyntheticLambda0 appLanguageManager$$ExternalSyntheticLambda0 = this.systemLocaleListener;
        if (locale == null) {
            synchronized (systemLocaleManager) {
                appLanguageManager$$ExternalSyntheticLambda0.getClass();
                if (systemLocaleManager.listeners.isEmpty()) {
                    Log.v("Enable LocaleBroadcastReceiver", new Object[0]);
                    try {
                        systemLocaleManager.packageManager.setComponentEnabledSetting(systemLocaleManager.componentName, 1, 1);
                    } catch (Exception e) {
                        Log.e(e, "Error enabling LocaleBroadcastReceiver", new Object[0]);
                    }
                }
                systemLocaleManager.listeners.add(appLanguageManager$$ExternalSyntheticLambda0);
            }
        } else {
            systemLocaleManager.removeListener(appLanguageManager$$ExternalSyntheticLambda0);
        }
        JobKt.launch$default(this.coroutineScope, null, null, new Preferences$getAccountFlow$1(this, locale, locale2, continuation, 23), 3);
    }
}
