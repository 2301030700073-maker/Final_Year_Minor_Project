package c.b.a.b.b.j;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.userevent.nano.LauncherLogExtensions$LauncherEventExtension;
import com.android.launcher3.userevent.nano.LauncherLogExtensions$Settings;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.util.SecureSettingsObserver;
import com.android.quickstep.SysUINavigationMode;
import java.util.Objects;

/* loaded from: classes.dex */
public class f implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public SecureSettingsObserver f2589a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f2590b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f2591c;

    /* renamed from: d, reason: collision with root package name */
    public final e f2592d = new e(this, 10);
    public final e e = new e(this, 8);

    public f(Context context) {
        this.f2590b = context;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f2591c = handler;
        handler.postDelayed(new Runnable() { // from class: c.b.a.b.b.j.b
            @Override // java.lang.Runnable
            public final void run() {
                f fVar = f.this;
                Objects.requireNonNull(fVar);
                SysUINavigationMode sysUINavigationMode = (SysUINavigationMode) SysUINavigationMode.INSTANCE.b(fVar.f2590b);
                fVar.f2592d.f2587c = sysUINavigationMode.getMode().resValue;
                sysUINavigationMode.addModeChangeListener(fVar.f2592d);
                SecureSettingsObserver newNotificationSettingsObserver = SecureSettingsObserver.newNotificationSettingsObserver(fVar.f2590b, fVar.e);
                fVar.f2589a = newNotificationSettingsObserver;
                newNotificationSettingsObserver.register();
                fVar.e.f2586b = fVar.f2589a.getValue();
                Utilities.getPrefs(fVar.f2590b).registerOnSharedPreferenceChangeListener(fVar);
                Utilities.getDevicePrefs(fVar.f2590b).registerOnSharedPreferenceChangeListener(fVar);
                fVar.a(1);
            }
        }, 5000L);
    }

    public void a(int i) {
        SharedPreferences prefs = Utilities.getPrefs(this.f2590b);
        LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent = new LauncherLogProto$LauncherEvent();
        LauncherLogProto$Action launcherLogProto$Action = new LauncherLogProto$Action();
        launcherLogProto$LauncherEvent.action = launcherLogProto$Action;
        launcherLogProto$Action.type = 1;
        launcherLogProto$LauncherEvent.extension = new LauncherLogExtensions$LauncherEventExtension();
        LauncherLogExtensions$Settings launcherLogExtensions$Settings = new LauncherLogExtensions$Settings();
        launcherLogExtensions$Settings.isSwipeUpEnabled = false;
        launcherLogExtensions$Settings.isRotationEnabled = prefs.getBoolean("pref_allowRotation", false);
        launcherLogExtensions$Settings.isGoogleAppEnabled = prefs.getBoolean("pref_enable_minus_one", false);
        launcherLogExtensions$Settings.isNotificationDotsEnabled = this.e.f2586b;
        launcherLogExtensions$Settings.isIconToHomeEnabled = prefs.getBoolean("pref_add_icon_to_home", false);
        launcherLogExtensions$Settings.isActionSuggestionEnabled = prefs.getBoolean("pref_overview_action_suggestions", false);
        launcherLogExtensions$Settings.navBarInteractionMode = this.f2592d.f2587c;
        launcherLogExtensions$Settings.userInitiatedChange = i;
        launcherLogExtensions$Settings.isAppSuggestionEnabled = Utilities.getDevicePrefs(this.f2590b).getBoolean("last_prediction_enabled_state", true);
        launcherLogProto$LauncherEvent.extension.settings = launcherLogExtensions$Settings;
        UserEventDispatcher.newInstance(this.f2590b).dispatchUserEvent(launcherLogProto$LauncherEvent, null);
        StatsLogManager.newInstance(this.f2590b).logSnapshot();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        char c2;
        switch (str.hashCode()) {
            case -1174951956:
                if (str.equals("last_prediction_enabled_state")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -789825333:
                if (str.equals("pref_allowRotation")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 48330711:
                if (str.equals("pref_add_icon_to_home")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 275372752:
                if (str.equals("pref_overview_action_suggestions")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1986449655:
                if (str.equals("pref_enable_minus_one")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            a(6);
            return;
        }
        if (c2 == 1) {
            a(7);
            return;
        }
        if (c2 == 2) {
            a(9);
        } else if (c2 == 3) {
            a(3);
        } else {
            if (c2 != 4) {
                return;
            }
            a(4);
        }
    }
}
