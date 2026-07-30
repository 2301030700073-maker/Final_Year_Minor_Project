package com.google.android.material.search;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.appbar.AppBarLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0426Pe;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3645ro;
import defpackage.CL;
import defpackage.HH;
import defpackage.MB;
import defpackage.NB;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import defpackage.TK;
import defpackage.XG;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class SearchBar extends Toolbar {

    /* renamed from: throw, reason: not valid java name */
    public static final /* synthetic */ int f11263throw = 0;

    /* renamed from: case, reason: not valid java name */
    public final boolean f11264case;

    /* renamed from: do, reason: not valid java name */
    public final NB f11265do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TK f11266do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessibilityManager f11267do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f11268do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0716as f11269do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Integer f11270do;

    /* renamed from: else, reason: not valid java name */
    public final boolean f11271else;

    /* renamed from: for, reason: not valid java name */
    public Drawable f11272for;

    /* renamed from: goto, reason: not valid java name */
    public final boolean f11273goto;

    /* renamed from: if, reason: not valid java name */
    public final Drawable f11274if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public View f11275if;

    /* renamed from: super, reason: not valid java name */
    public int f11276super;

    /* renamed from: this, reason: not valid java name */
    public final boolean f11277this;

    /* renamed from: try, reason: not valid java name */
    public final boolean f11278try;

    public SearchBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSearchBarStyle);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.f11278try && this.f11275if == null && !(view instanceof ActionMenuView)) {
            this.f11275if = view;
            view.setAlpha(0.0f);
        }
        super.addView(view, i, layoutParams);
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m5852continue() {
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        boolean z = getLayoutDirection() == 1;
        ImageButton m828if = HH.m828if(this);
        int width = (m828if == null || !m828if.isClickable()) ? 0 : z ? getWidth() - m828if.getLeft() : m828if.getRight();
        ActionMenuView m826do = HH.m826do(this);
        int right = m826do != null ? z ? m826do.getRight() : getWidth() - m826do.getLeft() : 0;
        float f = -(z ? right : width);
        if (!z) {
            width = right;
        }
        setHandwritingBoundsOffsets(f, 0.0f, -width, 0.0f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: default */
    public final void mo3483default(Drawable drawable) {
        int m1587goto;
        if (this.f11271else && drawable != null) {
            Integer num = this.f11270do;
            if (num != null) {
                m1587goto = num.intValue();
            } else {
                m1587goto = O2.m1587goto(this, drawable == this.f11274if ? R.attr.colorOnSurfaceVariant : R.attr.colorOnSurface);
            }
            drawable = C0426Pe.m1779goto(drawable.mutate());
            C0426Pe.Cdo.m1785else(drawable, m1587goto);
        }
        super.mo3483default(drawable);
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: extends */
    public final void mo3486extends(View.OnClickListener onClickListener) {
        if (this.f11273goto) {
            return;
        }
        super.mo3486extends(onClickListener);
        m5853strictfp(false);
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: finally */
    public final void mo3487finally(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1613instanceof(this, this.f11269do);
        if (this.f11264case && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            Resources resources = getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.m3_searchbar_margin_horizontal);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.m3_searchbar_margin_vertical);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            int i = marginLayoutParams.leftMargin;
            if (i == 0) {
                i = dimensionPixelSize;
            }
            marginLayoutParams.leftMargin = i;
            int i2 = marginLayoutParams.topMargin;
            if (i2 == 0) {
                i2 = dimensionPixelSize2;
            }
            marginLayoutParams.topMargin = i2;
            int i3 = marginLayoutParams.rightMargin;
            if (i3 != 0) {
                dimensionPixelSize = i3;
            }
            marginLayoutParams.rightMargin = dimensionPixelSize;
            int i4 = marginLayoutParams.bottomMargin;
            if (i4 != 0) {
                dimensionPixelSize2 = i4;
            }
            marginLayoutParams.bottomMargin = dimensionPixelSize2;
        }
        if (getLayoutParams() instanceof AppBarLayout.LayoutParams) {
            AppBarLayout.LayoutParams layoutParams = (AppBarLayout.LayoutParams) getLayoutParams();
            if (this.f11277this) {
                if (layoutParams.f10408do == 0) {
                    layoutParams.f10408do = 53;
                }
            } else if (layoutParams.f10408do == 53) {
                layoutParams.f10408do = 0;
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        int i = Build.VERSION.SDK_INT;
        accessibilityNodeInfo.setEditable(isEnabled());
        TextView textView = this.f11268do;
        CharSequence text = textView.getText();
        boolean isEmpty = TextUtils.isEmpty(text);
        if (i >= 26) {
            accessibilityNodeInfo.setHintText(textView.getHint());
            accessibilityNodeInfo.setShowingHintText(isEmpty);
        }
        if (isEmpty) {
            text = textView.getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f11275if;
        if (view != null) {
            int measuredWidth = view.getMeasuredWidth();
            int measuredWidth2 = (getMeasuredWidth() / 2) - (measuredWidth / 2);
            int i5 = measuredWidth + measuredWidth2;
            int measuredHeight = this.f11275if.getMeasuredHeight();
            int measuredHeight2 = (getMeasuredHeight() / 2) - (measuredHeight / 2);
            int i6 = measuredHeight + measuredHeight2;
            View view2 = this.f11275if;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (getLayoutDirection() == 1) {
                view2.layout(getMeasuredWidth() - i5, measuredHeight2, getMeasuredWidth() - measuredWidth2, i6);
            } else {
                view2.layout(measuredWidth2, measuredHeight2, i5, i6);
            }
        }
        m5852continue();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        View view = this.f11275if;
        if (view != null) {
            view.measure(i, i2);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f6568do);
        this.f11268do.setText(savedState.f11279break);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState((Toolbar.SavedState) super.onSaveInstanceState());
        CharSequence text = this.f11268do.getText();
        savedState.f11279break = text == null ? null : text.toString();
        return savedState;
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: package */
    public final void mo3493package(CharSequence charSequence) {
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        C0716as c0716as = this.f11269do;
        if (c0716as != null) {
            c0716as.m4770final(f);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m5853strictfp(boolean z) {
        ImageButton m828if = HH.m828if(this);
        if (m828if == null) {
            return;
        }
        m828if.setClickable(!z);
        m828if.setFocusable(!z);
        Drawable background = m828if.getBackground();
        if (background != null) {
            this.f11272for = background;
        }
        m828if.setBackgroundDrawable(z ? null : this.f11272for);
        m5852continue();
    }

    @Override // androidx.appcompat.widget.Toolbar
    /* renamed from: super */
    public final void mo3498super(int i) {
        Ccase m3481class = m3481class();
        boolean z = m3481class instanceof Ccase;
        if (z) {
            m3481class.m3331extends();
        }
        super.mo3498super(i);
        this.f11276super = i;
        if (z) {
            m3481class.m3328default();
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: break, reason: not valid java name */
        public String f11279break;

        /* renamed from: com.google.android.material.search.SearchBar$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11279break = parcel.readString();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f6568do, i);
            parcel.writeString(this.f11279break);
        }

        public SavedState(Toolbar.SavedState savedState) {
            super(savedState);
        }
    }

    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {

        /* renamed from: do, reason: not valid java name */
        public boolean f11280do;

        public ScrollingViewBehavior() {
            this.f11280do = false;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: goto */
        public final boolean mo3689goto(CoordinatorLayout coordinatorLayout, View view, View view2) {
            super.mo3689goto(coordinatorLayout, view, view2);
            if (!this.f11280do && (view2 instanceof AppBarLayout)) {
                this.f11280do = true;
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                appBarLayout.setBackgroundColor(0);
                if (Build.VERSION.SDK_INT == 21) {
                    appBarLayout.setOutlineProvider(null);
                } else {
                    CL.m262do(appBarLayout, 0.0f);
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11280do = false;
        }
    }

    public SearchBar(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_Material3_SearchBar), attributeSet, i);
        this.f11276super = -1;
        this.f11266do = new TK(this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "title") != null) {
                throw new UnsupportedOperationException("SearchBar does not support title. Use hint or text instead.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "subtitle") != null) {
                throw new UnsupportedOperationException("SearchBar does not support subtitle. Use hint or text instead.");
            }
        }
        Drawable m7997extends = C3645ro.m7997extends(context2, R.drawable.ic_search_black_24);
        this.f11274if = m7997extends;
        this.f11265do = new NB();
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.h, i, R.style.Widget_Material3_SearchBar, new int[0]);
        C3554qD c3554qD = new C3554qD(C3554qD.m7859for(context2, attributeSet, i, R.style.Widget_Material3_SearchBar));
        int color = m3115new.getColor(3, 0);
        float dimension = m3115new.getDimension(6, 0.0f);
        this.f11264case = m3115new.getBoolean(4, true);
        this.f11277this = m3115new.getBoolean(5, true);
        boolean z = m3115new.getBoolean(8, false);
        this.f11273goto = m3115new.getBoolean(7, false);
        this.f11271else = m3115new.getBoolean(12, true);
        if (m3115new.hasValue(9)) {
            this.f11270do = Integer.valueOf(m3115new.getColor(9, -1));
        }
        int resourceId = m3115new.getResourceId(0, -1);
        String string = m3115new.getString(1);
        String string2 = m3115new.getString(2);
        float dimension2 = m3115new.getDimension(11, -1.0f);
        int color2 = m3115new.getColor(10, 0);
        m3115new.recycle();
        if (!z) {
            mo3483default(m3482const() != null ? m3482const() : m7997extends);
            m5853strictfp(true);
        }
        setClickable(true);
        setFocusable(true);
        LayoutInflater.from(context2).inflate(R.layout.mtrl_search_bar, this);
        this.f11278try = true;
        TextView textView = (TextView) findViewById(R.id.open_search_bar_text_view);
        this.f11268do = textView;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        QK.Cnew.m1932native(this, dimension);
        if (resourceId != -1) {
            XG.m2800for(textView, resourceId);
        }
        textView.setText(string);
        textView.setHint(string2);
        if (m3482const() == null) {
            ((ViewGroup.MarginLayoutParams) textView.getLayoutParams()).setMarginStart(getResources().getDimensionPixelSize(R.dimen.m3_searchbar_text_margin_start_no_navigation_icon));
        }
        C0716as c0716as = new C0716as(c3554qD);
        this.f11269do = c0716as;
        c0716as.m4766class(getContext());
        this.f11269do.m4770final(dimension);
        if (dimension2 >= 0.0f) {
            C0716as c0716as2 = this.f11269do;
            c0716as2.f8253do.f8280for = dimension2;
            c0716as2.invalidateSelf();
            c0716as2.m4775public(ColorStateList.valueOf(color2));
        }
        int m1587goto = O2.m1587goto(this, R.attr.colorControlHighlight);
        this.f11269do.m4778super(ColorStateList.valueOf(color));
        ColorStateList valueOf = ColorStateList.valueOf(m1587goto);
        C0716as c0716as3 = this.f11269do;
        setBackground(new RippleDrawable(valueOf, c0716as3, c0716as3));
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f11267do = accessibilityManager;
        if (accessibilityManager != null) {
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                setFocusableInTouchMode(true);
            }
            addOnAttachStateChangeListener(new MB(this));
        }
    }
}
