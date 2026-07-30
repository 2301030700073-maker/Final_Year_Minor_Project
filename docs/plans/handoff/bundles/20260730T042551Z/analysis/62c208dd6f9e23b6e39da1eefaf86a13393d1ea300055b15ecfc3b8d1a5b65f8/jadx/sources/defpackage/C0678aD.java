package defpackage;

import android.app.Activity;
import android.preference.Preference;

/* renamed from: aD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0678aD implements Preference.OnPreferenceClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f4936do;

    public C0678aD(Activity activity) {
        this.f4936do = activity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        Activity activity = this.f4936do;
        C3210kN.m7254this("AboutDialog");
        try {
            new Cnew().show(activity.getFragmentManager(), "AboutDialog");
            C3210kN.m7251goto(activity, "AboutDialog");
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
