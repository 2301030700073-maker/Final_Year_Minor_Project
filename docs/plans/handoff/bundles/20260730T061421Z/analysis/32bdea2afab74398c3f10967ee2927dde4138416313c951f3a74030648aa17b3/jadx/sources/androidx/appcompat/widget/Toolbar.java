package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.RecyclerView;
import b.b.b;
import b.b.c.C0002a;
import b.b.f.j;
import b.b.f.m.o;
import b.b.g.C0039b0;
import b.b.g.F;
import b.b.g.F0;
import b.b.g.H;
import b.b.g.a1;
import b.b.g.b1;
import b.b.g.c1;
import b.b.g.e1;
import b.b.g.f1;
import b.b.g.g1;
import b.b.g.h1;
import b.b.g.k1;
import b.b.g.r;
import b.e.i.q;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public ColorStateList A;
    public boolean B;
    public boolean C;
    public final ArrayList D;
    public final ArrayList E;
    public final int[] F;
    public g1 G;
    public final b1 H;
    public k1 I;
    public r J;
    public e1 K;
    public boolean L;
    public final Runnable M;

    /* renamed from: a, reason: collision with root package name */
    public ActionMenuView f66a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f67b;

    /* renamed from: c, reason: collision with root package name */
    public TextView f68c;

    /* renamed from: d, reason: collision with root package name */
    public ImageButton f69d;
    public ImageView e;
    public Drawable f;
    public CharSequence g;
    public ImageButton h;
    public View i;
    public Context j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public F0 t;
    public int u;
    public int v;
    public int w;
    public CharSequence x;
    public CharSequence y;
    public ColorStateList z;

    public Toolbar(Context context) {
        this(context, null);
    }

    public final boolean A(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public boolean B() {
        ActionMenuView actionMenuView = this.f66a;
        if (actionMenuView != null) {
            r rVar = actionMenuView.t;
            if (rVar != null && rVar.n()) {
                return true;
            }
        }
        return false;
    }

    public final void a(List list, int i) {
        boolean z = q.i(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                f1 f1Var = (f1) childAt.getLayoutParams();
                if (f1Var.f536b == 0 && A(childAt) && h(f1Var.f290a) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            f1 f1Var2 = (f1) childAt2.getLayoutParams();
            if (f1Var2.f536b == 0 && A(childAt2) && h(f1Var2.f290a) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    public final void b(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        f1 generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (f1) layoutParams;
        generateDefaultLayoutParams.f536b = 1;
        if (!z || this.i == null) {
            addView(view, generateDefaultLayoutParams);
        } else {
            view.setLayoutParams(generateDefaultLayoutParams);
            this.E.add(view);
        }
    }

    public final void c() {
        if (this.t == null) {
            this.t = new F0();
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof f1);
    }

    public final void d() {
        if (this.f66a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f66a = actionMenuView;
            actionMenuView.x(this.k);
            this.f66a.w(this.H);
            ActionMenuView actionMenuView2 = this.f66a;
            actionMenuView2.u = null;
            actionMenuView2.v = null;
            f1 generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f290a = 8388613 | (this.n & 112);
            this.f66a.setLayoutParams(generateDefaultLayoutParams);
            b(this.f66a, false);
        }
    }

    public final void e() {
        if (this.f69d == null) {
            this.f69d = new F(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            f1 generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f290a = 8388611 | (this.n & 112);
            this.f69d.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public f1 generateDefaultLayoutParams() {
        return new f1(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public f1 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof f1 ? new f1((f1) layoutParams) : layoutParams instanceof C0002a ? new f1((C0002a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new f1((ViewGroup.MarginLayoutParams) layoutParams) : new f1(layoutParams);
    }

    public final int h(int i) {
        int i2 = q.i(this);
        int absoluteGravity = Gravity.getAbsoluteGravity(i, i2) & 7;
        return (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) ? absoluteGravity : i2 == 1 ? 5 : 3;
    }

    public final int i(View view, int i) {
        f1 f1Var = (f1) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = f1Var.f290a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.w & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) f1Var).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = ((ViewGroup.MarginLayoutParams) f1Var).topMargin;
        if (i4 < i5) {
            i4 = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            int i7 = ((ViewGroup.MarginLayoutParams) f1Var).bottomMargin;
            if (i6 < i7) {
                i4 = Math.max(0, i4 - (i7 - i6));
            }
        }
        return paddingTop + i4;
    }

    public int j() {
        o oVar;
        ActionMenuView actionMenuView = this.f66a;
        if ((actionMenuView == null || (oVar = actionMenuView.p) == null || !oVar.hasVisibleItems()) ? false : true) {
            F0 f0 = this.t;
            return Math.max(f0 != null ? f0.g ? f0.f445a : f0.f446b : 0, Math.max(this.v, 0));
        }
        F0 f02 = this.t;
        return f02 != null ? f02.g ? f02.f445a : f02.f446b : 0;
    }

    public int k() {
        if (m() != null) {
            F0 f0 = this.t;
            return Math.max(f0 != null ? f0.g ? f0.f446b : f0.f445a : 0, Math.max(this.u, 0));
        }
        F0 f02 = this.t;
        return f02 != null ? f02.g ? f02.f446b : f02.f445a : 0;
    }

    public final int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    public Drawable m() {
        ImageButton imageButton = this.f69d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public final int n(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final boolean o(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.M);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02b5 A[LOOP:0: B:46:0x02b3->B:47:0x02b5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02d7 A[LOOP:1: B:50:0x02d5->B:51:0x02d7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02fb A[LOOP:2: B:54:0x02f9->B:55:0x02fb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x034c A[LOOP:3: B:63:0x034a->B:64:0x034c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01cc  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 865
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0297  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f94a);
        ActionMenuView actionMenuView = this.f66a;
        o oVar = actionMenuView != null ? actionMenuView.p : null;
        int i = savedState.f70c;
        if (i != 0 && this.K != null && oVar != null && (findItem = oVar.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (savedState.f71d) {
            removeCallbacks(this.M);
            post(this.M);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        c();
        F0 f0 = this.t;
        boolean z = i == 1;
        if (z == f0.g) {
            return;
        }
        f0.g = z;
        if (!f0.h) {
            f0.f445a = f0.e;
            f0.f446b = f0.f;
            return;
        }
        if (z) {
            int i2 = f0.f448d;
            if (i2 == Integer.MIN_VALUE) {
                i2 = f0.e;
            }
            f0.f445a = i2;
            int i3 = f0.f447c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = f0.f;
            }
            f0.f446b = i3;
            return;
        }
        int i4 = f0.f447c;
        if (i4 == Integer.MIN_VALUE) {
            i4 = f0.e;
        }
        f0.f445a = i4;
        int i5 = f0.f448d;
        if (i5 == Integer.MIN_VALUE) {
            i5 = f0.f;
        }
        f0.f446b = i5;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        b.b.f.m.r rVar;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        e1 e1Var = this.K;
        if (e1Var != null && (rVar = e1Var.f529b) != null) {
            savedState.f70c = rVar.f408a;
        }
        savedState.f71d = p();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    public boolean p() {
        ActionMenuView actionMenuView = this.f66a;
        if (actionMenuView != null) {
            r rVar = actionMenuView.t;
            if (rVar != null && rVar.m()) {
                return true;
            }
        }
        return false;
    }

    public final int q(View view, int i, int[] iArr, int i2) {
        f1 f1Var = (f1) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) f1Var).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int i4 = i(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, i4, max + measuredWidth, view.getMeasuredHeight() + i4);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) f1Var).rightMargin + max;
    }

    public final int r(View view, int i, int[] iArr, int i2) {
        f1 f1Var = (f1) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) f1Var).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int i4 = i(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, i4, max, view.getMeasuredHeight() + i4);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) f1Var).leftMargin);
    }

    public final int s(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final void t(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public void u(Drawable drawable) {
        if (drawable != null) {
            if (this.e == null) {
                this.e = new H(getContext(), null, 0);
            }
            if (!o(this.e)) {
                b(this.e, true);
            }
        } else {
            ImageView imageView = this.e;
            if (imageView != null && o(imageView)) {
                removeView(this.e);
                this.E.remove(this.e);
            }
        }
        ImageView imageView2 = this.e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void v(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            e();
        }
        ImageButton imageButton = this.f69d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void w(Drawable drawable) {
        if (drawable != null) {
            e();
            if (!o(this.f69d)) {
                b(this.f69d, true);
            }
        } else {
            ImageButton imageButton = this.f69d;
            if (imageButton != null && o(imageButton)) {
                removeView(this.f69d);
                this.E.remove(this.f69d);
            }
        }
        ImageButton imageButton2 = this.f69d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void x(int i) {
        if (this.k != i) {
            this.k = i;
            if (i == 0) {
                this.j = getContext();
            } else {
                this.j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void y(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f68c;
            if (textView != null && o(textView)) {
                removeView(this.f68c);
                this.E.remove(this.f68c);
            }
        } else {
            if (this.f68c == null) {
                Context context = getContext();
                C0039b0 c0039b0 = new C0039b0(context);
                this.f68c = c0039b0;
                c0039b0.setSingleLine();
                this.f68c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.m;
                if (i != 0) {
                    this.f68c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f68c.setTextColor(colorStateList);
                }
            }
            if (!o(this.f68c)) {
                b(this.f68c, true);
            }
        }
        TextView textView2 = this.f68c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void z(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f67b;
            if (textView != null && o(textView)) {
                removeView(this.f67b);
                this.E.remove(this.f67b);
            }
        } else {
            if (this.f67b == null) {
                Context context = getContext();
                C0039b0 c0039b0 = new C0039b0(context);
                this.f67b = c0039b0;
                c0039b0.setSingleLine();
                this.f67b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.l;
                if (i != 0) {
                    this.f67b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.z;
                if (colorStateList != null) {
                    this.f67b.setTextColor(colorStateList);
                }
            }
            if (!o(this.f67b)) {
                b(this.f67b, true);
            }
        }
        TextView textView2 = this.f67b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.x = charSequence;
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f1(getContext(), attributeSet);
    }

    public class SavedState extends AbsSavedState {
        public static final Parcelable.Creator CREATOR = new h1();

        /* renamed from: c, reason: collision with root package name */
        public int f70c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f71d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f70c = parcel.readInt();
            this.f71d = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f94a, i);
            parcel.writeInt(this.f70c);
            parcel.writeInt(this.f71d ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int[] iArr = b.y;
        this.w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.H = new b1(this);
        this.M = new c1(this);
        a1 o = a1.o(getContext(), attributeSet, iArr, i, 0);
        q.C(this, context, iArr, attributeSet, o.f513b, i, 0);
        this.l = o.j(28, 0);
        this.m = o.j(19, 0);
        this.w = o.f513b.getInteger(0, this.w);
        this.n = o.f513b.getInteger(2, 48);
        int c2 = o.c(22, 0);
        c2 = o.m(27) ? o.c(27, c2) : c2;
        this.s = c2;
        this.r = c2;
        this.q = c2;
        this.p = c2;
        int c3 = o.c(25, -1);
        if (c3 >= 0) {
            this.p = c3;
        }
        int c4 = o.c(24, -1);
        if (c4 >= 0) {
            this.q = c4;
        }
        int c5 = o.c(26, -1);
        if (c5 >= 0) {
            this.r = c5;
        }
        int c6 = o.c(23, -1);
        if (c6 >= 0) {
            this.s = c6;
        }
        this.o = o.d(13, -1);
        int c7 = o.c(9, RecyclerView.UNDEFINED_DURATION);
        int c8 = o.c(5, RecyclerView.UNDEFINED_DURATION);
        int d2 = o.d(7, 0);
        int d3 = o.d(8, 0);
        c();
        F0 f0 = this.t;
        f0.h = false;
        if (d2 != Integer.MIN_VALUE) {
            f0.e = d2;
            f0.f445a = d2;
        }
        if (d3 != Integer.MIN_VALUE) {
            f0.f = d3;
            f0.f446b = d3;
        }
        if (c7 != Integer.MIN_VALUE || c8 != Integer.MIN_VALUE) {
            this.t.a(c7, c8);
        }
        this.u = o.c(10, RecyclerView.UNDEFINED_DURATION);
        this.v = o.c(6, RecyclerView.UNDEFINED_DURATION);
        this.f = o.e(4);
        this.g = o.l(3);
        CharSequence l = o.l(21);
        if (!TextUtils.isEmpty(l)) {
            z(l);
        }
        CharSequence l2 = o.l(18);
        if (!TextUtils.isEmpty(l2)) {
            y(l2);
        }
        this.j = getContext();
        x(o.j(17, 0));
        Drawable e = o.e(16);
        if (e != null) {
            w(e);
        }
        CharSequence l3 = o.l(15);
        if (!TextUtils.isEmpty(l3)) {
            v(l3);
        }
        Drawable e2 = o.e(11);
        if (e2 != null) {
            u(e2);
        }
        CharSequence l4 = o.l(12);
        if (!TextUtils.isEmpty(l4)) {
            if (!TextUtils.isEmpty(l4) && this.e == null) {
                this.e = new H(getContext(), null, 0);
            }
            ImageView imageView = this.e;
            if (imageView != null) {
                imageView.setContentDescription(l4);
            }
        }
        if (o.m(29)) {
            ColorStateList b2 = o.b(29);
            this.z = b2;
            TextView textView = this.f67b;
            if (textView != null) {
                textView.setTextColor(b2);
            }
        }
        if (o.m(20)) {
            ColorStateList b3 = o.b(20);
            this.A = b3;
            TextView textView2 = this.f68c;
            if (textView2 != null) {
                textView2.setTextColor(b3);
            }
        }
        if (o.m(14)) {
            int j = o.j(14, 0);
            j jVar = new j(getContext());
            d();
            ActionMenuView actionMenuView = this.f66a;
            if (actionMenuView.p == null) {
                o oVar = (o) actionMenuView.t();
                if (this.K == null) {
                    this.K = new e1(this);
                }
                this.f66a.t.q = true;
                oVar.b(this.K, this.j);
            }
            jVar.inflate(j, this.f66a.t());
        }
        o.f513b.recycle();
    }
}
