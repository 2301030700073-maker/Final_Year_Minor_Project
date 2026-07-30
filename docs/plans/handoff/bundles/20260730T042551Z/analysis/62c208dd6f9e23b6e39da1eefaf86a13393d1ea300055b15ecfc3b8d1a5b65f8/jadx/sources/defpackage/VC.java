package defpackage;

import android.app.Activity;
import android.preference.Preference;

/* loaded from: classes3.dex */
public final class VC implements Preference.OnPreferenceClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f4056do;

    public VC(Activity activity) {
        this.f4056do = activity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        C3210kN.m7254this("RequestFeature");
        VJ.m2590throws(this.f4056do, "https://rootchecker.uservoice.com");
        return false;
    }
}
