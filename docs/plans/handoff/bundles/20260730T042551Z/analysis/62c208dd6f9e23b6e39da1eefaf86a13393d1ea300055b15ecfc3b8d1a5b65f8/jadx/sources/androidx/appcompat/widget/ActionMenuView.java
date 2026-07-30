package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.app.Ctry;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Ccatch;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.view.menu.Cthis;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.common.api.Api;
import defpackage.C3915wL;
import defpackage.InterfaceC0309Js;
import defpackage.V1;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements Ccase.Cif, Ccatch {

    /* renamed from: class, reason: not valid java name */
    public int f5629class;

    /* renamed from: const, reason: not valid java name */
    public int f5630const;

    /* renamed from: do, reason: not valid java name */
    public Context f5631do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak.Cdo f5632do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase.Cdo f5633do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f5634do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionMenuPresenter f5635do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f5636do;

    /* renamed from: final, reason: not valid java name */
    public final int f5637final;

    /* renamed from: for, reason: not valid java name */
    public boolean f5638for;

    /* renamed from: new, reason: not valid java name */
    public boolean f5639new;

    /* renamed from: super, reason: not valid java name */
    public final int f5640super;

    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {

        /* renamed from: do, reason: not valid java name */
        @ViewDebug.ExportedProperty
        public int f5641do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        @ViewDebug.ExportedProperty
        public boolean f5642do;

        /* renamed from: for, reason: not valid java name */
        @ViewDebug.ExportedProperty
        public boolean f5643for;

        /* renamed from: if, reason: not valid java name */
        @ViewDebug.ExportedProperty
        public int f5644if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        @ViewDebug.ExportedProperty
        public boolean f5645if;

        /* renamed from: new, reason: not valid java name */
        public boolean f5646new;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.f5642do = layoutParams.f5642do;
        }

        public LayoutParams() {
            super(-2);
            this.f5642do = false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: case */
        boolean mo3304case();

        /* renamed from: for */
        boolean mo3306for();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$for, reason: invalid class name */
    public class Cfor implements Ccase.Cdo {
        public Cfor() {
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: do */
        public final void mo2229do(Ccase ccase) {
            Ccase.Cdo cdo = ActionMenuView.this.f5633do;
            if (cdo != null) {
                cdo.mo2229do(ccase);
            }
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: if */
        public final boolean mo2230if(Ccase ccase, MenuItem menuItem) {
            boolean z;
            boolean onMenuItemSelected;
            Cnew cnew = ActionMenuView.this.f5636do;
            if (cnew == null) {
                return false;
            }
            Toolbar toolbar = Toolbar.this;
            Iterator<InterfaceC0309Js> it = toolbar.f5916do.f915do.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (it.next().m1078new()) {
                    z = true;
                    break;
                }
            }
            if (z) {
                onMenuItemSelected = true;
            } else {
                Toolbar.Ccase ccase2 = toolbar.f5931do;
                onMenuItemSelected = ccase2 != null ? Ctry.this.f5355do.onMenuItemSelected(0, menuItem) : false;
            }
            return onMenuItemSelected;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$if, reason: invalid class name */
    public static class Cif implements Cbreak.Cdo {
        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: for */
        public final void mo3279for(Ccase ccase, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.Cbreak.Cdo
        /* renamed from: new */
        public final boolean mo3280new(Ccase ccase) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$new, reason: invalid class name */
    public interface Cnew {
    }

    public ActionMenuView() {
        throw null;
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LinearLayoutCompat) this).f5768do = false;
        float f = context.getResources().getDisplayMetrics().density;
        this.f5637final = (int) (56.0f * f);
        this.f5640super = (int) (f * 4.0f);
        this.f5631do = context;
        this.f5629class = 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public static LayoutParams m3396catch(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            LayoutParams layoutParams2 = new LayoutParams();
            ((LinearLayout.LayoutParams) layoutParams2).gravity = 16;
            return layoutParams2;
        }
        LayoutParams layoutParams3 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (((LinearLayout.LayoutParams) layoutParams3).gravity <= 0) {
            ((LinearLayout.LayoutParams) layoutParams3).gravity = 16;
        }
        return layoutParams3;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: case, reason: not valid java name */
    public final LinearLayoutCompat.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams();
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: class, reason: not valid java name */
    public final Ccase m3398class() {
        if (this.f5634do == null) {
            Context context = getContext();
            Ccase ccase = new Ccase(context);
            this.f5634do = ccase;
            ccase.f5407do = new Cfor();
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f5635do = actionMenuPresenter;
            actionMenuPresenter.f5614do = true;
            actionMenuPresenter.f5618if = true;
            Cbreak.Cdo cdo = this.f5632do;
            if (cdo == null) {
                cdo = new Cif();
            }
            ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5450do = cdo;
            this.f5634do.m3335if(actionMenuPresenter, this.f5631do);
            ActionMenuPresenter actionMenuPresenter2 = this.f5635do;
            ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter2).f5452do = this;
            this.f5634do = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter2).f5451do;
        }
        return this.f5634do;
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m3399const(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof Cdo)) {
            z = false | ((Cdo) childAt).mo3306for();
        }
        return (i <= 0 || !(childAt2 instanceof Cdo)) ? z : z | ((Cdo) childAt2).mo3304case();
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Ccase.Cif
    /* renamed from: do */
    public final boolean mo3313do(Cgoto cgoto) {
        return this.f5634do.m3348while(cgoto, null, 0);
    }

    @Override // androidx.appcompat.view.menu.Ccatch
    /* renamed from: for */
    public final void mo3314for(Ccase ccase) {
        this.f5634do = ccase;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams();
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m3396catch(layoutParams);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: goto, reason: not valid java name */
    public final LinearLayoutCompat.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f5635do;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.mo3321new(false);
            if (this.f5635do.m3394try()) {
                this.f5635do.m3392if();
                this.f5635do.m3393super();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f5635do;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m3392if();
            ActionMenuPresenter.Cdo cdo = actionMenuPresenter.f5609do;
            if (cdo == null || !cdo.m3359if()) {
                return;
            }
            ((Cthis) cdo).f5535do.dismiss();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int i5;
        if (!this.f5639new) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i6 = (i4 - i2) / 2;
        int i7 = this.f5772goto;
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean m8568do = C3915wL.m8568do(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f5642do) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (m3399const(i11)) {
                        measuredWidth += i7;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m8568do) {
                        i5 = getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        width = i5 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        i5 = width - measuredWidth;
                    }
                    int i12 = i6 - (measuredHeight / 2);
                    childAt.layout(i5, i12, width, measuredHeight + i12);
                    paddingRight -= measuredWidth;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams).leftMargin) + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    m3399const(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i13 = (i8 / 2) - (measuredWidth2 / 2);
            int i14 = i6 - (measuredHeight2 / 2);
            childAt2.layout(i13, i14, measuredWidth2 + i13, measuredHeight2 + i14);
            return;
        }
        int i15 = i10 - (i9 ^ 1);
        int max = Math.max(0, i15 > 0 ? paddingRight / i15 : 0);
        if (m8568do) {
            int width2 = getWidth() - getPaddingRight();
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt3 = getChildAt(i16);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.f5642do) {
                    int i17 = width2 - ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i18 = i6 - (measuredHeight3 / 2);
                    childAt3.layout(i17 - measuredWidth3, i18, i17, measuredHeight3 + i18);
                    width2 = i17 - ((measuredWidth3 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt4 = getChildAt(i19);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.f5642do) {
                int i20 = paddingLeft + ((LinearLayout.LayoutParams) layoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i21 = i6 - (measuredHeight4 / 2);
                childAt4.layout(i20, i21, i20 + measuredWidth4, measuredHeight4 + i21);
                paddingLeft = V1.m2501for(measuredWidth4, ((LinearLayout.LayoutParams) layoutParams3).rightMargin, max, i20);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v31 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        ?? r4;
        int i8;
        int i9;
        int i10;
        Ccase ccase;
        boolean z3 = this.f5639new;
        boolean z4 = View.MeasureSpec.getMode(i) == 1073741824;
        this.f5639new = z4;
        if (z3 != z4) {
            this.f5630const = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f5639new && (ccase = this.f5634do) != null && size != this.f5630const) {
            this.f5630const = size;
            ccase.mo3345throw(true);
        }
        int childCount = getChildCount();
        if (!this.f5639new || childCount <= 0) {
            for (int i11 = 0; i11 < childCount; i11++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i11).getLayoutParams();
                ((LinearLayout.LayoutParams) layoutParams).rightMargin = 0;
                ((LinearLayout.LayoutParams) layoutParams).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i12 = size2 - paddingRight;
        int i13 = this.f5637final;
        int i14 = i12 / i13;
        int i15 = i12 % i13;
        if (i14 == 0) {
            setMeasuredDimension(i12, 0);
            return;
        }
        int i16 = (i15 / i14) + i13;
        int childCount2 = getChildCount();
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        boolean z5 = false;
        long j = 0;
        int i21 = 0;
        while (true) {
            i3 = this.f5640super;
            if (i20 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i20);
            int i22 = size3;
            int i23 = i12;
            if (childAt.getVisibility() == 8) {
                i8 = mode;
                i9 = paddingBottom;
            } else {
                boolean z6 = childAt instanceof ActionMenuItemView;
                int i24 = i18 + 1;
                if (z6) {
                    childAt.setPadding(i3, 0, i3, 0);
                }
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                layoutParams2.f5646new = false;
                layoutParams2.f5644if = 0;
                layoutParams2.f5641do = 0;
                layoutParams2.f5645if = false;
                ((LinearLayout.LayoutParams) layoutParams2).leftMargin = 0;
                ((LinearLayout.LayoutParams) layoutParams2).rightMargin = 0;
                layoutParams2.f5643for = z6 && ((ActionMenuItemView) childAt).m3309throw();
                int i25 = layoutParams2.f5642do ? 1 : i14;
                LayoutParams layoutParams3 = (LayoutParams) childAt.getLayoutParams();
                i8 = mode;
                i9 = paddingBottom;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z6 ? (ActionMenuItemView) childAt : null;
                boolean z7 = actionMenuItemView != null && actionMenuItemView.m3309throw();
                if (i25 <= 0 || (z7 && i25 < 2)) {
                    i10 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i25 * i16, Integer.MIN_VALUE), makeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i10 = measuredWidth / i16;
                    if (measuredWidth % i16 != 0) {
                        i10++;
                    }
                    if (z7 && i10 < 2) {
                        i10 = 2;
                    }
                }
                layoutParams3.f5645if = !layoutParams3.f5642do && z7;
                layoutParams3.f5641do = i10;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i16 * i10, 1073741824), makeMeasureSpec);
                i19 = Math.max(i19, i10);
                if (layoutParams2.f5645if) {
                    i21++;
                }
                if (layoutParams2.f5642do) {
                    z5 = true;
                }
                i14 -= i10;
                i17 = Math.max(i17, childAt.getMeasuredHeight());
                if (i10 == 1) {
                    j |= 1 << i20;
                }
                i18 = i24;
            }
            i20++;
            size3 = i22;
            i12 = i23;
            paddingBottom = i9;
            mode = i8;
        }
        int i26 = mode;
        int i27 = i12;
        int i28 = size3;
        boolean z8 = z5 && i18 == 2;
        boolean z9 = false;
        while (i21 > 0 && i14 > 0) {
            int i29 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int i30 = 0;
            int i31 = 0;
            long j2 = 0;
            while (i31 < childCount2) {
                LayoutParams layoutParams4 = (LayoutParams) getChildAt(i31).getLayoutParams();
                boolean z10 = z9;
                if (layoutParams4.f5645if) {
                    int i32 = layoutParams4.f5641do;
                    if (i32 < i29) {
                        j2 = 1 << i31;
                        i29 = i32;
                        i30 = 1;
                    } else if (i32 == i29) {
                        j2 |= 1 << i31;
                        i30++;
                    }
                }
                i31++;
                z9 = z10;
            }
            z = z9;
            j |= j2;
            if (i30 > i14) {
                break;
            }
            int i33 = i29 + 1;
            int i34 = 0;
            while (i34 < childCount2) {
                View childAt2 = getChildAt(i34);
                LayoutParams layoutParams5 = (LayoutParams) childAt2.getLayoutParams();
                int i35 = i17;
                int i36 = childMeasureSpec;
                int i37 = childCount2;
                long j3 = 1 << i34;
                if ((j2 & j3) != 0) {
                    if (z8 && layoutParams5.f5643for) {
                        r4 = 1;
                        r4 = 1;
                        if (i14 == 1) {
                            childAt2.setPadding(i3 + i16, 0, i3, 0);
                        }
                    } else {
                        r4 = 1;
                    }
                    layoutParams5.f5641do += r4;
                    layoutParams5.f5646new = r4;
                    i14--;
                } else if (layoutParams5.f5641do == i33) {
                    j |= j3;
                }
                i34++;
                childMeasureSpec = i36;
                i17 = i35;
                childCount2 = i37;
            }
            z9 = true;
        }
        z = z9;
        int i38 = i17;
        int i39 = childMeasureSpec;
        int i40 = childCount2;
        boolean z11 = !z5 && i18 == 1;
        if (i14 <= 0 || j == 0 || (i14 >= i18 - 1 && !z11 && i19 <= 1)) {
            i4 = i40;
            z2 = z;
        } else {
            float bitCount = Long.bitCount(j);
            if (!z11) {
                if ((j & 1) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).f5643for) {
                    bitCount -= 0.5f;
                }
                int i41 = i40 - 1;
                if ((j & (1 << i41)) != 0 && !((LayoutParams) getChildAt(i41).getLayoutParams()).f5643for) {
                    bitCount -= 0.5f;
                }
            }
            int i42 = bitCount > 0.0f ? (int) ((i14 * i16) / bitCount) : 0;
            boolean z12 = z;
            i4 = i40;
            for (int i43 = 0; i43 < i4; i43++) {
                if ((j & (1 << i43)) != 0) {
                    View childAt3 = getChildAt(i43);
                    LayoutParams layoutParams6 = (LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        layoutParams6.f5644if = i42;
                        layoutParams6.f5646new = true;
                        if (i43 == 0 && !layoutParams6.f5643for) {
                            ((LinearLayout.LayoutParams) layoutParams6).leftMargin = (-i42) / 2;
                        }
                    } else if (layoutParams6.f5642do) {
                        layoutParams6.f5644if = i42;
                        layoutParams6.f5646new = true;
                        ((LinearLayout.LayoutParams) layoutParams6).rightMargin = (-i42) / 2;
                    } else {
                        if (i43 != 0) {
                            ((LinearLayout.LayoutParams) layoutParams6).leftMargin = i42 / 2;
                        }
                        if (i43 != i4 - 1) {
                            ((LinearLayout.LayoutParams) layoutParams6).rightMargin = i42 / 2;
                        }
                    }
                    z12 = true;
                }
            }
            z2 = z12;
        }
        if (z2) {
            int i44 = 0;
            while (i44 < i4) {
                View childAt4 = getChildAt(i44);
                LayoutParams layoutParams7 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams7.f5646new) {
                    i7 = i39;
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((layoutParams7.f5641do * i16) + layoutParams7.f5644if, 1073741824), i7);
                } else {
                    i7 = i39;
                }
                i44++;
                i39 = i7;
            }
        }
        if (i26 != 1073741824) {
            i6 = i27;
            i5 = i38;
        } else {
            i5 = i28;
            i6 = i27;
        }
        setMeasuredDimension(i6, i5);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: this, reason: not valid java name */
    public final /* bridge */ /* synthetic */ LinearLayoutCompat.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m3396catch(layoutParams);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
