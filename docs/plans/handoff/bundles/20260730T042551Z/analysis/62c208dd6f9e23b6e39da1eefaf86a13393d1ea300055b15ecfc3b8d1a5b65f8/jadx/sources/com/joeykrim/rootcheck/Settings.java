package com.joeykrim.rootcheck;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.view.View;
import android.widget.ListView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.internal.consent_sdk.zzj;
import defpackage.C0170Dl;
import defpackage.C0420Ou;
import defpackage.C0678aD;
import defpackage.C0738bD;
import defpackage.C0766bi;
import defpackage.C0797cD;
import defpackage.C3210kN;
import defpackage.C3772tx;
import defpackage.InterfaceC3690sa;
import defpackage.VC;
import defpackage.VJ;
import defpackage.WC;
import defpackage.XC;
import defpackage.YC;
import defpackage.ZC;

/* loaded from: classes3.dex */
public class Settings extends PreferenceActivity {

    /* renamed from: do, reason: not valid java name */
    public static boolean f12246do = false;

    /* renamed from: com.joeykrim.rootcheck.Settings$do, reason: invalid class name */
    public class Cdo implements Preference.OnPreferenceClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f12247do;

        /* renamed from: com.joeykrim.rootcheck.Settings$do$do, reason: invalid class name and collision with other inner class name */
        public class C0082do implements InterfaceC3690sa.Cdo {
            public C0082do() {
            }

            @Override // defpackage.InterfaceC3690sa.Cdo
            /* renamed from: do */
            public final void mo503do() {
                try {
                    C0170Dl.f646if = true;
                    Activity activity = Cdo.this.f12247do;
                    if (activity == null || activity.isFinishing()) {
                        return;
                    }
                    Cdo cdo = Cdo.this;
                    Settings settings = Settings.this;
                    Activity activity2 = cdo.f12247do;
                    boolean z = Settings.f12246do;
                    settings.m6385do(activity2);
                } catch (RuntimeException e) {
                    try {
                        C0766bi.m4854do().m4855for(e);
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        public Cdo(Activity activity) {
            this.f12247do = activity;
        }

        @Override // android.preference.Preference.OnPreferenceClickListener
        public final boolean onPreferenceClick(Preference preference) {
            C3210kN.m7254this("PrivacyConsent");
            InterfaceC3690sa interfaceC3690sa = C0170Dl.f644do;
            if (interfaceC3690sa == null) {
                return false;
            }
            try {
                interfaceC3690sa.show(this.f12247do, new C0082do());
                return false;
            } catch (RuntimeException e) {
                try {
                    C0766bi.m4854do().m4855for(e);
                } catch (Throwable unused) {
                }
                C0170Dl.f644do = null;
                return false;
            }
        }
    }

    /* renamed from: com.joeykrim.rootcheck.Settings$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Settings.this.finish();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6385do(Activity activity) {
        PreferenceCategory preferenceCategory = (PreferenceCategory) findPreference(getString(R.string.prefCategoryTitleAboutKey));
        Preference findPreference = findPreference(getString(R.string.prefKeyPrivacyConsent));
        zzj zzjVar = C0170Dl.f642do;
        InterfaceC3690sa interfaceC3690sa = C0170Dl.f644do;
        boolean z = C0170Dl.f646if;
        if (zzjVar == null || !zzjVar.isConsentFormAvailable() || interfaceC3690sa == null || z) {
            preferenceCategory.removePreference(findPreference);
        } else {
            preferenceCategory.addPreference(findPreference);
        }
        findPreference.setOnPreferenceClickListener(new Cdo(activity));
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.preferences_activity);
        if (C3772tx.m8345static()) {
            setTheme(R.style.custom_Theme_Settings_Dark);
            ListView listView = getListView();
            if (listView != null) {
                listView.setBackgroundColor(getResources().getColor(R.color.cardview_dark_background));
            }
        } else {
            setTheme(R.style.custom_Theme_Settings);
        }
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            toolbar.mo3493package(getString(R.string.menuSettings));
            ColorStateList valueOf = ColorStateList.valueOf(getResources().getColor(R.color.white));
            toolbar.f5919do = valueOf;
            AppCompatTextView appCompatTextView = toolbar.f5930do;
            if (appCompatTextView != null) {
                appCompatTextView.setTextColor(valueOf);
            }
            toolbar.mo3486extends(new Cif());
            int a = VJ.a(this);
            if (a != -1) {
                toolbar.setBackgroundColor(a);
            }
        }
        VJ.m2575interface(this);
        getPreferenceManager().setSharedPreferencesName("PrefFile");
        addPreferencesFromResource(R.xml.preferences);
        Preference findPreference = findPreference(getString(R.string.prefCBKeyDarkThemePaid));
        boolean z = false;
        if (C0420Ou.m1693else()) {
            findPreference.setEnabled(true);
        } else {
            findPreference.setEnabled(false);
        }
        findPreference(getString(R.string.prefKeyReqFeature)).setOnPreferenceClickListener(new VC(this));
        findPreference(getString(R.string.prefKeyReportIssue)).setOnPreferenceClickListener(new WC(this));
        Preference findPreference2 = findPreference(getString(R.string.prefKeyFollowTwitter));
        try {
            getPackageManager().getPackageInfo("com.twitter.android", 0);
            z = true;
        } catch (Exception unused) {
        }
        if (z) {
            findPreference2.setOnPreferenceClickListener(new XC(this));
        } else {
            ((PreferenceCategory) findPreference(getString(R.string.prefCategoryTitleFeedbackKey))).removePreference(findPreference2);
        }
        findPreference(getString(R.string.prefKeyAboutVersion)).setSummary(MainActivity.f12230break);
        findPreference(getString(R.string.prefKeyWhatsNew)).setOnPreferenceClickListener(new YC(this));
        findPreference(getString(R.string.prefKeyWelcomeScreens)).setOnPreferenceClickListener(new ZC(this));
        findPreference(getString(R.string.prefKeyAcknowledgement)).setOnPreferenceClickListener(new C0678aD(this));
        findPreference(getString(R.string.prefKeyAboutDisclaimer)).setOnPreferenceClickListener(new C0738bD(this));
        findPreference(getString(R.string.prefKeyPrivacyPolicy)).setOnPreferenceClickListener(new C0797cD(this));
        m6385do(this);
        f12246do = true;
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            super.onPause();
        } catch (Exception unused) {
        }
        f12246do = false;
    }

    @Override // android.app.Activity
    public final void onResume() {
        try {
            super.onResume();
        } catch (Exception unused) {
        }
        f12246do = true;
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        if (appCompatActivity != null) {
            C3210kN.m7251goto(appCompatActivity, "SETTINGS");
        }
    }
}
