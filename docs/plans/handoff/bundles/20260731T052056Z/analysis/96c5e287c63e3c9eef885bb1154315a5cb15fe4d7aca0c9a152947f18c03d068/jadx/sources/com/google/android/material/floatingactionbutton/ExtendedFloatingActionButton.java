package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.ViewUtils;
import coil3.memory.MemoryCacheService;
import com.caverock.androidsvg.SVG;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import okhttp3.FormBody;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {
    public static final ViewUtils.AnonymousClass1 HEIGHT;
    public static final ViewUtils.AnonymousClass1 PADDING_END;
    public static final ViewUtils.AnonymousClass1 PADDING_START;
    public static final ViewUtils.AnonymousClass1 WIDTH;
    public int animState;
    public boolean animateShowBeforeLayout;
    public boolean animationEnabled;
    public final ExtendedFloatingActionButtonBehavior behavior;
    public int collapsedSize;
    public final ChangeSizeStrategy extendStrategy;
    public int extendedPaddingEnd;
    public int extendedPaddingStart;
    public final HideStrategy hideStrategy;
    public boolean isExtended;
    public boolean isTransforming;
    public int originalHeight;
    public ColorStateList originalTextCsl;
    public int originalWidth;
    public final ShowStrategy showStrategy;
    public final ChangeSizeStrategy shrinkStrategy;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$1, reason: invalid class name */
    public final class AnonymousClass1 implements Size {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ ExtendedFloatingActionButton this$0;

        public /* synthetic */ AnonymousClass1(ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            this.$r8$classId = i;
            this.this$0 = extendedFloatingActionButton;
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int getHeight() {
            int i = this.$r8$classId;
            ExtendedFloatingActionButton extendedFloatingActionButton = this.this$0;
            switch (i) {
                case 0:
                    return extendedFloatingActionButton.getCollapsedSize();
                default:
                    return extendedFloatingActionButton.getMeasuredHeight();
            }
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final ViewGroup.LayoutParams getLayoutParams() {
            switch (this.$r8$classId) {
                case 0:
                    ExtendedFloatingActionButton extendedFloatingActionButton = this.this$0;
                    return new ViewGroup.LayoutParams(extendedFloatingActionButton.getCollapsedSize(), extendedFloatingActionButton.getCollapsedSize());
                default:
                    return new ViewGroup.LayoutParams(-2, -2);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int getPaddingEnd() {
            int i = this.$r8$classId;
            ExtendedFloatingActionButton extendedFloatingActionButton = this.this$0;
            switch (i) {
                case 0:
                    return extendedFloatingActionButton.getCollapsedPadding();
                default:
                    return extendedFloatingActionButton.extendedPaddingEnd;
            }
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int getPaddingStart() {
            int i = this.$r8$classId;
            ExtendedFloatingActionButton extendedFloatingActionButton = this.this$0;
            switch (i) {
                case 0:
                    return extendedFloatingActionButton.getCollapsedPadding();
                default:
                    return extendedFloatingActionButton.extendedPaddingStart;
            }
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
        public final int getWidth() {
            int i = this.$r8$classId;
            ExtendedFloatingActionButton extendedFloatingActionButton = this.this$0;
            switch (i) {
                case 0:
                    return extendedFloatingActionButton.getCollapsedSize();
                default:
                    return ((extendedFloatingActionButton.getMeasuredWidth() - extendedFloatingActionButton.getPaddingStart()) - extendedFloatingActionButton.getPaddingEnd()) + extendedFloatingActionButton.extendedPaddingStart + extendedFloatingActionButton.extendedPaddingEnd;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ChangeSizeStrategy extends BaseMotionStrategy {
        public final boolean extending;
        public final Size size;

        public ChangeSizeStrategy(MemoryCacheService memoryCacheService, Size size, boolean z) {
            super(ExtendedFloatingActionButton.this, memoryCacheService);
            this.size = size;
            this.extending = z;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final AnimatorSet createAnimator() {
            MotionSpec motionSpec = this.motionSpec;
            if (motionSpec == null) {
                motionSpec = this.defaultMotionSpec;
                if (motionSpec == null) {
                    motionSpec = MotionSpec.createFromResource(this.context, getDefaultMotionSpecResource());
                    this.defaultMotionSpec = motionSpec;
                }
                motionSpec.getClass();
            }
            boolean hasPropertyValues = motionSpec.hasPropertyValues("width");
            Size size = this.size;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            if (hasPropertyValues) {
                PropertyValuesHolder[] propertyValues = motionSpec.getPropertyValues("width");
                propertyValues[0].setFloatValues(extendedFloatingActionButton.getWidth(), size.getWidth());
                motionSpec.setPropertyValues("width", propertyValues);
            }
            if (motionSpec.hasPropertyValues("height")) {
                PropertyValuesHolder[] propertyValues2 = motionSpec.getPropertyValues("height");
                propertyValues2[0].setFloatValues(extendedFloatingActionButton.getHeight(), size.getHeight());
                motionSpec.setPropertyValues("height", propertyValues2);
            }
            if (motionSpec.hasPropertyValues("paddingStart")) {
                PropertyValuesHolder[] propertyValues3 = motionSpec.getPropertyValues("paddingStart");
                propertyValues3[0].setFloatValues(extendedFloatingActionButton.getPaddingStart(), size.getPaddingStart());
                motionSpec.setPropertyValues("paddingStart", propertyValues3);
            }
            if (motionSpec.hasPropertyValues("paddingEnd")) {
                PropertyValuesHolder[] propertyValues4 = motionSpec.getPropertyValues("paddingEnd");
                propertyValues4[0].setFloatValues(extendedFloatingActionButton.getPaddingEnd(), size.getPaddingEnd());
                motionSpec.setPropertyValues("paddingEnd", propertyValues4);
            }
            if (motionSpec.hasPropertyValues("labelOpacity")) {
                PropertyValuesHolder[] propertyValues5 = motionSpec.getPropertyValues("labelOpacity");
                int alpha = Color.alpha(extendedFloatingActionButton.getCurrentOriginalTextColor());
                int alpha2 = Color.alpha(extendedFloatingActionButton.getCurrentTextColor());
                float f = RecyclerView.DECELERATION_RATE;
                float f2 = alpha != 0 ? alpha2 / alpha : 0.0f;
                if (this.extending) {
                    f = 1.0f;
                }
                propertyValues5[0].setFloatValues(f2, f);
                motionSpec.setPropertyValues("labelOpacity", propertyValues5);
            }
            return createAnimator(motionSpec);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final int getDefaultMotionSpecResource() {
            return this.extending ? R.animator.mtrl_extended_fab_change_size_expand_motion_spec : R.animator.mtrl_extended_fab_change_size_collapse_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void onAnimationEnd() {
            this.tracker.imageLoader = null;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.isTransforming = false;
            extendedFloatingActionButton.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            Size size = this.size;
            layoutParams.width = size.getLayoutParams().width;
            layoutParams.height = size.getLayoutParams().height;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void onAnimationStart(Animator animator) {
            MemoryCacheService memoryCacheService = this.tracker;
            Animator animator2 = (Animator) memoryCacheService.imageLoader;
            if (animator2 != null) {
                animator2.cancel();
            }
            memoryCacheService.imageLoader = animator;
            boolean z = this.extending;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.isExtended = z;
            extendedFloatingActionButton.isTransforming = true;
            extendedFloatingActionButton.setHorizontallyScrolling(true);
            extendedFloatingActionButton.updateTooltip();
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void performNow() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            boolean z = this.extending;
            extendedFloatingActionButton.isExtended = z;
            ViewGroup.LayoutParams layoutParams = extendedFloatingActionButton.getLayoutParams();
            if (layoutParams == null) {
                return;
            }
            if (!z) {
                extendedFloatingActionButton.originalWidth = layoutParams.width;
                extendedFloatingActionButton.originalHeight = layoutParams.height;
            }
            Size size = this.size;
            layoutParams.width = size.getLayoutParams().width;
            layoutParams.height = size.getLayoutParams().height;
            if (z) {
                extendedFloatingActionButton.silentlyUpdateTextColor(extendedFloatingActionButton.originalTextCsl);
            } else if (extendedFloatingActionButton.getText() != null && extendedFloatingActionButton.getText() != "") {
                extendedFloatingActionButton.silentlyUpdateTextColor(ColorStateList.valueOf(0));
            }
            extendedFloatingActionButton.setPaddingRelative(size.getPaddingStart(), extendedFloatingActionButton.getPaddingTop(), size.getPaddingEnd(), extendedFloatingActionButton.getPaddingBottom());
            extendedFloatingActionButton.requestLayout();
            extendedFloatingActionButton.updateTooltip();
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final boolean shouldCancel() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            return this.extending == extendedFloatingActionButton.isExtended || extendedFloatingActionButton.getIcon() == null || TextUtils.isEmpty(extendedFloatingActionButton.getText());
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HideStrategy extends BaseMotionStrategy {
        public boolean isCancelled;

        public HideStrategy(MemoryCacheService memoryCacheService) {
            super(ExtendedFloatingActionButton.this, memoryCacheService);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final int getDefaultMotionSpecResource() {
            return R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void onAnimationCancel() {
            super.onAnimationCancel();
            this.isCancelled = true;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void onAnimationEnd() {
            this.tracker.imageLoader = null;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.animState = 0;
            if (this.isCancelled) {
                return;
            }
            extendedFloatingActionButton.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void onAnimationStart(Animator animator) {
            MemoryCacheService memoryCacheService = this.tracker;
            Animator animator2 = (Animator) memoryCacheService.imageLoader;
            if (animator2 != null) {
                animator2.cancel();
            }
            memoryCacheService.imageLoader = animator;
            this.isCancelled = false;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.animState = 1;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void performNow() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final boolean shouldCancel() {
            ViewUtils.AnonymousClass1 anonymousClass1 = ExtendedFloatingActionButton.WIDTH;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            int visibility = extendedFloatingActionButton.getVisibility();
            int i = extendedFloatingActionButton.animState;
            if (visibility == 0) {
                if (i != 1) {
                    return false;
                }
            } else if (i == 2) {
                return false;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ShowStrategy extends BaseMotionStrategy {
        public ShowStrategy(MemoryCacheService memoryCacheService) {
            super(ExtendedFloatingActionButton.this, memoryCacheService);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final int getDefaultMotionSpecResource() {
            return R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void onAnimationEnd() {
            this.tracker.imageLoader = null;
            ExtendedFloatingActionButton.this.animState = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void onAnimationStart(Animator animator) {
            MemoryCacheService memoryCacheService = this.tracker;
            Animator animator2 = (Animator) memoryCacheService.imageLoader;
            if (animator2 != null) {
                animator2.cancel();
            }
            memoryCacheService.imageLoader = animator;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.animState = 2;
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final void performNow() {
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            extendedFloatingActionButton.setVisibility(0);
            extendedFloatingActionButton.setAlpha(1.0f);
            extendedFloatingActionButton.setScaleY(1.0f);
            extendedFloatingActionButton.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy
        public final boolean shouldCancel() {
            ViewUtils.AnonymousClass1 anonymousClass1 = ExtendedFloatingActionButton.WIDTH;
            ExtendedFloatingActionButton extendedFloatingActionButton = ExtendedFloatingActionButton.this;
            int visibility = extendedFloatingActionButton.getVisibility();
            int i = extendedFloatingActionButton.animState;
            if (visibility != 0) {
                if (i != 2) {
                    return false;
                }
            } else if (i == 1) {
                return false;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Size {
        int getHeight();

        ViewGroup.LayoutParams getLayoutParams();

        int getPaddingEnd();

        int getPaddingStart();

        int getWidth();
    }

    static {
        Class<Float> cls = Float.class;
        WIDTH = new ViewUtils.AnonymousClass1(cls, "width", 9);
        HEIGHT = new ViewUtils.AnonymousClass1(cls, "height", 10);
        PADDING_START = new ViewUtils.AnonymousClass1(cls, "paddingStart", 11);
        PADDING_END = new ViewUtils.AnonymousClass1(cls, "paddingEnd", 12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [okhttp3.FormBody$Builder] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.caverock.androidsvg.SVG] */
    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, R.attr.extendedFloatingActionButtonStyle, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon), attributeSet, R.attr.extendedFloatingActionButtonStyle);
        boolean z;
        char c = 0;
        this.animState = 0;
        int i = 1;
        this.animationEnabled = true;
        int i2 = 22;
        MemoryCacheService memoryCacheService = new MemoryCacheService(c, i2);
        ShowStrategy showStrategy = new ShowStrategy(memoryCacheService);
        this.showStrategy = showStrategy;
        HideStrategy hideStrategy = new HideStrategy(memoryCacheService);
        this.hideStrategy = hideStrategy;
        this.isExtended = true;
        this.isTransforming = false;
        this.animateShowBeforeLayout = false;
        Context context2 = getContext();
        this.behavior = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray obtainStyledAttributes = com.google.android.material.internal.ViewUtils.obtainStyledAttributes(context2, attributeSet, R$styleable.ExtendedFloatingActionButton, R.attr.extendedFloatingActionButtonStyle, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, new int[0]);
        MotionSpec createFromAttribute = MotionSpec.createFromAttribute(context2, obtainStyledAttributes, 5);
        MotionSpec createFromAttribute2 = MotionSpec.createFromAttribute(context2, obtainStyledAttributes, 4);
        MotionSpec createFromAttribute3 = MotionSpec.createFromAttribute(context2, obtainStyledAttributes, 2);
        MotionSpec createFromAttribute4 = MotionSpec.createFromAttribute(context2, obtainStyledAttributes, 6);
        this.collapsedSize = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        int i3 = obtainStyledAttributes.getInt(3, 1);
        this.extendedPaddingStart = getPaddingStart();
        this.extendedPaddingEnd = getPaddingEnd();
        MemoryCacheService memoryCacheService2 = new MemoryCacheService(c, i2);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this, i);
        ?? builder = new FormBody.Builder(i, this, anonymousClass1);
        ?? svg = new SVG(this, (FormBody.Builder) builder, anonymousClass1);
        if (i3 != 1) {
            anonymousClass1 = i3 != 2 ? svg : builder;
            z = true;
        } else {
            z = true;
        }
        ChangeSizeStrategy changeSizeStrategy = new ChangeSizeStrategy(memoryCacheService2, anonymousClass1, z);
        this.extendStrategy = changeSizeStrategy;
        ChangeSizeStrategy changeSizeStrategy2 = new ChangeSizeStrategy(memoryCacheService2, new AnonymousClass1(this, 0), false);
        this.shrinkStrategy = changeSizeStrategy2;
        showStrategy.motionSpec = createFromAttribute;
        hideStrategy.motionSpec = createFromAttribute2;
        changeSizeStrategy.motionSpec = createFromAttribute3;
        changeSizeStrategy2.motionSpec = createFromAttribute4;
        obtainStyledAttributes.recycle();
        setShapeAppearanceModel(ShapeAppearanceModel.builder(context2, attributeSet, R.attr.extendedFloatingActionButtonStyle, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, ShapeAppearanceModel.PILL).build());
        this.originalTextCsl = getTextColors();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "com.google.android.material.floatingactionbutton.FloatingActionButton";
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public CoordinatorLayout.Behavior getBehavior() {
        return this.behavior;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    public int getCollapsedSize() {
        int i = this.collapsedSize;
        if (i >= 0) {
            return i;
        }
        return getIconSize() + (Math.min(getPaddingStart(), getPaddingEnd()) * 2);
    }

    public int getCurrentOriginalTextColor() {
        return this.originalTextCsl.getColorForState(getDrawableState(), 0);
    }

    public MotionSpec getExtendMotionSpec() {
        return this.extendStrategy.motionSpec;
    }

    public MotionSpec getHideMotionSpec() {
        return this.hideStrategy.motionSpec;
    }

    public ColorStateList getOriginalTextColor() {
        return this.originalTextCsl;
    }

    public MotionSpec getShowMotionSpec() {
        return this.showStrategy.motionSpec;
    }

    public MotionSpec getShrinkMotionSpec() {
        return this.shrinkStrategy.motionSpec;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.isExtended || !TextUtils.isEmpty(getText()) || getIcon() == null) {
            updateTooltip();
        } else {
            this.isExtended = false;
            this.shrinkStrategy.performNow();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r5.animateShowBeforeLayout != false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void performMotion(int r6) {
        /*
            r5 = this;
            r0 = 1
            r1 = 2
            if (r6 == 0) goto L1e
            if (r6 == r0) goto L1b
            if (r6 == r1) goto L18
            r2 = 3
            if (r6 != r2) goto Le
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ChangeSizeStrategy r2 = r5.extendStrategy
            goto L20
        Le:
            java.lang.String r5 = "Unknown strategy type: "
            java.lang.String r5 = androidx.compose.animation.core.Animation.CC.m(r6, r5)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return
        L18:
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ChangeSizeStrategy r2 = r5.shrinkStrategy
            goto L20
        L1b:
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$HideStrategy r2 = r5.hideStrategy
            goto L20
        L1e:
            com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$ShowStrategy r2 = r5.showStrategy
        L20:
            boolean r3 = r2.shouldCancel()
            if (r3 == 0) goto L27
            return
        L27:
            boolean r3 = r5.animationEnabled
            if (r3 == 0) goto L91
            boolean r3 = r5.isLaidOut()
            if (r3 != 0) goto L43
            int r3 = r5.getVisibility()
            int r4 = r5.animState
            if (r3 == 0) goto L3c
            if (r4 != r1) goto L3f
            goto L91
        L3c:
            if (r4 == r0) goto L3f
            goto L91
        L3f:
            boolean r0 = r5.animateShowBeforeLayout
            if (r0 == 0) goto L91
        L43:
            boolean r0 = r5.isInEditMode()
            if (r0 != 0) goto L91
            if (r6 != r1) goto L66
            android.view.ViewGroup$LayoutParams r6 = r5.getLayoutParams()
            if (r6 == 0) goto L5a
            int r0 = r6.width
            r5.originalWidth = r0
            int r6 = r6.height
            r5.originalHeight = r6
            goto L66
        L5a:
            int r6 = r5.getWidth()
            r5.originalWidth = r6
            int r6 = r5.getHeight()
            r5.originalHeight = r6
        L66:
            r6 = 0
            r5.measure(r6, r6)
            android.animation.AnimatorSet r5 = r2.createAnimator()
            androidx.transition.Transition$3 r6 = new androidx.transition.Transition$3
            r0 = 4
            r6.<init>(r0, r2)
            r5.addListener(r6)
            java.util.ArrayList r6 = r2.listeners
            java.util.Iterator r6 = r6.iterator()
        L7d:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L8d
            java.lang.Object r0 = r6.next()
            android.animation.Animator$AnimatorListener r0 = (android.animation.Animator.AnimatorListener) r0
            r5.addListener(r0)
            goto L7d
        L8d:
            r5.start()
            return
        L91:
            r2.performNow()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.performMotion(int):void");
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.animateShowBeforeLayout = z;
    }

    public void setAnimationEnabled(boolean z) {
        this.animationEnabled = z;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        updateTooltip();
    }

    public void setCollapsedSize(int i) {
        this.collapsedSize = i;
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        updateTooltip();
    }

    public void setExtendMotionSpec(MotionSpec motionSpec) {
        this.extendStrategy.motionSpec = motionSpec;
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.isExtended == z) {
            return;
        }
        ChangeSizeStrategy changeSizeStrategy = z ? this.extendStrategy : this.shrinkStrategy;
        if (changeSizeStrategy.shouldCancel()) {
            return;
        }
        changeSizeStrategy.performNow();
    }

    public void setHideMotionSpec(MotionSpec motionSpec) {
        this.hideStrategy.motionSpec = motionSpec;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.isExtended || this.isTransforming) {
            return;
        }
        this.extendedPaddingStart = getPaddingStart();
        this.extendedPaddingEnd = getPaddingEnd();
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (!this.isExtended || this.isTransforming) {
            return;
        }
        this.extendedPaddingStart = i;
        this.extendedPaddingEnd = i3;
    }

    public void setShowMotionSpec(MotionSpec motionSpec) {
        this.showStrategy.motionSpec = motionSpec;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    public void setShrinkMotionSpec(MotionSpec motionSpec) {
        this.shrinkStrategy.motionSpec = motionSpec;
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(MotionSpec.createFromResource(getContext(), i));
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        updateTooltip();
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        this.originalTextCsl = getTextColors();
    }

    public final void silentlyUpdateTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    public final void updateTooltip() {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT < 26) {
            return;
        }
        if (this.isExtended || !isClickable()) {
            charSequence = null;
        } else {
            charSequence = getText();
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = getContentDescription();
            }
        }
        if (TextUtils.equals(getTooltipText(), charSequence)) {
            return;
        }
        setTooltipText(charSequence);
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        this.originalTextCsl = getTextColors();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior {
        public final boolean autoHideEnabled;
        public final boolean autoShrinkEnabled;
        public Rect tmpRect;

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.autoHideEnabled = obtainStyledAttributes.getBoolean(0, false);
            this.autoShrinkEnabled = obtainStyledAttributes.getBoolean(1, true);
            obtainStyledAttributes.recycle();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final /* bridge */ /* synthetic */ boolean getInsetDodgeRect(View view, Rect rect) {
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final void onAttachedToLayoutParams(CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                updateFabVisibilityForAppBarLayout(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).mBehavior instanceof BottomSheetBehavior : false) {
                    updateFabVisibilityForBottomSheet(view2, extendedFloatingActionButton);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            ArrayList dependencies = coordinatorLayout.getDependencies(extendedFloatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view2 = (View) dependencies.get(i2);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.LayoutParams ? ((CoordinatorLayout.LayoutParams) layoutParams).mBehavior instanceof BottomSheetBehavior : false) && updateFabVisibilityForBottomSheet(view2, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (updateFabVisibilityForAppBarLayout(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(extendedFloatingActionButton, i);
            return true;
        }

        public final boolean updateFabVisibilityForAppBarLayout(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.autoHideEnabled;
            boolean z2 = this.autoShrinkEnabled;
            if ((!z && !z2) || layoutParams.mAnchorId != appBarLayout.getId()) {
                return false;
            }
            Rect rect = this.tmpRect;
            if (rect == null) {
                rect = new Rect();
                this.tmpRect = rect;
            }
            DescendantOffsetUtils.getDescendantRect(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                int i = z2 ? 2 : 1;
                ViewUtils.AnonymousClass1 anonymousClass1 = ExtendedFloatingActionButton.WIDTH;
                extendedFloatingActionButton.performMotion(i);
            } else {
                int i2 = z2 ? 3 : 0;
                ViewUtils.AnonymousClass1 anonymousClass12 = ExtendedFloatingActionButton.WIDTH;
                extendedFloatingActionButton.performMotion(i2);
            }
            return true;
        }

        public final boolean updateFabVisibilityForBottomSheet(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.autoHideEnabled;
            boolean z2 = this.autoShrinkEnabled;
            if ((!z && !z2) || layoutParams.mAnchorId != view.getId()) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                int i = z2 ? 2 : 1;
                ViewUtils.AnonymousClass1 anonymousClass1 = ExtendedFloatingActionButton.WIDTH;
                extendedFloatingActionButton.performMotion(i);
            } else {
                int i2 = z2 ? 3 : 0;
                ViewUtils.AnonymousClass1 anonymousClass12 = ExtendedFloatingActionButton.WIDTH;
                extendedFloatingActionButton.performMotion(i2);
            }
            return true;
        }

        public ExtendedFloatingActionButtonBehavior() {
            this.autoHideEnabled = false;
            this.autoShrinkEnabled = true;
        }
    }
}
