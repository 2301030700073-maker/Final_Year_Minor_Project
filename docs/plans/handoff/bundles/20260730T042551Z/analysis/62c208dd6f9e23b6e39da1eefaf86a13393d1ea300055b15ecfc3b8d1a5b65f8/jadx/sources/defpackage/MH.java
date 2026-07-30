package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.facebook.appevents.codeless.internal.Constants;
import com.joeykrim.rootcheck.R;
import defpackage.UK;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class MH implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: do, reason: not valid java name */
    public static MH f2145do;

    /* renamed from: if, reason: not valid java name */
    public static MH f2146if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OH f2148do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f2150do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f2151do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2152do;

    /* renamed from: for, reason: not valid java name */
    public final int f2153for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f2154if;

    /* renamed from: new, reason: not valid java name */
    public int f2155new;

    /* renamed from: try, reason: not valid java name */
    public int f2156try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RunnableC0651Zj f2149do = new RunnableC0651Zj(this, 1);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LH f2147do = new LH(this, 0);

    public MH(View view, CharSequence charSequence) {
        this.f2150do = view;
        this.f2151do = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = UK.f3862do;
        this.f2153for = Build.VERSION.SDK_INT >= 28 ? UK.Cif.m2379do(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.f2154if = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1403if(MH mh) {
        MH mh2 = f2145do;
        if (mh2 != null) {
            mh2.f2150do.removeCallbacks(mh2.f2149do);
        }
        f2145do = mh;
        if (mh != null) {
            mh.f2150do.postDelayed(mh.f2149do, ViewConfiguration.getLongPressTimeout());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m1404do() {
        MH mh = f2146if;
        View view = this.f2150do;
        if (mh == this) {
            f2146if = null;
            OH oh = this.f2148do;
            if (oh != null) {
                View view2 = oh.f2621do;
                if (view2.getParent() != null) {
                    ((WindowManager) oh.f2619do.getSystemService("window")).removeView(view2);
                }
                this.f2148do = null;
                this.f2154if = true;
                view.removeOnAttachStateChangeListener(this);
            }
        }
        if (f2145do == this) {
            m1403if(null);
        }
        view.removeCallbacks(this.f2147do);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1405for(boolean z) {
        int height;
        int i;
        String str;
        int i2;
        String str2;
        long longPressTimeout;
        long j;
        long j2;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        View view = this.f2150do;
        if (view.isAttachedToWindow()) {
            m1403if(null);
            MH mh = f2146if;
            if (mh != null) {
                mh.m1404do();
            }
            f2146if = this;
            this.f2152do = z;
            OH oh = new OH(view.getContext());
            this.f2148do = oh;
            int i3 = this.f2155new;
            int i4 = this.f2156try;
            boolean z2 = this.f2152do;
            View view2 = oh.f2621do;
            boolean z3 = view2.getParent() != null;
            Context context = oh.f2619do;
            if (z3) {
                if (view2.getParent() != null) {
                    ((WindowManager) context.getSystemService("window")).removeView(view2);
                }
            }
            oh.f2623do.setText(this.f2151do);
            WindowManager.LayoutParams layoutParams = oh.f2622do;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                i3 = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i4 + dimensionPixelOffset2;
                i = i4 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z2 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context2 = view.getContext();
                while (true) {
                    if (!(context2 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    }
                    context2 = ((ContextWrapper) context2).getBaseContext();
                }
            }
            if (rootView == null) {
                str2 = "window";
            } else {
                Rect rect = oh.f2620do;
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    str = "window";
                    i2 = 0;
                } else {
                    Resources resources = context.getResources();
                    str = "window";
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", Constants.PLATFORM);
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i2 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                int[] iArr = oh.f2625if;
                rootView.getLocationOnScreen(iArr);
                int[] iArr2 = oh.f2624do;
                view.getLocationOnScreen(iArr2);
                int i5 = iArr2[i2] - iArr[i2];
                iArr2[i2] = i5;
                iArr2[1] = iArr2[1] - iArr[1];
                layoutParams.x = (i5 + i3) - (rootView.getWidth() / 2);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, i2);
                view2.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i6 = iArr2[1];
                int i7 = ((i + i6) - dimensionPixelOffset3) - measuredHeight;
                int i8 = i6 + height + dimensionPixelOffset3;
                if (z2) {
                    if (i7 >= 0) {
                        layoutParams.y = i7;
                    } else {
                        layoutParams.y = i8;
                    }
                } else if (measuredHeight + i8 <= rect.height()) {
                    layoutParams.y = i8;
                } else {
                    layoutParams.y = i7;
                }
                str2 = str;
            }
            ((WindowManager) context.getSystemService(str2)).addView(view2, layoutParams);
            view.addOnAttachStateChangeListener(this);
            if (this.f2152do) {
                j2 = 2500;
            } else {
                if ((view.getWindowSystemUiVisibility() & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 15000;
                }
                j2 = j - longPressTimeout;
            }
            LH lh = this.f2147do;
            view.removeCallbacks(lh);
            view.postDelayed(lh, j2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onHover(android.view.View r5, android.view.MotionEvent r6) {
        /*
            r4 = this;
            OH r5 = r4.f2148do
            r0 = 0
            if (r5 == 0) goto La
            boolean r5 = r4.f2152do
            if (r5 == 0) goto La
            return r0
        La:
            android.view.View r5 = r4.f2150do
            android.content.Context r1 = r5.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            return r0
        L25:
            int r1 = r6.getAction()
            r2 = 7
            r3 = 1
            if (r1 == r2) goto L38
            r5 = 10
            if (r1 == r5) goto L32
            goto L74
        L32:
            r4.f2154if = r3
            r4.m1404do()
            goto L74
        L38:
            boolean r5 = r5.isEnabled()
            if (r5 == 0) goto L74
            OH r5 = r4.f2148do
            if (r5 != 0) goto L74
            float r5 = r6.getX()
            int r5 = (int) r5
            float r6 = r6.getY()
            int r6 = (int) r6
            boolean r1 = r4.f2154if
            if (r1 != 0) goto L69
            int r1 = r4.f2155new
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r4.f2153for
            if (r1 > r2) goto L69
            int r1 = r4.f2156try
            int r1 = r6 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L67
            goto L69
        L67:
            r3 = 0
            goto L6f
        L69:
            r4.f2155new = r5
            r4.f2156try = r6
            r4.f2154if = r0
        L6f:
            if (r3 == 0) goto L74
            m1403if(r4)
        L74:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.MH.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f2155new = view.getWidth() / 2;
        this.f2156try = view.getHeight() / 2;
        m1405for(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m1404do();
    }
}
