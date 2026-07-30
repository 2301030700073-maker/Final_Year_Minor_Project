package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.joeykrim.rootcheck.R;

@Deprecated
/* loaded from: classes.dex */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: for, reason: not valid java name */
    public final int f6017for;

    /* renamed from: new, reason: not valid java name */
    public final int f6018new;

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6017for = getResources().getDimensionPixelOffset(R.dimen.browser_actions_context_menu_min_padding);
        this.f6018new = getResources().getDimensionPixelOffset(R.dimen.browser_actions_context_menu_max_width);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f6017for * 2), this.f6018new), 1073741824), i2);
    }
}
