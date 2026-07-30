package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Ctry;
import androidx.savedstate.Cdo;

/* renamed from: Aj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0102Aj implements Cdo.Cif {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ FragmentActivity f134do;

    public C0102Aj(FragmentActivity fragmentActivity) {
        this.f134do = fragmentActivity;
    }

    @Override // androidx.savedstate.Cdo.Cif
    /* renamed from: do, reason: not valid java name */
    public final Bundle mo94do() {
        FragmentActivity fragmentActivity;
        Bundle bundle = new Bundle();
        do {
            fragmentActivity = this.f134do;
        } while (FragmentActivity.m4112const(fragmentActivity.m4113class()));
        fragmentActivity.f6847for.m4258case(Ctry.Cdo.ON_STOP);
        Parcelable e = fragmentActivity.f6846do.f640do.f879do.e();
        if (e != null) {
            bundle.putParcelable("android:support:fragments", e);
        }
        return bundle;
    }
}
