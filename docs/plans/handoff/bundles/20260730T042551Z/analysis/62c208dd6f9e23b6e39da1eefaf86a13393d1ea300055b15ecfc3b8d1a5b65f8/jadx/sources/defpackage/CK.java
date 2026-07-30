package defpackage;

import android.view.MenuItem;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;
import defpackage.C2839gx;

/* loaded from: classes3.dex */
public final class CK implements C2839gx.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatActivity f360do;

    public CK(AppCompatActivity appCompatActivity) {
        this.f360do = appCompatActivity;
    }

    @Override // defpackage.C2839gx.Cdo
    /* renamed from: do, reason: not valid java name */
    public final void mo261do(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        AppCompatActivity appCompatActivity = this.f360do;
        if (itemId == R.id.menu_item_recommend_install) {
            O4.b(appCompatActivity, 1);
        }
        if (menuItem.getItemId() == R.id.menu_item_recommend_uninstall) {
            O4.b(appCompatActivity, 2);
        }
        if (menuItem.getItemId() == R.id.menu_item_recommend_disable) {
            O4.b(appCompatActivity, 3);
        }
        if (menuItem.getItemId() == R.id.menu_item_useful || menuItem.getItemId() == R.id.menu_item_not_useful) {
            C3210kN.m7253new(C3772tx.m8347super() ? "FeedbackRecommendInstall" : "FeedbackRecommendUninstall", menuItem.getItemId() == R.id.menu_item_useful);
            VJ.m2574instanceof(appCompatActivity, appCompatActivity.getString(R.string.feedbackSubmitted));
        }
    }
}
