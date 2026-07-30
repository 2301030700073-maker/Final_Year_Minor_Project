package com.android.launcher3.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.fragment.app.DialogFragment;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.RecyclerView;
import b.i.b.ActivityC0124t;
import b.i.b.C0096a;
import b.i.b.L;
import b.i.b.X;
import b.i.b.r;
import b.l.D;
import b.l.E;
import b.l.H;
import b.l.N;
import b.l.S;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.settings.SettingsActivity;
import com.android.launcher3.states.RotationHelper;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.SecureSettingsObserver;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class SettingsActivity extends ActivityC0124t implements D, E, SharedPreferences.OnSharedPreferenceChangeListener {

    public class LauncherSettingsFragment extends PreferenceFragmentCompat {
        public String mHighLightKey;
        public SecureSettingsObserver mNotificationDotsObserver;
        public boolean mPreferenceHighlighted = false;

        public static /* synthetic */ void a(RecyclerView recyclerView) {
            if (recyclerView.hasFocus() || recyclerView.getChildCount() <= 0) {
                return;
            }
            recyclerView.getChildAt(0).performAccessibilityAction(64, null);
        }

        public String getParentKeyForPref() {
            return null;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public boolean initPreference(Preference preference) {
            char c2;
            String str = preference.mKey;
            switch (str.hashCode()) {
                case -2025042314:
                    if (str.equals("pref_icon_badging")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1997663219:
                    if (str.equals("pref_developer_options")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -789825333:
                    if (str.equals("pref_allowRotation")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 48330711:
                    if (str.equals("pref_add_icon_to_home")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1623730635:
                    if (str.equals("flag_toggler")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                if (!Utilities.ATLEAST_OREO || !getResources().getBoolean(R.bool.notification_dots_enabled)) {
                    return false;
                }
                SecureSettingsObserver newNotificationSettingsObserver = SecureSettingsObserver.newNotificationSettingsObserver(getActivity(), (NotificationDotsPreference) preference);
                this.mNotificationDotsObserver = newNotificationSettingsObserver;
                newNotificationSettingsObserver.register();
                this.mNotificationDotsObserver.mResolver.registerContentObserver(Settings.Secure.getUriFor("enabled_notification_listeners"), false, this.mNotificationDotsObserver);
                this.mNotificationDotsObserver.onChange(true);
                return true;
            }
            if (c2 == 1) {
                return Utilities.ATLEAST_OREO;
            }
            if (c2 == 2) {
                if (getResources().getBoolean(R.bool.allow_rotation)) {
                    return false;
                }
                preference.mDefaultValue = Boolean.valueOf(RotationHelper.getAllowRotationDefaultValue());
                return true;
            }
            if (c2 == 3) {
                return FeatureFlags.showFlagTogglerUi(getContext());
            }
            if (c2 != 4) {
                return true;
            }
            return FeatureFlags.showFlagTogglerUi(getContext()) || PluginManagerWrapper.hasPlugins(getContext());
        }

        @Override // androidx.preference.PreferenceFragmentCompat
        public void onCreatePreferences(Bundle bundle, String str) {
            Bundle arguments = getArguments();
            String string = arguments == null ? null : arguments.getString(":settings:fragment_args_key");
            this.mHighLightKey = string;
            if (str == null && !TextUtils.isEmpty(string)) {
                str = getParentKeyForPref();
            }
            if (bundle != null) {
                this.mPreferenceHighlighted = bundle.getBoolean("android:preference_highlighted");
            }
            S s = this.mPreferenceManager;
            s.f = "com.android.launcher3.prefs";
            s.f1040c = null;
            Context context = getContext();
            s.e = true;
            N n = new N(context, s);
            XmlResourceParser xml = n.f1034a.getResources().getXml(R.xml.launcher_preferences);
            try {
                Preference c2 = n.c(xml, null);
                xml.close();
                PreferenceScreen preferenceScreen = (PreferenceScreen) c2;
                preferenceScreen.onAttachedToHierarchy(s);
                SharedPreferences.Editor editor = s.f1041d;
                if (editor != null) {
                    editor.apply();
                }
                s.e = false;
                Object obj = preferenceScreen;
                if (str != null) {
                    Object g = preferenceScreen.g(str);
                    boolean z = g instanceof PreferenceScreen;
                    obj = g;
                    if (!z) {
                        throw new IllegalArgumentException("Preference object with key " + str + " is not a PreferenceScreen");
                    }
                }
                setPreferenceScreen((PreferenceScreen) obj);
                PreferenceScreen preferenceScreen2 = this.mPreferenceManager.h;
                for (int i = preferenceScreen2.i() - 1; i >= 0; i--) {
                    Preference h = preferenceScreen2.h(i);
                    if (!initPreference(h)) {
                        preferenceScreen2.k(h);
                    }
                }
            } catch (Throwable th) {
                xml.close();
                throw th;
            }
        }

        @Override // b.i.b.r
        public void onDestroy() {
            SecureSettingsObserver secureSettingsObserver = this.mNotificationDotsObserver;
            if (secureSettingsObserver != null) {
                secureSettingsObserver.mResolver.unregisterContentObserver(secureSettingsObserver);
                this.mNotificationDotsObserver = null;
            }
            super.onDestroy();
        }

        @Override // b.i.b.r
        public void onResume() {
            super.onResume();
            if (!isAdded() || this.mPreferenceHighlighted) {
                return;
            }
            PreferenceHighlighter preferenceHighlighter = null;
            if (!TextUtils.isEmpty(this.mHighLightKey) && this.mPreferenceManager.h != null) {
                RecyclerView recyclerView = this.mList;
                int a2 = ((H) recyclerView.getAdapter()).a(this.mHighLightKey);
                if (a2 >= 0) {
                    preferenceHighlighter = new PreferenceHighlighter(recyclerView, a2);
                }
            }
            if (preferenceHighlighter != null) {
                getView().postDelayed(preferenceHighlighter, 600L);
                this.mPreferenceHighlighted = true;
            } else {
                final RecyclerView recyclerView2 = this.mList;
                recyclerView2.post(new Runnable() { // from class: c.a.a.U0.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingsActivity.LauncherSettingsFragment.a(RecyclerView.this);
                    }
                });
            }
        }

        @Override // androidx.preference.PreferenceFragmentCompat, b.i.b.r
        public void onSaveInstanceState(Bundle bundle) {
            super.onSaveInstanceState(bundle);
            bundle.putBoolean("android:preference_highlighted", this.mPreferenceHighlighted);
        }
    }

    @Override // b.i.b.ActivityC0124t, b.a.g, b.e.b.f, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            Bundle bundle2 = new Bundle();
            String stringExtra = getIntent().getStringExtra(":settings:fragment_args_key");
            if (!TextUtils.isEmpty(stringExtra)) {
                bundle2.putString(":settings:fragment_args_key", stringExtra);
            }
            X supportFragmentManager = getSupportFragmentManager();
            L J = supportFragmentManager.J();
            getClassLoader();
            r a2 = J.a(getString(R.string.settings_fragment_name));
            a2.setArguments(bundle2);
            C0096a c0096a = new C0096a(supportFragmentManager);
            c0096a.m(android.R.id.content, a2);
            c0096a.d();
        }
        Utilities.getPrefs(getApplicationContext()).registerOnSharedPreferenceChangeListener(this);
    }

    @Override // b.l.D
    public boolean onPreferenceStartFragment(PreferenceFragmentCompat preferenceFragmentCompat, Preference preference) {
        return startFragment(preference.mFragment, preference.getExtras(), preference.mKey);
    }

    @Override // b.l.E
    public boolean onPreferenceStartScreen(PreferenceFragmentCompat preferenceFragmentCompat, PreferenceScreen preferenceScreen) {
        Bundle bundle = new Bundle();
        bundle.putString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", preferenceScreen.mKey);
        return startFragment(getString(R.string.settings_fragment_name), bundle, preferenceScreen.mKey);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
    }

    public final boolean startFragment(String str, Bundle bundle, String str2) {
        if (Utilities.ATLEAST_P && getSupportFragmentManager().P()) {
            return false;
        }
        X supportFragmentManager = getSupportFragmentManager();
        L J = supportFragmentManager.J();
        getClassLoader();
        r a2 = J.a(str);
        a2.setArguments(bundle);
        if (a2 instanceof DialogFragment) {
            ((DialogFragment) a2).show(getSupportFragmentManager(), str2);
        } else {
            C0096a c0096a = new C0096a(supportFragmentManager);
            c0096a.m(android.R.id.content, a2);
            if (!c0096a.h) {
                throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
            }
            c0096a.g = true;
            c0096a.i = str2;
            c0096a.d();
        }
        return true;
    }
}
