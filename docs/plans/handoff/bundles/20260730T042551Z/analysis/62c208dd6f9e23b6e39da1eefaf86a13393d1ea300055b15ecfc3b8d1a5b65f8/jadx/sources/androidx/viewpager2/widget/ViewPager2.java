package androidx.viewpager2.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.Creturn;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.Cfor;
import com.facebook.internal.Utility;
import defpackage.B;
import defpackage.C0100Ah;
import defpackage.C3149jL;
import defpackage.C3385nL;
import defpackage.C3850vF;
import defpackage.C3893w;
import defpackage.InterfaceC3143jF;
import defpackage.QK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: do, reason: not valid java name */
    public C0100Ah f8063do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f8064do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Parcelable f8065do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak f8066do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f8067do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f8068do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cthis f8069do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final androidx.viewpager2.widget.Cdo f8070do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public androidx.viewpager2.widget.Cfor f8071do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8072do;

    /* renamed from: for, reason: not valid java name */
    public int f8073for;

    /* renamed from: if, reason: not valid java name */
    public final Rect f8074if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public androidx.viewpager2.widget.Cdo f8075if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f8076if;

    /* renamed from: new, reason: not valid java name */
    public int f8077new;

    /* renamed from: try, reason: not valid java name */
    public final int f8078try;

    /* renamed from: androidx.viewpager2.widget.ViewPager2$break, reason: invalid class name */
    public class Cbreak extends RecyclerView {
        public Cbreak(Context context) {
            super(context, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public final CharSequence getAccessibilityClassName() {
            ViewPager2.this.f8068do.getClass();
            return "androidx.recyclerview.widget.RecyclerView";
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            ViewPager2 viewPager2 = ViewPager2.this;
            accessibilityEvent.setFromIndex(viewPager2.f8073for);
            accessibilityEvent.setToIndex(viewPager2.f8073for);
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.f8076if && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.f8076if && super.onTouchEvent(motionEvent);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$case, reason: invalid class name */
    public class Ccase extends LinearLayoutManager {
        public Ccase() {
            super(1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Cclass
        public final boolean A(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, int i, Bundle bundle) {
            ViewPager2.this.f8068do.getClass();
            return super.A(cimport, cstatic, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Cclass
        public final boolean F(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public final void V(RecyclerView.Cstatic cstatic, int[] iArr) {
            int height;
            int paddingBottom;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = viewPager2.f8078try;
            if (i == -1) {
                super.V(cstatic, iArr);
                return;
            }
            Cbreak cbreak = viewPager2.f8066do;
            if (((LinearLayoutManager) viewPager2.f8067do).f7248case == 1) {
                height = cbreak.getHeight() - cbreak.getPaddingTop();
                paddingBottom = cbreak.getPaddingBottom();
            } else {
                height = cbreak.getWidth() - cbreak.getPaddingLeft();
                paddingBottom = cbreak.getPaddingRight();
            }
            int i2 = (height - paddingBottom) * i;
            iArr[0] = i2;
            iArr[1] = i2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Cclass
        public final void n(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, C3893w c3893w) {
            super.n(cimport, cstatic, c3893w);
            ViewPager2.this.f8068do.getClass();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Cclass
        public final void p(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, View view, C3893w c3893w) {
            int i;
            int i2;
            ViewPager2 viewPager2 = ViewPager2.this;
            Ccase ccase = viewPager2.f8067do;
            if (((LinearLayoutManager) ccase).f7248case == 1) {
                ccase.getClass();
                i = RecyclerView.Cclass.m4380implements(view);
            } else {
                i = 0;
            }
            Ccase ccase2 = viewPager2.f8067do;
            if (((LinearLayoutManager) ccase2).f7248case == 1) {
                i2 = 0;
            } else {
                ccase2.getClass();
                i2 = RecyclerView.Cclass.m4380implements(view);
            }
            c3893w.m8497catch(C3893w.Ccase.m8509do(i, 1, i2, false, false, 1));
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$catch, reason: invalid class name */
    public static class Ccatch implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final RecyclerView f8084do;

        /* renamed from: for, reason: not valid java name */
        public final int f8085for;

        public Ccatch(int i, Cbreak cbreak) {
            this.f8085for = i;
            this.f8084do = cbreak;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RecyclerView.Cclass cclass;
            RecyclerView recyclerView = this.f8084do;
            if (recyclerView.f7298case || (cclass = recyclerView.f7312do) == null) {
                return;
            }
            cclass.S(recyclerView, this.f8085for);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$do, reason: invalid class name */
    public class Cdo extends Ctry {
        public Cdo() {
            super(0);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.Ctry, androidx.recyclerview.widget.RecyclerView.Celse
        /* renamed from: do */
        public final void mo4422do() {
            ViewPager2 viewPager2 = ViewPager2.this;
            viewPager2.f8072do = true;
            viewPager2.f8071do.f8104for = true;
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$else, reason: invalid class name */
    public static abstract class Celse {
        /* renamed from: do, reason: not valid java name */
        public void mo4709do(int i) {
        }

        /* renamed from: for, reason: not valid java name */
        public void mo4710for(int i) {
        }

        /* renamed from: if, reason: not valid java name */
        public void mo4711if(float f, int i, int i2) {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$for, reason: invalid class name */
    public class Cfor extends Celse {
        public Cfor() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.Celse
        /* renamed from: for */
        public final void mo4710for(int i) {
            ViewPager2 viewPager2 = ViewPager2.this;
            viewPager2.clearFocus();
            if (viewPager2.hasFocus()) {
                viewPager2.f8066do.requestFocus(2);
            }
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$goto, reason: invalid class name */
    public class Cgoto extends Cnew {

        /* renamed from: do, reason: not valid java name */
        public final Cdo f8088do = new Cdo();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cif f8089do = new Cif();

        /* renamed from: androidx.viewpager2.widget.ViewPager2$goto$do, reason: invalid class name */
        public class Cdo implements B {
            public Cdo() {
            }

            @Override // defpackage.B
            /* renamed from: case */
            public final boolean mo136case(View view) {
                Cgoto.this.m4714if(((ViewPager2) view).f8073for + 1);
                return true;
            }
        }

        /* renamed from: androidx.viewpager2.widget.ViewPager2$goto$if, reason: invalid class name */
        public class Cif implements B {
            public Cif() {
            }

            @Override // defpackage.B
            /* renamed from: case */
            public final boolean mo136case(View view) {
                Cgoto.this.m4714if(((ViewPager2) view).f8073for - 1);
                return true;
            }
        }

        public Cgoto() {
        }

        /* renamed from: do, reason: not valid java name */
        public final void m4712do(RecyclerView recyclerView) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            recyclerView.setImportantForAccessibility(2);
            new androidx.viewpager2.widget.Cnew(this);
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.getImportantForAccessibility() == 0) {
                viewPager2.setImportantForAccessibility(1);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m4713for() {
            int mo1023for;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = R.id.accessibilityActionPageLeft;
            QK.m1865throw(viewPager2, R.id.accessibilityActionPageLeft);
            QK.m1848catch(viewPager2, 0);
            QK.m1865throw(viewPager2, R.id.accessibilityActionPageRight);
            QK.m1848catch(viewPager2, 0);
            QK.m1865throw(viewPager2, R.id.accessibilityActionPageUp);
            QK.m1848catch(viewPager2, 0);
            QK.m1865throw(viewPager2, R.id.accessibilityActionPageDown);
            QK.m1848catch(viewPager2, 0);
            RecyclerView.Ctry ctry = ((RecyclerView) viewPager2.f8066do).f7323do;
            if (ctry == null || (mo1023for = ctry.mo1023for()) == 0 || !viewPager2.f8076if) {
                return;
            }
            Ccase ccase = viewPager2.f8067do;
            boolean z = ((LinearLayoutManager) ccase).f7248case == 1;
            Cif cif = this.f8089do;
            Cdo cdo = this.f8088do;
            if (z) {
                if (viewPager2.f8073for < mo1023for - 1) {
                    QK.m1867while(viewPager2, new C3893w.Cdo(R.id.accessibilityActionPageDown), null, cdo);
                }
                if (viewPager2.f8073for > 0) {
                    QK.m1867while(viewPager2, new C3893w.Cdo(R.id.accessibilityActionPageUp), null, cif);
                    return;
                }
                return;
            }
            boolean z2 = ccase.m4388continue() == 1;
            int i2 = z2 ? R.id.accessibilityActionPageLeft : R.id.accessibilityActionPageRight;
            if (z2) {
                i = R.id.accessibilityActionPageRight;
            }
            if (viewPager2.f8073for < mo1023for - 1) {
                QK.m1867while(viewPager2, new C3893w.Cdo(i2), null, cdo);
            }
            if (viewPager2.f8073for > 0) {
                QK.m1867while(viewPager2, new C3893w.Cdo(i), null, cif);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4714if(int i) {
            RecyclerView.Cclass cclass;
            Celse celse;
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.f8076if) {
                RecyclerView.Ctry ctry = ((RecyclerView) viewPager2.f8066do).f7323do;
                if (ctry == null) {
                    if (viewPager2.f8077new != -1) {
                        viewPager2.f8077new = Math.max(i, 0);
                        return;
                    }
                    return;
                }
                if (ctry.mo1023for() <= 0) {
                    return;
                }
                int min = Math.min(Math.max(i, 0), ctry.mo1023for() - 1);
                int i2 = viewPager2.f8073for;
                if (min == i2) {
                    if (viewPager2.f8071do.f8105if == 0) {
                        return;
                    }
                }
                if (min == i2) {
                    return;
                }
                double d = i2;
                viewPager2.f8073for = min;
                viewPager2.f8068do.m4713for();
                androidx.viewpager2.widget.Cfor cfor = viewPager2.f8071do;
                if (!(cfor.f8105if == 0)) {
                    cfor.m4717try();
                    Cfor.Cdo cdo = cfor.f8101do;
                    d = cdo.f8110do + cdo.f8109do;
                }
                androidx.viewpager2.widget.Cfor cfor2 = viewPager2.f8071do;
                cfor2.getClass();
                cfor2.f8096do = 2;
                cfor2.f8108new = false;
                boolean z = cfor2.f8107new != min;
                cfor2.f8107new = min;
                cfor2.m4715for(2);
                if (z && (celse = cfor2.f8099do) != null) {
                    celse.mo4710for(min);
                }
                double d2 = min;
                if (Math.abs(d2 - d) > 3.0d) {
                    viewPager2.f8066do.s(d2 > d ? min - 3 : min + 3);
                    Cbreak cbreak = viewPager2.f8066do;
                    cbreak.post(new Ccatch(min, cbreak));
                } else {
                    Cbreak cbreak2 = viewPager2.f8066do;
                    if (((RecyclerView) cbreak2).f7298case || (cclass = ((RecyclerView) cbreak2).f7312do) == null) {
                        return;
                    }
                    cclass.S(cbreak2, min);
                }
            }
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$if, reason: invalid class name */
    public class Cif extends Celse {
        public Cif() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.Celse
        /* renamed from: do */
        public final void mo4709do(int i) {
            if (i == 0) {
                ViewPager2.this.m4708if();
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.Celse
        /* renamed from: for */
        public final void mo4710for(int i) {
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.f8073for != i) {
                viewPager2.f8073for = i;
                viewPager2.f8068do.m4713for();
            }
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$new, reason: invalid class name */
    public abstract class Cnew {
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$this, reason: invalid class name */
    public class Cthis extends Creturn {
        public Cthis() {
        }

        @Override // androidx.recyclerview.widget.Creturn, androidx.recyclerview.widget.Cfinally
        /* renamed from: for */
        public final View mo4517for(RecyclerView.Cclass cclass) {
            if (((androidx.viewpager2.widget.Cfor) ViewPager2.this.f8063do.f123if).f8108new) {
                return null;
            }
            return super.mo4517for(cclass);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$try, reason: invalid class name */
    public static abstract class Ctry extends RecyclerView.Celse {
        public Ctry(int i) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Celse
        /* renamed from: do */
        public abstract void mo4422do();

        @Override // androidx.recyclerview.widget.RecyclerView.Celse
        /* renamed from: for */
        public final void mo4423for() {
            mo4422do();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Celse
        /* renamed from: if */
        public final void mo4424if() {
            mo4422do();
        }
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8064do = new Rect();
        this.f8074if = new Rect();
        this.f8070do = new androidx.viewpager2.widget.Cdo();
        this.f8072do = false;
        new Cdo();
        this.f8077new = -1;
        this.f8076if = true;
        this.f8078try = -1;
        m4707do(context, attributeSet);
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return this.f8066do.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return this.f8066do.canScrollVertically(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        RecyclerView.Ctry ctry;
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).f8080for;
            sparseArray.put(this.f8066do.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        if (this.f8077new == -1 || (ctry = ((RecyclerView) this.f8066do).f7323do) == 0) {
            return;
        }
        if (this.f8065do != null) {
            if (ctry instanceof InterfaceC3143jF) {
                ((InterfaceC3143jF) ctry).m7047if();
            }
            this.f8065do = null;
        }
        int max = Math.max(0, Math.min(this.f8077new, ctry.mo1023for() - 1));
        this.f8073for = max;
        this.f8077new = -1;
        this.f8066do.s(max);
        this.f8068do.m4713for();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4707do(Context context, AttributeSet attributeSet) {
        this.f8068do = new Cgoto();
        Cbreak cbreak = new Cbreak(context);
        this.f8066do = cbreak;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        cbreak.setId(View.generateViewId());
        this.f8066do.setDescendantFocusability(131072);
        Ccase ccase = new Ccase();
        this.f8067do = ccase;
        this.f8066do.u(ccase);
        Cbreak cbreak2 = this.f8066do;
        ((RecyclerView) cbreak2).f7303const = ViewConfiguration.get(cbreak2.getContext()).getScaledPagingTouchSlop();
        int[] iArr = C3850vF.f16053try;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        QK.m1857import(this, context, iArr, attributeSet, obtainStyledAttributes, 0);
        try {
            this.f8067do.v0(obtainStyledAttributes.getInt(0, 0));
            this.f8068do.m4713for();
            obtainStyledAttributes.recycle();
            this.f8066do.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            Cbreak cbreak3 = this.f8066do;
            C3149jL c3149jL = new C3149jL();
            if (((RecyclerView) cbreak3).f7355new == null) {
                ((RecyclerView) cbreak3).f7355new = new ArrayList();
            }
            ((RecyclerView) cbreak3).f7355new.add(c3149jL);
            androidx.viewpager2.widget.Cfor cfor = new androidx.viewpager2.widget.Cfor(this);
            this.f8071do = cfor;
            this.f8063do = new C0100Ah(this, cfor, (RecyclerView) this.f8066do);
            Cthis cthis = new Cthis();
            this.f8069do = cthis;
            cthis.m4516do(this.f8066do);
            this.f8066do.m4341break(this.f8071do);
            androidx.viewpager2.widget.Cdo cdo = new androidx.viewpager2.widget.Cdo();
            this.f8075if = cdo;
            this.f8071do.f8099do = cdo;
            Cif cif = new Cif();
            Cfor cfor2 = new Cfor();
            this.f8075if.f8095do.add(cif);
            this.f8075if.f8095do.add(cfor2);
            this.f8068do.m4712do(this.f8066do);
            this.f8075if.f8095do.add(this.f8070do);
            this.f8075if.f8095do.add(new androidx.viewpager2.widget.Cif(this.f8067do));
            Cbreak cbreak4 = this.f8066do;
            attachViewToParent(cbreak4, 0, cbreak4.getLayoutParams());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        this.f8068do.getClass();
        this.f8068do.getClass();
        return "androidx.viewpager.widget.ViewPager";
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4708if() {
        Cthis cthis = this.f8069do;
        if (cthis == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View mo4517for = cthis.mo4517for(this.f8067do);
        if (mo4517for == null) {
            return;
        }
        this.f8067do.getClass();
        int m4380implements = RecyclerView.Cclass.m4380implements(mo4517for);
        if (m4380implements != this.f8073for && this.f8071do.f8105if == 0) {
            this.f8075if.mo4710for(m4380implements);
        }
        this.f8072do = false;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        int i2;
        int mo1023for;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        ViewPager2 viewPager2 = ViewPager2.this;
        RecyclerView.Ctry ctry = ((RecyclerView) viewPager2.f8066do).f7323do;
        if (ctry != null) {
            if (((LinearLayoutManager) viewPager2.f8067do).f7248case == 1) {
                i = ctry.mo1023for();
                i2 = 1;
            } else {
                i2 = ctry.mo1023for();
                i = 1;
            }
        } else {
            i = 0;
            i2 = 0;
        }
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3893w.Ctry.m8536do(i, i2, 0).f16179do);
        RecyclerView.Ctry ctry2 = ((RecyclerView) viewPager2.f8066do).f7323do;
        if (ctry2 == null || (mo1023for = ctry2.mo1023for()) == 0 || !viewPager2.f8076if) {
            return;
        }
        if (viewPager2.f8073for > 0) {
            accessibilityNodeInfo.addAction(Utility.DEFAULT_STREAM_BUFFER_SIZE);
        }
        if (viewPager2.f8073for < mo1023for - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        accessibilityNodeInfo.setScrollable(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f8066do.getMeasuredWidth();
        int measuredHeight = this.f8066do.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.f8064do;
        rect.left = paddingLeft;
        rect.right = (i3 - i) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i4 - i2) - getPaddingBottom();
        Rect rect2 = this.f8074if;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        this.f8066do.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (this.f8072do) {
            m4708if();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        measureChild(this.f8066do, i, i2);
        int measuredWidth = this.f8066do.getMeasuredWidth();
        int measuredHeight = this.f8066do.getMeasuredHeight();
        int measuredState = this.f8066do.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, measuredState), View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f8077new = savedState.f8081new;
        this.f8065do = savedState.f8079do;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f8080for = this.f8066do.getId();
        int i = this.f8077new;
        if (i == -1) {
            i = this.f8073for;
        }
        savedState.f8081new = i;
        Parcelable parcelable = this.f8065do;
        if (parcelable != null) {
            savedState.f8079do = parcelable;
        } else {
            Object obj = ((RecyclerView) this.f8066do).f7323do;
            if (obj instanceof InterfaceC3143jF) {
                savedState.f8079do = ((InterfaceC3143jF) obj).m7046do();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException("ViewPager2 does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        this.f8068do.getClass();
        if (!(i == 8192 || i == 4096)) {
            return super.performAccessibilityAction(i, bundle);
        }
        Cgoto cgoto = this.f8068do;
        cgoto.getClass();
        if (!(i == 8192 || i == 4096)) {
            throw new IllegalStateException();
        }
        ViewPager2 viewPager2 = ViewPager2.this;
        cgoto.m4714if(i == 8192 ? viewPager2.f8073for - 1 : viewPager2.f8073for + 1);
        return true;
    }

    @Override // android.view.View
    public final void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.f8068do.m4713for();
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public Parcelable f8079do;

        /* renamed from: for, reason: not valid java name */
        public int f8080for;

        /* renamed from: new, reason: not valid java name */
        public int f8081new;

        @SuppressLint({"ClassVerificationFailure"})
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f8080for = parcel.readInt();
            this.f8081new = parcel.readInt();
            this.f8079do = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f8080for);
            parcel.writeInt(this.f8081new);
            parcel.writeParcelable(this.f8079do, i);
        }

        /* renamed from: androidx.viewpager2.widget.ViewPager2$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, null) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                if (Build.VERSION.SDK_INT >= 24) {
                    return new SavedState(parcel, classLoader);
                }
                return new SavedState(parcel);
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f8080for = parcel.readInt();
            this.f8081new = parcel.readInt();
            this.f8079do = parcel.readParcelable(null);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8064do = new Rect();
        this.f8074if = new Rect();
        this.f8070do = new androidx.viewpager2.widget.Cdo();
        this.f8072do = false;
        new Cdo();
        this.f8077new = -1;
        this.f8076if = true;
        this.f8078try = -1;
        m4707do(context, attributeSet);
    }
}
