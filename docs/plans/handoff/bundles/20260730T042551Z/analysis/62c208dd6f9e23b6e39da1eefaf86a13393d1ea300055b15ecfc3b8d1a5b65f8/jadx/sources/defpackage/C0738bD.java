package defpackage;

import android.app.Activity;
import android.preference.Preference;

/* renamed from: bD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0738bD implements Preference.OnPreferenceClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f8341do;

    public C0738bD(Activity activity) {
        this.f8341do = activity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public final boolean onPreferenceClick(Preference preference) {
        String[] strArr = DialogFragmentC4048ye.f16803do;
        String m2570goto = VJ.m2570goto(strArr[0]);
        Activity activity = this.f8341do;
        C3210kN.m7254this(m2570goto);
        try {
            DialogFragmentC4048ye dialogFragmentC4048ye = new DialogFragmentC4048ye();
            dialogFragmentC4048ye.setCancelable(false);
            dialogFragmentC4048ye.show(activity.getFragmentManager(), VJ.m2570goto(strArr[0]));
            C3210kN.m7251goto(activity, VJ.m2570goto(strArr[0]));
        } catch (Exception unused) {
        }
        return false;
    }
}
