package androidx.appcompat.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.appcompat.widget.Cdo;
import com.joeykrim.rootcheck.R;
import defpackage.C3645ro;
import defpackage.H;

/* loaded from: classes.dex */
public class ShareActionProvider extends H {
    private static final int DEFAULT_INITIAL_ACTIVITY_COUNT = 4;
    public static final String DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";
    final Context mContext;
    private int mMaxShownActivityCount;
    private Cdo.Cnew mOnChooseActivityListener;
    private final Cif mOnMenuItemClickListener;
    Cdo mOnShareTargetSelectedListener;
    String mShareHistoryFileName;

    /* renamed from: androidx.appcompat.widget.ShareActionProvider$do, reason: invalid class name */
    public interface Cdo {
    }

    /* renamed from: androidx.appcompat.widget.ShareActionProvider$if, reason: invalid class name */
    public class Cif implements MenuItem.OnMenuItemClickListener {
        public Cif() {
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            ShareActionProvider shareActionProvider = ShareActionProvider.this;
            Intent m3516if = androidx.appcompat.widget.Cdo.m3510new(shareActionProvider.mContext, shareActionProvider.mShareHistoryFileName).m3516if(menuItem.getItemId());
            if (m3516if == null) {
                return true;
            }
            String action = m3516if.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                shareActionProvider.updateIntent(m3516if);
            }
            shareActionProvider.mContext.startActivity(m3516if);
            return true;
        }
    }

    public ShareActionProvider(Context context) {
        super(context);
        this.mMaxShownActivityCount = 4;
        this.mOnMenuItemClickListener = new Cif();
        this.mShareHistoryFileName = DEFAULT_SHARE_HISTORY_FILE_NAME;
        this.mContext = context;
    }

    private void setActivityChooserPolicyIfNeeded() {
    }

    @Override // defpackage.H
    public boolean hasSubMenu() {
        return true;
    }

    @Override // defpackage.H
    public View onCreateActionView() {
        ActivityChooserView activityChooserView = new ActivityChooserView(this.mContext, null);
        if (!activityChooserView.isInEditMode()) {
            androidx.appcompat.widget.Cdo m3510new = androidx.appcompat.widget.Cdo.m3510new(this.mContext, this.mShareHistoryFileName);
            ActivityChooserView.Ccase ccase = activityChooserView.f5653do;
            ActivityChooserView activityChooserView2 = ActivityChooserView.this;
            androidx.appcompat.widget.Cdo cdo = activityChooserView2.f5653do.f5668do;
            ActivityChooserView.Cdo cdo2 = activityChooserView2.f5654do;
            if (cdo != null && activityChooserView2.isShown()) {
                cdo.unregisterObserver(cdo2);
            }
            ccase.f5668do = m3510new;
            if (activityChooserView2.isShown()) {
                m3510new.registerObserver(cdo2);
            }
            ccase.notifyDataSetChanged();
            if (activityChooserView.m3403for()) {
                activityChooserView.m3402do();
                if (!activityChooserView.m3403for() && activityChooserView.f5662if) {
                    activityChooserView.f5658do = false;
                    activityChooserView.m3405new(activityChooserView.f5663new);
                }
            }
        }
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(R.attr.actionModeShareDrawable, typedValue, true);
        Drawable m7997extends = C3645ro.m7997extends(this.mContext, typedValue.resourceId);
        ImageView imageView = activityChooserView.f5652do;
        imageView.setImageDrawable(m7997extends);
        activityChooserView.f5648do = this;
        activityChooserView.f5664try = R.string.abc_shareactionprovider_share_with_application;
        imageView.setContentDescription(activityChooserView.getContext().getString(R.string.abc_shareactionprovider_share_with));
        return activityChooserView;
    }

    @Override // defpackage.H
    public void onPrepareSubMenu(SubMenu subMenu) {
        subMenu.clear();
        androidx.appcompat.widget.Cdo m3510new = androidx.appcompat.widget.Cdo.m3510new(this.mContext, this.mShareHistoryFileName);
        PackageManager packageManager = this.mContext.getPackageManager();
        int m3511case = m3510new.m3511case();
        int min = Math.min(m3511case, this.mMaxShownActivityCount);
        for (int i = 0; i < min; i++) {
            ResolveInfo m3518try = m3510new.m3518try(i);
            subMenu.add(0, i, i, m3518try.loadLabel(packageManager)).setIcon(m3518try.loadIcon(packageManager)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
        }
        if (min < m3511case) {
            SubMenu addSubMenu = subMenu.addSubMenu(0, min, min, this.mContext.getString(R.string.abc_activity_chooser_view_see_all));
            for (int i2 = 0; i2 < m3511case; i2++) {
                ResolveInfo m3518try2 = m3510new.m3518try(i2);
                addSubMenu.add(0, i2, i2, m3518try2.loadLabel(packageManager)).setIcon(m3518try2.loadIcon(packageManager)).setOnMenuItemClickListener(this.mOnMenuItemClickListener);
            }
        }
    }

    public void setOnShareTargetSelectedListener(Cdo cdo) {
        setActivityChooserPolicyIfNeeded();
    }

    public void setShareHistoryFileName(String str) {
        this.mShareHistoryFileName = str;
        setActivityChooserPolicyIfNeeded();
    }

    public void setShareIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action)) {
                updateIntent(intent);
            }
        }
        androidx.appcompat.widget.Cdo m3510new = androidx.appcompat.widget.Cdo.m3510new(this.mContext, this.mShareHistoryFileName);
        synchronized (m3510new.f5976do) {
            if (m3510new.f5974do == intent) {
                return;
            }
            m3510new.f5974do = intent;
            m3510new.f5983new = true;
            m3510new.m3514for();
        }
    }

    public void updateIntent(Intent intent) {
        intent.addFlags(134742016);
    }
}
