package org.wikipedia.navtab;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.room.Room;
import androidx.transition.Transition;
import com.caverock.androidsvg.SVG;
import com.google.android.material.R$styleable;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.internal.ViewUtils;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lorg/wikipedia/navtab/NavTabLayout;", "Lcom/google/android/material/bottomnavigation/BottomNavigationView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavTabLayout extends BottomNavigationView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavTabLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        SVG obtainTintedStyledAttributes = ViewUtils.obtainTintedStyledAttributes(getContext(), attributeSet, R$styleable.BottomNavigationView, R.attr.bottomNavigationStyle, R.style.Widget_Design_BottomNavigationView, new int[0]);
        TypedArray typedArray = (TypedArray) obtainTintedStyledAttributes.cssRules;
        setItemHorizontalTranslationEnabled(typedArray.getBoolean(2, true));
        if (typedArray.hasValue(0)) {
            setMinimumHeight(typedArray.getDimensionPixelSize(0, 0));
        }
        obtainTintedStyledAttributes.recycle();
        ViewUtils.doOnApplyWindowInsets(this, new Transition.AnonymousClass1(22, false));
        getMenu().clear();
        int i = 0;
        for (Object obj : NavTab.getEntries()) {
            int i2 = i + 1;
            if (i < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            NavTab navTab = (NavTab) obj;
            getMenu().add(0, navTab.getId(), i, navTab.getText()).setIcon(navTab.getIcon());
            i = i2;
        }
    }

    public final void setOverlayDot(NavTab navTab, boolean z) {
        navTab.getClass();
        ViewGroup viewGroup = (ViewGroup) findViewById(navTab.getId());
        View findViewById = viewGroup.findViewById(R.id.navigation_bar_item_icon_view);
        ViewParent parent = findViewById != null ? findViewById.getParent() : null;
        ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        ViewParent parent2 = viewGroup2 != null ? viewGroup2.getParent() : null;
        ViewGroup viewGroup3 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
        View view = (ImageView) viewGroup.findViewById(R.id.nav_tab_overlay_dot);
        if (view == null && viewGroup3 != null) {
            view = new ImageView(getContext());
            view.setId(R.id.nav_tab_overlay_dot);
            int roundedDpToPx = Okio__OkioKt.roundedDpToPx(6.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(roundedDpToPx, roundedDpToPx);
            layoutParams.gravity = 17;
            int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(8.0f);
            int i = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            int marginEnd = layoutParams.getMarginEnd();
            layoutParams.setMarginStart(roundedDpToPx2);
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i;
            layoutParams.setMarginEnd(marginEnd);
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = roundedDpToPx2;
            view.setLayoutParams(layoutParams);
            view.setBackgroundResource(R.drawable.shape_circle);
            Context context = getContext();
            context.getClass();
            TypedValue typedValue = new TypedValue();
            TypedValue typedValue2 = context.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true) ? typedValue : null;
            if (typedValue2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                return;
            } else {
                view.setBackgroundTintList(ColorStateList.valueOf(typedValue2.data));
                viewGroup3.addView(view);
            }
        }
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }
}
