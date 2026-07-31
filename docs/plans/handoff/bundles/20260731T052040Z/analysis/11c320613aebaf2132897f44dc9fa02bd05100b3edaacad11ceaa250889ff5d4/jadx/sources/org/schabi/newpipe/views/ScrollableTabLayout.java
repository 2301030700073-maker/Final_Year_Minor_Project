package org.schabi.newpipe.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ScrollableTabLayout extends TabLayout {
    public int layoutWidth;
    public int prevVisibility;

    public ScrollableTabLayout(Context context) {
        super(context);
        this.layoutWidth = 0;
        this.prevVisibility = 8;
    }

    private void setMode(int i) {
        if (i == getTabMode()) {
            return;
        }
        setTabMode(i);
    }

    @Override // com.google.android.material.tabs.TabLayout
    public final void addTab(TabLayout.Tab tab, int i, boolean z) {
        super.addTab(tab, i, z);
        if (getTabCount() > 1) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
        if (getTabMode() != 0) {
            remeasureTabs();
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        remeasureTabs();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.layoutWidth = i;
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this) {
            if (this.prevVisibility == 4) {
                remeasureTabs();
            }
            this.prevVisibility = i;
        }
    }

    public final void remeasureTabs() {
        if (this.prevVisibility == 0 && this.layoutWidth != 0) {
            int tabCount = getTabCount();
            int i = 0;
            for (int i2 = 0; i2 < tabCount; i2++) {
                TabLayout.TabView tabView = getTabAt(i2).view;
                if (tabView.getVisibility() == 0) {
                    i += Math.max(tabView.getMinimumWidth(), tabView.getMeasuredWidth());
                }
            }
            if (i > this.layoutWidth) {
                setMode(0);
            } else {
                setMode(1);
            }
        }
    }

    public ScrollableTabLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.layoutWidth = 0;
        this.prevVisibility = 8;
    }

    public ScrollableTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.layoutWidth = 0;
        this.prevVisibility = 8;
    }
}
