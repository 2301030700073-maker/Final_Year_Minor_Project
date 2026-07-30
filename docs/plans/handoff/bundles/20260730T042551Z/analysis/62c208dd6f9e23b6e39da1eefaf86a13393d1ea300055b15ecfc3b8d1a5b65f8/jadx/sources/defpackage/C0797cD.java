package defpackage;

import android.app.Activity;
import android.preference.Preference;

/* renamed from: cD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0797cD implements Preference.OnPreferenceClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f8515do;

    public C0797cD(Activity activity) {
        this.f8515do = activity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        C3210kN.m7254this("PrivacyPolicy");
        VJ.m2590throws(this.f8515do, "https://www.rootchecker.com/privacy_policy.html");
        return false;
    }
}
