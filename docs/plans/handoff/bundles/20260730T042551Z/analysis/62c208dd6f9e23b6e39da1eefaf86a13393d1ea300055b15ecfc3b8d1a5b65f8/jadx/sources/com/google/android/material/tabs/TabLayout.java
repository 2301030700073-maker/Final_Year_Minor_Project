package com.google.android.material.tabs;

import android.R;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.facebook.ads.AdError;
import com.google.android.gms.common.api.Api;
import defpackage.AbstractC3536pw;
import defpackage.BG;
import defpackage.C0154Cr;
import defpackage.C0222Ft;
import defpackage.C0426Pe;
import defpackage.C0492Se;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C0781bx;
import defpackage.C2662dx;
import defpackage.C2775fs;
import defpackage.C2785g1;
import defpackage.C3385nL;
import defpackage.C3433oA;
import defpackage.C3645ro;
import defpackage.C3738tL;
import defpackage.C3893w;
import defpackage.C3992xh;
import defpackage.C4108zf;
import defpackage.KH;
import defpackage.O2;
import defpackage.O4;
import defpackage.QK;
import defpackage.XG;
import defpackage.Yw;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

@ViewPager.Cnew
/* loaded from: classes3.dex */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: do, reason: not valid java name */
    public static final C2662dx f11525do = new C2662dx(16);

    /* renamed from: break, reason: not valid java name */
    public final int f11526break;

    /* renamed from: case, reason: not valid java name */
    public final int f11527case;

    /* renamed from: catch, reason: not valid java name */
    public int f11528catch;

    /* renamed from: class, reason: not valid java name */
    public final int f11529class;

    /* renamed from: const, reason: not valid java name */
    public int f11530const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float f11531do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f11532do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f11533do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ColorStateList f11534do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PorterDuff.Mode f11535do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f11536do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ViewPager f11537do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0781bx f11538do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f11539do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f11540do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f11541do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f11542do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f11543do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ctry f11544do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public com.google.android.material.tabs.Cdo f11545do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Ctry> f11546do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC3536pw f11547do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f11548do;

    /* renamed from: else, reason: not valid java name */
    public final int f11549else;

    /* renamed from: final, reason: not valid java name */
    public final int f11550final;

    /* renamed from: for, reason: not valid java name */
    public int f11551for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final ColorStateList f11552for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f11553for;

    /* renamed from: goto, reason: not valid java name */
    public final int f11554goto;

    /* renamed from: if, reason: not valid java name */
    public final float f11555if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ColorStateList f11556if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<Cif> f11557if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f11558if;

    /* renamed from: import, reason: not valid java name */
    public int f11559import;

    /* renamed from: native, reason: not valid java name */
    public final int f11560native;

    /* renamed from: new, reason: not valid java name */
    public final int f11561new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f11562new;

    /* renamed from: public, reason: not valid java name */
    public int f11563public;

    /* renamed from: return, reason: not valid java name */
    public int f11564return;

    /* renamed from: static, reason: not valid java name */
    public int f11565static;

    /* renamed from: super, reason: not valid java name */
    public final int f11566super;

    /* renamed from: this, reason: not valid java name */
    public final int f11567this;

    /* renamed from: throw, reason: not valid java name */
    public final int f11568throw;

    /* renamed from: try, reason: not valid java name */
    public final int f11569try;

    /* renamed from: while, reason: not valid java name */
    public final int f11570while;

    /* renamed from: com.google.android.material.tabs.TabLayout$case, reason: invalid class name */
    public static class Ccase implements ViewPager.Cgoto {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference<TabLayout> f11571do;

        /* renamed from: for, reason: not valid java name */
        public int f11572for;

        /* renamed from: new, reason: not valid java name */
        public int f11573new;

        public Ccase(TabLayout tabLayout) {
            this.f11571do = new WeakReference<>(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: do */
        public final void mo4671do(float f, int i, int i2) {
            TabLayout tabLayout = this.f11571do.get();
            if (tabLayout != null) {
                int i3 = this.f11573new;
                tabLayout.m5942class(i, f, i3 != 2 || this.f11572for == 1, (i3 == 2 && this.f11572for == 0) ? false : true, false);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: for */
        public final void mo4672for(int i) {
            this.f11572for = this.f11573new;
            this.f11573new = i;
            TabLayout tabLayout = this.f11571do.get();
            if (tabLayout != null) {
                tabLayout.f11565static = this.f11573new;
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.Cgoto
        /* renamed from: new */
        public final void mo1557new(int i) {
            TabLayout tabLayout = this.f11571do.get();
            if (tabLayout == null || tabLayout.m5940case() == i || i >= tabLayout.f11546do.size()) {
                return;
            }
            int i2 = this.f11573new;
            tabLayout.m5939break(tabLayout.m5945else(i), i2 == 0 || (i2 == 2 && this.f11572for == 0));
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$do, reason: invalid class name */
    public class Cdo implements ViewPager.Celse {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11575do;

        public Cdo() {
        }

        @Override // androidx.viewpager.widget.ViewPager.Celse
        /* renamed from: if */
        public final void mo4673if(ViewPager viewPager, AbstractC3536pw abstractC3536pw, AbstractC3536pw abstractC3536pw2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f11537do == viewPager) {
                tabLayout.m5941catch(abstractC3536pw2, this.f11575do);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$else, reason: invalid class name */
    public final class Celse extends LinearLayout {

        /* renamed from: do, reason: not valid java name */
        public Drawable f11576do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public View f11577do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ImageView f11578do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public TextView f11579do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Ctry f11580do;

        /* renamed from: for, reason: not valid java name */
        public int f11582for;

        /* renamed from: if, reason: not valid java name */
        public ImageView f11583if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public TextView f11584if;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v3, types: [android.graphics.drawable.RippleDrawable] */
        /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View, android.widget.LinearLayout, com.google.android.material.tabs.TabLayout$else] */
        public Celse(Context context) {
            super(context);
            this.f11582for = 2;
            int i = TabLayout.this.f11529class;
            if (i != 0) {
                Drawable m7997extends = C3645ro.m7997extends(context, i);
                this.f11576do = m7997extends;
                if (m7997extends != null && m7997extends.isStateful()) {
                    this.f11576do.setState(getDrawableState());
                }
            } else {
                this.f11576do = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            ColorStateList colorStateList = TabLayout.this.f11552for;
            if (colorStateList != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList m7695do = C3433oA.m7695do(colorStateList);
                boolean z = TabLayout.this.f11553for;
                gradientDrawable = new RippleDrawable(m7695do, z ? null : gradientDrawable, z ? null : gradientDrawable2);
            }
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            setBackground(gradientDrawable);
            TabLayout.this.invalidate();
            setPaddingRelative(TabLayout.this.f11561new, TabLayout.this.f11569try, TabLayout.this.f11527case, TabLayout.this.f11549else);
            setGravity(17);
            setOrientation(!TabLayout.this.f11548do ? 1 : 0);
            setClickable(true);
            Context context2 = getContext();
            int i2 = Build.VERSION.SDK_INT;
            Yw yw = i2 >= 24 ? new Yw(Yw.Cdo.m2975if(context2, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE)) : new Yw(null);
            if (i2 >= 24) {
                QK.Ccase.m1878new(this, yw.f4770do);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public final void m5955do() {
            m5957if();
            Ctry ctry = this.f11580do;
            boolean z = false;
            if (ctry != null) {
                TabLayout tabLayout = ctry.f11594do;
                if (tabLayout == null) {
                    throw new IllegalArgumentException("Tab not attached to a TabLayout");
                }
                int m5940case = tabLayout.m5940case();
                if (m5940case != -1 && m5940case == ctry.f11590do) {
                    z = true;
                }
            }
            setSelected(z);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f11576do;
            boolean z = false;
            if (drawable != null && drawable.isStateful()) {
                z = false | this.f11576do.setState(drawableState);
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public final void m5956for(TextView textView, ImageView imageView, boolean z) {
            boolean z2;
            Drawable drawable;
            Ctry ctry = this.f11580do;
            Drawable mutate = (ctry == null || (drawable = ctry.f11591do) == null) ? null : C0426Pe.m1779goto(drawable).mutate();
            TabLayout tabLayout = TabLayout.this;
            if (mutate != null) {
                C0426Pe.Cdo.m1787goto(mutate, tabLayout.f11556if);
                PorterDuff.Mode mode = tabLayout.f11535do;
                if (mode != null) {
                    C0426Pe.Cdo.m1790this(mutate, mode);
                }
            }
            Ctry ctry2 = this.f11580do;
            CharSequence charSequence = ctry2 != null ? ctry2.f11595do : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z3 = !TextUtils.isEmpty(charSequence);
            if (textView != null) {
                z2 = z3 && this.f11580do.f11597if == 1;
                textView.setText(z3 ? charSequence : null);
                textView.setVisibility(z2 ? 0 : 8);
                if (z3) {
                    setVisibility(0);
                }
            } else {
                z2 = false;
            }
            if (z && imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int m8283for = (z2 && imageView.getVisibility() == 0) ? (int) C3738tL.m8283for(getContext(), 8) : 0;
                if (tabLayout.f11548do) {
                    if (m8283for != marginLayoutParams.getMarginEnd()) {
                        marginLayoutParams.setMarginEnd(m8283for);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (m8283for != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = m8283for;
                    marginLayoutParams.setMarginEnd(0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Ctry ctry3 = this.f11580do;
            CharSequence charSequence2 = ctry3 != null ? ctry3.f11598if : null;
            if (Build.VERSION.SDK_INT > 23) {
                if (!z3) {
                    charSequence = charSequence2;
                }
                KH.m1131do(this, charSequence);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m5957if() {
            int i;
            ViewParent parent;
            Ctry ctry = this.f11580do;
            View view = ctry != null ? ctry.f11592do : null;
            if (view != null) {
                ViewParent parent2 = view.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(view);
                    }
                    View view2 = this.f11577do;
                    if (view2 != null && (parent = view2.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.f11577do);
                    }
                    addView(view);
                }
                this.f11577do = view;
                TextView textView = this.f11579do;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f11578do;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f11578do.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(R.id.text1);
                this.f11584if = textView2;
                if (textView2 != null) {
                    this.f11582for = textView2.getMaxLines();
                }
                this.f11583if = (ImageView) view.findViewById(R.id.icon);
            } else {
                View view3 = this.f11577do;
                if (view3 != null) {
                    removeView(view3);
                    this.f11577do = null;
                }
                this.f11584if = null;
                this.f11583if = null;
            }
            if (this.f11577do == null) {
                if (this.f11578do == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(com.joeykrim.rootcheck.R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                    this.f11578do = imageView2;
                    addView(imageView2, 0);
                }
                if (this.f11579do == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(com.joeykrim.rootcheck.R.layout.design_layout_tab_text, (ViewGroup) this, false);
                    this.f11579do = textView3;
                    addView(textView3);
                    this.f11582for = this.f11579do.getMaxLines();
                }
                TextView textView4 = this.f11579do;
                TabLayout tabLayout = TabLayout.this;
                XG.m2800for(textView4, tabLayout.f11554goto);
                if (!isSelected() || (i = tabLayout.f11526break) == -1) {
                    XG.m2800for(this.f11579do, tabLayout.f11567this);
                } else {
                    XG.m2800for(this.f11579do, i);
                }
                ColorStateList colorStateList = tabLayout.f11534do;
                if (colorStateList != null) {
                    this.f11579do.setTextColor(colorStateList);
                }
                m5956for(this.f11579do, this.f11578do, true);
                ImageView imageView3 = this.f11578do;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new com.google.android.material.tabs.Cfor(this, imageView3));
                }
                TextView textView5 = this.f11579do;
                if (textView5 != null) {
                    textView5.addOnLayoutChangeListener(new com.google.android.material.tabs.Cfor(this, textView5));
                }
            } else {
                TextView textView6 = this.f11584if;
                if (textView6 != null || this.f11583if != null) {
                    m5956for(textView6, this.f11583if, false);
                }
            }
            if (ctry == null || TextUtils.isEmpty(ctry.f11598if)) {
                return;
            }
            setContentDescription(ctry.f11598if);
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) C3893w.Ccase.m8509do(0, 1, this.f11580do.f11590do, false, isSelected(), 1).f16163do);
            if (isSelected()) {
                accessibilityNodeInfo.setClickable(false);
                accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) C3893w.Cdo.f16169for.f16178do);
            }
            accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(com.joeykrim.rootcheck.R.string.item_view_role_description));
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        
            if (((r0 / r2.getPaint().getTextSize()) * r2.getLineWidth(0)) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L31;
         */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onMeasure(int r8, int r9) {
            /*
                r7 = this;
                int r0 = android.view.View.MeasureSpec.getSize(r8)
                int r1 = android.view.View.MeasureSpec.getMode(r8)
                com.google.android.material.tabs.TabLayout r2 = com.google.android.material.tabs.TabLayout.this
                int r3 = r2.f11530const
                if (r3 <= 0) goto L18
                if (r1 == 0) goto L12
                if (r0 <= r3) goto L18
            L12:
                r8 = -2147483648(0xffffffff80000000, float:-0.0)
                int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r8)
            L18:
                super.onMeasure(r8, r9)
                android.widget.TextView r0 = r7.f11579do
                if (r0 == 0) goto L9a
                float r0 = r2.f11531do
                int r1 = r7.f11582for
                android.widget.ImageView r3 = r7.f11578do
                r4 = 1
                if (r3 == 0) goto L30
                int r3 = r3.getVisibility()
                if (r3 != 0) goto L30
                r1 = 1
                goto L3c
            L30:
                android.widget.TextView r3 = r7.f11579do
                if (r3 == 0) goto L3c
                int r3 = r3.getLineCount()
                if (r3 <= r4) goto L3c
                float r0 = r2.f11555if
            L3c:
                android.widget.TextView r3 = r7.f11579do
                float r3 = r3.getTextSize()
                android.widget.TextView r5 = r7.f11579do
                int r5 = r5.getLineCount()
                android.widget.TextView r6 = r7.f11579do
                int r6 = r6.getMaxLines()
                int r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                if (r3 != 0) goto L56
                if (r6 < 0) goto L9a
                if (r1 == r6) goto L9a
            L56:
                int r2 = r2.f11564return
                r6 = 0
                if (r2 != r4) goto L8b
                if (r3 <= 0) goto L8b
                if (r5 != r4) goto L8b
                android.widget.TextView r2 = r7.f11579do
                android.text.Layout r2 = r2.getLayout()
                if (r2 == 0) goto L8a
                float r3 = r2.getLineWidth(r6)
                android.text.TextPaint r2 = r2.getPaint()
                float r2 = r2.getTextSize()
                float r2 = r0 / r2
                float r2 = r2 * r3
                int r3 = r7.getMeasuredWidth()
                int r5 = r7.getPaddingLeft()
                int r3 = r3 - r5
                int r5 = r7.getPaddingRight()
                int r3 = r3 - r5
                float r3 = (float) r3
                int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
                if (r2 <= 0) goto L8b
            L8a:
                r4 = 0
            L8b:
                if (r4 == 0) goto L9a
                android.widget.TextView r2 = r7.f11579do
                r2.setTextSize(r6, r0)
                android.widget.TextView r0 = r7.f11579do
                r0.setMaxLines(r1)
                super.onMeasure(r8, r9)
            L9a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.Celse.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public final boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f11580do == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            Ctry ctry = this.f11580do;
            TabLayout tabLayout = ctry.f11594do;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.m5939break(ctry, true);
            return true;
        }

        @Override // android.view.View
        public final void setSelected(boolean z) {
            if (isSelected() != z) {
            }
            super.setSelected(z);
            TextView textView = this.f11579do;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f11578do;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f11577do;
            if (view != null) {
                view.setSelected(z);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$for, reason: invalid class name */
    public class Cfor extends DataSetObserver {
        public Cfor() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            TabLayout.this.m5952this();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            TabLayout.this.m5952this();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$goto, reason: invalid class name */
    public static class Cgoto implements Cif {

        /* renamed from: do, reason: not valid java name */
        public final ViewPager f11586do;

        public Cgoto(ViewPager viewPager) {
            this.f11586do = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.Cif
        /* renamed from: do, reason: not valid java name */
        public final void mo5958do() {
        }

        @Override // com.google.android.material.tabs.TabLayout.Cif
        /* renamed from: for, reason: not valid java name */
        public final void mo5959for() {
        }

        @Override // com.google.android.material.tabs.TabLayout.Cif
        /* renamed from: if, reason: not valid java name */
        public final void mo5960if(Ctry ctry) {
            this.f11586do.m4693package(ctry.f11590do);
        }
    }

    @Deprecated
    /* renamed from: com.google.android.material.tabs.TabLayout$if, reason: invalid class name */
    public interface Cif<T extends Ctry> {
        /* renamed from: do */
        void mo5958do();

        /* renamed from: for */
        void mo5959for();

        /* renamed from: if */
        void mo5960if(T t);
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$new, reason: invalid class name */
    public class Cnew extends LinearLayout {

        /* renamed from: do, reason: not valid java name */
        public ValueAnimator f11587do;

        /* renamed from: for, reason: not valid java name */
        public int f11589for;

        public Cnew(Context context) {
            super(context);
            this.f11589for = -1;
            setWillNotDraw(false);
        }

        /* renamed from: do, reason: not valid java name */
        public final void m5961do(int i) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f11565static == 0 || (tabLayout.f11536do.getBounds().left == -1 && tabLayout.f11536do.getBounds().right == -1)) {
                View childAt = getChildAt(i);
                com.google.android.material.tabs.Cdo cdo = tabLayout.f11545do;
                Drawable drawable = tabLayout.f11536do;
                cdo.getClass();
                RectF m5964do = com.google.android.material.tabs.Cdo.m5964do(tabLayout, childAt);
                drawable.setBounds((int) m5964do.left, drawable.getBounds().top, (int) m5964do.right, drawable.getBounds().bottom);
                tabLayout.f11551for = i;
            }
        }

        @Override // android.view.View
        public final void draw(Canvas canvas) {
            int height;
            TabLayout tabLayout = TabLayout.this;
            int height2 = tabLayout.f11536do.getBounds().height();
            if (height2 < 0) {
                height2 = tabLayout.f11536do.getIntrinsicHeight();
            }
            int i = tabLayout.f11563public;
            if (i == 0) {
                height = getHeight() - height2;
                height2 = getHeight();
            } else if (i != 1) {
                height = 0;
                if (i != 2) {
                    height2 = i != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - height2) / 2;
                height2 = (getHeight() + height2) / 2;
            }
            if (tabLayout.f11536do.getBounds().width() > 0) {
                Rect bounds = tabLayout.f11536do.getBounds();
                tabLayout.f11536do.setBounds(bounds.left, height, bounds.right, height2);
                tabLayout.f11536do.draw(canvas);
            }
            super.draw(canvas);
        }

        /* renamed from: for, reason: not valid java name */
        public final void m5962for(int i, int i2, boolean z) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f11551for == i) {
                return;
            }
            View childAt = getChildAt(tabLayout.m5940case());
            View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                m5961do(tabLayout.m5940case());
                return;
            }
            tabLayout.f11551for = i;
            com.google.android.material.tabs.Cif cif = new com.google.android.material.tabs.Cif(this, childAt, childAt2);
            if (!z) {
                this.f11587do.removeAllUpdateListeners();
                this.f11587do.addUpdateListener(cif);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f11587do = valueAnimator;
            valueAnimator.setInterpolator(tabLayout.f11532do);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(0.0f, 1.0f);
            valueAnimator.addUpdateListener(cif);
            valueAnimator.start();
        }

        /* renamed from: if, reason: not valid java name */
        public final void m5963if(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                TabLayout tabLayout = TabLayout.this;
                tabLayout.f11545do.mo5965if(tabLayout, view, view2, f, tabLayout.f11536do);
            } else {
                TabLayout tabLayout2 = TabLayout.this;
                Drawable drawable = tabLayout2.f11536do;
                drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout2.f11536do.getBounds().bottom);
            }
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            postInvalidateOnAnimation();
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f11587do;
            TabLayout tabLayout = TabLayout.this;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                m5962for(tabLayout.m5940case(), -1, false);
                return;
            }
            if (tabLayout.f11551for == -1) {
                tabLayout.f11551for = tabLayout.m5940case();
            }
            m5961do(tabLayout.f11551for);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.f11559import == 1 || tabLayout.f11564return == 2) {
                int childCount = getChildCount();
                int i3 = 0;
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (childAt.getVisibility() == 0) {
                        i3 = Math.max(i3, childAt.getMeasuredWidth());
                    }
                }
                if (i3 <= 0) {
                    return;
                }
                if (i3 * childCount <= getMeasuredWidth() - (((int) C3738tL.m8283for(getContext(), 16)) * 2)) {
                    boolean z2 = false;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                        if (layoutParams.width != i3 || layoutParams.weight != 0.0f) {
                            layoutParams.width = i3;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    tabLayout.f11559import = 0;
                    tabLayout.m5953throw(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.f11589for == i) {
                return;
            }
            requestLayout();
            this.f11589for = i;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Drawable f11591do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public View f11592do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Celse f11593do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public TabLayout f11594do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public CharSequence f11595do;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public CharSequence f11598if;

        /* renamed from: do, reason: not valid java name */
        public int f11590do = -1;

        /* renamed from: if, reason: not valid java name */
        public final int f11597if = 1;

        /* renamed from: for, reason: not valid java name */
        public int f11596for = -1;
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.tabStyle);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        m5949if(view);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m5939break(Ctry ctry, boolean z) {
        Ctry ctry2 = this.f11544do;
        ArrayList<Cif> arrayList = this.f11557if;
        if (ctry2 == ctry) {
            if (ctry2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    arrayList.get(size).mo5958do();
                }
                m5947for(ctry.f11590do);
                return;
            }
            return;
        }
        int i = ctry != null ? ctry.f11590do : -1;
        if (z) {
            if ((ctry2 == null || ctry2.f11590do == -1) && i != -1) {
                m5942class(i, 0.0f, true, true, true);
            } else {
                m5947for(i);
            }
            if (i != -1) {
                m5943const(i);
            }
        }
        this.f11544do = ctry;
        if (ctry2 != null && ctry2.f11594do != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                arrayList.get(size2).mo5959for();
            }
        }
        if (ctry != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                arrayList.get(size3).mo5960if(ctry);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final int m5940case() {
        Ctry ctry = this.f11544do;
        if (ctry != null) {
            return ctry.f11590do;
        }
        return -1;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5941catch(AbstractC3536pw abstractC3536pw, boolean z) {
        Cfor cfor;
        AbstractC3536pw abstractC3536pw2 = this.f11547do;
        if (abstractC3536pw2 != null && (cfor = this.f11541do) != null) {
            abstractC3536pw2.mo6372return(cfor);
        }
        this.f11547do = abstractC3536pw;
        if (z && abstractC3536pw != null) {
            if (this.f11541do == null) {
                this.f11541do = new Cfor();
            }
            abstractC3536pw.mo6367const(this.f11541do);
        }
        m5952this();
    }

    /* renamed from: class, reason: not valid java name */
    public final void m5942class(int i, float f, boolean z, boolean z2, boolean z3) {
        float f2 = i + f;
        int round = Math.round(f2);
        if (round >= 0) {
            Cnew cnew = this.f11543do;
            if (round >= cnew.getChildCount()) {
                return;
            }
            if (z2) {
                cnew.getClass();
                TabLayout.this.f11551for = Math.round(f2);
                ValueAnimator valueAnimator = cnew.f11587do;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    cnew.f11587do.cancel();
                }
                cnew.m5963if(cnew.getChildAt(i), cnew.getChildAt(i + 1), f);
            }
            ValueAnimator valueAnimator2 = this.f11533do;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f11533do.cancel();
            }
            int m5954try = m5954try(f, i);
            int scrollX = getScrollX();
            boolean z4 = (i < m5940case() && m5954try >= scrollX) || (i > m5940case() && m5954try <= scrollX) || i == m5940case();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (getLayoutDirection() == 1) {
                z4 = (i < m5940case() && m5954try <= scrollX) || (i > m5940case() && m5954try >= scrollX) || i == m5940case();
            }
            if (z4 || this.f11565static == 1 || z3) {
                if (i < 0) {
                    m5954try = 0;
                }
                scrollTo(m5954try, 0);
            }
            if (z) {
                m5943const(round);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m5943const(int i) {
        Cnew cnew = this.f11543do;
        int childCount = cnew.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = cnew.getChildAt(i2);
                if ((i2 != i || childAt.isSelected()) && (i2 == i || !childAt.isSelected())) {
                    childAt.setSelected(i2 == i);
                    childAt.setActivated(i2 == i);
                } else {
                    childAt.setSelected(i2 == i);
                    childAt.setActivated(i2 == i);
                    if (childAt instanceof Celse) {
                        ((Celse) childAt).m5957if();
                    }
                }
                i2++;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5944do(Ctry ctry, boolean z) {
        ArrayList<Ctry> arrayList = this.f11546do;
        int size = arrayList.size();
        if (ctry.f11594do != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        ctry.f11590do = size;
        arrayList.add(size, ctry);
        int size2 = arrayList.size();
        int i = -1;
        for (int i2 = size + 1; i2 < size2; i2++) {
            if (arrayList.get(i2).f11590do == this.f11551for) {
                i = i2;
            }
            arrayList.get(i2).f11590do = i2;
        }
        this.f11551for = i;
        Celse celse = ctry.f11593do;
        celse.setSelected(false);
        celse.setActivated(false);
        int i3 = ctry.f11590do;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.f11564return == 1 && this.f11559import == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
        this.f11543do.addView(celse, i3, layoutParams);
        if (z) {
            TabLayout tabLayout = ctry.f11594do;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.m5939break(ctry, true);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final Ctry m5945else(int i) {
        if (i >= 0) {
            ArrayList<Ctry> arrayList = this.f11546do;
            if (i < arrayList.size()) {
                return arrayList.get(i);
            }
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5946final(ViewPager viewPager) {
        m5951super(viewPager, false);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5947for(int i) {
        boolean z;
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (isLaidOut()) {
                Cnew cnew = this.f11543do;
                int childCount = cnew.getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        z = false;
                        break;
                    } else {
                        if (cnew.getChildAt(i2).getWidth() <= 0) {
                            z = true;
                            break;
                        }
                        i2++;
                    }
                }
                if (!z) {
                    int scrollX = getScrollX();
                    int m5954try = m5954try(0.0f, i);
                    int i3 = this.f11560native;
                    if (scrollX != m5954try) {
                        if (this.f11533do == null) {
                            ValueAnimator valueAnimator = new ValueAnimator();
                            this.f11533do = valueAnimator;
                            valueAnimator.setInterpolator(this.f11532do);
                            this.f11533do.setDuration(i3);
                            this.f11533do.addUpdateListener(new BG(this));
                        }
                        this.f11533do.setIntValues(scrollX, m5954try);
                        this.f11533do.start();
                    }
                    ValueAnimator valueAnimator2 = cnew.f11587do;
                    if (valueAnimator2 != null && valueAnimator2.isRunning() && TabLayout.this.f11551for != i) {
                        cnew.f11587do.cancel();
                    }
                    cnew.m5962for(i, i3, true);
                    return;
                }
            }
        }
        m5942class(i, 0.0f, true, true, true);
    }

    /* renamed from: goto, reason: not valid java name */
    public final Ctry m5948goto() {
        Ctry ctry = (Ctry) f11525do.mo4867do();
        if (ctry == null) {
            ctry = new Ctry();
        }
        ctry.f11594do = this;
        C0781bx c0781bx = this.f11538do;
        Celse celse = c0781bx != null ? (Celse) c0781bx.mo4867do() : null;
        if (celse == null) {
            celse = new Celse(getContext());
        }
        if (ctry != celse.f11580do) {
            celse.f11580do = ctry;
            celse.m5955do();
        }
        celse.setFocusable(true);
        int i = this.f11550final;
        if (i == -1) {
            int i2 = this.f11564return;
            i = (i2 == 0 || i2 == 2) ? this.f11568throw : 0;
        }
        celse.setMinimumWidth(i);
        if (TextUtils.isEmpty(ctry.f11598if)) {
            celse.setContentDescription(ctry.f11595do);
        } else {
            celse.setContentDescription(ctry.f11598if);
        }
        ctry.f11593do = celse;
        int i3 = ctry.f11596for;
        if (i3 != -1) {
            celse.setId(i3);
        }
        return ctry;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m5949if(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        TabItem tabItem = (TabItem) view;
        Ctry m5948goto = m5948goto();
        CharSequence charSequence = tabItem.f11523do;
        if (charSequence != null) {
            if (TextUtils.isEmpty(m5948goto.f11598if) && !TextUtils.isEmpty(charSequence)) {
                m5948goto.f11593do.setContentDescription(charSequence);
            }
            m5948goto.f11595do = charSequence;
            Celse celse = m5948goto.f11593do;
            if (celse != null) {
                celse.m5955do();
            }
        }
        Drawable drawable = tabItem.f11522do;
        if (drawable != null) {
            m5948goto.f11591do = drawable;
            TabLayout tabLayout = m5948goto.f11594do;
            if (tabLayout.f11559import == 1 || tabLayout.f11564return == 2) {
                tabLayout.m5953throw(true);
            }
            Celse celse2 = m5948goto.f11593do;
            if (celse2 != null) {
                celse2.m5955do();
            }
        }
        int i = tabItem.f11524for;
        if (i != 0) {
            m5948goto.f11592do = LayoutInflater.from(m5948goto.f11593do.getContext()).inflate(i, (ViewGroup) m5948goto.f11593do, false);
            Celse celse3 = m5948goto.f11593do;
            if (celse3 != null) {
                celse3.m5955do();
            }
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            m5948goto.f11598if = tabItem.getContentDescription();
            Celse celse4 = m5948goto.f11593do;
            if (celse4 != null) {
                celse4.m5955do();
            }
        }
        m5944do(m5948goto, this.f11546do.isEmpty());
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (r0 != 2) goto L21;
     */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5950new() {
        /*
            r4 = this;
            int r0 = r4.f11564return
            r1 = 2
            r2 = 0
            if (r0 == 0) goto Lb
            if (r0 != r1) goto L9
            goto Lb
        L9:
            r0 = 0
            goto L14
        Lb:
            int r0 = r4.f11570while
            int r3 = r4.f11561new
            int r0 = r0 - r3
            int r0 = java.lang.Math.max(r2, r0)
        L14:
            java.util.WeakHashMap<android.view.View, nL> r3 = defpackage.QK.f2909do
            com.google.android.material.tabs.TabLayout$new r3 = r4.f11543do
            r3.setPaddingRelative(r0, r2, r2, r2)
            int r0 = r4.f11564return
            r2 = 1
            if (r0 == 0) goto L29
            if (r0 == r2) goto L25
            if (r0 == r1) goto L25
            goto L3c
        L25:
            r3.setGravity(r2)
            goto L3c
        L29:
            int r0 = r4.f11559import
            if (r0 == 0) goto L36
            if (r0 == r2) goto L32
            if (r0 == r1) goto L36
            goto L3c
        L32:
            r3.setGravity(r2)
            goto L3c
        L36:
            r0 = 8388611(0x800003, float:1.1754948E-38)
            r3.setGravity(r0)
        L3c:
            r4.m5953throw(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.m5950new():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        O4.m1611implements(this);
        if (this.f11537do == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m5951super((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f11562new) {
            m5946final(null);
            this.f11562new = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Celse celse;
        Drawable drawable;
        int i = 0;
        while (true) {
            Cnew cnew = this.f11543do;
            if (i >= cnew.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = cnew.getChildAt(i);
            if ((childAt instanceof Celse) && (drawable = (celse = (Celse) childAt).f11576do) != null) {
                drawable.setBounds(celse.getLeft(), celse.getTop(), celse.getRight(), celse.getBottom());
                celse.f11576do.draw(canvas);
            }
            i++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3893w.Ctry.m8536do(1, this.f11546do.size(), 1).f16179do);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int i = this.f11564return;
        return (i == 0 || i == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x009d, code lost:
    
        if (r0 != 2) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
    
        if (r9.getMeasuredWidth() != getMeasuredWidth()) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00aa, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b4, code lost:
    
        if (r9.getMeasuredWidth() < getMeasuredWidth()) goto L46;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r9, int r10) {
        /*
            r8 = this;
            android.content.Context r0 = r8.getContext()
            java.util.ArrayList<com.google.android.material.tabs.TabLayout$try> r1 = r8.f11546do
            int r2 = r1.size()
            r3 = 0
            r4 = 0
        Lc:
            r5 = 1
            if (r4 >= r2) goto L28
            java.lang.Object r6 = r1.get(r4)
            com.google.android.material.tabs.TabLayout$try r6 = (com.google.android.material.tabs.TabLayout.Ctry) r6
            if (r6 == 0) goto L25
            android.graphics.drawable.Drawable r7 = r6.f11591do
            if (r7 == 0) goto L25
            java.lang.CharSequence r6 = r6.f11595do
            boolean r6 = android.text.TextUtils.isEmpty(r6)
            if (r6 != 0) goto L25
            r1 = 1
            goto L29
        L25:
            int r4 = r4 + 1
            goto Lc
        L28:
            r1 = 0
        L29:
            if (r1 == 0) goto L32
            boolean r1 = r8.f11548do
            if (r1 != 0) goto L32
            r1 = 72
            goto L34
        L32:
            r1 = 48
        L34:
            float r0 = defpackage.C3738tL.m8283for(r0, r1)
            int r0 = java.lang.Math.round(r0)
            int r1 = android.view.View.MeasureSpec.getMode(r10)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = 1073741824(0x40000000, float:2.0)
            if (r1 == r2) goto L58
            if (r1 == 0) goto L49
            goto L6b
        L49:
            int r10 = r8.getPaddingTop()
            int r10 = r10 + r0
            int r0 = r8.getPaddingBottom()
            int r0 = r0 + r10
            int r10 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r4)
            goto L6b
        L58:
            int r1 = r8.getChildCount()
            if (r1 != r5) goto L6b
            int r1 = android.view.View.MeasureSpec.getSize(r10)
            if (r1 < r0) goto L6b
            android.view.View r1 = r8.getChildAt(r3)
            r1.setMinimumHeight(r0)
        L6b:
            int r0 = android.view.View.MeasureSpec.getSize(r9)
            int r1 = android.view.View.MeasureSpec.getMode(r9)
            if (r1 == 0) goto L89
            int r1 = r8.f11566super
            if (r1 <= 0) goto L7a
            goto L87
        L7a:
            float r0 = (float) r0
            android.content.Context r1 = r8.getContext()
            r2 = 56
            float r1 = defpackage.C3738tL.m8283for(r1, r2)
            float r0 = r0 - r1
            int r1 = (int) r0
        L87:
            r8.f11530const = r1
        L89:
            super.onMeasure(r9, r10)
            int r9 = r8.getChildCount()
            if (r9 != r5) goto Ld7
            android.view.View r9 = r8.getChildAt(r3)
            int r0 = r8.f11564return
            if (r0 == 0) goto Lac
            if (r0 == r5) goto La0
            r1 = 2
            if (r0 == r1) goto Lac
            goto Lb7
        La0:
            int r0 = r9.getMeasuredWidth()
            int r1 = r8.getMeasuredWidth()
            if (r0 == r1) goto Lb7
        Laa:
            r3 = 1
            goto Lb7
        Lac:
            int r0 = r9.getMeasuredWidth()
            int r1 = r8.getMeasuredWidth()
            if (r0 >= r1) goto Lb7
            goto Laa
        Lb7:
            if (r3 == 0) goto Ld7
            int r0 = r8.getPaddingTop()
            int r1 = r8.getPaddingBottom()
            int r1 = r1 + r0
            android.view.ViewGroup$LayoutParams r0 = r9.getLayoutParams()
            int r0 = r0.height
            int r10 = android.view.ViewGroup.getChildMeasureSpec(r10, r1, r0)
            int r0 = r8.getMeasuredWidth()
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r4)
            r9.measure(r0, r10)
        Ld7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 8) {
            int i = this.f11564return;
            if (!(i == 0 || i == 2)) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        O4.m1619protected(this, f);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return Math.max(0, ((this.f11543do.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight()) > 0;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m5951super(ViewPager viewPager, boolean z) {
        ArrayList arrayList;
        ViewPager viewPager2 = this.f11537do;
        if (viewPager2 != null) {
            Ccase ccase = this.f11539do;
            if (ccase != null) {
                viewPager2.mo4703throws(ccase);
            }
            Cdo cdo = this.f11540do;
            if (cdo != null && (arrayList = this.f11537do.f8028for) != null) {
                arrayList.remove(cdo);
            }
        }
        Cgoto cgoto = this.f11542do;
        ArrayList<Cif> arrayList2 = this.f11557if;
        if (cgoto != null) {
            arrayList2.remove(cgoto);
            this.f11542do = null;
        }
        if (viewPager != null) {
            this.f11537do = viewPager;
            if (this.f11539do == null) {
                this.f11539do = new Ccase(this);
            }
            Ccase ccase2 = this.f11539do;
            ccase2.f11573new = 0;
            ccase2.f11572for = 0;
            viewPager.mo4690if(ccase2);
            Cgoto cgoto2 = new Cgoto(viewPager);
            this.f11542do = cgoto2;
            if (!arrayList2.contains(cgoto2)) {
                arrayList2.add(cgoto2);
            }
            AbstractC3536pw mo4678catch = viewPager.mo4678catch();
            if (mo4678catch != null) {
                m5941catch(mo4678catch, true);
            }
            if (this.f11540do == null) {
                this.f11540do = new Cdo();
            }
            Cdo cdo2 = this.f11540do;
            cdo2.f11575do = true;
            if (viewPager.f8028for == null) {
                viewPager.f8028for = new ArrayList();
            }
            viewPager.f8028for.add(cdo2);
            m5942class(viewPager.f8038new, 0.0f, true, true, true);
        } else {
            this.f11537do = null;
            m5941catch(null, false);
        }
        this.f11562new = z;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m5952this() {
        int i;
        Cnew cnew = this.f11543do;
        for (int childCount = cnew.getChildCount() - 1; childCount >= 0; childCount--) {
            Celse celse = (Celse) cnew.getChildAt(childCount);
            cnew.removeViewAt(childCount);
            if (celse != null) {
                if (celse.f11580do != null) {
                    celse.f11580do = null;
                    celse.m5955do();
                }
                celse.setSelected(false);
                this.f11538do.mo4868if(celse);
            }
            requestLayout();
        }
        ArrayList<Ctry> arrayList = this.f11546do;
        Iterator<Ctry> it = arrayList.iterator();
        while (it.hasNext()) {
            Ctry next = it.next();
            it.remove();
            next.f11594do = null;
            next.f11593do = null;
            next.f11591do = null;
            next.f11596for = -1;
            next.f11595do = null;
            next.f11598if = null;
            next.f11590do = -1;
            next.f11592do = null;
            f11525do.mo4868if(next);
        }
        this.f11544do = null;
        AbstractC3536pw abstractC3536pw = this.f11547do;
        if (abstractC3536pw != null) {
            int mo171try = abstractC3536pw.mo171try();
            for (int i2 = 0; i2 < mo171try; i2++) {
                Ctry m5948goto = m5948goto();
                CharSequence mo1700else = this.f11547do.mo1700else(i2);
                if (TextUtils.isEmpty(m5948goto.f11598if) && !TextUtils.isEmpty(mo1700else)) {
                    m5948goto.f11593do.setContentDescription(mo1700else);
                }
                m5948goto.f11595do = mo1700else;
                Celse celse2 = m5948goto.f11593do;
                if (celse2 != null) {
                    celse2.m5955do();
                }
                m5944do(m5948goto, false);
            }
            ViewPager viewPager = this.f11537do;
            if (viewPager == null || mo171try <= 0 || (i = viewPager.f8038new) == m5940case() || i >= arrayList.size()) {
                return;
            }
            m5939break(m5945else(i), true);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m5953throw(boolean z) {
        int i = 0;
        while (true) {
            Cnew cnew = this.f11543do;
            if (i >= cnew.getChildCount()) {
                return;
            }
            View childAt = cnew.getChildAt(i);
            int i2 = this.f11550final;
            if (i2 == -1) {
                int i3 = this.f11564return;
                i2 = (i3 == 0 || i3 == 2) ? this.f11568throw : 0;
            }
            childAt.setMinimumWidth(i2);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.f11564return == 1 && this.f11559import == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z) {
                childAt.requestLayout();
            }
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final int m5954try(float f, int i) {
        Cnew cnew;
        View childAt;
        int i2 = this.f11564return;
        if ((i2 != 0 && i2 != 2) || (childAt = (cnew = this.f11543do).getChildAt(i)) == null) {
            return 0;
        }
        int i3 = i + 1;
        View childAt2 = i3 < cnew.getChildCount() ? cnew.getChildAt(i3) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return getLayoutDirection() == 0 ? left + i4 : left - i4;
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_Design_TabLayout), attributeSet, i);
        this.f11551for = -1;
        this.f11546do = new ArrayList<>();
        this.f11526break = -1;
        this.f11528catch = 0;
        this.f11530const = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f11557if = new ArrayList<>();
        this.f11538do = new C0781bx(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        Cnew cnew = new Cnew(context2);
        this.f11543do = cnew;
        super.addView(cnew, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.q, i, com.joeykrim.rootcheck.R.style.Widget_Design_TabLayout, 24);
        ColorStateList m2176new = C0492Se.m2176new(getBackground());
        if (m2176new != null) {
            C0716as c0716as = new C0716as();
            c0716as.m4778super(m2176new);
            c0716as.m4766class(context2);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            c0716as.m4770final(QK.Cnew.m1939this(this));
            setBackground(c0716as);
        }
        Drawable m3072new = C0659Zr.m3072new(context2, m3115new, 5);
        Drawable mutate = C0426Pe.m1779goto(m3072new == null ? new GradientDrawable() : m3072new).mutate();
        this.f11536do = mutate;
        C0492Se.m2177try(mutate, this.f11528catch);
        int intrinsicHeight = this.f11536do.getIntrinsicHeight();
        Rect bounds = this.f11536do.getBounds();
        this.f11536do.setBounds(bounds.left, 0, bounds.right, intrinsicHeight);
        cnew.requestLayout();
        int color = m3115new.getColor(8, 0);
        this.f11528catch = color;
        C0492Se.m2177try(this.f11536do, color);
        m5953throw(false);
        int dimensionPixelSize = m3115new.getDimensionPixelSize(11, -1);
        Rect bounds2 = this.f11536do.getBounds();
        this.f11536do.setBounds(bounds2.left, 0, bounds2.right, dimensionPixelSize);
        cnew.requestLayout();
        int i2 = m3115new.getInt(10, 0);
        if (this.f11563public != i2) {
            this.f11563public = i2;
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            cnew.postInvalidateOnAnimation();
        }
        int i3 = m3115new.getInt(7, 0);
        if (i3 == 0) {
            this.f11545do = new com.google.android.material.tabs.Cdo();
        } else if (i3 == 1) {
            this.f11545do = new C4108zf();
        } else {
            if (i3 != 2) {
                throw new IllegalArgumentException(i3 + " is not a valid TabIndicatorAnimationMode");
            }
            this.f11545do = new C3992xh();
        }
        this.f11558if = m3115new.getBoolean(9, true);
        cnew.m5961do(m5940case());
        WeakHashMap<View, C3385nL> weakHashMap3 = QK.f2909do;
        cnew.postInvalidateOnAnimation();
        int dimensionPixelSize2 = m3115new.getDimensionPixelSize(16, 0);
        this.f11549else = dimensionPixelSize2;
        this.f11527case = dimensionPixelSize2;
        this.f11569try = dimensionPixelSize2;
        this.f11561new = dimensionPixelSize2;
        this.f11561new = m3115new.getDimensionPixelSize(19, dimensionPixelSize2);
        this.f11569try = m3115new.getDimensionPixelSize(20, dimensionPixelSize2);
        this.f11527case = m3115new.getDimensionPixelSize(18, dimensionPixelSize2);
        this.f11549else = m3115new.getDimensionPixelSize(17, dimensionPixelSize2);
        if (C0154Cr.m306if(context2, com.joeykrim.rootcheck.R.attr.isMaterial3Theme, false)) {
            this.f11554goto = com.joeykrim.rootcheck.R.attr.textAppearanceTitleSmall;
        } else {
            this.f11554goto = com.joeykrim.rootcheck.R.attr.textAppearanceButton;
        }
        int resourceId = m3115new.getResourceId(24, com.joeykrim.rootcheck.R.style.TextAppearance_Design_Tab);
        this.f11567this = resourceId;
        int[] iArr = O4.f2570strictfp;
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(resourceId, iArr);
        try {
            float dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.f11531do = dimensionPixelSize3;
            ColorStateList m3071if = C0659Zr.m3071if(context2, obtainStyledAttributes, 3);
            this.f11534do = m3071if;
            obtainStyledAttributes.recycle();
            if (m3115new.hasValue(22)) {
                this.f11526break = m3115new.getResourceId(22, resourceId);
            }
            int i4 = this.f11526break;
            if (i4 != -1) {
                obtainStyledAttributes = context2.obtainStyledAttributes(i4, iArr);
                try {
                    obtainStyledAttributes.getDimensionPixelSize(0, (int) dimensionPixelSize3);
                    ColorStateList m3071if2 = C0659Zr.m3071if(context2, obtainStyledAttributes, 3);
                    if (m3071if2 != null) {
                        this.f11534do = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{m3071if2.getColorForState(new int[]{R.attr.state_selected}, m3071if2.getDefaultColor()), m3071if.getDefaultColor()});
                    }
                } finally {
                }
            }
            if (m3115new.hasValue(25)) {
                this.f11534do = C0659Zr.m3071if(context2, m3115new, 25);
            }
            if (m3115new.hasValue(23)) {
                this.f11534do = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{m3115new.getColor(23, 0), this.f11534do.getDefaultColor()});
            }
            this.f11556if = C0659Zr.m3071if(context2, m3115new, 3);
            this.f11535do = C3738tL.m8284goto(m3115new.getInt(4, -1), null);
            this.f11552for = C0659Zr.m3071if(context2, m3115new, 21);
            this.f11560native = m3115new.getInt(6, 300);
            this.f11532do = C0222Ft.m651new(context2, com.joeykrim.rootcheck.R.attr.motionEasingEmphasizedInterpolator, C2785g1.f13026do);
            this.f11550final = m3115new.getDimensionPixelSize(14, -1);
            this.f11566super = m3115new.getDimensionPixelSize(13, -1);
            this.f11529class = m3115new.getResourceId(0, 0);
            this.f11570while = m3115new.getDimensionPixelSize(1, 0);
            this.f11564return = m3115new.getInt(15, 1);
            this.f11559import = m3115new.getInt(2, 0);
            this.f11548do = m3115new.getBoolean(12, false);
            this.f11553for = m3115new.getBoolean(26, false);
            m3115new.recycle();
            Resources resources = getResources();
            this.f11555if = resources.getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.design_tab_text_size_2line);
            this.f11568throw = resources.getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.design_tab_scrollable_min_width);
            m5950new();
        } finally {
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i) {
        m5949if(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m5949if(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m5949if(view);
    }
}
