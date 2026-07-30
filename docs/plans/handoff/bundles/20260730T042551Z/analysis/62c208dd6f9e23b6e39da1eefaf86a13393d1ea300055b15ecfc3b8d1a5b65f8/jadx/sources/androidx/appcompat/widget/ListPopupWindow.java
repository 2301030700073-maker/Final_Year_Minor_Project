package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import com.facebook.ads.AdError;
import com.google.android.gms.common.api.Api;
import com.joeykrim.rootcheck.R;
import defpackage.C0822cf;
import defpackage.C2898hx;
import defpackage.C3385nL;
import defpackage.C3824uq;
import defpackage.O4;
import defpackage.QK;
import defpackage.UD;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class ListPopupWindow implements UD {

    /* renamed from: do, reason: not valid java name */
    public static final Method f5778do;

    /* renamed from: for, reason: not valid java name */
    public static final Method f5779for;

    /* renamed from: if, reason: not valid java name */
    public static final Method f5780if;

    /* renamed from: case, reason: not valid java name */
    public int f5781case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f5782do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f5783do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f5784do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f5785do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AdapterView.OnItemClickListener f5786do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AdapterView.OnItemSelectedListener f5787do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ListAdapter f5788do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PopupWindow f5789do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f5790do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Celse f5791do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f5792do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f5793do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f5794do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0822cf f5795do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5796do;

    /* renamed from: else, reason: not valid java name */
    public final int f5797else;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f5798for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f5799for;

    /* renamed from: goto, reason: not valid java name */
    public int f5800goto;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Rect f5801if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f5802if;

    /* renamed from: new, reason: not valid java name */
    public int f5803new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f5804new;

    /* renamed from: this, reason: not valid java name */
    public final int f5805this;

    /* renamed from: try, reason: not valid java name */
    public int f5806try;

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$case, reason: invalid class name */
    public class Ccase implements View.OnTouchListener {
        public Ccase() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (action == 0 && (popupWindow = listPopupWindow.f5789do) != null && popupWindow.isShowing() && x >= 0 && x < listPopupWindow.f5789do.getWidth() && y >= 0 && y < listPopupWindow.f5789do.getHeight()) {
                listPopupWindow.f5784do.postDelayed(listPopupWindow.f5791do, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            listPopupWindow.f5784do.removeCallbacks(listPopupWindow.f5791do);
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static int m3453do(PopupWindow popupWindow, View view, int i, boolean z) {
            int maxAvailableHeight;
            maxAvailableHeight = popupWindow.getMaxAvailableHeight(view, i, z);
            return maxAvailableHeight;
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$else, reason: invalid class name */
    public class Celse implements Runnable {
        public Celse() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            C0822cf c0822cf = listPopupWindow.f5795do;
            if (c0822cf != null) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                if (!c0822cf.isAttachedToWindow() || listPopupWindow.f5795do.getCount() <= listPopupWindow.f5795do.getChildCount() || listPopupWindow.f5795do.getChildCount() > listPopupWindow.f5805this) {
                    return;
                }
                listPopupWindow.f5789do.setInputMethodMode(2);
                listPopupWindow.mo2368if();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$for, reason: invalid class name */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0822cf c0822cf = ListPopupWindow.this.f5795do;
            if (c0822cf != null) {
                c0822cf.f8578do = true;
                c0822cf.requestLayout();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static void m3454do(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m3455if(PopupWindow popupWindow, boolean z) {
            popupWindow.setIsClippedToScreen(z);
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$new, reason: invalid class name */
    public class Cnew extends DataSetObserver {
        public Cnew() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (listPopupWindow.mo2367do()) {
                listPopupWindow.mo2368if();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$try, reason: invalid class name */
    public class Ctry implements AbsListView.OnScrollListener {
        public Ctry() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            if (i == 1) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                if ((listPopupWindow.f5789do.getInputMethodMode() == 2) || listPopupWindow.f5789do.getContentView() == null) {
                    return;
                }
                Handler handler = listPopupWindow.f5784do;
                Celse celse = listPopupWindow.f5791do;
                handler.removeCallbacks(celse);
                celse.run();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f5778do = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            try {
                f5779for = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                f5780if = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m3445catch(int i) {
        this.f5806try = i;
    }

    /* renamed from: const, reason: not valid java name */
    public final int m3446const() {
        if (this.f5796do) {
            return this.f5781case;
        }
        return 0;
    }

    @Override // defpackage.UD
    public final void dismiss() {
        PopupWindow popupWindow = this.f5789do;
        popupWindow.dismiss();
        popupWindow.setContentView(null);
        this.f5795do = null;
        this.f5784do.removeCallbacks(this.f5791do);
    }

    @Override // defpackage.UD
    /* renamed from: do */
    public final boolean mo2367do() {
        return this.f5789do.isShowing();
    }

    /* renamed from: else, reason: not valid java name */
    public final Drawable m3447else() {
        return this.f5789do.getBackground();
    }

    /* renamed from: for, reason: not valid java name */
    public final int m3448for() {
        return this.f5806try;
    }

    @Override // defpackage.UD
    /* renamed from: if */
    public final void mo2368if() {
        int i;
        int m3453do;
        int paddingBottom;
        C0822cf c0822cf;
        C0822cf c0822cf2 = this.f5795do;
        PopupWindow popupWindow = this.f5789do;
        Context context = this.f5782do;
        if (c0822cf2 == null) {
            C0822cf mo3452while = mo3452while(context, !this.f5804new);
            this.f5795do = mo3452while;
            mo3452while.setAdapter(this.f5788do);
            this.f5795do.setOnItemClickListener(this.f5786do);
            this.f5795do.setFocusable(true);
            this.f5795do.setFocusableInTouchMode(true);
            this.f5795do.setOnItemSelectedListener(new C3824uq(this));
            this.f5795do.setOnScrollListener(this.f5794do);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f5787do;
            if (onItemSelectedListener != null) {
                this.f5795do.setOnItemSelectedListener(onItemSelectedListener);
            }
            popupWindow.setContentView(this.f5795do);
        }
        Drawable background = popupWindow.getBackground();
        Rect rect = this.f5783do;
        if (background != null) {
            background.getPadding(rect);
            int i2 = rect.top;
            i = rect.bottom + i2;
            if (!this.f5796do) {
                this.f5781case = -i2;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        boolean z = popupWindow.getInputMethodMode() == 2;
        View view = this.f5785do;
        int i3 = this.f5781case;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = f5780if;
            if (method != null) {
                try {
                    m3453do = ((Integer) method.invoke(popupWindow, view, Integer.valueOf(i3), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                }
            }
            m3453do = popupWindow.getMaxAvailableHeight(view, i3);
        } else {
            m3453do = Cdo.m3453do(popupWindow, view, i3, z);
        }
        int i4 = this.f5798for;
        if (i4 == -1) {
            paddingBottom = m3453do + i;
        } else {
            int i5 = this.f5803new;
            int m4917do = this.f5795do.m4917do(i5 != -2 ? i5 != -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), m3453do + 0);
            paddingBottom = m4917do + (m4917do > 0 ? this.f5795do.getPaddingBottom() + this.f5795do.getPaddingTop() + i + 0 : 0);
        }
        boolean z2 = popupWindow.getInputMethodMode() == 2;
        C2898hx.m6848if(popupWindow, this.f5797else);
        if (popupWindow.isShowing()) {
            View view2 = this.f5785do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (view2.isAttachedToWindow()) {
                int i6 = this.f5803new;
                if (i6 == -1) {
                    i6 = -1;
                } else if (i6 == -2) {
                    i6 = this.f5785do.getWidth();
                }
                if (i4 == -1) {
                    i4 = z2 ? paddingBottom : -1;
                    if (z2) {
                        popupWindow.setWidth(this.f5803new == -1 ? -1 : 0);
                        popupWindow.setHeight(0);
                    } else {
                        popupWindow.setWidth(this.f5803new == -1 ? -1 : 0);
                        popupWindow.setHeight(-1);
                    }
                } else if (i4 == -2) {
                    i4 = paddingBottom;
                }
                popupWindow.setOutsideTouchable(true);
                View view3 = this.f5785do;
                int i7 = this.f5806try;
                int i8 = this.f5781case;
                if (i6 < 0) {
                    i6 = -1;
                }
                popupWindow.update(view3, i7, i8, i6, i4 < 0 ? -1 : i4);
                return;
            }
            return;
        }
        int i9 = this.f5803new;
        if (i9 == -1) {
            i9 = -1;
        } else if (i9 == -2) {
            i9 = this.f5785do.getWidth();
        }
        if (i4 == -1) {
            i4 = -1;
        } else if (i4 == -2) {
            i4 = paddingBottom;
        }
        popupWindow.setWidth(i9);
        popupWindow.setHeight(i4);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f5778do;
            if (method2 != null) {
                try {
                    method2.invoke(popupWindow, Boolean.TRUE);
                } catch (Exception unused2) {
                }
            }
        } else {
            Cif.m3455if(popupWindow, true);
        }
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(this.f5790do);
        if (this.f5799for) {
            C2898hx.m6847do(popupWindow, this.f5802if);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = f5779for;
            if (method3 != null) {
                try {
                    method3.invoke(popupWindow, this.f5801if);
                } catch (Exception unused3) {
                }
            }
        } else {
            Cif.m3454do(popupWindow, this.f5801if);
        }
        popupWindow.showAsDropDown(this.f5785do, this.f5806try, this.f5781case, this.f5800goto);
        this.f5795do.setSelection(-1);
        if ((!this.f5804new || this.f5795do.isInTouchMode()) && (c0822cf = this.f5795do) != null) {
            c0822cf.f8578do = true;
            c0822cf.requestLayout();
        }
        if (this.f5804new) {
            return;
        }
        this.f5784do.post(this.f5792do);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3449import(int i) {
        Drawable background = this.f5789do.getBackground();
        if (background == null) {
            this.f5803new = i;
            return;
        }
        Rect rect = this.f5783do;
        background.getPadding(rect);
        this.f5803new = rect.left + rect.right + i;
    }

    /* renamed from: new */
    public void mo3415new(ListAdapter listAdapter) {
        Cnew cnew = this.f5793do;
        if (cnew == null) {
            this.f5793do = new Cnew();
        } else {
            ListAdapter listAdapter2 = this.f5788do;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(cnew);
            }
        }
        this.f5788do = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f5793do);
        }
        C0822cf c0822cf = this.f5795do;
        if (c0822cf != null) {
            c0822cf.setAdapter(this.f5788do);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final void m3450super(Drawable drawable) {
        this.f5789do.setBackgroundDrawable(drawable);
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m3451throw(int i) {
        this.f5781case = i;
        this.f5796do = true;
    }

    @Override // defpackage.UD
    /* renamed from: try */
    public final C0822cf mo2369try() {
        return this.f5795do;
    }

    /* renamed from: while, reason: not valid java name */
    public C0822cf mo3452while(Context context, boolean z) {
        return new C0822cf(context, z);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f5798for = -2;
        this.f5803new = -2;
        this.f5797else = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        this.f5800goto = 0;
        this.f5805this = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f5791do = new Celse();
        this.f5790do = new Ccase();
        this.f5794do = new Ctry();
        this.f5792do = new Cfor();
        this.f5783do = new Rect();
        this.f5782do = context;
        this.f5784do = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O4.f2572switch, i, i2);
        this.f5806try = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f5781case = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f5796do = true;
        }
        obtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.f5789do = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }
}
