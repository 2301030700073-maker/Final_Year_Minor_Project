package b.b.g;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.systemui.shared.R;
import java.lang.reflect.Field;

/* renamed from: b.b.g.m0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0061m0 extends ListView {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f558a;

    /* renamed from: b, reason: collision with root package name */
    public int f559b;

    /* renamed from: c, reason: collision with root package name */
    public int f560c;

    /* renamed from: d, reason: collision with root package name */
    public int f561d;
    public int e;
    public int f;
    public Field g;
    public C0057k0 h;
    public boolean i;
    public boolean j;
    public boolean k;
    public b.e.j.c l;
    public RunnableC0059l0 m;

    public C0061m0(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f558a = new Rect();
        this.f559b = 0;
        this.f560c = 0;
        this.f561d = 0;
        this.e = 0;
        this.j = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.g = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    public int a(int i, int i2, int i3) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i4 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        View view = null;
        while (i5 < count) {
            int itemViewType = adapter.getItemViewType(i5);
            if (itemViewType != i6) {
                view = null;
                i6 = itemViewType;
            }
            view = adapter.getView(i5, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i8 = layoutParams.height;
            view.measure(i, i8 > 0 ? View.MeasureSpec.makeMeasureSpec(i8, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i5 > 0) {
                i4 += dividerHeight;
            }
            i4 += view.getMeasuredHeight();
            if (i4 >= i2) {
                return (i3 < 0 || i5 <= i3 || i7 <= 0 || i4 == i2) ? i2 : i7;
            }
            if (i3 >= 0 && i5 >= i3) {
                i7 = i4;
            }
            i5++;
        }
        return i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0168, code lost:
    
        if (r4 != 3) goto L99;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x012b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(android.view.MotionEvent r17, int r18) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.C0061m0.b(android.view.MotionEvent, int):boolean");
    }

    public final void c() {
        Drawable selector = getSelector();
        if (selector != null && this.k && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.f558a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f558a);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.m != null) {
            return;
        }
        super.drawableStateChanged();
        C0057k0 c0057k0 = this.h;
        if (c0057k0 != null) {
            c0057k0.f550b = true;
        }
        c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.j || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.j || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.j || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.j && this.i) || super.isInTouchMode();
    }

    public int lookForSelectablePosition(int i, boolean z) {
        int min;
        ListAdapter adapter = getAdapter();
        if (adapter != null && !isInTouchMode()) {
            int count = adapter.getCount();
            if (!getAdapter().areAllItemsEnabled()) {
                if (z) {
                    min = Math.max(0, i);
                    while (min < count && !adapter.isEnabled(min)) {
                        min++;
                    }
                } else {
                    min = Math.min(i, count - 1);
                    while (min >= 0 && !adapter.isEnabled(min)) {
                        min--;
                    }
                }
                if (min < 0 || min >= count) {
                    return -1;
                }
                return min;
            }
            if (i >= 0 && i < count) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.m = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.m == null) {
            RunnableC0059l0 runnableC0059l0 = new RunnableC0059l0(this);
            this.m = runnableC0059l0;
            runnableC0059l0.f557a.post(runnableC0059l0);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                c();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0059l0 runnableC0059l0 = this.m;
        if (runnableC0059l0 != null) {
            C0061m0 c0061m0 = runnableC0059l0.f557a;
            c0061m0.m = null;
            c0061m0.removeCallbacks(runnableC0059l0);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0057k0 c0057k0 = drawable != null ? new C0057k0(drawable) : null;
        this.h = c0057k0;
        super.setSelector(c0057k0);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f559b = rect.left;
        this.f560c = rect.top;
        this.f561d = rect.right;
        this.e = rect.bottom;
    }
}
