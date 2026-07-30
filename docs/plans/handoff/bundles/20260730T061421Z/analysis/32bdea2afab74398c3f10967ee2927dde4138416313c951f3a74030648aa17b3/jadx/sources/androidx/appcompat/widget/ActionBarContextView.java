package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import b.b.a;
import b.b.f.b;
import b.b.f.m.E;
import b.b.f.m.o;
import b.b.g.AbstractC0038b;
import b.b.g.ViewOnClickListenerC0042d;
import b.b.g.m1;
import b.b.g.r;
import b.e.i.q;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class ActionBarContextView extends AbstractC0038b {
    public CharSequence i;
    public CharSequence j;
    public View k;
    public View l;
    public LinearLayout m;
    public TextView n;
    public TextView o;
    public int p;
    public int q;
    public boolean r;
    public int s;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public void f(b bVar) {
        View view = this.k;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.s, (ViewGroup) this, false);
            this.k = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.k);
        }
        this.k.findViewById(R.id.action_mode_close_button).setOnClickListener(new ViewOnClickListenerC0042d(this, bVar));
        o oVar = (o) bVar.e();
        r rVar = this.f518d;
        if (rVar != null) {
            rVar.b();
        }
        r rVar2 = new r(getContext());
        this.f518d = rVar2;
        rVar2.l = true;
        rVar2.m = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        oVar.b(this.f518d, this.f516b);
        r rVar3 = this.f518d;
        E e = rVar3.h;
        if (e == null) {
            E e2 = (E) rVar3.f576d.inflate(rVar3.f, (ViewGroup) this, false);
            rVar3.h = e2;
            e2.b(rVar3.f575c);
            rVar3.j(true);
        }
        E e3 = rVar3.h;
        if (e != e3) {
            ActionMenuView actionMenuView = (ActionMenuView) e3;
            actionMenuView.t = rVar3;
            rVar3.h = actionMenuView;
            actionMenuView.p = rVar3.f575c;
        }
        ActionMenuView actionMenuView2 = (ActionMenuView) e3;
        this.f517c = actionMenuView2;
        q.E(actionMenuView2, null);
        addView(this.f517c, layoutParams);
    }

    public final void g() {
        if (this.m == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.m = linearLayout;
            this.n = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.o = (TextView) this.m.findViewById(R.id.action_bar_subtitle);
            if (this.p != 0) {
                this.n.setTextAppearance(getContext(), this.p);
            }
            if (this.q != 0) {
                this.o.setTextAppearance(getContext(), this.q);
            }
        }
        this.n.setText(this.i);
        this.o.setText(this.j);
        boolean z = !TextUtils.isEmpty(this.i);
        boolean z2 = !TextUtils.isEmpty(this.j);
        int i = 0;
        this.o.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout2 = this.m;
        if (!z && !z2) {
            i = 8;
        }
        linearLayout2.setVisibility(i);
        if (this.m.getParent() == null) {
            addView(this.m);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public void h() {
        removeAllViews();
        this.l = null;
        this.f517c = null;
    }

    public void i(View view) {
        LinearLayout linearLayout;
        View view2 = this.l;
        if (view2 != null) {
            removeView(view2);
        }
        this.l = view;
        if (view != null && (linearLayout = this.m) != null) {
            removeView(linearLayout);
            this.m = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        r rVar = this.f518d;
        if (rVar != null) {
            rVar.k();
            this.f518d.l();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(ActionBarContextView.class.getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean b2 = m1.b(this);
        int paddingRight = b2 ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.k;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.k.getLayoutParams();
            int i5 = b2 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = b2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = b2 ? paddingRight - i5 : paddingRight + i5;
            int d2 = i7 + d(this.k, i7, paddingTop, paddingTop2, b2);
            paddingRight = b2 ? d2 - i6 : d2 + i6;
        }
        int i8 = paddingRight;
        LinearLayout linearLayout = this.m;
        if (linearLayout != null && this.l == null && linearLayout.getVisibility() != 8) {
            i8 += d(this.m, i8, paddingTop, paddingTop2, b2);
        }
        int i9 = i8;
        View view2 = this.l;
        if (view2 != null) {
            d(view2, i9, paddingTop, paddingTop2, b2);
        }
        int paddingLeft = b2 ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f517c;
        if (actionMenuView != null) {
            d(actionMenuView, paddingLeft, paddingTop, paddingTop2, !b2);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i);
        int i3 = this.e;
        if (i3 <= 0) {
            i3 = View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int i4 = i3 - paddingBottom;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, RecyclerView.UNDEFINED_DURATION);
        View view = this.k;
        if (view != null) {
            int c2 = c(view, paddingLeft, makeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.k.getLayoutParams();
            paddingLeft = c2 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f517c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.f517c, paddingLeft, makeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.m;
        if (linearLayout != null && this.l == null) {
            if (this.r) {
                this.m.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                int measuredWidth = this.m.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.m.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, makeMeasureSpec, 0);
            }
        }
        View view2 = this.l;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i5 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            int i6 = layoutParams.width;
            if (i6 >= 0) {
                paddingLeft = Math.min(i6, paddingLeft);
            }
            int i7 = layoutParams.height == -2 ? Integer.MIN_VALUE : 1073741824;
            int i8 = layoutParams.height;
            if (i8 >= 0) {
                i4 = Math.min(i8, i4);
            }
            this.l.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i5), View.MeasureSpec.makeMeasureSpec(i4, i7));
        }
        if (this.e > 0) {
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
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable drawable;
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.b.b.f243d, i, 0);
        if (obtainStyledAttributes.hasValue(0) && (resourceId = obtainStyledAttributes.getResourceId(0, 0)) != 0) {
            drawable = a.a(context, resourceId);
        } else {
            drawable = obtainStyledAttributes.getDrawable(0);
        }
        q.E(this, drawable);
        this.p = obtainStyledAttributes.getResourceId(5, 0);
        this.q = obtainStyledAttributes.getResourceId(4, 0);
        this.e = obtainStyledAttributes.getLayoutDimension(3, 0);
        this.s = obtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }
}
