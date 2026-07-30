package defpackage;

import android.view.MenuItem;
import android.widget.PopupMenu;
import androidx.appcompat.app.AppCompatActivity;
import com.joeykrim.rootcheck.R;

/* renamed from: Su, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0508Su implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatActivity f3561do;

    public C0508Su(AppCompatActivity appCompatActivity) {
        this.f3561do = appCompatActivity;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        C3210kN.m7253new("WhyRoot", menuItem.getItemId() == R.id.menu_item_useful);
        AppCompatActivity appCompatActivity = this.f3561do;
        VJ.m2574instanceof(appCompatActivity, appCompatActivity.getString(R.string.feedbackSubmitted));
        return true;
    }
}
