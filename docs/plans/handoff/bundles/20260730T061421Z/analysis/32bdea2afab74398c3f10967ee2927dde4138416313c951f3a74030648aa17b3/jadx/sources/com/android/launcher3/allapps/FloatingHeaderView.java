package com.android.launcher3.allapps;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import b.m.b.AbstractC0186k0;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.systemui.plugins.AllAppsRow;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class FloatingHeaderView extends LinearLayout implements ValueAnimator.AnimatorUpdateListener, PluginListener, Insettable, AllAppsRow.OnHeightUpdatedListener {
    public FloatingHeaderRow[] mAllRows;
    public boolean mAllowTouchForwarding;
    public final ValueAnimator mAnimator;
    public final Rect mClip;
    public boolean mCollapsed;
    public AllAppsRecyclerView mCurrentRV;
    public FloatingHeaderRow[] mFixedRows;
    public boolean mForwardToRecyclerView;
    public boolean mHeaderCollapsed;
    public final int mHeaderTopPadding;
    public AllAppsRecyclerView mMainRV;
    public boolean mMainRVActive;
    public int mMaxTranslation;
    public final AbstractC0186k0 mOnScrollListener;
    public ViewGroup mParent;
    public final Map mPluginRows;
    public int mSnappedScrolledY;
    public ViewGroup mTabLayout;
    public boolean mTabsHidden;
    public final Point mTempOffset;
    public int mTranslationY;
    public AllAppsRecyclerView mWorkRV;

    public FloatingHeaderView(Context context) {
        this(context, null);
    }

    public void applyVerticalMove() {
        int i = this.mTranslationY;
        int max = Math.max(i, -this.mMaxTranslation);
        this.mTranslationY = max;
        if (this.mCollapsed || i < max - this.mHeaderTopPadding) {
            for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
                floatingHeaderRow.setVerticalScroll(0, true);
            }
        } else {
            for (FloatingHeaderRow floatingHeaderRow2 : this.mAllRows) {
                floatingHeaderRow2.setVerticalScroll(i, false);
            }
        }
        this.mTabLayout.setTranslationY(this.mTranslationY);
        Rect rect = this.mClip;
        rect.top = this.mMaxTranslation + this.mTranslationY;
        this.mMainRV.setClipBounds(rect);
        AllAppsRecyclerView allAppsRecyclerView = this.mWorkRV;
        if (allAppsRecyclerView != null) {
            allAppsRecyclerView.setClipBounds(this.mClip);
        }
    }

    public final void calcOffset(Point point) {
        point.x = (getLeft() - this.mCurrentRV.getLeft()) - this.mParent.getLeft();
        point.y = (getTop() - this.mCurrentRV.getTop()) - this.mParent.getTop();
    }

    public FloatingHeaderRow findFixedRowByType(Class cls) {
        for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
            if (floatingHeaderRow.getTypeClass() == cls) {
                return floatingHeaderRow;
            }
        }
        return null;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean hasVisibleContent() {
        for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
            if (floatingHeaderRow.hasVisibleContent()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.mTranslationY = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        applyVerticalMove();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).mPluginManager.addPluginListener((PluginListener) this, AllAppsRow.class, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).mPluginManager.removePluginListener(this);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mTabLayout = (ViewGroup) findViewById(R.id.tabs);
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            KeyEvent.Callback childAt = getChildAt(i);
            if (childAt instanceof FloatingHeaderRow) {
                arrayList.add((FloatingHeaderRow) childAt);
            }
        }
        FloatingHeaderRow[] floatingHeaderRowArr = (FloatingHeaderRow[]) arrayList.toArray(new FloatingHeaderRow[arrayList.size()]);
        this.mFixedRows = floatingHeaderRowArr;
        this.mAllRows = floatingHeaderRowArr;
    }

    @Override // com.android.systemui.plugins.AllAppsRow.OnHeightUpdatedListener
    public void onHeightUpdated() {
        AllAppsContainerView allAppsContainerView;
        int i = this.mMaxTranslation;
        updateExpectedHeight();
        if (this.mMaxTranslation == i || (allAppsContainerView = (AllAppsContainerView) getParent()) == null) {
            return;
        }
        allAppsContainerView.setupHeader();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.mAllowTouchForwarding) {
            this.mForwardToRecyclerView = false;
            return super.onInterceptTouchEvent(motionEvent);
        }
        calcOffset(this.mTempOffset);
        Point point = this.mTempOffset;
        motionEvent.offsetLocation(point.x, point.y);
        this.mForwardToRecyclerView = this.mCurrentRV.onInterceptTouchEvent(motionEvent);
        Point point2 = this.mTempOffset;
        motionEvent.offsetLocation(-point2.x, -point2.y);
        return this.mForwardToRecyclerView || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public /* bridge */ /* synthetic */ void onPluginConnected(Plugin plugin, Context context) {
        onPluginConnected((AllAppsRow) plugin);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(Plugin plugin) {
        AllAppsRow allAppsRow = (AllAppsRow) plugin;
        removeView(((PluginHeaderRow) this.mPluginRows.get(allAppsRow)).mView);
        this.mPluginRows.remove(allAppsRow);
        recreateAllRowsArray();
        onHeightUpdated();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mForwardToRecyclerView) {
            return super.onTouchEvent(motionEvent);
        }
        calcOffset(this.mTempOffset);
        Point point = this.mTempOffset;
        motionEvent.offsetLocation(point.x, point.y);
        try {
            return this.mCurrentRV.onTouchEvent(motionEvent);
        } finally {
            Point point2 = this.mTempOffset;
            motionEvent.offsetLocation(-point2.x, -point2.y);
        }
    }

    public final void recreateAllRowsArray() {
        int size = this.mPluginRows.size();
        if (size == 0) {
            this.mAllRows = this.mFixedRows;
            return;
        }
        int length = this.mFixedRows.length;
        this.mAllRows = new FloatingHeaderRow[size + length];
        for (int i = 0; i < length; i++) {
            this.mAllRows[i] = this.mFixedRows[i];
        }
        Iterator it = this.mPluginRows.values().iterator();
        while (it.hasNext()) {
            this.mAllRows[length] = (PluginHeaderRow) it.next();
            length++;
        }
    }

    public void reset(boolean z) {
        if (this.mAnimator.isStarted()) {
            this.mAnimator.cancel();
        }
        if (z) {
            this.mAnimator.setIntValues(this.mTranslationY, 0);
            this.mAnimator.addUpdateListener(this);
            this.mAnimator.setDuration(150L);
            this.mAnimator.start();
        } else {
            this.mTranslationY = 0;
            applyVerticalMove();
        }
        this.mHeaderCollapsed = false;
        this.mSnappedScrolledY = -this.mMaxTranslation;
        this.mCurrentRV.scrollToTop();
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        DeviceProfile deviceProfile = BaseActivity.fromContext(getContext()).getDeviceProfile();
        for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
            floatingHeaderRow.setInsets(rect, deviceProfile);
        }
    }

    public final void updateExpectedHeight() {
        this.mMaxTranslation = 0;
        if (this.mCollapsed) {
            return;
        }
        for (FloatingHeaderRow floatingHeaderRow : this.mAllRows) {
            this.mMaxTranslation = floatingHeaderRow.getExpectedHeight() + this.mMaxTranslation;
        }
    }

    public FloatingHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mClip = new Rect(0, 0, Integer.MAX_VALUE, Integer.MAX_VALUE);
        this.mAnimator = ValueAnimator.ofInt(0, 0);
        this.mTempOffset = new Point();
        this.mOnScrollListener = new AbstractC0186k0() { // from class: com.android.launcher3.allapps.FloatingHeaderView.1
            @Override // b.m.b.AbstractC0186k0
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            }

            @Override // b.m.b.AbstractC0186k0
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                FloatingHeaderView floatingHeaderView = FloatingHeaderView.this;
                if (recyclerView != floatingHeaderView.mCurrentRV) {
                    return;
                }
                if (floatingHeaderView.mAnimator.isStarted()) {
                    FloatingHeaderView.this.mAnimator.cancel();
                }
                int i3 = -FloatingHeaderView.this.mCurrentRV.getCurrentScrollY();
                FloatingHeaderView floatingHeaderView2 = FloatingHeaderView.this;
                boolean z = floatingHeaderView2.mHeaderCollapsed;
                if (z) {
                    if (i3 <= floatingHeaderView2.mSnappedScrolledY) {
                        if (Math.abs(i3) <= floatingHeaderView2.mMaxTranslation) {
                            floatingHeaderView2.mSnappedScrolledY = i3;
                        }
                    } else {
                        floatingHeaderView2.mHeaderCollapsed = false;
                    }
                    floatingHeaderView2.mTranslationY = i3;
                } else if (!z) {
                    int i4 = i3 - floatingHeaderView2.mSnappedScrolledY;
                    int i5 = floatingHeaderView2.mMaxTranslation;
                    int i6 = i4 - i5;
                    floatingHeaderView2.mTranslationY = i6;
                    if (i6 >= 0) {
                        floatingHeaderView2.mTranslationY = 0;
                        floatingHeaderView2.mSnappedScrolledY = i3 - i5;
                    } else {
                        int i7 = -i5;
                        if (i6 <= i7) {
                            floatingHeaderView2.mHeaderCollapsed = true;
                            floatingHeaderView2.mSnappedScrolledY = i7;
                        }
                    }
                }
                FloatingHeaderView.this.applyVerticalMove();
            }
        };
        this.mPluginRows = new ArrayMap();
        this.mMainRVActive = true;
        this.mCollapsed = false;
        FloatingHeaderRow[] floatingHeaderRowArr = FloatingHeaderRow.NO_ROWS;
        this.mFixedRows = floatingHeaderRowArr;
        this.mAllRows = floatingHeaderRowArr;
        this.mHeaderTopPadding = context.getResources().getDimensionPixelSize(R.dimen.all_apps_header_top_padding);
    }

    public void onPluginConnected(AllAppsRow allAppsRow) {
        PluginHeaderRow pluginHeaderRow = new PluginHeaderRow(allAppsRow, this);
        addView(pluginHeaderRow.mView, indexOfChild(this.mTabLayout));
        this.mPluginRows.put(allAppsRow, pluginHeaderRow);
        recreateAllRowsArray();
        allAppsRow.setOnHeightUpdatedListener(this);
    }
}
