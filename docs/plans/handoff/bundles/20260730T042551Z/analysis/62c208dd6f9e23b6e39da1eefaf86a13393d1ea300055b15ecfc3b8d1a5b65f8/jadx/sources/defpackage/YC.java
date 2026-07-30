package defpackage;

import android.app.Activity;
import android.preference.Preference;

/* loaded from: classes3.dex */
public final class YC implements Preference.OnPreferenceClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f4674do;

    public YC(Activity activity) {
        this.f4674do = activity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        Activity activity = this.f4674do;
        C3210kN.m7254this("WhatsNewDialog");
        try {
            new DialogFragmentC2630dM().show(activity.getFragmentManager(), "WhatsNewDialog");
            C3210kN.m7251goto(activity, "WhatsNewDialog");
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
