package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import com.google.android.exoplayer2.C;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.acra.util.PackageManagerWrapperKt;
import org.koin.core.Koin;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TooltipCompatHandler implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static TooltipCompatHandler sActiveHandler;
    public static TooltipCompatHandler sPendingHandler;
    public final View mAnchor;
    public int mAnchorX;
    public int mAnchorY;
    public boolean mForceNextChangeSignificant;
    public boolean mFromTouch;
    public final TooltipCompatHandler$$ExternalSyntheticLambda0 mHideRunnable;
    public final int mHoverSlop;
    public Koin mPopup;
    public final TooltipCompatHandler$$ExternalSyntheticLambda0 mShowRunnable;
    public final CharSequence mTooltipText;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.TooltipCompatHandler$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.TooltipCompatHandler$$ExternalSyntheticLambda0] */
    public TooltipCompatHandler(View view, CharSequence charSequence) {
        final int i = 0;
        this.mShowRunnable = new Runnable(this) { // from class: androidx.appcompat.widget.TooltipCompatHandler$$ExternalSyntheticLambda0
            public final /* synthetic */ TooltipCompatHandler f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i2 = i;
                TooltipCompatHandler tooltipCompatHandler = this.f$0;
                switch (i2) {
                    case 0:
                        tooltipCompatHandler.show(false);
                        break;
                    default:
                        tooltipCompatHandler.hide();
                        break;
                }
            }
        };
        final int i2 = 1;
        this.mHideRunnable = new Runnable(this) { // from class: androidx.appcompat.widget.TooltipCompatHandler$$ExternalSyntheticLambda0
            public final /* synthetic */ TooltipCompatHandler f$0;

            {
                this.f$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i22 = i2;
                TooltipCompatHandler tooltipCompatHandler = this.f$0;
                switch (i22) {
                    case 0:
                        tooltipCompatHandler.show(false);
                        break;
                    default:
                        tooltipCompatHandler.hide();
                        break;
                }
            }
        };
        this.mAnchor = view;
        this.mTooltipText = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = ViewConfigurationCompat.sGetScaledScrollFactorMethod;
        this.mHoverSlop = Build.VERSION.SDK_INT >= 28 ? PackageManagerWrapperKt.getScaledHoverSlop(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.mForceNextChangeSignificant = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void setPendingHandler(TooltipCompatHandler tooltipCompatHandler) {
        TooltipCompatHandler tooltipCompatHandler2 = sPendingHandler;
        if (tooltipCompatHandler2 != null) {
            tooltipCompatHandler2.mAnchor.removeCallbacks(tooltipCompatHandler2.mShowRunnable);
        }
        sPendingHandler = tooltipCompatHandler;
        if (tooltipCompatHandler != null) {
            tooltipCompatHandler.mAnchor.postDelayed(tooltipCompatHandler.mShowRunnable, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void hide() {
        TooltipCompatHandler tooltipCompatHandler = sActiveHandler;
        View view = this.mAnchor;
        if (tooltipCompatHandler == this) {
            sActiveHandler = null;
            Koin koin = this.mPopup;
            if (koin != null) {
                View view2 = (View) koin.resolver;
                if (view2.getParent() != null) {
                    ((WindowManager) ((Context) koin.logger).getSystemService("window")).removeView(view2);
                }
                this.mPopup = null;
                this.mForceNextChangeSignificant = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (sPendingHandler == this) {
            setPendingHandler(null);
        }
        view.removeCallbacks(this.mHideRunnable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        if (java.lang.Math.abs(r5 - r3.mAnchorY) <= r2) goto L30;
     */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            org.koin.core.Koin r4 = r3.mPopup
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.mFromTouch
            if (r4 == 0) goto La
            goto L6f
        La:
            android.view.View r4 = r3.mAnchor
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            goto L6f
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.mForceNextChangeSignificant = r4
            r3.hide()
            return r0
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            org.koin.core.Koin r4 = r3.mPopup
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.mForceNextChangeSignificant
            if (r1 != 0) goto L66
            int r1 = r3.mAnchorX
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.mHoverSlop
            if (r1 > r2) goto L66
            int r1 = r3.mAnchorY
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.mAnchorX = r4
            r3.mAnchorY = r5
            r3.mForceNextChangeSignificant = r0
            setPendingHandler(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.TooltipCompatHandler.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.mAnchorX = view.getWidth() / 2;
        this.mAnchorY = view.getHeight() / 2;
        show(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        hide();
    }

    public final void show(boolean z) {
        int height;
        int i;
        int i2;
        int i3;
        int i4;
        long longPressTimeout;
        long j;
        long j2;
        View view = this.mAnchor;
        if (view.isAttachedToWindow()) {
            setPendingHandler(null);
            TooltipCompatHandler tooltipCompatHandler = sActiveHandler;
            if (tooltipCompatHandler != null) {
                tooltipCompatHandler.hide();
            }
            sActiveHandler = this;
            this.mFromTouch = z;
            Context context = view.getContext();
            Koin koin = new Koin();
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            koin.instanceRegistry = layoutParams;
            koin.propertyRegistry = new Rect();
            koin.extensionManager = new int[2];
            koin.optionRegistry = new int[2];
            koin.logger = context;
            View inflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
            koin.resolver = inflate;
            koin.scopeRegistry = (TextView) inflate.findViewById(R.id.message);
            layoutParams.setTitle("TooltipPopup");
            layoutParams.packageName = context.getPackageName();
            layoutParams.type = 1002;
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
            layoutParams.flags = 24;
            View view2 = (View) koin.resolver;
            Context context2 = (Context) koin.logger;
            this.mPopup = koin;
            int i5 = this.mAnchorX;
            int i6 = this.mAnchorY;
            boolean z2 = this.mFromTouch;
            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) koin.instanceRegistry;
            if (view2.getParent() != null && view2.getParent() != null) {
                ((WindowManager) context2.getSystemService("window")).removeView(view2);
            }
            ((TextView) koin.scopeRegistry).setText(this.mTooltipText);
            int[] iArr = (int[]) koin.optionRegistry;
            int[] iArr2 = (int[]) koin.extensionManager;
            Rect rect = (Rect) koin.propertyRegistry;
            layoutParams2.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context2.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                i5 = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context2.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i6 + dimensionPixelOffset2;
                i = i6 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i = 0;
            }
            layoutParams2.gravity = 49;
            int dimensionPixelOffset3 = context2.getResources().getDimensionPixelOffset(z2 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams3 = rootView.getLayoutParams();
            int i7 = i5;
            if (!(layoutParams3 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams3).type != 2) {
                Context context3 = view.getContext();
                while (true) {
                    if (!(context3 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context3 instanceof Activity) {
                        rootView = ((Activity) context3).getWindow().getDecorView();
                        break;
                    }
                    context3 = ((ContextWrapper) context3).getBaseContext();
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
                i4 = 1;
            } else {
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    i2 = i;
                    i3 = 0;
                    i4 = 1;
                } else {
                    Resources resources = context2.getResources();
                    i4 = 1;
                    i2 = i;
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i3 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(iArr);
                view.getLocationOnScreen(iArr2);
                int i8 = iArr2[i3] - iArr[i3];
                iArr2[i3] = i8;
                iArr2[i4] = iArr2[i4] - iArr[i4];
                layoutParams2.x = (i8 + i7) - (rootView.getWidth() / 2);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, i3);
                view2.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i9 = iArr2[i4];
                int i10 = ((i9 + i2) - dimensionPixelOffset3) - measuredHeight;
                int i11 = i9 + height + dimensionPixelOffset3;
                if (z2) {
                    if (i10 >= 0) {
                        layoutParams2.y = i10;
                    } else {
                        layoutParams2.y = i11;
                    }
                } else if (measuredHeight + i11 <= rect.height()) {
                    layoutParams2.y = i11;
                } else {
                    layoutParams2.y = i10;
                }
            }
            ((WindowManager) context2.getSystemService("window")).addView(view2, layoutParams2);
            view.addOnAttachStateChangeListener(this);
            if (this.mFromTouch) {
                j2 = 2500;
            } else {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if ((view.getWindowSystemUiVisibility() & 1) == i4) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
                }
                j2 = j - longPressTimeout;
            }
            TooltipCompatHandler$$ExternalSyntheticLambda0 tooltipCompatHandler$$ExternalSyntheticLambda0 = this.mHideRunnable;
            view.removeCallbacks(tooltipCompatHandler$$ExternalSyntheticLambda0);
            view.postDelayed(tooltipCompatHandler$$ExternalSyntheticLambda0, j2);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
