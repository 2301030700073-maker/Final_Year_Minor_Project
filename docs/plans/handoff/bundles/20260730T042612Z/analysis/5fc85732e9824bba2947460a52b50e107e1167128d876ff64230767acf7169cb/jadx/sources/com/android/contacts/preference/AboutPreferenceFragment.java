package com.android.contacts.preference;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.widget.Toast;
import com.android.contacts.R;
import com.android.contacts.activities.LicenseActivity;

/* loaded from: classes.dex */
public class AboutPreferenceFragment extends PreferenceFragment {
    public static AboutPreferenceFragment newInstance() {
        return new AboutPreferenceFragment();
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.preference_about);
        try {
            findPreference(getString(R.string.pref_build_version_key)).setSummary(getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 0).versionName);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        findPreference(getString(R.string.pref_open_source_licenses_key)).setIntent(new Intent(getActivity(), (Class<?>) LicenseActivity.class));
        final Preference findPreference = findPreference("pref_privacy_policy");
        final Preference findPreference2 = findPreference("pref_terms_of_service");
        Preference.OnPreferenceClickListener onPreferenceClickListener = new Preference.OnPreferenceClickListener() { // from class: com.android.contacts.preference.AboutPreferenceFragment.1
            @Override // android.preference.Preference.OnPreferenceClickListener
            public boolean onPreferenceClick(Preference preference) {
                try {
                    if (preference == findPreference) {
                        AboutPreferenceFragment.this.startActivityForUrl("http://www.google.com/policies/privacy");
                    } else if (preference == findPreference2) {
                        AboutPreferenceFragment.this.startActivityForUrl("http://www.google.com/policies/terms");
                    }
                    return true;
                } catch (ActivityNotFoundException unused2) {
                    Toast.makeText(AboutPreferenceFragment.this.getContext(), AboutPreferenceFragment.this.getString(R.string.url_open_error_toast), 0).show();
                    return true;
                }
            }
        };
        findPreference.setOnPreferenceClickListener(onPreferenceClickListener);
        findPreference2.setOnPreferenceClickListener(onPreferenceClickListener);
    }

    @Override // android.app.Fragment
    public Context getContext() {
        return getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startActivityForUrl(String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        startActivity(intent);
    }
}
