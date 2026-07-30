package com.google.android.apps.nexuslauncher.qsb;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.Hotseat;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.systemui.plugins.HotseatPlugin;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;

/* loaded from: classes.dex */
public class HotseatWithQsb extends Hotseat implements PluginListener {

    /* renamed from: a, reason: collision with root package name */
    public View f3311a;

    public HotseatWithQsb(Context context) {
        this(context, null);
    }

    public void a(HotseatPlugin hotseatPlugin) {
        View createView = hotseatPlugin.createView(this);
        this.f3311a = createView;
        addView(createView);
        requestLayout();
    }

    public void b() {
        View view = this.f3311a;
        if (view != null) {
            detachViewFromParent(view);
            removeDetachedView(this.f3311a, false);
        }
        this.f3311a = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).mPluginManager.addPluginListener((PluginListener) this, HotseatPlugin.class, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).mPluginManager.removePluginListener(this);
    }

    @Override // com.android.launcher3.CellLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f3311a == null || getChildCount() <= 1) {
            return;
        }
        View childAt = getChildAt(0);
        this.f3311a.layout(childAt.getLeft(), getPaddingTop(), childAt.getRight(), this.f3311a.getMeasuredHeight());
        childAt.layout(childAt.getLeft(), this.f3311a.getMeasuredHeight() + childAt.getTop(), childAt.getRight(), this.f3311a.getMeasuredHeight() + childAt.getBottom());
    }

    @Override // com.android.launcher3.CellLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3311a != null) {
            int size = View.MeasureSpec.getSize(i);
            this.f3311a.measure(View.MeasureSpec.makeMeasureSpec(size - (getPaddingRight() + getPaddingLeft()), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            setMeasuredDimension(size, this.f3311a.getMeasuredHeight() + getMeasuredHeight());
        }
    }

    @Override // com.android.systemui.plugins.PluginListener
    public /* bridge */ /* synthetic */ void onPluginConnected(Plugin plugin, Context context) {
        a((HotseatPlugin) plugin);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public /* bridge */ /* synthetic */ void onPluginDisconnected(Plugin plugin) {
        b();
    }

    public HotseatWithQsb(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HotseatWithQsb(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
