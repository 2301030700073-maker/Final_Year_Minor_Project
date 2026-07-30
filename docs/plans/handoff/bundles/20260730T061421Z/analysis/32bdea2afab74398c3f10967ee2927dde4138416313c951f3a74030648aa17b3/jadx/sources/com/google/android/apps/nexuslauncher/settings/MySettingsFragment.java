package com.google.android.apps.nexuslauncher.settings;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import androidx.preference.Preference;
import c.b.a.b.b.p.k;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.settings.SettingsActivity;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.tracing.FrameProtoTracer;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class MySettingsFragment extends SettingsActivity.LauncherSettingsFragment {

    /* renamed from: a, reason: collision with root package name */
    public Preference f3329a;

    public final void b() {
        Preference preference = this.f3329a;
        if (preference != null) {
            boolean z = false;
            try {
                z = getContext().getPackageManager().getApplicationInfo("com.google.android.googlequicksearchbox", 0).enabled;
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (preference.mEnabled != z) {
                preference.mEnabled = z;
                preference.notifyDependencyChange(preference.shouldDisableDependents());
                preference.notifyChanged();
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.launcher3.settings.SettingsActivity.LauncherSettingsFragment
    public boolean initPreference(Preference preference) {
        char c2;
        String str;
        String str2 = preference.mKey;
        switch (str2.hashCode()) {
            case -750902520:
                if (str2.equals("about_app_version")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -443637639:
                if (str2.equals("pref_smartspace")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 275372752:
                if (str2.equals("pref_overview_action_suggestions")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1480415955:
                if (str2.equals("pref_suggestions")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1485596969:
                if (str2.equals("send_hotseat_feedback")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1986449655:
                if (str2.equals("pref_enable_minus_one")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            this.f3329a = preference;
            b();
            return true;
        }
        if (c2 == 1) {
            try {
                str = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("MySettingsFragment", "Unable to load my own package info", e);
                str = "";
            }
            preference.setSummary(str);
            return true;
        }
        if (c2 == 2) {
            if (!((k) k.j.b(getActivity())).d()) {
                return false;
            }
            preference.mIntent = k.a();
            return true;
        }
        if (c2 == 3) {
            return FeatureFlags.ENABLE_SUGGESTED_ACTIONS_OVERVIEW.get();
        }
        if (c2 != 4) {
            return c2 != 5 ? super.initPreference(preference) : Utilities.IS_DEBUG_DEVICE && FeatureFlags.ENABLE_HYBRID_HOTSEAT.get();
        }
        ResolveInfo resolveActivity = getContext().getPackageManager().resolveActivity(new Intent("android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS"), FrameProtoTracer.BUFFER_CAPACITY);
        if (resolveActivity != null) {
            preference.mIntent.setPackage(resolveActivity.resolvePackageName);
        }
        return resolveActivity != null;
    }

    @Override // com.android.launcher3.settings.SettingsActivity.LauncherSettingsFragment, b.i.b.r
    public void onResume() {
        super.onResume();
        b();
    }
}
