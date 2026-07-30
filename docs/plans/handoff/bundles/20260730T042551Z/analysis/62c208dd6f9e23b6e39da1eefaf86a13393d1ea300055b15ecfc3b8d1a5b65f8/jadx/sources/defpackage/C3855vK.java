package defpackage;

import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;
import defpackage.C2839gx;

/* renamed from: vK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3855vK implements C2839gx.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatActivity f16068do;

    public C3855vK(AppCompatActivity appCompatActivity) {
        this.f16068do = appCompatActivity;
    }

    @Override // defpackage.C2839gx.Cdo
    /* renamed from: do */
    public final void mo261do(MenuItem menuItem) {
        C3210kN.m7253new("FeedbackVRIDStatus", menuItem.getItemId() == R.id.menu_item_useful);
        AppCompatActivity appCompatActivity = this.f16068do;
        VJ.m2574instanceof(appCompatActivity, appCompatActivity.getString(R.string.feedbackSubmitted));
    }
}
