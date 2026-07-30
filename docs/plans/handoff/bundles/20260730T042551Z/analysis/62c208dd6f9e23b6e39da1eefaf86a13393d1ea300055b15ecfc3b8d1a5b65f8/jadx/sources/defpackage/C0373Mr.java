package defpackage;

import android.view.View;
import com.google.android.material.datepicker.Cfor;
import com.joeykrim.rootcheck.R;

/* renamed from: Mr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0373Mr extends Cimplements {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Cfor f2271do;

    public C0373Mr(Cfor cfor) {
        this.f2271do = cfor;
    }

    @Override // defpackage.Cimplements
    /* renamed from: new */
    public final void mo1356new(View view, C3893w c3893w) {
        ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
        Cfor cfor = this.f2271do;
        c3893w.m8499const(cfor.f11001new.getVisibility() == 0 ? cfor.getString(R.string.mtrl_picker_toggle_to_year_selection) : cfor.getString(R.string.mtrl_picker_toggle_to_day_selection));
    }
}
