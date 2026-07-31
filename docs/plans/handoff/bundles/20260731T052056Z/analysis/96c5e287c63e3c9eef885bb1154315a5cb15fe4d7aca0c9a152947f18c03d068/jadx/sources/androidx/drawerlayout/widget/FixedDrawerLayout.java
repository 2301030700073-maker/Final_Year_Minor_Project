package androidx.drawerlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/drawerlayout/widget/FixedDrawerLayout;", "Landroidx/drawerlayout/widget/DrawerLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "enable", "", "setSlidingEnabled", "(Z)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FixedDrawerLayout extends DrawerLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedDrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout
    public final boolean isContentView(View view) {
        return view != null && ((DrawerLayout.LayoutParams) view.getLayoutParams()).gravity == 0;
    }

    public final void setSlidingEnabled(boolean enable) {
        if (enable) {
            setDrawerLockMode(0);
        } else {
            setDrawerLockMode(1);
        }
    }
}
