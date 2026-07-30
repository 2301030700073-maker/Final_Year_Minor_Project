package defpackage;

import android.app.Activity;
import android.preference.Preference;

/* loaded from: classes3.dex */
public final class WC implements Preference.OnPreferenceClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f4346do;

    public WC(Activity activity) {
        this.f4346do = activity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        Activity activity = this.f4346do;
        C3210kN.m7254this("ReportDialog");
        try {
            new DialogFragmentC4069yz().show(activity.getFragmentManager(), "ReportDialog");
            C3210kN.m7251goto(activity, "ReportDialog");
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
