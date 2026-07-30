package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import com.joeykrim.rootcheck.R;

/* renamed from: try, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Ctry extends ViewGroup {

    /* renamed from: do, reason: not valid java name */
    public final Context f15805do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionMenuPresenter f15806do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ActionMenuView f15807do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3385nL f15808do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f15809do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15810do;

    /* renamed from: for, reason: not valid java name */
    public int f15811for;

    /* renamed from: if, reason: not valid java name */
    public boolean f15812if;

    /* renamed from: try$do, reason: invalid class name */
    public class Cdo implements InterfaceC3503pL {

        /* renamed from: do, reason: not valid java name */
        public int f15813do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f15815do = false;

        public Cdo() {
        }

        @Override // defpackage.InterfaceC3503pL
        /* renamed from: do */
        public final void mo325do() {
            if (this.f15815do) {
                return;
            }
            Ctry ctry = Ctry.this;
            ctry.f15808do = null;
            Ctry.super.setVisibility(this.f15813do);
        }

        @Override // defpackage.InterfaceC3503pL
        /* renamed from: for */
        public final void mo326for() {
            Ctry.super.setVisibility(0);
            this.f15815do = false;
        }

        @Override // defpackage.InterfaceC3503pL
        /* renamed from: if */
        public final void mo3547if() {
            this.f15815do = true;
        }
    }

    public Ctry(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m8317for(View view, int i, int i2) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - 0);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m8319new(int i, int i2, int i3, View view, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    /* renamed from: case, reason: not valid java name */
    public final C3385nL m8320case(int i, long j) {
        C3385nL c3385nL = this.f15808do;
        if (c3385nL != null) {
            c3385nL.m7565if();
        }
        Cdo cdo = this.f15809do;
        if (i != 0) {
            C3385nL m1851do = QK.m1851do(this);
            m1851do.m7563do(0.0f);
            m1851do.m7564for(j);
            Ctry.this.f15808do = m1851do;
            cdo.f15813do = i;
            m1851do.m7566new(cdo);
            return m1851do;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        C3385nL m1851do2 = QK.m1851do(this);
        m1851do2.m7563do(1.0f);
        m1851do2.m7564for(j);
        Ctry.this.f15808do = m1851do2;
        cdo.f15813do = i;
        m1851do2.m7566new(cdo);
        return m1851do2;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, O4.f2541else, R.attr.actionBarStyle, 0);
        mo3368try(obtainStyledAttributes.getLayoutDimension(13, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f15806do;
        if (actionMenuPresenter != null) {
            Configuration configuration2 = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5454if.getResources().getConfiguration();
            int i = configuration2.screenWidthDp;
            int i2 = configuration2.screenHeightDp;
            actionMenuPresenter.f5617goto = (configuration2.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
            Ccase ccase = ((androidx.appcompat.view.menu.Cdo) actionMenuPresenter).f5451do;
            if (ccase != null) {
                ccase.mo3345throw(true);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f15812if = false;
        }
        if (!this.f15812if) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f15812if = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f15812if = false;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f15810do = false;
        }
        if (!this.f15810do) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f15810do = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f15810do = false;
        }
        return true;
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        if (i != getVisibility()) {
            C3385nL c3385nL = this.f15808do;
            if (c3385nL != null) {
                c3385nL.m7565if();
            }
            super.setVisibility(i);
        }
    }

    /* renamed from: try */
    public void mo3368try(int i) {
        this.f15811for = i;
        requestLayout();
    }

    public Ctry(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f15809do = new Cdo();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f15805do = context;
        } else {
            this.f15805do = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
