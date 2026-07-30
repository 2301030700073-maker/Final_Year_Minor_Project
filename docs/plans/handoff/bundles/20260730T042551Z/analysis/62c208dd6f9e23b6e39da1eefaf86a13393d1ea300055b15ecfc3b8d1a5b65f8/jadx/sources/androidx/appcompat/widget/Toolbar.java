package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cconst;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.widget.ActionMenuView;
import androidx.customview.view.AbsSavedState;
import com.joeykrim.rootcheck.R;
import defpackage.C0199Es;
import defpackage.C3385nL;
import defpackage.C3970xH;
import defpackage.FH;
import defpackage.InterfaceC0309Js;
import defpackage.InterfaceC3843v8;
import defpackage.KH;
import defpackage.O4;
import defpackage.QK;
import defpackage.RunnableC4072z1;
import defpackage.UA;
import defpackage.YF;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {

    /* renamed from: break, reason: not valid java name */
    public final int f5911break;

    /* renamed from: case, reason: not valid java name */
    public final int f5912case;

    /* renamed from: catch, reason: not valid java name */
    public final int f5913catch;

    /* renamed from: class, reason: not valid java name */
    public final int f5914class;

    /* renamed from: const, reason: not valid java name */
    public final int f5915const;

    /* renamed from: do, reason: not valid java name */
    public final C0199Es f5916do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public UA f5917do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Context f5918do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f5919do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Drawable f5920do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5921do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnBackInvokedCallback f5922do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OnBackInvokedDispatcher f5923do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak.Cdo f5924do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase.Cdo f5925do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionMenuPresenter f5926do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionMenuView f5927do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AppCompatImageButton f5928do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AppCompatImageView f5929do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AppCompatTextView f5930do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f5931do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f5932do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f5933do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ctry f5934do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.appcompat.widget.Cnew f5935do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f5936do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<View> f5937do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5938do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f5939do;

    /* renamed from: else, reason: not valid java name */
    public final int f5940else;

    /* renamed from: final, reason: not valid java name */
    public final int f5941final;

    /* renamed from: for, reason: not valid java name */
    public int f5942for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f5943for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ArrayList<MenuItem> f5944for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5945for;

    /* renamed from: goto, reason: not valid java name */
    public final int f5946goto;

    /* renamed from: if, reason: not valid java name */
    public ColorStateList f5947if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public AppCompatImageButton f5948if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public AppCompatTextView f5949if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f5950if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<View> f5951if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5952if;

    /* renamed from: new, reason: not valid java name */
    public int f5953new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5954new;

    /* renamed from: this, reason: not valid java name */
    public final int f5955this;

    /* renamed from: try, reason: not valid java name */
    public int f5956try;

    /* renamed from: androidx.appcompat.widget.Toolbar$case, reason: invalid class name */
    public interface Ccase {
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$do, reason: invalid class name */
    public class Cdo implements ActionMenuView.Cnew {
        public Cdo() {
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$for, reason: invalid class name */
    public class Cfor implements Ccase.Cdo {
        public Cfor() {
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: do */
        public final void mo2229do(androidx.appcompat.view.menu.Ccase ccase) {
            Toolbar toolbar = Toolbar.this;
            ActionMenuPresenter actionMenuPresenter = toolbar.f5927do.f5635do;
            if (!(actionMenuPresenter != null && actionMenuPresenter.m3394try())) {
                Iterator<InterfaceC0309Js> it = toolbar.f5916do.f915do.iterator();
                while (it.hasNext()) {
                    it.next().m1077if();
                }
            }
            Ccase.Cdo cdo = toolbar.f5925do;
            if (cdo != null) {
                cdo.mo2229do(ccase);
            }
        }

        @Override // androidx.appcompat.view.menu.Ccase.Cdo
        /* renamed from: if */
        public final boolean mo2230if(androidx.appcompat.view.menu.Ccase ccase, MenuItem menuItem) {
            Ccase.Cdo cdo = Toolbar.this.f5925do;
            return cdo != null && cdo.mo2230if(ccase, menuItem);
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ActionMenuPresenter actionMenuPresenter;
            ActionMenuView actionMenuView = Toolbar.this.f5927do;
            if (actionMenuView == null || (actionMenuPresenter = actionMenuView.f5635do) == null) {
                return;
            }
            actionMenuPresenter.m3393super();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$new, reason: invalid class name */
    public static class Cnew {
        /* renamed from: do, reason: not valid java name */
        public static OnBackInvokedDispatcher m3505do(View view) {
            return view.findOnBackInvokedDispatcher();
        }

        /* renamed from: for, reason: not valid java name */
        public static void m3506for(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
        }

        /* renamed from: if, reason: not valid java name */
        public static OnBackInvokedCallback m3507if(final Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new OnBackInvokedCallback() { // from class: GH
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() {
                    runnable.run();
                }
            };
        }

        /* renamed from: new, reason: not valid java name */
        public static void m3508new(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$try, reason: invalid class name */
    public class Ctry implements Cbreak {

        /* renamed from: do, reason: not valid java name */
        public androidx.appcompat.view.menu.Ccase f5963do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Cgoto f5964do;

        public Ctry() {
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: case */
        public final boolean mo3317case() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: catch */
        public final boolean mo978catch(Cgoto cgoto) {
            Toolbar toolbar = Toolbar.this;
            KeyEvent.Callback callback = toolbar.f5921do;
            if (callback instanceof InterfaceC3843v8) {
                ((InterfaceC3843v8) callback).onActionViewCollapsed();
            }
            toolbar.removeView(toolbar.f5921do);
            toolbar.removeView(toolbar.f5948if);
            toolbar.f5921do = null;
            ArrayList<View> arrayList = toolbar.f5951if;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    arrayList.clear();
                    this.f5964do = null;
                    toolbar.requestLayout();
                    cgoto.f5490new = false;
                    cgoto.f5475do.mo3345throw(false);
                    toolbar.m3479abstract();
                    return true;
                }
                toolbar.addView(arrayList.get(size));
            }
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: class */
        public final void mo3318class(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: const */
        public final boolean mo979const(Cgoto cgoto) {
            Toolbar toolbar = Toolbar.this;
            AppCompatImageButton appCompatImageButton = toolbar.f5948if;
            int i = toolbar.f5912case;
            if (appCompatImageButton == null) {
                AppCompatImageButton appCompatImageButton2 = new AppCompatImageButton(toolbar.getContext(), null, R.attr.toolbarNavigationButtonStyle);
                toolbar.f5948if = appCompatImageButton2;
                appCompatImageButton2.setImageDrawable(toolbar.f5920do);
                toolbar.f5948if.setContentDescription(toolbar.f5936do);
                LayoutParams layoutParams = new LayoutParams();
                layoutParams.f5168do = (i & 112) | 8388611;
                layoutParams.f5957if = 2;
                toolbar.f5948if.setLayoutParams(layoutParams);
                toolbar.f5948if.setOnClickListener(new FH(toolbar));
            }
            ViewParent parent = toolbar.f5948if.getParent();
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f5948if);
                }
                toolbar.addView(toolbar.f5948if);
            }
            View actionView = cgoto.getActionView();
            toolbar.f5921do = actionView;
            this.f5964do = cgoto;
            ViewParent parent2 = actionView.getParent();
            if (parent2 != toolbar) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar.f5921do);
                }
                LayoutParams layoutParams2 = new LayoutParams();
                layoutParams2.f5168do = (i & 112) | 8388611;
                layoutParams2.f5957if = 2;
                toolbar.f5921do.setLayoutParams(layoutParams2);
                toolbar.addView(toolbar.f5921do);
            }
            int childCount = toolbar.getChildCount();
            while (true) {
                childCount--;
                if (childCount < 0) {
                    break;
                }
                View childAt = toolbar.getChildAt(childCount);
                if (((LayoutParams) childAt.getLayoutParams()).f5957if != 2 && childAt != toolbar.f5927do) {
                    toolbar.removeViewAt(childCount);
                    toolbar.f5951if.add(childAt);
                }
            }
            toolbar.requestLayout();
            cgoto.f5490new = true;
            cgoto.f5475do.mo3345throw(false);
            KeyEvent.Callback callback = toolbar.f5921do;
            if (callback instanceof InterfaceC3843v8) {
                ((InterfaceC3843v8) callback).onActionViewExpanded();
            }
            toolbar.m3479abstract();
            return true;
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: else */
        public final void mo980else(Context context, androidx.appcompat.view.menu.Ccase ccase) {
            Cgoto cgoto;
            androidx.appcompat.view.menu.Ccase ccase2 = this.f5963do;
            if (ccase2 != null && (cgoto = this.f5964do) != null) {
                ccase2.mo3338new(cgoto);
            }
            this.f5963do = ccase;
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: for */
        public final void mo3319for(androidx.appcompat.view.menu.Ccase ccase, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        public final int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: goto */
        public final boolean mo3320goto(Cconst cconst) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: new */
        public final void mo3321new(boolean z) {
            if (this.f5964do != null) {
                androidx.appcompat.view.menu.Ccase ccase = this.f5963do;
                boolean z2 = false;
                if (ccase != null) {
                    int size = ccase.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.f5963do.getItem(i) == this.f5964do) {
                            z2 = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z2) {
                    return;
                }
                mo978catch(this.f5964do);
            }
        }

        @Override // androidx.appcompat.view.menu.Cbreak
        /* renamed from: this */
        public final Parcelable mo3322this() {
            return null;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    /* renamed from: case, reason: not valid java name */
    public static LayoutParams m3476case(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m3477catch(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    /* renamed from: final, reason: not valid java name */
    public static int m3478final(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: abstract, reason: not valid java name */
    final void m3479abstract() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher m3505do = Cnew.m3505do(this);
            Ctry ctry = this.f5934do;
            boolean z = false;
            int i = 1;
            if (((ctry == null || ctry.f5964do == null) ? false : true) && m3505do != null) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (isAttachedToWindow() && this.f5954new) {
                    z = true;
                }
            }
            if (z && this.f5923do == null) {
                if (this.f5922do == null) {
                    this.f5922do = Cnew.m3507if(new RunnableC4072z1(this, i));
                }
                Cnew.m3506for(m3505do, this.f5922do);
                this.f5923do = m3505do;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.f5923do) == null) {
                return;
            }
            Cnew.m3508new(onBackInvokedDispatcher, this.f5922do);
            this.f5923do = null;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final ArrayList<MenuItem> m3480break() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        androidx.appcompat.view.menu.Ccase m3481class = m3481class();
        for (int i = 0; i < m3481class.size(); i++) {
            arrayList.add(m3481class.getItem(i));
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    /* renamed from: class, reason: not valid java name */
    public final androidx.appcompat.view.menu.Ccase m3481class() {
        m3492new();
        ActionMenuView actionMenuView = this.f5927do;
        if (actionMenuView.f5634do == null) {
            androidx.appcompat.view.menu.Ccase m3398class = actionMenuView.m3398class();
            if (this.f5934do == null) {
                this.f5934do = new Ctry();
            }
            this.f5927do.f5635do.f5616for = true;
            m3398class.m3335if(this.f5934do, this.f5918do);
            m3479abstract();
        }
        return this.f5927do.m3398class();
    }

    /* renamed from: const, reason: not valid java name */
    public final Drawable m3482const() {
        AppCompatImageButton appCompatImageButton = this.f5928do;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    /* renamed from: default, reason: not valid java name */
    public void mo3483default(Drawable drawable) {
        if (drawable != null) {
            m3503try();
            if (!m3504while(this.f5928do)) {
                m3489if(this.f5928do, true);
            }
        } else {
            AppCompatImageButton appCompatImageButton = this.f5928do;
            if (appCompatImageButton != null && m3504while(appCompatImageButton)) {
                removeView(this.f5928do);
                this.f5951if.remove(this.f5928do);
            }
        }
        AppCompatImageButton appCompatImageButton2 = this.f5928do;
        if (appCompatImageButton2 != null) {
            appCompatImageButton2.setImageDrawable(drawable);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3484do(int i, ArrayList arrayList) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f5957if == 0 && m3494private(childAt)) {
                    int i3 = layoutParams.f5168do;
                    WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f5957if == 0 && m3494private(childAt2)) {
                int i5 = layoutParams2.f5168do;
                WeakHashMap<View, C3385nL> weakHashMap3 = QK.f2909do;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final int m3485else(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = layoutParams.f5168do & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.f5941final & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (i4 < i5) {
            i4 = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            if (i6 < i7) {
                i4 = Math.max(0, i4 - (i7 - i6));
            }
        }
        return paddingTop + i4;
    }

    /* renamed from: extends, reason: not valid java name */
    public void mo3486extends(View.OnClickListener onClickListener) {
        m3503try();
        this.f5928do.setOnClickListener(onClickListener);
    }

    /* renamed from: finally, reason: not valid java name */
    public void mo3487finally(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f5949if;
            if (appCompatTextView != null && m3504while(appCompatTextView)) {
                removeView(this.f5949if);
                this.f5951if.remove(this.f5949if);
            }
        } else {
            if (this.f5949if == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.f5949if = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f5949if.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f5956try;
                if (i != 0) {
                    this.f5949if.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f5947if;
                if (colorStateList != null) {
                    this.f5949if.setTextColor(colorStateList);
                }
            }
            if (!m3504while(this.f5949if)) {
                m3489if(this.f5949if, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f5949if;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f5943for = charSequence;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m3476case(layoutParams);
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m3488goto() {
        androidx.appcompat.view.menu.Ccase ccase;
        ActionMenuView actionMenuView = this.f5927do;
        if ((actionMenuView == null || (ccase = actionMenuView.f5634do) == null || !ccase.hasVisibleItems()) ? false : true) {
            UA ua = this.f5917do;
            return Math.max(ua != null ? ua.f3843do ? ua.f3842do : ua.f3845if : 0, Math.max(this.f5915const, 0));
        }
        UA ua2 = this.f5917do;
        return ua2 != null ? ua2.f3843do ? ua2.f3842do : ua2.f3845if : 0;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m3489if(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams layoutParams2 = layoutParams == null ? new LayoutParams() : !checkLayoutParams(layoutParams) ? m3476case(layoutParams) : (LayoutParams) layoutParams;
        layoutParams2.f5957if = 1;
        if (!z || this.f5921do == null) {
            addView(view, layoutParams2);
        } else {
            view.setLayoutParams(layoutParams2);
            this.f5951if.add(view);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final int m3490import(View view, int i, int i2, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int m3485else = m3485else(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m3485else, max + measuredWidth, view.getMeasuredHeight() + m3485else);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + max;
    }

    /* renamed from: native, reason: not valid java name */
    public final int m3491native(View view, int i, int i2, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m3485else = m3485else(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m3485else, max, view.getMeasuredHeight() + m3485else);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3492new() {
        if (this.f5927do == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f5927do = actionMenuView;
            int i = this.f5942for;
            if (actionMenuView.f5629class != i) {
                actionMenuView.f5629class = i;
                if (i == 0) {
                    actionMenuView.f5631do = actionMenuView.getContext();
                } else {
                    actionMenuView.f5631do = new ContextThemeWrapper(actionMenuView.getContext(), i);
                }
            }
            ActionMenuView actionMenuView2 = this.f5927do;
            actionMenuView2.f5636do = this.f5932do;
            Cbreak.Cdo cdo = this.f5924do;
            Cfor cfor = new Cfor();
            actionMenuView2.f5632do = cdo;
            actionMenuView2.f5633do = cfor;
            LayoutParams layoutParams = new LayoutParams();
            layoutParams.f5168do = (this.f5912case & 112) | 8388613;
            this.f5927do.setLayoutParams(layoutParams);
            m3489if(this.f5927do, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3479abstract();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f5933do);
        m3479abstract();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f5952if = false;
        }
        if (!this.f5952if) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f5952if = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f5952if = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02a1 A[LOOP:0: B:46:0x029f->B:47:0x02a1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02be A[LOOP:1: B:50:0x02bc->B:51:0x02be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02dc A[LOOP:2: B:54:0x02da->B:55:0x02dc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x032a A[LOOP:3: B:63:0x0328->B:64:0x032a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c6  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 827
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0284  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 649
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
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        ActionMenuView actionMenuView = this.f5927do;
        androidx.appcompat.view.menu.Ccase ccase = actionMenuView != null ? actionMenuView.f5634do : null;
        int i = savedState.f5959for;
        if (i != 0 && this.f5934do != null && ccase != null && (findItem = ccase.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (savedState.f5958do) {
            Cif cif = this.f5933do;
            removeCallbacks(cif);
            post(cif);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.f5917do == null) {
            this.f5917do = new UA();
        }
        UA ua = this.f5917do;
        boolean z = i == 1;
        if (z == ua.f3843do) {
            return;
        }
        ua.f3843do = z;
        if (!ua.f3846if) {
            ua.f3842do = ua.f3848try;
            ua.f3845if = ua.f3841case;
            return;
        }
        if (z) {
            int i2 = ua.f3847new;
            if (i2 == Integer.MIN_VALUE) {
                i2 = ua.f3848try;
            }
            ua.f3842do = i2;
            int i3 = ua.f3844for;
            if (i3 == Integer.MIN_VALUE) {
                i3 = ua.f3841case;
            }
            ua.f3845if = i3;
            return;
        }
        int i4 = ua.f3844for;
        if (i4 == Integer.MIN_VALUE) {
            i4 = ua.f3848try;
        }
        ua.f3842do = i4;
        int i5 = ua.f3847new;
        if (i5 == Integer.MIN_VALUE) {
            i5 = ua.f3841case;
        }
        ua.f3845if = i5;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Cgoto cgoto;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Ctry ctry = this.f5934do;
        if (ctry != null && (cgoto = ctry.f5964do) != null) {
            savedState.f5959for = cgoto.f5466do;
        }
        ActionMenuView actionMenuView = this.f5927do;
        boolean z = false;
        if (actionMenuView != null) {
            ActionMenuPresenter actionMenuPresenter = actionMenuView.f5635do;
            if (actionMenuPresenter != null && actionMenuPresenter.m3394try()) {
                z = true;
            }
        }
        savedState.f5958do = z;
        return savedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f5938do = false;
        }
        if (!this.f5938do) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f5938do = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f5938do = false;
        }
        return true;
    }

    /* renamed from: package, reason: not valid java name */
    public void mo3493package(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f5930do;
            if (appCompatTextView != null && m3504while(appCompatTextView)) {
                removeView(this.f5930do);
                this.f5951if.remove(this.f5930do);
            }
        } else {
            if (this.f5930do == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.f5930do = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f5930do.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f5953new;
                if (i != 0) {
                    this.f5930do.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f5919do;
                if (colorStateList != null) {
                    this.f5930do.setTextColor(colorStateList);
                }
            }
            if (!m3504while(this.f5930do)) {
                m3489if(this.f5930do, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f5930do;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f5950if = charSequence;
    }

    /* renamed from: private, reason: not valid java name */
    public final boolean m3494private(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: public, reason: not valid java name */
    public final int m3495public(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m3496return(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    /* renamed from: static, reason: not valid java name */
    public final void m3497static() {
        if (!this.f5954new) {
            this.f5954new = true;
            m3479abstract();
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void mo3498super(int i) {
        new YF(getContext()).inflate(i, m3481class());
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m3499switch(Drawable drawable) {
        if (drawable != null) {
            if (this.f5929do == null) {
                this.f5929do = new AppCompatImageView(getContext(), null);
            }
            if (!m3504while(this.f5929do)) {
                m3489if(this.f5929do, true);
            }
        } else {
            AppCompatImageView appCompatImageView = this.f5929do;
            if (appCompatImageView != null && m3504while(appCompatImageView)) {
                removeView(this.f5929do);
                this.f5951if.remove(this.f5929do);
            }
        }
        AppCompatImageView appCompatImageView2 = this.f5929do;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final int m3500this() {
        if (m3482const() != null) {
            UA ua = this.f5917do;
            return Math.max(ua != null ? ua.f3843do ? ua.f3845if : ua.f3842do : 0, Math.max(this.f5914class, 0));
        }
        UA ua2 = this.f5917do;
        return ua2 != null ? ua2.f3843do ? ua2.f3845if : ua2.f3842do : 0;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m3501throw() {
        Iterator<MenuItem> it = this.f5944for.iterator();
        while (it.hasNext()) {
            m3481class().removeItem(it.next().getItemId());
        }
        m3481class();
        ArrayList<MenuItem> m3480break = m3480break();
        new YF(getContext());
        Iterator<InterfaceC0309Js> it2 = this.f5916do.f915do.iterator();
        while (it2.hasNext()) {
            it2.next().m1075do();
        }
        ArrayList<MenuItem> m3480break2 = m3480break();
        m3480break2.removeAll(m3480break);
        this.f5944for = m3480break2;
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m3502throws(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m3503try();
        }
        AppCompatImageButton appCompatImageButton = this.f5928do;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
            KH.m1131do(this.f5928do, charSequence);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m3503try() {
        if (this.f5928do == null) {
            this.f5928do = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            LayoutParams layoutParams = new LayoutParams();
            layoutParams.f5168do = (this.f5912case & 112) | 8388611;
            this.f5928do.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public final boolean m3504while(View view) {
        return view.getParent() == this || this.f5951if.contains(view);
    }

    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: if, reason: not valid java name */
        public int f5957if;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f5957if = 0;
        }

        public LayoutParams() {
            this.f5957if = 0;
            this.f5168do = 8388627;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f5957if = 0;
            this.f5957if = layoutParams.f5957if;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f5957if = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f5957if = 0;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f5957if = 0;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5941final = 8388627;
        this.f5937do = new ArrayList<>();
        this.f5951if = new ArrayList<>();
        this.f5939do = new int[2];
        this.f5916do = new C0199Es();
        this.f5944for = new ArrayList<>();
        this.f5932do = new Cdo();
        this.f5933do = new Cif();
        Context context2 = getContext();
        int[] iArr = O4.f2580volatile;
        C3970xH m8626const = C3970xH.m8626const(context2, attributeSet, iArr, i);
        QK.m1857import(this, context, iArr, attributeSet, m8626const.f16536do, i);
        this.f5953new = m8626const.m8638this(28, 0);
        this.f5956try = m8626const.m8638this(19, 0);
        TypedArray typedArray = m8626const.f16536do;
        this.f5941final = typedArray.getInteger(0, 8388627);
        this.f5912case = typedArray.getInteger(2, 48);
        int m8634for = m8626const.m8634for(22, 0);
        m8634for = m8626const.m8630class(27) ? m8626const.m8634for(27, m8634for) : m8634for;
        this.f5913catch = m8634for;
        this.f5911break = m8634for;
        this.f5955this = m8634for;
        this.f5946goto = m8634for;
        int m8634for2 = m8626const.m8634for(25, -1);
        if (m8634for2 >= 0) {
            this.f5946goto = m8634for2;
        }
        int m8634for3 = m8626const.m8634for(24, -1);
        if (m8634for3 >= 0) {
            this.f5955this = m8634for3;
        }
        int m8634for4 = m8626const.m8634for(26, -1);
        if (m8634for4 >= 0) {
            this.f5911break = m8634for4;
        }
        int m8634for5 = m8626const.m8634for(23, -1);
        if (m8634for5 >= 0) {
            this.f5913catch = m8634for5;
        }
        this.f5940else = m8626const.m8637new(13, -1);
        int m8634for6 = m8626const.m8634for(9, Integer.MIN_VALUE);
        int m8634for7 = m8626const.m8634for(5, Integer.MIN_VALUE);
        int m8637new = m8626const.m8637new(7, 0);
        int m8637new2 = m8626const.m8637new(8, 0);
        if (this.f5917do == null) {
            this.f5917do = new UA();
        }
        UA ua = this.f5917do;
        ua.f3846if = false;
        if (m8637new != Integer.MIN_VALUE) {
            ua.f3848try = m8637new;
            ua.f3842do = m8637new;
        }
        if (m8637new2 != Integer.MIN_VALUE) {
            ua.f3841case = m8637new2;
            ua.f3845if = m8637new2;
        }
        if (m8634for6 != Integer.MIN_VALUE || m8634for7 != Integer.MIN_VALUE) {
            ua.m2363do(m8634for6, m8634for7);
        }
        this.f5914class = m8626const.m8634for(10, Integer.MIN_VALUE);
        this.f5915const = m8626const.m8634for(6, Integer.MIN_VALUE);
        this.f5920do = m8626const.m8639try(4);
        this.f5936do = m8626const.m8629catch(3);
        CharSequence m8629catch = m8626const.m8629catch(21);
        if (!TextUtils.isEmpty(m8629catch)) {
            mo3493package(m8629catch);
        }
        CharSequence m8629catch2 = m8626const.m8629catch(18);
        if (!TextUtils.isEmpty(m8629catch2)) {
            mo3487finally(m8629catch2);
        }
        this.f5918do = getContext();
        int m8638this = m8626const.m8638this(17, 0);
        if (this.f5942for != m8638this) {
            this.f5942for = m8638this;
            if (m8638this == 0) {
                this.f5918do = getContext();
            } else {
                this.f5918do = new ContextThemeWrapper(getContext(), m8638this);
            }
        }
        Drawable m8639try = m8626const.m8639try(16);
        if (m8639try != null) {
            mo3483default(m8639try);
        }
        CharSequence m8629catch3 = m8626const.m8629catch(15);
        if (!TextUtils.isEmpty(m8629catch3)) {
            m3502throws(m8629catch3);
        }
        Drawable m8639try2 = m8626const.m8639try(11);
        if (m8639try2 != null) {
            m3499switch(m8639try2);
        }
        CharSequence m8629catch4 = m8626const.m8629catch(12);
        if (!TextUtils.isEmpty(m8629catch4)) {
            if (!TextUtils.isEmpty(m8629catch4) && this.f5929do == null) {
                this.f5929do = new AppCompatImageView(getContext(), null);
            }
            AppCompatImageView appCompatImageView = this.f5929do;
            if (appCompatImageView != null) {
                appCompatImageView.setContentDescription(m8629catch4);
            }
        }
        if (m8626const.m8630class(29)) {
            ColorStateList m8636if = m8626const.m8636if(29);
            this.f5919do = m8636if;
            AppCompatTextView appCompatTextView = this.f5930do;
            if (appCompatTextView != null) {
                appCompatTextView.setTextColor(m8636if);
            }
        }
        if (m8626const.m8630class(20)) {
            ColorStateList m8636if2 = m8626const.m8636if(20);
            this.f5947if = m8636if2;
            AppCompatTextView appCompatTextView2 = this.f5949if;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextColor(m8636if2);
            }
        }
        if (m8626const.m8630class(14)) {
            mo3498super(m8626const.m8638this(14, 0));
        }
        m8626const.m8633final();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f5958do;

        /* renamed from: for, reason: not valid java name */
        public int f5959for;

        /* renamed from: androidx.appcompat.widget.Toolbar$SavedState$do, reason: invalid class name */
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
            this.f5959for = parcel.readInt();
            this.f5958do = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeInt(this.f5959for);
            parcel.writeInt(this.f5958do ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
