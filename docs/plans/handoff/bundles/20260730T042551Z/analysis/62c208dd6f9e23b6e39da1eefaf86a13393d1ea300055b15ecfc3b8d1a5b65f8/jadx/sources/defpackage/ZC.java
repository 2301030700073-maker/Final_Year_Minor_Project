package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.preference.Preference;
import com.joeykrim.rootcheck.WelcomeScreens;

/* loaded from: classes3.dex */
public final class ZC implements Preference.OnPreferenceClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f4791do;

    public ZC(Activity activity) {
        this.f4791do = activity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        Activity activity = this.f4791do;
        C3210kN.m7254this("WelcomeScreens");
        try {
            activity.startActivityForResult(new Intent(activity, (Class<?>) WelcomeScreens.class), 153);
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
