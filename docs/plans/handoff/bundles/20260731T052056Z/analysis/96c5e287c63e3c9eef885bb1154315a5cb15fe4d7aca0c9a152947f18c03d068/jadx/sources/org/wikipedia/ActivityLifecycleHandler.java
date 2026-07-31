package org.wikipedia;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import org.jsoup.Jsoup;
import org.wikipedia.main.MainActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.theme.Theme;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityLifecycleHandler implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
    public Activity currentActivity;
    public boolean haveMainActivity;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        WikipediaApp jsoup = Jsoup.getInstance();
        this.currentActivity = activity;
        if (activity instanceof MainActivity) {
            this.haveMainActivity = true;
        }
        Prefs prefs = Prefs.INSTANCE;
        if (!Prefs.getShouldMatchSystemTheme() || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Theme theme = jsoup.currentTheme;
        int i = jsoup.getResources().getConfiguration().uiMode & 48;
        if (i == 16) {
            if (jsoup.currentTheme.isDark()) {
                jsoup.setCurrentTheme(WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.LIGHT : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
                PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
                return;
            }
            return;
        }
        if (i == 32 && !jsoup.currentTheme.isDark()) {
            jsoup.setCurrentTheme(!WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()).isDark() ? Theme.DARK : WikipediaApp.unmarshalTheme(Prefs.getPreviousThemeId()));
            PrefsIoUtil.setInt(R.string.preference_key_previous_color_theme, theme.getMarshallingId());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        activity.getClass();
        if (activity instanceof MainActivity) {
            this.haveMainActivity = false;
        }
        this.currentActivity = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        activity.getClass();
        this.currentActivity = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        activity.getClass();
        this.currentActivity = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        activity.getClass();
        bundle.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        activity.getClass();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        activity.getClass();
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
    }
}
