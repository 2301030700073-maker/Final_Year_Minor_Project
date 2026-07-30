package defpackage;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.widget.ActionMenuPresenter;

/* loaded from: classes.dex */
public abstract class H {
    private static final String TAG = "ActionProvider(support)";
    private final Context mContext;
    private Cdo mSubUiVisibilityListener;
    private Cif mVisibilityListener;

    /* renamed from: H$do, reason: invalid class name */
    public interface Cdo {
    }

    /* renamed from: H$if, reason: invalid class name */
    public interface Cif {
    }

    public H(Context context) {
        this.mContext = context;
    }

    public Context getContext() {
        return this.mContext;
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    public abstract View onCreateActionView();

    public View onCreateActionView(MenuItem menuItem) {
        return onCreateActionView();
    }

    public boolean onPerformDefaultAction() {
        return false;
    }

    public void onPrepareSubMenu(SubMenu subMenu) {
    }

    public boolean overridesItemVisibility() {
        return false;
    }

    public void refreshVisibility() {
        if (this.mVisibilityListener == null || !overridesItemVisibility()) {
            return;
        }
        Cif cif = this.mVisibilityListener;
        isVisible();
        Ccase ccase = Cgoto.this.f5475do;
        ccase.f5415for = true;
        ccase.mo3345throw(true);
    }

    public void reset() {
        this.mVisibilityListener = null;
        this.mSubUiVisibilityListener = null;
    }

    public void setSubUiVisibilityListener(Cdo cdo) {
        this.mSubUiVisibilityListener = cdo;
    }

    public void setVisibilityListener(Cif cif) {
        Cif cif2 = this.mVisibilityListener;
        this.mVisibilityListener = cif;
    }

    public void subUiVisibilityChanged(boolean z) {
        Cdo cdo = this.mSubUiVisibilityListener;
        if (cdo != null) {
            ((ActionMenuPresenter) cdo).m3391final(z);
        }
    }
}
