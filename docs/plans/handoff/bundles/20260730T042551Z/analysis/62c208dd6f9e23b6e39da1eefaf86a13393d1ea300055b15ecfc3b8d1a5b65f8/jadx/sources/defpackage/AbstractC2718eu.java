package defpackage;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.Ccatch;
import androidx.appcompat.view.menu.Cgoto;
import com.facebook.ads.AdError;
import com.google.android.material.badge.BadgeState;
import defpackage.C0426Pe;
import defpackage.C3893w;
import defpackage.QK;
import defpackage.Yw;
import java.util.WeakHashMap;

/* renamed from: eu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC2718eu extends FrameLayout implements Ccatch.Cdo {

    /* renamed from: break, reason: not valid java name */
    public int f12741break;

    /* renamed from: case, reason: not valid java name */
    public int f12742case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f12743do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f12744do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f12745do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f12746do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f12747do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewGroup f12748do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FrameLayout f12749do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ImageView f12750do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f12751do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f12752do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public com.google.android.material.badge.Cdo f12753do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f12754do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12755do;

    /* renamed from: else, reason: not valid java name */
    public int f12756else;

    /* renamed from: for, reason: not valid java name */
    public float f12757for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f12758for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public Drawable f12759for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f12760for;

    /* renamed from: goto, reason: not valid java name */
    public int f12761goto;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float f12762if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f12763if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Drawable f12764if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final TextView f12765if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f12766if;

    /* renamed from: new, reason: not valid java name */
    public float f12767new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public int f12768new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f12769new;

    /* renamed from: this, reason: not valid java name */
    public int f12770this;

    /* renamed from: try, reason: not valid java name */
    public int f12771try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f12739do = {R.attr.state_checked};

    /* renamed from: if, reason: not valid java name */
    public static final Cfor f12740if = new Cfor();

    /* renamed from: do, reason: not valid java name */
    public static final Cnew f12738do = new Cnew();

    /* renamed from: eu$do, reason: invalid class name */
    public class Cdo implements View.OnLayoutChangeListener {
        public Cdo() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            AbstractC2718eu abstractC2718eu = AbstractC2718eu.this;
            if (abstractC2718eu.f12750do.getVisibility() == 0) {
                com.google.android.material.badge.Cdo cdo = abstractC2718eu.f12753do;
                if (cdo != null) {
                    Rect rect = new Rect();
                    ImageView imageView = abstractC2718eu.f12750do;
                    imageView.getDrawingRect(rect);
                    cdo.setBounds(rect);
                    cdo.m5664goto(imageView, null);
                }
            }
        }
    }

    /* renamed from: eu$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public float mo6610do(float f, float f2) {
            return 1.0f;
        }
    }

    /* renamed from: eu$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f12774for;

        public Cif(int i) {
            this.f12774for = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC2718eu.this.m6607import(this.f12774for);
        }
    }

    /* renamed from: eu$new, reason: invalid class name */
    public static class Cnew extends Cfor {
        @Override // defpackage.AbstractC2718eu.Cfor
        /* renamed from: do */
        public final float mo6610do(float f, float f2) {
            LinearInterpolator linearInterpolator = C2785g1.f13028do;
            return (f * 0.6f) + 0.4f;
        }
    }

    public AbstractC2718eu(Context context) {
        super(context);
        this.f12755do = false;
        this.f12756else = 0;
        this.f12754do = f12740if;
        this.f12767new = 0.0f;
        this.f12760for = false;
        this.f12761goto = 0;
        this.f12770this = 0;
        this.f12769new = false;
        this.f12741break = 0;
        LayoutInflater.from(context).inflate(mo811try(), (ViewGroup) this, true);
        this.f12749do = (FrameLayout) findViewById(com.joeykrim.rootcheck.R.id.navigation_bar_item_icon_container);
        this.f12747do = findViewById(com.joeykrim.rootcheck.R.id.navigation_bar_item_active_indicator_view);
        ImageView imageView = (ImageView) findViewById(com.joeykrim.rootcheck.R.id.navigation_bar_item_icon_view);
        this.f12750do = imageView;
        ViewGroup viewGroup = (ViewGroup) findViewById(com.joeykrim.rootcheck.R.id.navigation_bar_item_labels_group);
        this.f12748do = viewGroup;
        TextView textView = (TextView) findViewById(com.joeykrim.rootcheck.R.id.navigation_bar_item_small_label_view);
        this.f12751do = textView;
        TextView textView2 = (TextView) findViewById(com.joeykrim.rootcheck.R.id.navigation_bar_item_large_label_view);
        this.f12765if = textView2;
        setBackgroundResource(com.joeykrim.rootcheck.R.drawable.mtrl_navigation_bar_item_background);
        this.f12758for = getResources().getDimensionPixelSize(mo810new());
        this.f12768new = viewGroup.getPaddingBottom();
        this.f12771try = getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.m3_navigation_item_active_indicator_label_padding);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        textView.setImportantForAccessibility(2);
        textView2.setImportantForAccessibility(2);
        setFocusable(true);
        m6604do(textView.getTextSize(), textView2.getTextSize());
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new Cdo());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m6595final(android.widget.TextView r4, int r5) {
        /*
            defpackage.XG.m2800for(r4, r5)
            android.content.Context r0 = r4.getContext()
            r1 = 0
            if (r5 != 0) goto Lc
        La:
            r5 = 0
            goto L59
        Lc:
            int[] r2 = defpackage.O2.r
            android.content.res.TypedArray r5 = r0.obtainStyledAttributes(r5, r2)
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            boolean r3 = r5.getValue(r1, r2)
            r5.recycle()
            if (r3 != 0) goto L21
            goto La
        L21:
            int r5 = android.os.Build.VERSION.SDK_INT
            r3 = 22
            if (r5 < r3) goto L2c
            int r5 = defpackage.C0637Yr.m2962do(r2)
            goto L31
        L2c:
            int r5 = r2.data
            int r5 = r5 >> r1
            r5 = r5 & 15
        L31:
            r3 = 2
            if (r5 != r3) goto L4b
            int r5 = r2.data
            float r5 = android.util.TypedValue.complexToFloat(r5)
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            float r0 = r0.density
            float r5 = r5 * r0
            int r5 = java.lang.Math.round(r5)
            goto L59
        L4b:
            int r5 = r2.data
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            int r5 = android.util.TypedValue.complexToDimensionPixelSize(r5, r0)
        L59:
            if (r5 == 0) goto L5f
            float r5 = (float) r5
            r4.setTextSize(r1, r5)
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC2718eu.m6595final(android.widget.TextView, int):void");
    }

    /* renamed from: native, reason: not valid java name */
    public static void m6596native(ViewGroup viewGroup, int i) {
        viewGroup.setPadding(viewGroup.getPaddingLeft(), viewGroup.getPaddingTop(), viewGroup.getPaddingRight(), i);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m6597throw(float f, float f2, int i, TextView textView) {
        textView.setScaleX(f);
        textView.setScaleY(f2);
        textView.setVisibility(i);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m6598while(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m6599break(com.google.android.material.badge.Cdo cdo) {
        com.google.android.material.badge.Cdo cdo2 = this.f12753do;
        if (cdo2 == cdo) {
            return;
        }
        boolean z = cdo2 != null;
        ImageView imageView = this.f12750do;
        if (z && imageView != null) {
            if (cdo2 != null) {
                setClipChildren(true);
                setClipToPadding(true);
                com.google.android.material.badge.Cdo cdo3 = this.f12753do;
                if (cdo3 != null) {
                    if (cdo3.m5663for() != null) {
                        cdo3.m5663for().setForeground(null);
                    } else {
                        imageView.getOverlay().remove(cdo3);
                    }
                }
                this.f12753do = null;
            }
        }
        this.f12753do = cdo;
        if (imageView != null) {
            setClipChildren(false);
            setClipToPadding(false);
            com.google.android.material.badge.Cdo cdo4 = this.f12753do;
            Rect rect = new Rect();
            imageView.getDrawingRect(rect);
            cdo4.setBounds(rect);
            cdo4.m5664goto(imageView, null);
            if (cdo4.m5663for() != null) {
                cdo4.m5663for().setForeground(cdo4);
            } else {
                imageView.getOverlay().add(cdo4);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6600case() {
        Cgoto cgoto = this.f12752do;
        if (cgoto != null) {
            m6601catch(cgoto.isChecked());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0119  */
    /* renamed from: catch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6601catch(boolean r13) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC2718eu.m6601catch(boolean):void");
    }

    /* renamed from: class, reason: not valid java name */
    public final void m6602class(int i) {
        if (this.f12742case != i) {
            this.f12742case = i;
            if (this.f12769new && i == 2) {
                this.f12754do = f12738do;
            } else {
                this.f12754do = f12740if;
            }
            m6607import(getWidth());
            m6600case();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m6603const(int i) {
        this.f12756else = i;
        TextView textView = this.f12765if;
        m6595final(textView, i);
        m6604do(this.f12751do.getTextSize(), textView.getTextSize());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        FrameLayout frameLayout = this.f12749do;
        if (frameLayout != null && this.f12760for) {
            frameLayout.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6604do(float f, float f2) {
        this.f12743do = f - f2;
        this.f12762if = (f2 * 1.0f) / f;
        this.f12757for = (f * 1.0f) / f2;
    }

    @Override // androidx.appcompat.view.menu.Ccatch.Cdo
    /* renamed from: else */
    public final Cgoto mo3305else() {
        return this.f12752do;
    }

    /* renamed from: for, reason: not valid java name */
    public final View m6605for() {
        FrameLayout frameLayout = this.f12749do;
        return frameLayout != null ? frameLayout : this.f12750do;
    }

    @Override // android.view.View
    public final int getSuggestedMinimumHeight() {
        ViewGroup viewGroup = this.f12748do;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        return viewGroup.getMeasuredHeight() + m6605for().getMeasuredHeight() + ((FrameLayout.LayoutParams) m6605for().getLayoutParams()).topMargin + (viewGroup.getVisibility() == 0 ? this.f12771try : 0) + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public final int getSuggestedMinimumWidth() {
        ViewGroup viewGroup = this.f12748do;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewGroup.getLayoutParams();
        int measuredWidth = viewGroup.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        com.google.android.material.badge.Cdo cdo = this.f12753do;
        int minimumWidth = cdo == null ? 0 : cdo.getMinimumWidth() - this.f12753do.f10518do.f10481if.f10488catch.intValue();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) m6605for().getLayoutParams();
        return Math.max(Math.max(minimumWidth, layoutParams2.rightMargin) + this.f12750do.getMeasuredWidth() + Math.max(minimumWidth, layoutParams2.leftMargin), measuredWidth);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m6606goto() {
        Drawable drawable = this.f12746do;
        ColorStateList colorStateList = this.f12745do;
        FrameLayout frameLayout = this.f12749do;
        RippleDrawable rippleDrawable = null;
        boolean z = true;
        if (colorStateList != null) {
            View view = this.f12747do;
            Drawable background = view == null ? null : view.getBackground();
            if (this.f12760for) {
                if ((view == null ? null : view.getBackground()) != null && frameLayout != null && background != null) {
                    rippleDrawable = new RippleDrawable(C3433oA.m7696for(this.f12745do), null, background);
                    z = false;
                }
            }
            if (drawable == null) {
                drawable = new RippleDrawable(C3433oA.m7695do(this.f12745do), null, null);
            }
        }
        if (frameLayout != null) {
            frameLayout.setPadding(0, 0, 0, 0);
            frameLayout.setForeground(rippleDrawable);
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setBackground(drawable);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(z);
        }
    }

    @Override // androidx.appcompat.view.menu.Ccatch.Cdo
    /* renamed from: if */
    public final void mo3307if(Cgoto cgoto) {
        this.f12752do = cgoto;
        cgoto.getClass();
        refreshDrawableState();
        m6601catch(cgoto.isChecked());
        setEnabled(cgoto.isEnabled());
        Drawable icon = cgoto.getIcon();
        if (icon != this.f12764if) {
            this.f12764if = icon;
            if (icon != null) {
                Drawable.ConstantState constantState = icon.getConstantState();
                if (constantState != null) {
                    icon = constantState.newDrawable();
                }
                icon = C0426Pe.m1779goto(icon).mutate();
                this.f12759for = icon;
                ColorStateList colorStateList = this.f12763if;
                if (colorStateList != null) {
                    C0426Pe.Cdo.m1787goto(icon, colorStateList);
                }
            }
            this.f12750do.setImageDrawable(icon);
        }
        CharSequence charSequence = cgoto.f5477do;
        this.f12751do.setText(charSequence);
        this.f12765if.setText(charSequence);
        Cgoto cgoto2 = this.f12752do;
        if (cgoto2 == null || TextUtils.isEmpty(cgoto2.f5481for)) {
            setContentDescription(charSequence);
        }
        Cgoto cgoto3 = this.f12752do;
        if (cgoto3 != null && !TextUtils.isEmpty(cgoto3.f5489new)) {
            charSequence = this.f12752do.f5489new;
        }
        int i = Build.VERSION.SDK_INT;
        if (i > 23) {
            KH.m1131do(this, charSequence);
        }
        setId(cgoto.f5466do);
        if (!TextUtils.isEmpty(cgoto.f5481for)) {
            setContentDescription(cgoto.f5481for);
        }
        CharSequence charSequence2 = !TextUtils.isEmpty(cgoto.f5489new) ? cgoto.f5489new : cgoto.f5477do;
        if (i > 23) {
            KH.m1131do(this, charSequence2);
        }
        setVisibility(cgoto.isVisible() ? 0 : 8);
        this.f12755do = true;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m6607import(int i) {
        View view = this.f12747do;
        if (view == null || i <= 0) {
            return;
        }
        int min = Math.min(this.f12761goto, i - (this.f12741break * 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = this.f12769new && this.f12742case == 2 ? min : this.f12770this;
        layoutParams.width = min;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: new */
    public int mo810new() {
        return com.joeykrim.rootcheck.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        Cgoto cgoto = this.f12752do;
        if (cgoto != null && cgoto.isCheckable() && this.f12752do.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, f12739do);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        Context context;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        com.google.android.material.badge.Cdo cdo = this.f12753do;
        if (cdo != null && cdo.isVisible()) {
            Cgoto cgoto = this.f12752do;
            CharSequence charSequence = cgoto.f5477do;
            if (!TextUtils.isEmpty(cgoto.f5481for)) {
                charSequence = this.f12752do.f5481for;
            }
            StringBuilder sb = new StringBuilder();
            sb.append((Object) charSequence);
            sb.append(", ");
            com.google.android.material.badge.Cdo cdo2 = this.f12753do;
            CharSequence charSequence2 = null;
            if (cdo2.isVisible()) {
                BadgeState badgeState = cdo2.f10518do;
                BadgeState.State state = badgeState.f10481if;
                String str = state.f10485break;
                if (str != null) {
                    CharSequence charSequence3 = state.f10492do;
                    charSequence2 = charSequence3 != null ? charSequence3 : str;
                } else {
                    boolean m5660case = cdo2.m5660case();
                    BadgeState.State state2 = badgeState.f10481if;
                    if (!m5660case) {
                        charSequence2 = state2.f10503if;
                    } else if (state2.f10500goto != 0 && (context = cdo2.f10519do.get()) != null) {
                        if (cdo2.f10521for != -2) {
                            int m5665new = cdo2.m5665new();
                            int i = cdo2.f10521for;
                            if (m5665new > i) {
                                charSequence2 = context.getString(state2.f10508this, Integer.valueOf(i));
                            }
                        }
                        charSequence2 = context.getResources().getQuantityString(state2.f10500goto, cdo2.m5665new(), Integer.valueOf(cdo2.m5665new()));
                    }
                }
            }
            sb.append((Object) charSequence2);
            accessibilityNodeInfo.setContentDescription(sb.toString());
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i2 = 0;
        for (int i3 = 0; i3 < indexOfChild; i3++) {
            View childAt = viewGroup.getChildAt(i3);
            if ((childAt instanceof AbstractC2718eu) && childAt.getVisibility() == 0) {
                i2++;
            }
        }
        accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) C3893w.Ccase.m8509do(0, 1, i2, false, isSelected(), 1).f16163do);
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) C3893w.Cdo.f16169for.f16178do);
        }
        accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(com.joeykrim.rootcheck.R.string.item_view_role_description));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new Cif(i));
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f12751do.setEnabled(z);
        this.f12765if.setEnabled(z);
        this.f12750do.setEnabled(z);
        if (!z) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (Build.VERSION.SDK_INT >= 24) {
                QK.Ccase.m1878new(this, null);
                return;
            }
            return;
        }
        Context context = getContext();
        int i = Build.VERSION.SDK_INT;
        Yw yw = i >= 24 ? new Yw(Yw.Cdo.m2975if(context, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE)) : new Yw(null);
        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
        if (i >= 24) {
            QK.Ccase.m1878new(this, yw.f4770do);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final void m6608super(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f12751do.setTextColor(colorStateList);
            this.f12765if.setTextColor(colorStateList);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m6609this(float f, float f2) {
        View view = this.f12747do;
        if (view != null) {
            Cfor cfor = this.f12754do;
            cfor.getClass();
            LinearInterpolator linearInterpolator = C2785g1.f13028do;
            view.setScaleX((0.6f * f) + 0.4f);
            view.setScaleY(cfor.mo6610do(f, f2));
            view.setAlpha(C2785g1.m6709do(0.0f, 1.0f, f2 == 0.0f ? 0.8f : 0.0f, f2 == 0.0f ? 1.0f : 0.2f, f));
        }
        this.f12767new = f;
    }

    /* renamed from: try */
    public abstract int mo811try();
}
