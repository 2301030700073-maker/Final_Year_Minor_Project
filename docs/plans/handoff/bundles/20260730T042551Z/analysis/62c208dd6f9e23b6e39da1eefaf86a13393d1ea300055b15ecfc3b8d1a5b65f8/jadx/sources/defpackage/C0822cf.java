package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.joeykrim.rootcheck.R;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: cf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0822cf extends ListView {

    /* renamed from: case, reason: not valid java name */
    public int f8573case;

    /* renamed from: do, reason: not valid java name */
    public final Rect f8574do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f8575do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f8576do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3883vq f8577do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8578do;

    /* renamed from: else, reason: not valid java name */
    public int f8579else;

    /* renamed from: for, reason: not valid java name */
    public int f8580for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f8581for;

    /* renamed from: if, reason: not valid java name */
    public final boolean f8582if;

    /* renamed from: new, reason: not valid java name */
    public int f8583new;

    /* renamed from: try, reason: not valid java name */
    public int f8584try;

    /* renamed from: cf$case, reason: invalid class name */
    public class Ccase implements Runnable {
        public Ccase() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0822cf c0822cf = C0822cf.this;
            c0822cf.f8575do = null;
            c0822cf.drawableStateChanged();
        }
    }

    /* renamed from: cf$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m4919do(View view, float f, float f2) {
            view.drawableHotspotChanged(f, f2);
        }
    }

    /* renamed from: cf$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static boolean m4920do(AbsListView absListView) {
            return absListView.isSelectedChildViewEnabled();
        }

        /* renamed from: if, reason: not valid java name */
        public static void m4921if(AbsListView absListView, boolean z) {
            absListView.setSelectedChildViewEnabled(z);
        }
    }

    /* renamed from: cf$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Method f8586do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final boolean f8587do;

        /* renamed from: for, reason: not valid java name */
        public static final Method f8588for;

        /* renamed from: if, reason: not valid java name */
        public static final Method f8589if;

        static {
            try {
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, Boolean.TYPE, cls2, cls2);
                f8586do = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
                f8589if = declaredMethod2;
                declaredMethod2.setAccessible(true);
                Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
                f8588for = declaredMethod3;
                declaredMethod3.setAccessible(true);
                f8587do = true;
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: cf$new, reason: invalid class name */
    public static class Cnew extends C0580We {

        /* renamed from: do, reason: not valid java name */
        public boolean f8590do;

        public Cnew(Drawable drawable) {
            super(drawable);
            this.f8590do = true;
        }

        @Override // defpackage.C0580We, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            if (this.f8590do) {
                super.draw(canvas);
            }
        }

        @Override // defpackage.C0580We, android.graphics.drawable.Drawable
        public final void setHotspot(float f, float f2) {
            if (this.f8590do) {
                super.setHotspot(f, f2);
            }
        }

        @Override // defpackage.C0580We, android.graphics.drawable.Drawable
        public final void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f8590do) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // defpackage.C0580We, android.graphics.drawable.Drawable
        public final boolean setState(int[] iArr) {
            if (this.f8590do) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // defpackage.C0580We, android.graphics.drawable.Drawable
        public final boolean setVisible(boolean z, boolean z2) {
            if (this.f8590do) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: cf$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final Field f8591do;

        static {
            Field field = null;
            try {
                field = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
                field.setAccessible(true);
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
            }
            f8591do = field;
        }
    }

    public C0822cf(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f8574do = new Rect();
        this.f8580for = 0;
        this.f8583new = 0;
        this.f8584try = 0;
        this.f8573case = 0;
        this.f8582if = z;
        setCacheColorHint(0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f8574do;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m4917do(int i, int i2) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        int i3 = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return i3;
        }
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i4 = 0;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = adapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            view = adapter.getView(i5, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i6 = layoutParams.height;
            view.measure(i, i6 > 0 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i5 > 0) {
                i3 += dividerHeight;
            }
            i3 += view.getMeasuredHeight();
            if (i3 >= i2) {
                return i2;
            }
        }
        return i3;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f8575do != null) {
            return;
        }
        super.drawableStateChanged();
        Cnew cnew = this.f8576do;
        if (cnew != null) {
            cnew.f8590do = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f8581for && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f8582if || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f8582if || super.hasWindowFocus();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0145 A[ADDED_TO_REGION] */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4918if(android.view.MotionEvent r17, int r18) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0822cf.m4918if(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f8582if || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f8582if && this.f8578do) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f8575do = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f8575do == null) {
            Ccase ccase = new Ccase();
            this.f8575do = ccase;
            post(ccase);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i < 30 || !Cif.f8587do) {
                        setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                    } else {
                        try {
                            Cif.f8586do.invoke(this, Integer.valueOf(pointToPosition), childAt, Boolean.FALSE, -1, -1);
                            Cif.f8589if.invoke(this, Integer.valueOf(pointToPosition));
                            Cif.f8588for.invoke(this, Integer.valueOf(pointToPosition));
                        } catch (IllegalAccessException e) {
                            e.printStackTrace();
                        } catch (InvocationTargetException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                Drawable selector = getSelector();
                if (selector != null && this.f8581for && isPressed()) {
                    selector.setState(getDrawableState());
                }
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f8579else = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        Ccase ccase = this.f8575do;
        if (ccase != null) {
            C0822cf c0822cf = C0822cf.this;
            c0822cf.f8575do = null;
            c0822cf.removeCallbacks(ccase);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public final void setSelector(Drawable drawable) {
        Cnew cnew = drawable != null ? new Cnew(drawable) : null;
        this.f8576do = cnew;
        super.setSelector(cnew);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f8580for = rect.left;
        this.f8583new = rect.top;
        this.f8584try = rect.right;
        this.f8573case = rect.bottom;
    }
}
