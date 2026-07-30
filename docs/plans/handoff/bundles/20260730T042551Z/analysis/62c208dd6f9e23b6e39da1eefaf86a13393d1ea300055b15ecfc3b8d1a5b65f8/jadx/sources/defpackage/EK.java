package defpackage;

import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;
import defpackage.C2839gx;

/* loaded from: classes3.dex */
public final class EK implements C2839gx.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatActivity f768do;

    public EK(AppCompatActivity appCompatActivity) {
        this.f768do = appCompatActivity;
    }

    @Override // defpackage.C2839gx.Cdo
    /* renamed from: do */
    public final void mo261do(MenuItem menuItem) {
        C3210kN.m7253new("FeedbackVRSUAppStatus", menuItem.getItemId() == R.id.menu_item_useful);
        AppCompatActivity appCompatActivity = this.f768do;
        VJ.m2574instanceof(appCompatActivity, appCompatActivity.getString(R.string.feedbackSubmitted));
    }
}
