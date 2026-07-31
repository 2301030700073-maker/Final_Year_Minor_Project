package androidx.appcompat.app;

import android.view.View;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.preference.Preference;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {
    public final CardView.AnonymousClass1 mActivityImpl;
    public final int mCloseDrawerContentDescRes;
    public final DrawerLayout mDrawerLayout;
    public final int mOpenDrawerContentDescRes;
    public final DrawerArrowDrawable mSlider;
    public boolean mWarnedForDisplayHomeAsUp = false;

    public ActionBarDrawerToggle(MainActivity mainActivity, DrawerLayout drawerLayout, Toolbar toolbar) {
        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(toolbar);
        this.mActivityImpl = anonymousClass1;
        toolbar.setNavigationOnClickListener(new Preference.AnonymousClass1(this, 1));
        this.mDrawerLayout = drawerLayout;
        this.mOpenDrawerContentDescRes = R.string.drawer_open;
        this.mCloseDrawerContentDescRes = R.string.drawer_close;
        this.mSlider = new DrawerArrowDrawable(((Toolbar) anonymousClass1.mCardBackground).getContext());
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public final void onDrawerClosed(View view) {
        setPosition(0.0f);
        this.mActivityImpl.setActionBarDescription(this.mOpenDrawerContentDescRes);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public final void onDrawerOpened(View view) {
        setPosition(1.0f);
        this.mActivityImpl.setActionBarDescription(this.mCloseDrawerContentDescRes);
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public final void onDrawerSlide(float f) {
        setPosition(Math.min(1.0f, Math.max(0.0f, f)));
    }

    public final void setPosition(float f) {
        DrawerArrowDrawable drawerArrowDrawable = this.mSlider;
        if (f == 1.0f) {
            if (!drawerArrowDrawable.mVerticalMirror) {
                drawerArrowDrawable.mVerticalMirror = true;
                drawerArrowDrawable.invalidateSelf();
            }
        } else if (f == 0.0f && drawerArrowDrawable.mVerticalMirror) {
            drawerArrowDrawable.mVerticalMirror = false;
            drawerArrowDrawable.invalidateSelf();
        }
        if (drawerArrowDrawable.mProgress != f) {
            drawerArrowDrawable.mProgress = f;
            drawerArrowDrawable.invalidateSelf();
        }
    }

    public final void syncState() {
        DrawerLayout drawerLayout = this.mDrawerLayout;
        View findDrawerWithGravity = drawerLayout.findDrawerWithGravity(8388611);
        if (findDrawerWithGravity != null ? DrawerLayout.isDrawerOpen(findDrawerWithGravity) : false) {
            setPosition(1.0f);
        } else {
            setPosition(0.0f);
        }
        View findDrawerWithGravity2 = drawerLayout.findDrawerWithGravity(8388611);
        int i = findDrawerWithGravity2 != null ? DrawerLayout.isDrawerOpen(findDrawerWithGravity2) : false ? this.mCloseDrawerContentDescRes : this.mOpenDrawerContentDescRes;
        boolean z = this.mWarnedForDisplayHomeAsUp;
        CardView.AnonymousClass1 anonymousClass1 = this.mActivityImpl;
        if (!z) {
            anonymousClass1.getClass();
        }
        ((Toolbar) anonymousClass1.mCardBackground).setNavigationIcon(this.mSlider);
        anonymousClass1.setActionBarDescription(i);
    }
}
