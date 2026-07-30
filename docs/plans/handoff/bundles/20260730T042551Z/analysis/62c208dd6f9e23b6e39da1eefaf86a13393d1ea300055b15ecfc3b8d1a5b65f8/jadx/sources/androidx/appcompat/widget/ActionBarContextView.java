package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Ccatch;
import androidx.appcompat.view.menu.Cthis;
import androidx.appcompat.widget.ActionMenuPresenter;
import com.joeykrim.rootcheck.R;
import defpackage.C3385nL;
import defpackage.C3645ro;
import defpackage.C3915wL;
import defpackage.Ctry;
import defpackage.G;
import defpackage.O4;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ActionBarContextView extends Ctry {

    /* renamed from: case, reason: not valid java name */
    public final int f5562case;

    /* renamed from: do, reason: not valid java name */
    public View f5563do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LinearLayout f5564do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TextView f5565do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f5566do;

    /* renamed from: for, reason: not valid java name */
    public View f5567for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5568for;

    /* renamed from: if, reason: not valid java name */
    public View f5569if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public TextView f5570if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f5571if;

    /* renamed from: new, reason: not valid java name */
    public final int f5572new;

    /* renamed from: try, reason: not valid java name */
    public final int f5573try;

    /* renamed from: androidx.appcompat.widget.ActionBarContextView$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ G f5574do;

        public Cdo(G g) {
            this.f5574do = g;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f5574do.mo668for();
        }
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m3364break(View view) {
        LinearLayout linearLayout;
        View view2 = this.f5567for;
        if (view2 != null) {
            removeView(view2);
        }
        this.f5567for = view;
        if (view != null && (linearLayout = this.f5564do) != null) {
            removeView(linearLayout);
            this.f5564do = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3365else(G g) {
        View view = this.f5563do;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f5562case, (ViewGroup) this, false);
            this.f5563do = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f5563do);
        }
        View findViewById = this.f5563do.findViewById(R.id.action_mode_close_button);
        this.f5569if = findViewById;
        findViewById.setOnClickListener(new Cdo(g));
        Ccase mo674try = g.mo674try();
        ActionMenuPresenter actionMenuPresenter = ((Ctry) this).f15806do;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m3392if();
            ActionMenuPresenter.Cdo cdo = actionMenuPresenter.f5609do;
            if (cdo != null && cdo.m3359if()) {
                ((Cthis) cdo).f5535do.dismiss();
            }
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        ((Ctry) this).f15806do = actionMenuPresenter2;
        actionMenuPresenter2.f5614do = true;
        actionMenuPresenter2.f5618if = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        mo674try.m3335if(((Ctry) this).f15806do, ((Ctry) this).f15805do);
        ActionMenuPresenter actionMenuPresenter3 = ((Ctry) this).f15806do;
        Ccatch ccatch = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5452do;
        if (ccatch == null) {
            Ccatch ccatch2 = (Ccatch) ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5449do.inflate(((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5453for, (ViewGroup) this, false);
            ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5452do = ccatch2;
            ccatch2.mo3314for(((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5451do);
            actionMenuPresenter3.mo3321new(true);
        }
        Ccatch ccatch3 = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5452do;
        if (ccatch != ccatch3) {
            ActionMenuView actionMenuView = (ActionMenuView) ccatch3;
            actionMenuView.f5635do = actionMenuPresenter3;
            ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5452do = actionMenuView;
            actionMenuView.f5634do = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter3).f5451do;
        }
        ActionMenuView actionMenuView2 = (ActionMenuView) ccatch3;
        ((Ctry) this).f15807do = actionMenuView2;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        actionMenuView2.setBackground(null);
        addView(((Ctry) this).f15807do, layoutParams);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3366goto() {
        if (this.f5564do == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f5564do = linearLayout;
            this.f5565do = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f5570if = (TextView) this.f5564do.findViewById(R.id.action_bar_subtitle);
            int i = this.f5572new;
            if (i != 0) {
                this.f5565do.setTextAppearance(getContext(), i);
            }
            int i2 = this.f5573try;
            if (i2 != 0) {
                this.f5570if.setTextAppearance(getContext(), i2);
            }
        }
        this.f5565do.setText(this.f5566do);
        this.f5570if.setText(this.f5571if);
        boolean z = !TextUtils.isEmpty(this.f5566do);
        boolean z2 = !TextUtils.isEmpty(this.f5571if);
        int i3 = 0;
        this.f5570if.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout2 = this.f5564do;
        if (!z && !z2) {
            i3 = 8;
        }
        linearLayout2.setVisibility(i3);
        if (this.f5564do.getParent() == null) {
            addView(this.f5564do);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = ((Ctry) this).f15806do;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m3392if();
            ActionMenuPresenter.Cdo cdo = ((Ctry) this).f15806do.f5609do;
            if (cdo == null || !cdo.m3359if()) {
                return;
            }
            ((Cthis) cdo).f5535do.dismiss();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean m8568do = C3915wL.m8568do(this);
        int paddingRight = m8568do ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f5563do;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f5563do.getLayoutParams();
            int i5 = m8568do ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = m8568do ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = m8568do ? paddingRight - i5 : paddingRight + i5;
            int m8319new = Ctry.m8319new(i7, paddingTop, paddingTop2, this.f5563do, m8568do) + i7;
            paddingRight = m8568do ? m8319new - i6 : m8319new + i6;
        }
        LinearLayout linearLayout = this.f5564do;
        if (linearLayout != null && this.f5567for == null && linearLayout.getVisibility() != 8) {
            paddingRight += Ctry.m8319new(paddingRight, paddingTop, paddingTop2, this.f5564do, m8568do);
        }
        View view2 = this.f5567for;
        if (view2 != null) {
            Ctry.m8319new(paddingRight, paddingTop, paddingTop2, view2, m8568do);
        }
        int paddingLeft = m8568do ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = ((Ctry) this).f15807do;
        if (actionMenuView != null) {
            Ctry.m8319new(paddingLeft, paddingTop, paddingTop2, actionMenuView, !m8568do);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i);
        int i3 = ((Ctry) this).f15811for;
        if (i3 <= 0) {
            i3 = View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i4 = i3 - paddingBottom;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
        View view = this.f5563do;
        if (view != null) {
            int m8317for = Ctry.m8317for(view, paddingLeft, makeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f5563do.getLayoutParams();
            paddingLeft = m8317for - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = ((Ctry) this).f15807do;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = Ctry.m8317for(((Ctry) this).f15807do, paddingLeft, makeMeasureSpec);
        }
        LinearLayout linearLayout = this.f5564do;
        if (linearLayout != null && this.f5567for == null) {
            if (this.f5568for) {
                this.f5564do.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.f5564do.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.f5564do.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = Ctry.m8317for(linearLayout, paddingLeft, makeMeasureSpec);
            }
        }
        View view2 = this.f5567for;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i5 = layoutParams.width;
            int i6 = i5 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i5 >= 0) {
                paddingLeft = Math.min(i5, paddingLeft);
            }
            int i7 = layoutParams.height;
            int i8 = i7 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i7 >= 0) {
                i4 = Math.min(i7, i4);
            }
            this.f5567for.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i6), View.MeasureSpec.makeMeasureSpec(i4, i8));
        }
        if (((Ctry) this).f15811for > 0) {
            setMeasuredDimension(size, i3);
            return;
        }
        int childCount = getChildCount();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            int measuredHeight = getChildAt(i10).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i9) {
                i9 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i9);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m3367this() {
        removeAllViews();
        this.f5567for = null;
        ((Ctry) this).f15807do = null;
        ((Ctry) this).f15806do = null;
        View view = this.f5569if;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // defpackage.Ctry
    /* renamed from: try, reason: not valid java name */
    public final void mo3368try(int i) {
        ((Ctry) this).f15811for = i;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O4.f2524break, i, 0);
        Drawable drawable = (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : C3645ro.m7997extends(context, resourceId);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setBackground(drawable);
        this.f5572new = obtainStyledAttributes.getResourceId(5, 0);
        this.f5573try = obtainStyledAttributes.getResourceId(4, 0);
        ((Ctry) this).f15811for = obtainStyledAttributes.getLayoutDimension(3, 0);
        this.f5562case = obtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }
}
