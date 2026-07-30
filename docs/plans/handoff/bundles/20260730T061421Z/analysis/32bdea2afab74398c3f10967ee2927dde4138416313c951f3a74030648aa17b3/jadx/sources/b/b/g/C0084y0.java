package b.b.g;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: b.b.g.y0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0084y0 implements b.b.f.m.G {
    public boolean A;
    public PopupWindow B;

    /* renamed from: a, reason: collision with root package name */
    public Context f599a;

    /* renamed from: b, reason: collision with root package name */
    public ListAdapter f600b;

    /* renamed from: c, reason: collision with root package name */
    public C0061m0 f601c;
    public int f;
    public int g;
    public boolean i;
    public boolean j;
    public boolean k;
    public DataSetObserver q;
    public View r;
    public AdapterView.OnItemClickListener s;
    public final Handler x;
    public Rect z;

    /* renamed from: d, reason: collision with root package name */
    public int f602d = -2;
    public int e = -2;
    public int h = 1002;
    public int l = 0;
    public boolean m = false;
    public boolean n = false;
    public int o = Integer.MAX_VALUE;
    public int p = 0;
    public final RunnableC0082x0 t = new RunnableC0082x0(this);
    public final ViewOnTouchListenerC0080w0 u = new ViewOnTouchListenerC0080w0(this);
    public final C0078v0 v = new C0078v0(this);
    public final RunnableC0074t0 w = new RunnableC0074t0(this);
    public final Rect y = new Rect();

    public C0084y0(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f599a = context;
        this.x = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.b.b.o, i, i2);
        this.f = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.i = true;
        }
        obtainStyledAttributes.recycle();
        J j = new J(context, attributeSet, i, i2);
        this.B = j;
        j.setInputMethodMode(1);
    }

    public void a(int i) {
        this.f = i;
    }

    @Override // b.b.f.m.G
    public boolean b() {
        return this.B.isShowing();
    }

    public int c() {
        return this.f;
    }

    @Override // b.b.f.m.G
    public void dismiss() {
        this.B.dismiss();
        this.B.setContentView(null);
        this.f601c = null;
        this.x.removeCallbacks(this.t);
    }

    @Override // b.b.f.m.G
    public void f() {
        int i;
        int makeMeasureSpec;
        int paddingBottom;
        C0061m0 c0061m0;
        if (this.f601c == null) {
            C0061m0 q = q(this.f599a, !this.A);
            this.f601c = q;
            q.setAdapter(this.f600b);
            this.f601c.setOnItemClickListener(this.s);
            this.f601c.setFocusable(true);
            this.f601c.setFocusableInTouchMode(true);
            this.f601c.setOnItemSelectedListener(new C0072s0(this));
            this.f601c.setOnScrollListener(this.v);
            this.B.setContentView(this.f601c);
        }
        Drawable background = this.B.getBackground();
        if (background != null) {
            background.getPadding(this.y);
            Rect rect = this.y;
            int i2 = rect.top;
            i = rect.bottom + i2;
            if (!this.i) {
                this.g = -i2;
            }
        } else {
            this.y.setEmpty();
            i = 0;
        }
        int maxAvailableHeight = this.B.getMaxAvailableHeight(this.r, this.g, this.B.getInputMethodMode() == 2);
        if (this.f602d == -1) {
            paddingBottom = maxAvailableHeight + i;
        } else {
            int i3 = this.e;
            if (i3 == -2) {
                int i4 = this.f599a.getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = this.y;
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4 - (rect2.left + rect2.right), RecyclerView.UNDEFINED_DURATION);
            } else if (i3 != -1) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            } else {
                int i5 = this.f599a.getResources().getDisplayMetrics().widthPixels;
                Rect rect3 = this.y;
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5 - (rect3.left + rect3.right), 1073741824);
            }
            int a2 = this.f601c.a(makeMeasureSpec, maxAvailableHeight - 0, -1);
            paddingBottom = a2 + (a2 > 0 ? this.f601c.getPaddingBottom() + this.f601c.getPaddingTop() + i + 0 : 0);
        }
        boolean z = this.B.getInputMethodMode() == 2;
        this.B.setWindowLayoutType(this.h);
        if (this.B.isShowing()) {
            if (b.e.i.q.s(this.r)) {
                int i6 = this.e;
                if (i6 == -1) {
                    i6 = -1;
                } else if (i6 == -2) {
                    i6 = this.r.getWidth();
                }
                int i7 = this.f602d;
                if (i7 == -1) {
                    if (!z) {
                        paddingBottom = -1;
                    }
                    if (z) {
                        this.B.setWidth(this.e == -1 ? -1 : 0);
                        this.B.setHeight(0);
                    } else {
                        this.B.setWidth(this.e == -1 ? -1 : 0);
                        this.B.setHeight(-1);
                    }
                } else if (i7 != -2) {
                    paddingBottom = i7;
                }
                this.B.setOutsideTouchable(true);
                this.B.update(this.r, this.f, this.g, i6 < 0 ? -1 : i6, paddingBottom < 0 ? -1 : paddingBottom);
                return;
            }
            return;
        }
        int i8 = this.e;
        if (i8 == -1) {
            i8 = -1;
        } else if (i8 == -2) {
            i8 = this.r.getWidth();
        }
        int i9 = this.f602d;
        if (i9 == -1) {
            paddingBottom = -1;
        } else if (i9 != -2) {
            paddingBottom = i9;
        }
        this.B.setWidth(i8);
        this.B.setHeight(paddingBottom);
        this.B.setIsClippedToScreen(true);
        this.B.setOutsideTouchable(true);
        this.B.setTouchInterceptor(this.u);
        if (this.k) {
            this.B.setOverlapAnchor(this.j);
        }
        this.B.setEpicenterBounds(this.z);
        this.B.showAsDropDown(this.r, this.f, this.g, this.l);
        this.f601c.setSelection(-1);
        if ((!this.A || this.f601c.isInTouchMode()) && (c0061m0 = this.f601c) != null) {
            c0061m0.i = true;
            c0061m0.requestLayout();
        }
        if (this.A) {
            return;
        }
        this.x.post(this.w);
    }

    public int g() {
        if (this.i) {
            return this.g;
        }
        return 0;
    }

    public Drawable i() {
        return this.B.getBackground();
    }

    @Override // b.b.f.m.G
    public ListView k() {
        return this.f601c;
    }

    public void m(Drawable drawable) {
        this.B.setBackgroundDrawable(drawable);
    }

    public void n(int i) {
        this.g = i;
        this.i = true;
    }

    public void o(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.q;
        if (dataSetObserver == null) {
            this.q = new C0076u0(this);
        } else {
            ListAdapter listAdapter2 = this.f600b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f600b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.q);
        }
        C0061m0 c0061m0 = this.f601c;
        if (c0061m0 != null) {
            c0061m0.setAdapter(this.f600b);
        }
    }

    public C0061m0 q(Context context, boolean z) {
        return new C0061m0(context, z);
    }

    public void r(int i) {
        Drawable background = this.B.getBackground();
        if (background == null) {
            this.e = i;
            return;
        }
        background.getPadding(this.y);
        Rect rect = this.y;
        this.e = rect.left + rect.right + i;
    }

    public void s(boolean z) {
        this.A = z;
        this.B.setFocusable(z);
    }
}
