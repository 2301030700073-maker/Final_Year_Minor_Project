package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.customview.view.AbsSavedState;
import com.facebook.internal.Utility;
import defpackage.AbstractC3536pw;
import defpackage.C0398Nu;
import defpackage.C2923iL;
import defpackage.C3385nL;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.QK;
import defpackage.V1;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ViewPager extends ViewGroup {

    /* renamed from: break, reason: not valid java name */
    public int f8001break;

    /* renamed from: case, reason: not valid java name */
    public float f8002case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f8003case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f8004case;

    /* renamed from: catch, reason: not valid java name */
    public int f8005catch;

    /* renamed from: class, reason: not valid java name */
    public int f8006class;

    /* renamed from: const, reason: not valid java name */
    public int f8007const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f8008do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f8009do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f8010do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Parcelable f8011do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VelocityTracker f8012do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EdgeEffect f8013do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Scroller f8014do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f8015do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f8016do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cthis f8017do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f8018do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ClassLoader f8019do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Ctry> f8020do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC3536pw f8021do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8022do;

    /* renamed from: else, reason: not valid java name */
    public int f8023else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f8024else;

    /* renamed from: final, reason: not valid java name */
    public int f8025final;

    /* renamed from: for, reason: not valid java name */
    public float f8026for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f8027for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ArrayList f8028for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f8029for;

    /* renamed from: goto, reason: not valid java name */
    public int f8030goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public boolean f8031goto;

    /* renamed from: if, reason: not valid java name */
    public float f8032if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public EdgeEffect f8033if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Cgoto f8034if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ArrayList f8035if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f8036if;

    /* renamed from: new, reason: not valid java name */
    public float f8037new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f8038new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f8039new;

    /* renamed from: super, reason: not valid java name */
    public int f8040super;

    /* renamed from: this, reason: not valid java name */
    public int f8041this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public boolean f8042this;

    /* renamed from: throw, reason: not valid java name */
    public int f8043throw;

    /* renamed from: try, reason: not valid java name */
    public float f8044try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f8045try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f8046try;

    /* renamed from: while, reason: not valid java name */
    public int f8047while;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f8000do = {R.attr.layout_gravity};

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7998do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f7999do = new Cif();

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final ClassLoader f8052do;

        /* renamed from: for, reason: not valid java name */
        public int f8053for;

        /* renamed from: if, reason: not valid java name */
        public Parcelable f8054if;

        /* renamed from: androidx.viewpager.widget.ViewPager$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" position=");
            return V1.m2506this(sb, this.f8053for, "}");
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(super.f6568do, i);
            parcel.writeInt(this.f8053for);
            parcel.writeParcelable(this.f8054if, i);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f8053for = parcel.readInt();
            this.f8054if = parcel.readParcelable(classLoader);
            this.f8052do = classLoader;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$break, reason: invalid class name */
    public static class Cbreak implements Cgoto {
        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: do */
        public final void mo4671do(float f, int i, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: for */
        public final void mo4672for(int i) {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$case, reason: invalid class name */
    public class Ccase extends Cimplements {
        public Ccase() {
        }

        @Override // defpackage.Cimplements
        /* renamed from: else */
        public final boolean mo3759else(View view, int i, Bundle bundle) {
            if (super.mo3759else(view, i, bundle)) {
                return true;
            }
            ViewPager viewPager = ViewPager.this;
            if (i == 4096) {
                if (!viewPager.canScrollHorizontally(1)) {
                    return false;
                }
                viewPager.m4693package(viewPager.f8038new + 1);
                return true;
            }
            if (i != 8192 || !viewPager.canScrollHorizontally(-1)) {
                return false;
            }
            viewPager.m4693package(viewPager.f8038new - 1);
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
        
            if (r0.mo171try() > 1) goto L8;
         */
        @Override // defpackage.Cimplements
        /* renamed from: for */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo2847for(android.view.View r3, android.view.accessibility.AccessibilityEvent r4) {
            /*
                r2 = this;
                super.mo2847for(r3, r4)
                java.lang.Class<androidx.viewpager.widget.ViewPager> r3 = androidx.viewpager.widget.ViewPager.class
                java.lang.String r3 = r3.getName()
                r4.setClassName(r3)
                androidx.viewpager.widget.ViewPager r3 = androidx.viewpager.widget.ViewPager.this
                pw r0 = r3.f8021do
                if (r0 == 0) goto L1a
                int r0 = r0.mo171try()
                r1 = 1
                if (r0 <= r1) goto L1a
                goto L1b
            L1a:
                r1 = 0
            L1b:
                r4.setScrollable(r1)
                int r0 = r4.getEventType()
                r1 = 4096(0x1000, float:5.74E-42)
                if (r0 != r1) goto L3b
                pw r0 = r3.f8021do
                if (r0 == 0) goto L3b
                int r0 = r0.mo171try()
                r4.setItemCount(r0)
                int r0 = r3.f8038new
                r4.setFromIndex(r0)
                int r3 = r3.f8038new
                r4.setToIndex(r3)
            L3b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.Ccase.mo2847for(android.view.View, android.view.accessibility.AccessibilityEvent):void");
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
            c3893w.m8495break(ViewPager.class.getName());
            ViewPager viewPager = ViewPager.this;
            AbstractC3536pw abstractC3536pw = viewPager.f8021do;
            c3893w.m8502final(abstractC3536pw != null && abstractC3536pw.mo171try() > 1);
            if (viewPager.canScrollHorizontally(1)) {
                c3893w.m8500do(4096);
            }
            if (viewPager.canScrollHorizontally(-1)) {
                c3893w.m8500do(Utility.DEFAULT_STREAM_BUFFER_SIZE);
            }
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$do, reason: invalid class name */
    public static class Cdo implements Comparator<Ctry> {
        @Override // java.util.Comparator
        public final int compare(Ctry ctry, Ctry ctry2) {
            return ctry.f8059do - ctry2.f8059do;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$else, reason: invalid class name */
    public interface Celse {
        /* renamed from: if */
        void mo4673if(ViewPager viewPager, AbstractC3536pw abstractC3536pw, AbstractC3536pw abstractC3536pw2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$for, reason: invalid class name */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewPager viewPager = ViewPager.this;
            viewPager.m4698strictfp(0);
            viewPager.m4697static();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$goto, reason: invalid class name */
    public interface Cgoto {
        /* renamed from: do */
        void mo4671do(float f, int i, int i2);

        /* renamed from: for */
        void mo4672for(int i);

        /* renamed from: new */
        void mo1557new(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$if, reason: invalid class name */
    public static class Cif implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$new, reason: invalid class name */
    public @interface Cnew {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$this, reason: invalid class name */
    public class Cthis extends DataSetObserver {
        public Cthis() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ViewPager.this.m4677case();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ViewPager.this.m4677case();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public float f8058do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f8059do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f8060do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f8061do;

        /* renamed from: if, reason: not valid java name */
        public float f8062if;
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8020do = new ArrayList<>();
        this.f8018do = new Ctry();
        this.f8010do = new Rect();
        this.f8045try = -1;
        this.f8011do = null;
        this.f8019do = null;
        this.f8008do = -3.4028235E38f;
        this.f8032if = Float.MAX_VALUE;
        this.f8023else = 1;
        this.f8005catch = -1;
        this.f8031goto = true;
        this.f8015do = new Cfor();
        this.f8047while = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.f8014do = new Scroller(context2, f7999do);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f = context2.getResources().getDisplayMetrics().density;
        this.f8001break = viewConfiguration.getScaledPagingTouchSlop();
        this.f8006class = (int) (400.0f * f);
        this.f8007const = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f8013do = new EdgeEffect(context2);
        this.f8033if = new EdgeEffect(context2);
        this.f8025final = (int) (25.0f * f);
        this.f8040super = (int) (2.0f * f);
        this.f8030goto = (int) (f * 16.0f);
        QK.m1858native(this, new Ccase());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        QK.Cnew.m1935return(this, new C2923iL(this));
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m4674new(int i, int i2, int i3, View view, boolean z) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m4674new(i, i5 - childAt.getLeft(), i4 - childAt.getTop(), childAt, true)) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m4675abstract(int i, int i2, boolean z, boolean z2) {
        AbstractC3536pw abstractC3536pw = this.f8021do;
        if (abstractC3536pw == null || abstractC3536pw.mo171try() <= 0) {
            m4705volatile(false);
            return;
        }
        ArrayList<Ctry> arrayList = this.f8020do;
        if (!z2 && this.f8038new == i && arrayList.size() != 0) {
            m4705volatile(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.f8021do.mo171try()) {
            i = this.f8021do.mo171try() - 1;
        }
        int i3 = this.f8023else;
        int i4 = this.f8038new;
        if (i > i4 + i3 || i < i4 - i3) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                arrayList.get(i5).f8061do = true;
            }
        }
        boolean z3 = this.f8038new != i;
        if (!this.f8031goto) {
            m4700switch(i);
            m4685extends(i, i2, z, z3);
        } else {
            this.f8038new = i;
            if (z3) {
                m4689goto(i);
            }
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        Ctry m4686final;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m4686final = m4686final(childAt)) != null && m4686final.f8059do == this.f8038new) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList<View> arrayList) {
        Ctry m4686final;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m4686final = m4686final(childAt)) != null && m4686final.f8059do == this.f8038new) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        boolean z = layoutParams2.f8050do | (view.getClass().getAnnotation(Cnew.class) != null);
        layoutParams2.f8050do = z;
        if (!this.f8036if) {
            super.addView(view, i, layoutParams);
        } else {
            if (z) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams2.f8051if = true;
            addViewInLayout(view, i, layoutParams);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final void m4676break(float f) {
        if (!this.f8024else) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.f8021do == null) {
            return;
        }
        this.f8026for += f;
        float scrollX = getScrollX() - f;
        float m4680const = m4680const();
        float f2 = this.f8008do * m4680const;
        float f3 = this.f8032if * m4680const;
        ArrayList<Ctry> arrayList = this.f8020do;
        Ctry ctry = arrayList.get(0);
        Ctry ctry2 = arrayList.get(arrayList.size() - 1);
        if (ctry.f8059do != 0) {
            f2 = ctry.f8062if * m4680const;
        }
        if (ctry2.f8059do != this.f8021do.mo171try() - 1) {
            f3 = ctry2.f8062if * m4680const;
        }
        if (scrollX < f2) {
            scrollX = f2;
        } else if (scrollX > f3) {
            scrollX = f3;
        }
        int i = (int) scrollX;
        this.f8026for = (scrollX - i) + this.f8026for;
        scrollTo(i, getScrollY());
        m4695public(i);
        MotionEvent obtain = MotionEvent.obtain(this.f8009do, SystemClock.uptimeMillis(), 2, this.f8026for, 0.0f, 0);
        this.f8012do.addMovement(obtain);
        obtain.recycle();
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        if (this.f8021do == null) {
            return false;
        }
        int m4680const = m4680const();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) m4680const) * this.f8008do)) : i > 0 && scrollX < ((int) (((float) m4680const) * this.f8032if));
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4677case() {
        int mo171try = this.f8021do.mo171try();
        this.f8027for = mo171try;
        ArrayList<Ctry> arrayList = this.f8020do;
        boolean z = arrayList.size() < (this.f8023else * 2) + 1 && arrayList.size() < mo171try;
        int i = this.f8038new;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < arrayList.size()) {
            Ctry ctry = arrayList.get(i2);
            int mo167case = this.f8021do.mo167case(ctry.f8060do);
            if (mo167case != -1) {
                if (mo167case == -2) {
                    arrayList.remove(i2);
                    i2--;
                    if (!z2) {
                        this.f8021do.mo880public(this);
                        z2 = true;
                    }
                    this.f8021do.mo169if(this, ctry.f8059do, ctry.f8060do);
                    int i3 = this.f8038new;
                    if (i3 == ctry.f8059do) {
                        i = Math.max(0, Math.min(i3, (-1) + mo171try));
                    }
                } else {
                    int i4 = ctry.f8059do;
                    if (i4 != mo167case) {
                        if (i4 == this.f8038new) {
                            i = mo167case;
                        }
                        ctry.f8059do = mo167case;
                    }
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.f8021do.mo879new(this);
        }
        Collections.sort(arrayList, f7998do);
        if (z) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i5).getLayoutParams();
                if (!layoutParams.f8050do) {
                    layoutParams.f8048do = 0.0f;
                }
            }
            m4675abstract(i, 0, false, true);
            requestLayout();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public AbstractC3536pw mo4678catch() {
        return this.f8021do;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    /* renamed from: class, reason: not valid java name */
    public final Rect m4679class(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.f8022do = true;
        if (this.f8014do.isFinished() || !this.f8014do.computeScrollOffset()) {
            m4704try(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f8014do.getCurrX();
        int currY = this.f8014do.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m4695public(currX)) {
                this.f8014do.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        postInvalidateOnAnimation();
    }

    /* renamed from: const, reason: not valid java name */
    public final int m4680const() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    @Deprecated
    /* renamed from: continue, reason: not valid java name */
    public void mo4681continue(C0398Nu c0398Nu) {
        this.f8016do = c0398Nu;
    }

    /* renamed from: default, reason: not valid java name */
    public final boolean m4682default() {
        this.f8005catch = -1;
        this.f8046try = false;
        this.f8004case = false;
        VelocityTracker velocityTracker = this.f8012do;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f8012do = null;
        }
        this.f8013do.onRelease();
        this.f8033if.onRelease();
        return this.f8013do.isFinished() || this.f8033if.isFinished();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0063 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = super.dispatchKeyEvent(r6)
            r1 = 1
            if (r0 != 0) goto L64
            int r0 = r6.getAction()
            r2 = 0
            if (r0 != 0) goto L5f
            int r0 = r6.getKeyCode()
            r3 = 21
            r4 = 2
            if (r0 == r3) goto L48
            r3 = 22
            if (r0 == r3) goto L36
            r3 = 61
            if (r0 == r3) goto L20
            goto L5f
        L20:
            boolean r0 = r6.hasNoModifiers()
            if (r0 == 0) goto L2b
            boolean r6 = r5.m4688for(r4)
            goto L60
        L2b:
            boolean r6 = r6.hasModifiers(r1)
            if (r6 == 0) goto L5f
            boolean r6 = r5.m4688for(r1)
            goto L60
        L36:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L41
            boolean r6 = r5.m4692native()
            goto L60
        L41:
            r6 = 66
            boolean r6 = r5.m4688for(r6)
            goto L60
        L48:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L58
            int r6 = r5.f8038new
            if (r6 <= 0) goto L5f
            int r6 = r6 - r1
            r5.m4694private(r6, r1)
            r6 = 1
            goto L60
        L58:
            r6 = 17
            boolean r6 = r5.m4688for(r6)
            goto L60
        L5f:
            r6 = 0
        L60:
            if (r6 == 0) goto L63
            goto L64
        L63:
            r1 = 0
        L64:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        Ctry m4686final;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m4686final = m4686final(childAt)) != null && m4686final.f8059do == this.f8038new && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    public final Ctry m4683do(int i, int i2) {
        Ctry ctry = new Ctry();
        ctry.f8059do = i;
        ctry.f8060do = this.f8021do.mo166break(this, i);
        ctry.f8058do = this.f8021do.mo6370goto(i);
        ArrayList<Ctry> arrayList = this.f8020do;
        if (i2 < 0 || i2 >= arrayList.size()) {
            arrayList.add(ctry);
        } else {
            arrayList.add(i2, ctry);
        }
        return ctry;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        AbstractC3536pw abstractC3536pw;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (abstractC3536pw = this.f8021do) != null && abstractC3536pw.mo171try() > 1)) {
            if (!this.f8013do.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.f8008do * width);
                this.f8013do.setSize(height, width);
                z = false | this.f8013do.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.f8033if.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f8032if + 1.0f)) * width2);
                this.f8033if.setSize(height2, width2);
                z |= this.f8033if.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f8013do.finish();
            this.f8033if.finish();
        }
        if (z) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
    }

    /* renamed from: else, reason: not valid java name */
    public final int m4684else(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f8025final || Math.abs(i2) <= this.f8006class) {
            i += (int) (f + (i >= this.f8038new ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        ArrayList<Ctry> arrayList = this.f8020do;
        if (arrayList.size() > 0) {
            return Math.max(arrayList.get(0).f8059do, Math.min(i, arrayList.get(arrayList.size() - 1).f8059do));
        }
        return i;
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m4685extends(int i, int i2, boolean z, boolean z2) {
        int scrollX;
        Ctry m4702throw = m4702throw(i);
        int max = m4702throw != null ? (int) (Math.max(this.f8008do, Math.min(m4702throw.f8062if, this.f8032if)) * m4680const()) : 0;
        if (!z) {
            if (z2) {
                m4689goto(i);
            }
            m4704try(false);
            scrollTo(max, 0);
            m4695public(max);
            return;
        }
        if (getChildCount() == 0) {
            m4705volatile(false);
        } else {
            Scroller scroller = this.f8014do;
            if ((scroller == null || scroller.isFinished()) ? false : true) {
                scrollX = this.f8022do ? this.f8014do.getCurrX() : this.f8014do.getStartX();
                this.f8014do.abortAnimation();
                m4705volatile(false);
            } else {
                scrollX = getScrollX();
            }
            int i3 = scrollX;
            int scrollY = getScrollY();
            int i4 = max - i3;
            int i5 = 0 - scrollY;
            if (i4 == 0 && i5 == 0) {
                m4704try(false);
                m4697static();
                m4698strictfp(0);
            } else {
                m4705volatile(true);
                m4698strictfp(2);
                int m4680const = m4680const();
                int i6 = m4680const / 2;
                float f = m4680const;
                float f2 = i6;
                float sin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i4) * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
                int abs = Math.abs(i2);
                int min = Math.min(abs > 0 ? Math.round(Math.abs(sin / abs) * 1000.0f) * 4 : (int) (((Math.abs(i4) / ((this.f8021do.mo6370goto(this.f8038new) * f) + 0)) + 1.0f) * 100.0f), 600);
                this.f8022do = false;
                this.f8014do.startScroll(i3, scrollY, i4, i5, min);
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                postInvalidateOnAnimation();
            }
        }
        if (z2) {
            m4689goto(i);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final Ctry m4686final(View view) {
        int i = 0;
        while (true) {
            ArrayList<Ctry> arrayList = this.f8020do;
            if (i >= arrayList.size()) {
                return null;
            }
            Ctry ctry = arrayList.get(i);
            if (this.f8021do.mo877catch(view, ctry.f8060do)) {
                return ctry;
            }
            i++;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public void mo4687finally(AbstractC3536pw abstractC3536pw) {
        ArrayList<Ctry> arrayList;
        AbstractC3536pw abstractC3536pw2 = this.f8021do;
        if (abstractC3536pw2 != null) {
            synchronized (abstractC3536pw2) {
                abstractC3536pw2.f15014do = null;
            }
            this.f8021do.mo880public(this);
            int i = 0;
            while (true) {
                arrayList = this.f8020do;
                if (i >= arrayList.size()) {
                    break;
                }
                Ctry ctry = arrayList.get(i);
                this.f8021do.mo169if(this, ctry.f8059do, ctry.f8060do);
                i++;
            }
            this.f8021do.mo879new(this);
            arrayList.clear();
            int i2 = 0;
            while (i2 < getChildCount()) {
                if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f8050do) {
                    removeViewAt(i2);
                    i2--;
                }
                i2++;
            }
            this.f8038new = 0;
            scrollTo(0, 0);
        }
        AbstractC3536pw abstractC3536pw3 = this.f8021do;
        this.f8021do = abstractC3536pw;
        this.f8027for = 0;
        if (abstractC3536pw != null) {
            if (this.f8017do == null) {
                this.f8017do = new Cthis();
            }
            this.f8021do.m7829import(this.f8017do);
            this.f8039new = false;
            boolean z = this.f8031goto;
            this.f8031goto = true;
            this.f8027for = this.f8021do.mo171try();
            if (this.f8045try >= 0) {
                this.f8021do.mo878final(this.f8011do, this.f8019do);
                m4675abstract(this.f8045try, 0, false, true);
                this.f8045try = -1;
                this.f8011do = null;
                this.f8019do = null;
            } else if (z) {
                requestLayout();
            } else {
                m4697static();
            }
        }
        ArrayList arrayList2 = this.f8028for;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        int size = this.f8028for.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((Celse) this.f8028for.get(i3)).mo4673if(this, abstractC3536pw3, abstractC3536pw);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0092  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4688for(int r8) {
        /*
            r7 = this;
            android.view.View r0 = r7.findFocus()
            r1 = 1
            r2 = 0
            if (r0 != r7) goto L9
            goto L2f
        L9:
            if (r0 == 0) goto L30
            android.view.ViewParent r3 = r0.getParent()
        Lf:
            boolean r4 = r3 instanceof android.view.ViewGroup
            if (r4 == 0) goto L1c
            if (r3 != r7) goto L17
            r3 = 1
            goto L1d
        L17:
            android.view.ViewParent r3 = r3.getParent()
            goto Lf
        L1c:
            r3 = 0
        L1d:
            if (r3 != 0) goto L30
            android.view.ViewParent r0 = r0.getParent()
        L23:
            boolean r3 = r0 instanceof android.view.ViewGroup
            if (r3 == 0) goto L2f
            r0.getClass()
            android.view.ViewParent r0 = r0.getParent()
            goto L23
        L2f:
            r0 = 0
        L30:
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            android.view.View r3 = r3.findNextFocus(r7, r0, r8)
            r4 = 66
            r5 = 17
            if (r3 == 0) goto L7f
            if (r3 == r0) goto L7f
            android.graphics.Rect r6 = r7.f8010do
            if (r8 != r5) goto L63
            android.graphics.Rect r4 = r7.m4679class(r6, r3)
            int r4 = r4.left
            android.graphics.Rect r5 = r7.m4679class(r6, r0)
            int r5 = r5.left
            if (r0 == 0) goto L5d
            if (r4 < r5) goto L5d
            int r0 = r7.f8038new
            if (r0 <= 0) goto L97
            int r0 = r0 - r1
            r7.m4694private(r0, r1)
            goto L98
        L5d:
            boolean r0 = r3.requestFocus()
        L61:
            r2 = r0
            goto L99
        L63:
            if (r8 != r4) goto L99
            android.graphics.Rect r1 = r7.m4679class(r6, r3)
            int r1 = r1.left
            android.graphics.Rect r2 = r7.m4679class(r6, r0)
            int r2 = r2.left
            if (r0 == 0) goto L7a
            if (r1 > r2) goto L7a
            boolean r0 = r7.m4692native()
            goto L61
        L7a:
            boolean r0 = r3.requestFocus()
            goto L61
        L7f:
            if (r8 == r5) goto L8e
            if (r8 != r1) goto L84
            goto L8e
        L84:
            if (r8 == r4) goto L89
            r0 = 2
            if (r8 != r0) goto L99
        L89:
            boolean r2 = r7.m4692native()
            goto L99
        L8e:
            int r0 = r7.f8038new
            if (r0 <= 0) goto L97
            int r0 = r0 - r1
            r7.m4694private(r0, r1)
            goto L98
        L97:
            r1 = 0
        L98:
            r2 = r1
        L99:
            if (r2 == 0) goto La2
            int r8 = android.view.SoundEffectConstants.getContantForFocusDirection(r8)
            r7.playSoundEffect(r8)
        La2:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m4688for(int):boolean");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        throw null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4689goto(int i) {
        Cgoto cgoto = this.f8016do;
        if (cgoto != null) {
            cgoto.mo1557new(i);
        }
        ArrayList arrayList = this.f8035if;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Cgoto cgoto2 = (Cgoto) this.f8035if.get(i2);
                if (cgoto2 != null) {
                    cgoto2.mo1557new(i);
                }
            }
        }
        Cgoto cgoto3 = this.f8034if;
        if (cgoto3 != null) {
            cgoto3.mo1557new(i);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void mo4690if(Cgoto cgoto) {
        if (this.f8035if == null) {
            this.f8035if = new ArrayList();
        }
        this.f8035if.add(cgoto);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m4691import(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f8005catch) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f8026for = motionEvent.getX(i);
            this.f8005catch = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f8012do;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final boolean m4692native() {
        AbstractC3536pw abstractC3536pw = this.f8021do;
        if (abstractC3536pw == null || this.f8038new >= abstractC3536pw.mo171try() - 1) {
            return false;
        }
        m4694private(this.f8038new + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f8031goto = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f8015do);
        Scroller scroller = this.f8014do;
        if (scroller != null && !scroller.isFinished()) {
            this.f8014do.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m4682default();
            return false;
        }
        if (action != 0) {
            if (this.f8046try) {
                return true;
            }
            if (this.f8004case) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f8044try = x;
            this.f8026for = x;
            float y = motionEvent.getY();
            this.f8002case = y;
            this.f8037new = y;
            this.f8005catch = motionEvent.getPointerId(0);
            this.f8004case = false;
            this.f8022do = true;
            this.f8014do.computeScrollOffset();
            if (this.f8047while != 2 || Math.abs(this.f8014do.getFinalX() - this.f8014do.getCurrX()) <= this.f8040super) {
                m4704try(false);
                this.f8046try = false;
            } else {
                this.f8014do.abortAnimation();
                this.f8039new = false;
                m4697static();
                this.f8046try = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                m4698strictfp(1);
            }
        } else if (action == 2) {
            int i = this.f8005catch;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f8026for;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f8002case);
                if (f != 0.0f) {
                    float f2 = this.f8026for;
                    if (!((f2 < ((float) this.f8041this) && f > 0.0f) || (f2 > ((float) (getWidth() - this.f8041this)) && f < 0.0f)) && m4674new((int) f, (int) x2, (int) y2, this, false)) {
                        this.f8026for = x2;
                        this.f8037new = y2;
                        this.f8004case = true;
                        return false;
                    }
                }
                float f3 = this.f8001break;
                if (abs > f3 && abs * 0.5f > abs2) {
                    this.f8046try = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    m4698strictfp(1);
                    float f4 = this.f8044try;
                    float f5 = this.f8001break;
                    this.f8026for = f > 0.0f ? f4 + f5 : f4 - f5;
                    this.f8037new = y2;
                    m4705volatile(true);
                } else if (abs2 > f3) {
                    this.f8004case = true;
                }
                if (this.f8046try && m4696return(x2)) {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            m4691import(motionEvent);
        }
        if (this.f8012do == null) {
            this.f8012do = VelocityTracker.obtain();
        }
        this.f8012do.addMovement(motionEvent);
        return this.f8046try;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0089  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        Ctry m4686final;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = childCount;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (m4686final = m4686final(childAt)) != null && m4686final.f8059do == this.f8038new && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        AbstractC3536pw abstractC3536pw = this.f8021do;
        ClassLoader classLoader = savedState.f8052do;
        if (abstractC3536pw != null) {
            abstractC3536pw.mo878final(savedState.f8054if, classLoader);
            m4675abstract(savedState.f8053for, 0, false, true);
        } else {
            this.f8045try = savedState.f8053for;
            this.f8011do = savedState.f8054if;
            this.f8019do = classLoader;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f8053for = this.f8038new;
        AbstractC3536pw abstractC3536pw = this.f8021do;
        if (abstractC3536pw != null) {
            savedState.f8054if = abstractC3536pw.mo881super();
        }
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            if (i3 > 0 && !this.f8020do.isEmpty()) {
                if (!this.f8014do.isFinished()) {
                    this.f8014do.setFinalX(m4680const() * this.f8038new);
                    return;
                } else {
                    scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + 0)) * (((i - getPaddingLeft()) - getPaddingRight()) + 0)), getScrollY());
                    return;
                }
            }
            Ctry m4702throw = m4702throw(this.f8038new);
            int min = (int) ((m4702throw != null ? Math.min(m4702throw.f8062if, this.f8032if) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                m4704try(false);
                scrollTo(min, getScrollY());
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC3536pw abstractC3536pw;
        if (this.f8024else) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (abstractC3536pw = this.f8021do) == null || abstractC3536pw.mo171try() == 0) {
            return false;
        }
        if (this.f8012do == null) {
            this.f8012do = VelocityTracker.obtain();
        }
        this.f8012do.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f8014do.abortAnimation();
            this.f8039new = false;
            m4697static();
            float x = motionEvent.getX();
            this.f8044try = x;
            this.f8026for = x;
            float y = motionEvent.getY();
            this.f8002case = y;
            this.f8037new = y;
            this.f8005catch = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f8046try) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f8005catch);
                    if (findPointerIndex == -1) {
                        z = m4682default();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.f8026for);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.f8037new);
                        if (abs > this.f8001break && abs > abs2) {
                            this.f8046try = true;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                            float f = this.f8044try;
                            this.f8026for = x2 - f > 0.0f ? f + this.f8001break : f - this.f8001break;
                            this.f8037new = y2;
                            m4698strictfp(1);
                            m4705volatile(true);
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f8046try) {
                    z = false | m4696return(motionEvent.getX(motionEvent.findPointerIndex(this.f8005catch)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f8026for = motionEvent.getX(actionIndex);
                    this.f8005catch = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m4691import(motionEvent);
                    this.f8026for = motionEvent.getX(motionEvent.findPointerIndex(this.f8005catch));
                }
            } else if (this.f8046try) {
                m4685extends(this.f8038new, 0, true, false);
                z = m4682default();
            }
        } else if (this.f8046try) {
            VelocityTracker velocityTracker = this.f8012do;
            velocityTracker.computeCurrentVelocity(1000, this.f8007const);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f8005catch);
            this.f8039new = true;
            int m4680const = m4680const();
            int scrollX = getScrollX();
            Ctry m4699super = m4699super();
            float f2 = m4680const;
            m4675abstract(m4684else(m4699super.f8059do, ((scrollX / f2) - m4699super.f8062if) / (m4699super.f8058do + (0 / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.f8005catch)) - this.f8044try)), xVelocity, true, true);
            z = m4682default();
        }
        if (z) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }
        return true;
    }

    /* renamed from: package, reason: not valid java name */
    public final void m4693package(int i) {
        this.f8039new = false;
        m4675abstract(i, 0, !this.f8031goto, false);
    }

    /* renamed from: private, reason: not valid java name */
    public final void m4694private(int i, boolean z) {
        this.f8039new = false;
        m4675abstract(i, 0, z, false);
    }

    /* renamed from: public, reason: not valid java name */
    public final boolean m4695public(int i) {
        if (this.f8020do.size() == 0) {
            if (this.f8031goto) {
                return false;
            }
            this.f8042this = false;
            m4706while(0.0f, 0, 0);
            if (this.f8042this) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        Ctry m4699super = m4699super();
        int m4680const = m4680const();
        int i2 = m4680const + 0;
        float f = m4680const;
        int i3 = m4699super.f8059do;
        float f2 = ((i / f) - m4699super.f8062if) / (m4699super.f8058do + (0 / f));
        this.f8042this = false;
        m4706while(f2, i3, (int) (i2 * f2));
        if (this.f8042this) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f8036if) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final boolean m4696return(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f8026for - f;
        this.f8026for = f;
        float scrollX = getScrollX() + f2;
        float m4680const = m4680const();
        float f3 = this.f8008do * m4680const;
        float f4 = this.f8032if * m4680const;
        ArrayList<Ctry> arrayList = this.f8020do;
        boolean z3 = false;
        Ctry ctry = arrayList.get(0);
        Ctry ctry2 = arrayList.get(arrayList.size() - 1);
        if (ctry.f8059do != 0) {
            f3 = ctry.f8062if * m4680const;
            z = false;
        } else {
            z = true;
        }
        if (ctry2.f8059do != this.f8021do.mo171try() - 1) {
            f4 = ctry2.f8062if * m4680const;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f3) {
            if (z) {
                this.f8013do.onPull(Math.abs(f3 - scrollX) / m4680const);
                z3 = true;
            }
            scrollX = f3;
        } else if (scrollX > f4) {
            if (z2) {
                this.f8033if.onPull(Math.abs(scrollX - f4) / m4680const);
                z3 = true;
            }
            scrollX = f4;
        }
        int i = (int) scrollX;
        this.f8026for = (scrollX - i) + this.f8026for;
        scrollTo(i, getScrollY());
        m4695public(i);
        return z3;
    }

    /* renamed from: static, reason: not valid java name */
    public final void m4697static() {
        m4700switch(this.f8038new);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m4698strictfp(int i) {
        if (this.f8047while == i) {
            return;
        }
        this.f8047while = i;
        Cgoto cgoto = this.f8016do;
        if (cgoto != null) {
            cgoto.mo4672for(i);
        }
        ArrayList arrayList = this.f8035if;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Cgoto cgoto2 = (Cgoto) this.f8035if.get(i2);
                if (cgoto2 != null) {
                    cgoto2.mo4672for(i);
                }
            }
        }
        Cgoto cgoto3 = this.f8034if;
        if (cgoto3 != null) {
            cgoto3.mo4672for(i);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final Ctry m4699super() {
        Ctry ctry;
        int i;
        int m4680const = m4680const();
        float f = 0.0f;
        float scrollX = m4680const > 0 ? getScrollX() / m4680const : 0.0f;
        float f2 = m4680const > 0 ? 0 / m4680const : 0.0f;
        int i2 = -1;
        Ctry ctry2 = null;
        float f3 = 0.0f;
        int i3 = 0;
        boolean z = true;
        while (true) {
            ArrayList<Ctry> arrayList = this.f8020do;
            if (i3 >= arrayList.size()) {
                return ctry2;
            }
            Ctry ctry3 = arrayList.get(i3);
            if (z || ctry3.f8059do == (i = i2 + 1)) {
                ctry = ctry3;
            } else {
                float f4 = f + f3 + f2;
                ctry = this.f8018do;
                ctry.f8062if = f4;
                ctry.f8059do = i;
                ctry.f8058do = this.f8021do.mo6370goto(i);
                i3--;
            }
            f = ctry.f8062if;
            float f5 = ctry.f8058do + f + f2;
            if (!z && scrollX < f) {
                return ctry2;
            }
            if (scrollX < f5 || i3 == arrayList.size() - 1) {
                break;
            }
            i2 = ctry.f8059do;
            i3++;
            z = false;
            ctry2 = ctry;
            f3 = ctry.f8058do;
        }
        return ctry;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        if (r7 == r8) goto L26;
     */
    /* renamed from: switch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4700switch(int r15) {
        /*
            Method dump skipped, instructions count: 868
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m4700switch(int):void");
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4701this() {
        if (!this.f8024else) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.f8021do != null) {
            VelocityTracker velocityTracker = this.f8012do;
            velocityTracker.computeCurrentVelocity(1000, this.f8007const);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f8005catch);
            this.f8039new = true;
            int m4680const = m4680const();
            int scrollX = getScrollX();
            Ctry m4699super = m4699super();
            m4675abstract(m4684else(m4699super.f8059do, ((scrollX / m4680const) - m4699super.f8062if) / m4699super.f8058do, xVelocity, (int) (this.f8026for - this.f8044try)), xVelocity, true, true);
        }
        this.f8046try = false;
        this.f8004case = false;
        VelocityTracker velocityTracker2 = this.f8012do;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.f8012do = null;
        }
        this.f8024else = false;
    }

    /* renamed from: throw, reason: not valid java name */
    public final Ctry m4702throw(int i) {
        int i2 = 0;
        while (true) {
            ArrayList<Ctry> arrayList = this.f8020do;
            if (i2 >= arrayList.size()) {
                return null;
            }
            Ctry ctry = arrayList.get(i2);
            if (ctry.f8059do == i) {
                return ctry;
            }
            i2++;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public void mo4703throws(Cgoto cgoto) {
        ArrayList arrayList = this.f8035if;
        if (arrayList != null) {
            arrayList.remove(cgoto);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4704try(boolean z) {
        boolean z2 = this.f8047while == 2;
        if (z2) {
            m4705volatile(false);
            if (!this.f8014do.isFinished()) {
                this.f8014do.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f8014do.getCurrX();
                int currY = this.f8014do.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m4695public(currX);
                    }
                }
            }
        }
        this.f8039new = false;
        int i = 0;
        while (true) {
            ArrayList<Ctry> arrayList = this.f8020do;
            if (i >= arrayList.size()) {
                break;
            }
            Ctry ctry = arrayList.get(i);
            if (ctry.f8061do) {
                ctry.f8061do = false;
                z2 = true;
            }
            i++;
        }
        if (z2) {
            Cfor cfor = this.f8015do;
            if (!z) {
                cfor.run();
            } else {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                postOnAnimation(cfor);
            }
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == null;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m4705volatile(boolean z) {
        if (this.f8029for != z) {
            this.f8029for = z;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4706while(float r13, int r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.f8043throw
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6b
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = 0
        L1b:
            if (r7 >= r6) goto L6b
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r9 = (androidx.viewpager.widget.ViewPager.LayoutParams) r9
            boolean r10 = r9.f8050do
            if (r10 != 0) goto L2c
            goto L68
        L2c:
            int r9 = r9.f8049do
            r9 = r9 & 7
            if (r9 == r2) goto L4d
            r10 = 3
            if (r9 == r10) goto L47
            r10 = 5
            if (r9 == r10) goto L3a
            r9 = r3
            goto L5c
        L3a:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
            goto L59
        L47:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5c
        L4d:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
        L59:
            r11 = r9
            r9 = r3
            r3 = r11
        L5c:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L67
            r8.offsetLeftAndRight(r3)
        L67:
            r3 = r9
        L68:
            int r7 = r7 + 1
            goto L1b
        L6b:
            androidx.viewpager.widget.ViewPager$goto r0 = r12.f8016do
            if (r0 == 0) goto L72
            r0.mo4671do(r13, r14, r15)
        L72:
            java.util.ArrayList r0 = r12.f8035if
            if (r0 == 0) goto L8c
            int r0 = r0.size()
        L7a:
            if (r1 >= r0) goto L8c
            java.util.ArrayList r3 = r12.f8035if
            java.lang.Object r3 = r3.get(r1)
            androidx.viewpager.widget.ViewPager$goto r3 = (androidx.viewpager.widget.ViewPager.Cgoto) r3
            if (r3 == 0) goto L89
            r3.mo4671do(r13, r14, r15)
        L89:
            int r1 = r1 + 1
            goto L7a
        L8c:
            androidx.viewpager.widget.ViewPager$goto r0 = r12.f8034if
            if (r0 == 0) goto L93
            r0.mo4671do(r13, r14, r15)
        L93:
            r12.f8042this = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m4706while(float, int, int):void");
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: do, reason: not valid java name */
        public float f8048do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f8049do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f8050do;

        /* renamed from: if, reason: not valid java name */
        public boolean f8051if;

        public LayoutParams() {
            super(-1, -1);
            this.f8048do = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f8048do = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f8000do);
            this.f8049do = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
