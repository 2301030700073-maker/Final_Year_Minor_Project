package org.schabi.newpipe.fragments.detail;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction$Op;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.BaseFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TabAdapter extends PagerAdapter {
    public final FragmentManager fragmentManager;
    public boolean mExecutingFinishUpdate;
    public final FragmentManager mFragmentManager;
    public BackStackRecord mCurTransaction = null;
    public Fragment mCurrentPrimaryItem = null;
    public final ArrayList mFragmentList = new ArrayList();
    public final ArrayList mFragmentTitleList = new ArrayList();

    public TabAdapter(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
        this.fragmentManager = fragmentManager;
    }

    public final void addFragment(BaseFragment baseFragment, String str) {
        this.mFragmentList.add(baseFragment);
        this.mFragmentTitleList.add(str);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(int i, Object obj) {
        FragmentManager fragmentManager = this.fragmentManager;
        fragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        backStackRecord.remove((Fragment) obj);
        if (backStackRecord.mAddToBackStack) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This transaction is already being added to the back stack");
        } else {
            backStackRecord.mAllowAddToBackStack = false;
            backStackRecord.mManager.execSingleAction(backStackRecord, true);
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void finishUpdate() {
        BackStackRecord backStackRecord = this.mCurTransaction;
        if (backStackRecord != null) {
            if (!this.mExecutingFinishUpdate) {
                try {
                    this.mExecutingFinishUpdate = true;
                    if (backStackRecord.mAddToBackStack) {
                        throw new IllegalStateException("This transaction is already being added to the back stack");
                    }
                    backStackRecord.mAllowAddToBackStack = false;
                    backStackRecord.mManager.execSingleAction(backStackRecord, true);
                } finally {
                    this.mExecutingFinishUpdate = false;
                }
            }
            this.mCurTransaction = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        return this.mFragmentList.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getItemPosition(Object obj) {
        ArrayList arrayList = this.mFragmentList;
        if (arrayList.contains(obj)) {
            return arrayList.indexOf(obj);
        }
        return -2;
    }

    public final String getItemTitle(int i) {
        if (i < 0) {
            return null;
        }
        ArrayList arrayList = this.mFragmentTitleList;
        if (i >= arrayList.size()) {
            return null;
        }
        return (String) arrayList.get(i);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Fragment instantiateItem(ViewPager viewPager, int i) {
        BackStackRecord backStackRecord = this.mCurTransaction;
        FragmentManager fragmentManager = this.mFragmentManager;
        if (backStackRecord == null) {
            fragmentManager.getClass();
            this.mCurTransaction = new BackStackRecord(fragmentManager);
        }
        long j = i;
        Fragment findFragmentByTag = fragmentManager.findFragmentByTag("android:switcher:" + viewPager.getId() + ":" + j);
        if (findFragmentByTag != null) {
            BackStackRecord backStackRecord2 = this.mCurTransaction;
            backStackRecord2.getClass();
            backStackRecord2.addOp(new FragmentTransaction$Op(findFragmentByTag, 7));
        } else {
            findFragmentByTag = (Fragment) this.mFragmentList.get(i);
            this.mCurTransaction.doAddOp(viewPager.getId(), findFragmentByTag, "android:switcher:" + viewPager.getId() + ":" + j, 1);
        }
        if (findFragmentByTag != this.mCurrentPrimaryItem) {
            findFragmentByTag.setMenuVisibility(false);
            findFragmentByTag.setUserVisibleHint(false);
        }
        return findFragmentByTag;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    public final void notifyDataSetUpdate() {
        synchronized (this) {
            try {
                DataSetObserver dataSetObserver = this.mViewPagerObserver;
                if (dataSetObserver != null) {
                    dataSetObserver.onChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mObservable.notifyChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Parcelable saveState() {
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void setPrimaryItem(Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.mCurrentPrimaryItem;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                this.mCurrentPrimaryItem.setUserVisibleHint(false);
            }
            fragment.setMenuVisibility(true);
            fragment.setUserVisibleHint(true);
            this.mCurrentPrimaryItem = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void startUpdate(ViewPager viewPager) {
        if (viewPager.getId() != -1) {
            return;
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m$3(this, " requires a view id", "ViewPager with adapter ");
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void restoreState(Parcelable parcelable, ClassLoader classLoader) {
    }
}
