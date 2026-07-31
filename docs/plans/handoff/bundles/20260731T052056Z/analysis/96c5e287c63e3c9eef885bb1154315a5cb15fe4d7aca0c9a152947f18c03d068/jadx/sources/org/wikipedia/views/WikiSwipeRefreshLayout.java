package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.ListView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lorg/wikipedia/views/WikiSwipeRefreshLayout;", "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/view/View;", "scrollableChild", "Landroid/view/View;", "getScrollableChild", "()Landroid/view/View;", "setScrollableChild", "(Landroid/view/View;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public class WikiSwipeRefreshLayout extends SwipeRefreshLayout {
    public View scrollableChild;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikiSwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        TypedValue typedValue = new TypedValue();
        typedValue = context.getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true) ? typedValue : null;
        if (typedValue != null) {
            setColorSchemeResources(typedValue.resourceId);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
            throw null;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout
    public final boolean canChildScrollUp() {
        View view = this.scrollableChild;
        if (view == null) {
            View view2 = this.mTarget;
            return view2 instanceof ListView ? ((ListView) view2).canScrollList(-1) : view2.canScrollVertically(-1);
        }
        view.getClass();
        return view.getScrollY() > 0;
    }

    public final View getScrollableChild() {
        return this.scrollableChild;
    }

    public final void setScrollableChild(View view) {
        this.scrollableChild = view;
    }
}
