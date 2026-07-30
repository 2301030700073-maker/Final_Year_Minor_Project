package defpackage;

import android.app.Activity;
import android.preference.Preference;

/* loaded from: classes3.dex */
public final class XC implements Preference.OnPreferenceClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f4472do;

    public XC(Activity activity) {
        this.f4472do = activity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        C3210kN.m7254this("FollowOnTwitter");
        VJ.m2563default(this.f4472do);
        return false;
    }
}
