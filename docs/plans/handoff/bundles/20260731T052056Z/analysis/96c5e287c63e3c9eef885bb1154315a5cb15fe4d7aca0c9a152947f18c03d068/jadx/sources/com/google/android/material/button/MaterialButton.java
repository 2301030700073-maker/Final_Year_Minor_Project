package com.google.android.material.button;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.widget.AppCompatButton;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DpKt;
import androidx.customview.view.AbsSavedState;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.memory.MemoryCacheService;
import com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda1;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.progressindicator.DeterminateDrawable;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearance;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.google.android.material.shape.StateListSizeChange;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda10;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {
    public static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final AnonymousClass1 WIDTH_INCREASE = new AnonymousClass1(0);
    public String accessibilityClassName;
    public int allowedWidthDecrease;
    public boolean broadcasting;
    public boolean checked;
    public float displayedWidthDecrease;
    public float displayedWidthIncrease;
    public Drawable icon;
    public int iconGravity;
    public int iconLeft;
    public int iconPadding;
    public int iconSize;
    public ColorStateList iconTint;
    public PorterDuff.Mode iconTintMode;
    public int iconTop;
    public boolean isInHorizontalButtonGroup;
    public final MaterialButtonHelper materialButtonHelper;
    public final LinkedHashSet onCheckedChangeListeners;
    public OnPressedChangeListener onPressedChangeListenerInternal;
    public boolean opticalCenterEnabled;
    public int opticalCenterShift;
    public int orientation;
    public LinearLayout.LayoutParams originalLayoutParams;
    public int originalPaddingEnd;
    public int originalPaddingStart;
    public float originalWidth;
    public Drawable secondaryIcon;
    public int secondaryIconGravity;
    public int secondaryIconLeft;
    public ColorStateList secondaryIconTint;
    public PorterDuff.Mode secondaryIconTintMode;
    public int secondaryIconTop;
    public StateListSizeChange sizeChange;
    public boolean stopNullSecondaryIconUpdate;
    public WidthChangeDirection widthChangeDirection;
    public int widthChangeMax;
    public SpringAnimation widthIncreaseSpringAnimation;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.button.MaterialButton$1, reason: invalid class name */
    public final class AnonymousClass1 extends TuplesKt {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // kotlin.TuplesKt
        public final float getValue(Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    return ((MaterialButton) obj).getDisplayedWidthIncrease();
                default:
                    return ((DeterminateDrawable) obj).activeIndicator.endFraction * 10000.0f;
            }
        }

        @Override // kotlin.TuplesKt
        public final void setValue(Object obj, float f) {
            switch (this.$r8$classId) {
                case 0:
                    ((MaterialButton) obj).setDisplayedWidthIncrease(f);
                    break;
                default:
                    DeterminateDrawable determinateDrawable = (DeterminateDrawable) obj;
                    determinateDrawable.activeIndicator.endFraction = f / 10000.0f;
                    determinateDrawable.invalidateSelf();
                    int i = (int) f;
                    LinearProgressIndicatorSpec linearProgressIndicatorSpec = determinateDrawable.baseSpec;
                    if (linearProgressIndicatorSpec.hasWavyEffect(true)) {
                        Context context = determinateDrawable.context;
                        if (determinateDrawable.amplitudeAnimator == null) {
                            LinearInterpolator linearInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
                            determinateDrawable.amplitudeOnInterpolator = DpKt.resolveThemeInterpolator(context, org.wikipedia.R.attr.motionEasingStandardInterpolator, linearInterpolator);
                            determinateDrawable.amplitudeOffInterpolator = DpKt.resolveThemeInterpolator(context, org.wikipedia.R.attr.motionEasingEmphasizedAccelerateInterpolator, linearInterpolator);
                            ValueAnimator valueAnimator = new ValueAnimator();
                            determinateDrawable.amplitudeAnimator = valueAnimator;
                            valueAnimator.setDuration(500L);
                            determinateDrawable.amplitudeAnimator.setFloatValues(RecyclerView.DECELERATION_RATE, 1.0f);
                            determinateDrawable.amplitudeAnimator.setInterpolator(null);
                            determinateDrawable.amplitudeAnimator.addUpdateListener(new LottieDrawable$$ExternalSyntheticLambda1(2, determinateDrawable));
                        }
                        float f2 = i;
                        float f3 = (f2 < linearProgressIndicatorSpec.waveAmplitudeRampProgressMin * 10000.0f || f2 > linearProgressIndicatorSpec.waveAmplitudeRampProgressMax * 10000.0f) ? RecyclerView.DECELERATION_RATE : 1.0f;
                        float f4 = determinateDrawable.targetAmplitudeFraction;
                        ValueAnimator valueAnimator2 = determinateDrawable.amplitudeAnimator;
                        if (f3 == f4) {
                            if (!valueAnimator2.isRunning()) {
                                determinateDrawable.activeIndicator.amplitudeFraction = f3;
                                determinateDrawable.invalidateSelf();
                                break;
                            }
                        } else {
                            if (valueAnimator2.isRunning()) {
                                determinateDrawable.amplitudeAnimator.cancel();
                            }
                            determinateDrawable.targetAmplitudeFraction = f3;
                            if (f3 != 1.0f) {
                                determinateDrawable.amplitudeInterpolator = determinateDrawable.amplitudeOffInterpolator;
                                determinateDrawable.amplitudeAnimator.reverse();
                                break;
                            } else {
                                determinateDrawable.amplitudeInterpolator = determinateDrawable.amplitudeOnInterpolator;
                                determinateDrawable.amplitudeAnimator.start();
                                break;
                            }
                        }
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnPressedChangeListener {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(10);
        public boolean checked;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                SavedState.class.getClassLoader();
            }
            this.checked = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WidthChangeDirection {
        private static final /* synthetic */ WidthChangeDirection[] $VALUES;
        public static final WidthChangeDirection BOTH;
        public static final WidthChangeDirection END;
        public static final WidthChangeDirection NONE;
        public static final WidthChangeDirection START;

        static {
            WidthChangeDirection widthChangeDirection = new WidthChangeDirection("NONE", 0);
            NONE = widthChangeDirection;
            WidthChangeDirection widthChangeDirection2 = new WidthChangeDirection("START", 1);
            START = widthChangeDirection2;
            WidthChangeDirection widthChangeDirection3 = new WidthChangeDirection("END", 2);
            END = widthChangeDirection3;
            WidthChangeDirection widthChangeDirection4 = new WidthChangeDirection("BOTH", 3);
            BOTH = widthChangeDirection4;
            $VALUES = new WidthChangeDirection[]{widthChangeDirection, widthChangeDirection2, widthChangeDirection3, widthChangeDirection4};
        }

        public static WidthChangeDirection valueOf(String str) {
            return (WidthChangeDirection) Enum.valueOf(WidthChangeDirection.class, str);
        }

        public static WidthChangeDirection[] values() {
            return (WidthChangeDirection[]) $VALUES.clone();
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(i, org.wikipedia.R.style.Widget_MaterialComponents_Button, context, attributeSet, new int[]{org.wikipedia.R.attr.materialSizeOverlay}), attributeSet, i);
        this.onCheckedChangeListeners = new LinkedHashSet();
        this.checked = false;
        this.broadcasting = false;
        this.orientation = Integer.MIN_VALUE;
        this.originalWidth = -2.1474836E9f;
        this.originalPaddingStart = Integer.MIN_VALUE;
        this.originalPaddingEnd = Integer.MIN_VALUE;
        this.allowedWidthDecrease = Integer.MIN_VALUE;
        this.widthChangeDirection = WidthChangeDirection.BOTH;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = ViewUtils.obtainStyledAttributes(context2, attributeSet, R$styleable.MaterialButton, i, org.wikipedia.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.iconPadding = obtainStyledAttributes.getDimensionPixelSize(13, 0);
        int i2 = obtainStyledAttributes.getInt(16, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.iconTintMode = ViewUtils.parseTintMode(i2, mode);
        this.iconTint = OperationKt.getColorStateList(getContext(), obtainStyledAttributes, 15);
        this.icon = OperationKt.getDrawable(getContext(), obtainStyledAttributes, 11);
        this.iconGravity = obtainStyledAttributes.getInteger(12, 1);
        this.iconSize = obtainStyledAttributes.getDimensionPixelSize(14, 0);
        this.secondaryIconTintMode = ViewUtils.parseTintMode(obtainStyledAttributes.getInt(22, -1), mode);
        this.secondaryIconTint = obtainStyledAttributes.hasValue(21) ? OperationKt.getColorStateList(getContext(), obtainStyledAttributes, 21) : this.iconTint;
        this.secondaryIconGravity = obtainStyledAttributes.getInteger(20, 3);
        Drawable drawable = OperationKt.getDrawable(getContext(), obtainStyledAttributes, 19);
        this.secondaryIcon = drawable;
        this.stopNullSecondaryIconUpdate = drawable == null;
        ShapeAppearance create = StateListShapeAppearanceModel.create(context2, obtainStyledAttributes, 23);
        create = create == null ? ShapeAppearanceModel.builder(context2, attributeSet, i, org.wikipedia.R.style.Widget_MaterialComponents_Button).build() : create;
        boolean z = obtainStyledAttributes.getBoolean(17, false);
        MaterialButtonHelper materialButtonHelper = new MaterialButtonHelper(this, create);
        this.materialButtonHelper = materialButtonHelper;
        materialButtonHelper.insetLeft = obtainStyledAttributes.getDimensionPixelOffset(2, 0);
        materialButtonHelper.insetRight = obtainStyledAttributes.getDimensionPixelOffset(3, 0);
        materialButtonHelper.insetTop = obtainStyledAttributes.getDimensionPixelOffset(4, 0);
        materialButtonHelper.insetBottom = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
        if (obtainStyledAttributes.hasValue(9)) {
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(9, -1);
            materialButtonHelper.cornerRadius = dimensionPixelSize;
            materialButtonHelper.shapeAppearance = materialButtonHelper.shapeAppearance.withCornerSize(dimensionPixelSize);
            materialButtonHelper.updateButtonShape();
            materialButtonHelper.cornerRadiusSet = true;
        }
        materialButtonHelper.strokeWidth = obtainStyledAttributes.getDimensionPixelSize(26, 0);
        materialButtonHelper.backgroundTintMode = ViewUtils.parseTintMode(obtainStyledAttributes.getInt(8, -1), mode);
        materialButtonHelper.backgroundTint = OperationKt.getColorStateList(getContext(), obtainStyledAttributes, 7);
        materialButtonHelper.strokeColor = OperationKt.getColorStateList(getContext(), obtainStyledAttributes, 25);
        materialButtonHelper.rippleColor = OperationKt.getColorStateList(getContext(), obtainStyledAttributes, 18);
        materialButtonHelper.checkable = obtainStyledAttributes.getBoolean(6, false);
        materialButtonHelper.elevation = obtainStyledAttributes.getDimensionPixelSize(10, 0);
        materialButtonHelper.toggleCheckedStateOnClick = obtainStyledAttributes.getBoolean(27, true);
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (obtainStyledAttributes.hasValue(0)) {
            materialButtonHelper.backgroundOverwritten = true;
            setSupportBackgroundTintList(materialButtonHelper.backgroundTint);
            setSupportBackgroundTintMode(materialButtonHelper.backgroundTintMode);
        } else {
            materialButtonHelper.updateBackground();
        }
        setPaddingRelative(paddingStart + materialButtonHelper.insetLeft, paddingTop + materialButtonHelper.insetTop, paddingEnd + materialButtonHelper.insetRight, paddingBottom + materialButtonHelper.insetBottom);
        setCheckedInternal(obtainStyledAttributes.getBoolean(1, false));
        if (create instanceof StateListShapeAppearanceModel) {
            materialButtonHelper.cornerSpringForce = DpKt.resolveThemeSpringForce(getContext());
            if (materialButtonHelper.shapeAppearance instanceof StateListShapeAppearanceModel) {
                materialButtonHelper.updateButtonShape();
            }
        }
        setOpticalCenterEnabled(z);
        obtainStyledAttributes.recycle();
        setCompoundDrawablePadding(this.iconPadding);
        updateIcon(this.icon != null);
        updateSecondaryIcon(this.secondaryIcon != null);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDisplayedWidthIncrease() {
        return this.displayedWidthIncrease;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getOpticalCenterShift() {
        MaterialShapeDrawable materialShapeDrawable;
        if (this.opticalCenterEnabled && this.isInHorizontalButtonGroup && (materialShapeDrawable = this.materialButtonHelper.getMaterialShapeDrawable(false)) != null) {
            return (int) (materialShapeDrawable.getCornerSizeDiffX() * 0.11f);
        }
        return 0;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f = RecyclerView.DECELERATION_RATE;
        for (int i = 0; i < lineCount; i++) {
            f = Math.max(f, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(f);
    }

    private void setCheckedInternal(boolean z) {
        if (!isCheckable() || this.checked == z) {
            return;
        }
        this.checked = z;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
            boolean z2 = this.checked;
            if (!materialButtonToggleGroup.skipCheckedStateTracker) {
                materialButtonToggleGroup.checkInternal(getId(), z2);
            }
        }
        if (this.broadcasting) {
            return;
        }
        this.broadcasting = true;
        Iterator it = this.onCheckedChangeListeners.iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
        this.broadcasting = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayedWidthIncrease(float f) {
        if (this.displayedWidthIncrease != f) {
            this.displayedWidthIncrease = f;
            updatePaddingsAndSizeForWidthAnimation();
            invalidate();
            if (getParent() instanceof MaterialButtonGroup) {
                MaterialButtonGroup materialButtonGroup = (MaterialButtonGroup) getParent();
                int i = (int) this.displayedWidthIncrease;
                int indexOfChild = materialButtonGroup.indexOfChild(this);
                if (indexOfChild < 0) {
                    return;
                }
                MaterialButton prevVisibleChildButton = materialButtonGroup.getPrevVisibleChildButton(indexOfChild);
                MaterialButton nextVisibleChildButton = materialButtonGroup.getNextVisibleChildButton(indexOfChild);
                if (prevVisibleChildButton == null && nextVisibleChildButton == null) {
                    return;
                }
                if (prevVisibleChildButton == null) {
                    nextVisibleChildButton.setDisplayedWidthDecrease(i);
                }
                if (nextVisibleChildButton == null) {
                    prevVisibleChildButton.setDisplayedWidthDecrease(i);
                }
                if (prevVisibleChildButton == null || nextVisibleChildButton == null) {
                    return;
                }
                prevVisibleChildButton.setDisplayedWidthDecrease(i / 2);
                nextVisibleChildButton.setDisplayedWidthDecrease((i + 1) / 2);
            }
        }
    }

    public final boolean areIconsGravitySameAlignment() {
        if (isIconStart() && isSecondaryIconStart()) {
            return true;
        }
        if (isIconEnd() && isSecondaryIconEnd()) {
            return true;
        }
        return isIconTop() && isSecondaryIconTop();
    }

    public final boolean canUpdateWithoutTextAlignment(int i) {
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        return i == 1 || i == 3 || (i == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE);
    }

    public String getA11yClassName() {
        if (TextUtils.isEmpty(this.accessibilityClassName)) {
            return (isCheckable() ? CompoundButton.class : Button.class).getName();
        }
        return this.accessibilityClassName;
    }

    public int getAllowedWidthDecrease() {
        return this.allowedWidthDecrease;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.cornerRadius;
        }
        return 0;
    }

    public SpringForce getCornerSpringForce() {
        return this.materialButtonHelper.cornerSpringForce;
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public int getIconGravity() {
        return this.iconGravity;
    }

    public final int getIconLeft(int i, int i2) {
        int i3;
        int i4;
        Drawable drawable = this.icon;
        if (drawable != null) {
            i3 = this.iconSize;
            if (i3 == 0) {
                i3 = drawable.getIntrinsicWidth();
            }
        } else {
            i3 = 0;
        }
        Drawable drawable2 = this.secondaryIcon;
        if (drawable2 != null) {
            i4 = this.iconSize;
            if (i4 == 0) {
                i4 = drawable2.getIntrinsicWidth();
            }
        } else {
            i4 = 0;
        }
        int textLayoutWidth = (((((i - getTextLayoutWidth()) - getPaddingEnd()) - i3) - i4) - this.iconPadding) - getPaddingStart();
        if (getActualTextAlignment() == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        return (getLayoutDirection() == 1) != (i2 == 4) ? -textLayoutWidth : textLayoutWidth;
    }

    public int getIconPadding() {
        return this.iconPadding;
    }

    public int getIconSize() {
        return this.iconSize;
    }

    public ColorStateList getIconTint() {
        return this.iconTint;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.iconTintMode;
    }

    public final int getIconTop(int i, int i2) {
        return Math.max(0, (((((i - getTextHeight()) - getPaddingTop()) - i2) - this.iconPadding) - getPaddingBottom()) / 2);
    }

    public int getInsetBottom() {
        return this.materialButtonHelper.insetBottom;
    }

    public int getInsetLeft() {
        return this.materialButtonHelper.insetLeft;
    }

    public int getInsetRight() {
        return this.materialButtonHelper.insetRight;
    }

    public int getInsetTop() {
        return this.materialButtonHelper.insetTop;
    }

    public ColorStateList getRippleColor() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.rippleColor;
        }
        return null;
    }

    public Drawable getSecondaryIcon() {
        return this.secondaryIcon;
    }

    public int getSecondaryIconGravity() {
        return this.secondaryIconGravity;
    }

    public ColorStateList getSecondaryIconTint() {
        return this.secondaryIconTint;
    }

    public PorterDuff.Mode getSecondaryIconTintMode() {
        return this.secondaryIconTintMode;
    }

    public ShapeAppearance getShapeAppearance() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.shapeAppearance;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Attempted to get ShapeAppearance from a MaterialButton which has an overwritten background.");
        return null;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.shapeAppearance.getDefaultShape();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.strokeColor;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.strokeWidth;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public ColorStateList getSupportBackgroundTintList() {
        return isUsingOriginalBackground() ? this.materialButtonHelper.backgroundTint : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return isUsingOriginalBackground() ? this.materialButtonHelper.backgroundTintMode : super.getSupportBackgroundTintMode();
    }

    public final Drawable getUpdatedIconFor(int i) {
        if (i == 0) {
            if (this.secondaryIcon == null || !isSecondaryIconStart()) {
                return null;
            }
            return this.secondaryIcon;
        }
        if (i == 1) {
            if (this.secondaryIcon == null || !isSecondaryIconTop()) {
                return null;
            }
            return this.secondaryIcon;
        }
        if (i == 2 && this.secondaryIcon != null && isSecondaryIconEnd()) {
            return this.secondaryIcon;
        }
        return null;
    }

    public final Drawable getUpdatedSecondaryIconFor(int i) {
        if (i == 0) {
            if (this.icon == null || !isIconStart()) {
                return null;
            }
            return this.icon;
        }
        if (i == 1) {
            if (this.icon == null || !isIconEnd()) {
                return null;
            }
            return this.icon;
        }
        if (i == 2 && this.icon != null && isIconEnd()) {
            return this.icon;
        }
        return null;
    }

    public final boolean isCheckable() {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        return materialButtonHelper != null && materialButtonHelper.checkable;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.checked;
    }

    public final boolean isIconEnd() {
        int i = this.iconGravity;
        return i == 3 || i == 4;
    }

    public final boolean isIconStart() {
        int i = this.iconGravity;
        return i == 1 || i == 2;
    }

    public final boolean isIconTop() {
        int i = this.iconGravity;
        return i == 16 || i == 32;
    }

    public final boolean isSecondaryIconEnd() {
        int i = this.secondaryIconGravity;
        return i == 3 || i == 4;
    }

    public final boolean isSecondaryIconStart() {
        int i = this.secondaryIconGravity;
        return i == 1 || i == 2;
    }

    public final boolean isSecondaryIconTop() {
        int i = this.secondaryIconGravity;
        return i == 16 || i == 32;
    }

    public final boolean isUsingOriginalBackground() {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        return (materialButtonHelper == null || materialButtonHelper.backgroundOverwritten) ? false : true;
    }

    public final /* synthetic */ void lambda$setOpticalCenterEnabled$5() {
        this.opticalCenterShift = getOpticalCenterShift();
        updatePaddingsAndSizeForWidthAnimation();
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x008e, code lost:
    
        if (r1 == com.google.android.material.shape.StateListSizeChange.SizeChangeType.PIXELS) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void maybeAnimateSize(boolean r9) {
        /*
            r8 = this;
            com.google.android.material.shape.StateListSizeChange r0 = r8.sizeChange
            if (r0 != 0) goto L6
            goto La2
        L6:
            androidx.dynamicanimation.animation.SpringAnimation r0 = r8.widthIncreaseSpringAnimation
            if (r0 != 0) goto L1d
            androidx.dynamicanimation.animation.SpringAnimation r0 = new androidx.dynamicanimation.animation.SpringAnimation
            com.google.android.material.button.MaterialButton$1 r1 = com.google.android.material.button.MaterialButton.WIDTH_INCREASE
            r0.<init>(r8, r1)
            r8.widthIncreaseSpringAnimation = r0
            android.content.Context r1 = r8.getContext()
            androidx.dynamicanimation.animation.SpringForce r1 = androidx.compose.ui.unit.DpKt.resolveThemeSpringForce(r1)
            r0.mSpring = r1
        L1d:
            boolean r0 = r8.isInHorizontalButtonGroup
            if (r0 == 0) goto La2
            com.google.android.material.button.MaterialButton$WidthChangeDirection r0 = r8.widthChangeDirection
            int r0 = r0.ordinal()
            r1 = 1
            r2 = 0
            r3 = 2
            if (r0 == r1) goto L36
            if (r0 == r3) goto L36
            r1 = 3
            if (r0 == r1) goto L33
            r0 = r2
            goto L39
        L33:
            int r0 = r8.widthChangeMax
            goto L39
        L36:
            int r0 = r8.widthChangeMax
            int r0 = r0 / r3
        L39:
            com.google.android.material.shape.StateListSizeChange r1 = r8.sizeChange
            int[] r3 = r8.getDrawableState()
            int[][] r4 = r1.stateSpecs
            r5 = r2
        L42:
            int r6 = r1.stateCount
            r7 = -1
            if (r5 >= r6) goto L53
            r6 = r4[r5]
            boolean r6 = android.util.StateSet.stateSetMatches(r6, r3)
            if (r6 == 0) goto L50
            goto L54
        L50:
            int r5 = r5 + 1
            goto L42
        L53:
            r5 = r7
        L54:
            if (r5 >= 0) goto L6d
            int[] r3 = android.util.StateSet.WILD_CARD
            int[][] r4 = r1.stateSpecs
            r5 = r2
        L5b:
            int r6 = r1.stateCount
            if (r5 >= r6) goto L6c
            r6 = r4[r5]
            boolean r6 = android.util.StateSet.stateSetMatches(r6, r3)
            if (r6 == 0) goto L69
            r7 = r5
            goto L6c
        L69:
            int r5 = r5 + 1
            goto L5b
        L6c:
            r5 = r7
        L6d:
            if (r5 >= 0) goto L72
            coil3.memory.MemoryCacheService r1 = r1.defaultSizeChange
            goto L76
        L72:
            coil3.memory.MemoryCacheService[] r1 = r1.sizeChanges
            r1 = r1[r5]
        L76:
            java.lang.Object r1 = r1.imageLoader
            com.google.android.material.shape.StateListSizeChange$SizeChangeAmount r1 = (com.google.android.material.shape.StateListSizeChange.SizeChangeAmount) r1
            int r3 = r8.getWidth()
            float r4 = r1.amount
            java.lang.Object r1 = r1.type
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r1 = (com.google.android.material.shape.StateListSizeChange.SizeChangeType) r1
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r5 = com.google.android.material.shape.StateListSizeChange.SizeChangeType.PERCENT
            if (r1 != r5) goto L8c
            float r1 = (float) r3
            float r4 = r4 * r1
        L8a:
            int r2 = (int) r4
            goto L91
        L8c:
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r3 = com.google.android.material.shape.StateListSizeChange.SizeChangeType.PIXELS
            if (r1 != r3) goto L91
            goto L8a
        L91:
            int r0 = java.lang.Math.min(r0, r2)
            androidx.dynamicanimation.animation.SpringAnimation r1 = r8.widthIncreaseSpringAnimation
            float r0 = (float) r0
            r1.animateToFinalPosition(r0)
            if (r9 == 0) goto La2
            androidx.dynamicanimation.animation.SpringAnimation r8 = r8.widthIncreaseSpringAnimation
            r8.skipToEnd()
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.maybeAnimateSize(boolean):void");
    }

    public final boolean maybeRunAfterWidthAnimation(Runnable runnable) {
        SpringAnimation springAnimation = this.widthIncreaseSpringAnimation;
        if (springAnimation == null || !springAnimation.mRunning) {
            return false;
        }
        post(new Processor$$ExternalSyntheticLambda2(11, this, runnable));
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isUsingOriginalBackground()) {
            ResultKt.setParentAbsoluteElevation(this, this.materialButtonHelper.getMaterialShapeDrawable(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isCheckable()) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKABLE_STATE_SET);
        }
        if (this.checked) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.checked);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setChecked(this.checked);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
        updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
        int i6 = getResources().getConfiguration().orientation;
        if (this.orientation != i6) {
            this.orientation = i6;
            this.originalWidth = -2.1474836E9f;
        }
        if (this.originalWidth == -2.1474836E9f) {
            this.originalWidth = getMeasuredWidth();
            if (this.originalLayoutParams == null && (getParent() instanceof MaterialButtonGroup) && ((MaterialButtonGroup) getParent()).getButtonSizeChange() != null) {
                this.originalLayoutParams = (LinearLayout.LayoutParams) getLayoutParams();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.originalLayoutParams);
                layoutParams.width = (int) this.originalWidth;
                setLayoutParams(layoutParams);
            }
        }
        boolean z2 = false;
        if (this.allowedWidthDecrease == Integer.MIN_VALUE) {
            if (this.icon == null) {
                i5 = 0;
            } else {
                int iconPadding = getIconPadding();
                int i7 = this.iconSize;
                if (i7 == 0) {
                    i7 = this.icon.getIntrinsicWidth();
                }
                i5 = iconPadding + i7;
            }
            this.allowedWidthDecrease = (getMeasuredWidth() - getTextLayoutWidth()) - i5;
        }
        if (this.originalPaddingStart == Integer.MIN_VALUE) {
            this.originalPaddingStart = getPaddingStart();
        }
        if (this.originalPaddingEnd == Integer.MIN_VALUE) {
            this.originalPaddingEnd = getPaddingEnd();
        }
        if ((getParent() instanceof MaterialButtonGroup) && ((MaterialButtonGroup) getParent()).getOrientation() == 0) {
            z2 = true;
        }
        this.isInHorizontalButtonGroup = z2;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        setChecked(savedState.checked);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = this.checked;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
        updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean z;
        if (isEnabled() && this.materialButtonHelper.toggleCheckedStateOnClick) {
            toggle();
            z = true;
        } else {
            z = false;
        }
        boolean performClick = super.performClick();
        if (z && !performClick) {
            playSoundEffect(0);
        }
        return performClick;
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.icon != null) {
            if (this.icon.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.accessibilityClassName = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (!isUsingOriginalBackground()) {
            super.setBackgroundColor(i);
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        if (materialButtonHelper.getMaterialShapeDrawable(false) != null) {
            materialButtonHelper.getMaterialShapeDrawable(false).setTint(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!isUsingOriginalBackground()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        materialButtonHelper.backgroundOverwritten = true;
        MaterialButton materialButton = materialButtonHelper.materialButton;
        materialButton.setSupportBackgroundTintList(materialButtonHelper.backgroundTint);
        materialButton.setSupportBackgroundTintMode(materialButtonHelper.backgroundTintMode);
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? TuplesKt.getDrawable(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.checkable = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedInternal(z);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablePadding(int i) {
        if (getCompoundDrawablePadding() != i) {
            this.originalWidth = -2.1474836E9f;
        }
        super.setCompoundDrawablePadding(i);
    }

    public void setCornerRadius(int i) {
        if (isUsingOriginalBackground()) {
            MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
            if (materialButtonHelper.cornerRadiusSet && materialButtonHelper.cornerRadius == i) {
                return;
            }
            materialButtonHelper.cornerRadius = i;
            materialButtonHelper.cornerRadiusSet = true;
            materialButtonHelper.shapeAppearance = materialButtonHelper.shapeAppearance.withCornerSize(i);
            materialButtonHelper.updateButtonShape();
        }
    }

    public void setCornerRadiusResource(int i) {
        if (isUsingOriginalBackground()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCornerSpringForce(SpringForce springForce) {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        materialButtonHelper.cornerSpringForce = springForce;
        if (materialButtonHelper.shapeAppearance instanceof StateListShapeAppearanceModel) {
            materialButtonHelper.updateButtonShape();
        }
    }

    public void setDisplayedWidthDecrease(int i) {
        this.displayedWidthDecrease = Math.min(i, this.allowedWidthDecrease);
        updatePaddingsAndSizeForWidthAnimation();
        invalidate();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.getMaterialShapeDrawable(false).setElevation(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.icon == drawable || maybeRunAfterWidthAnimation(new MaterialButton$$ExternalSyntheticLambda0(this, drawable, 1))) {
            return;
        }
        this.originalWidth = -2.1474836E9f;
        this.icon = drawable;
        updateIcon(true);
        updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setIconGravity(int i) {
        if (this.iconGravity != i) {
            if (this.icon != null && this.secondaryIcon != null && areIconsGravitySameAlignment()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("iconGravity cannot have the same alignment as secondaryIconGravity");
            } else {
                this.iconGravity = i;
                updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void setIconPadding(int i) {
        if (this.iconPadding != i) {
            this.iconPadding = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? TuplesKt.getDrawable(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("iconSize cannot be less than 0");
            return;
        }
        if (this.iconSize == i || maybeRunAfterWidthAnimation(new TalkTopicActivity$$ExternalSyntheticLambda10(i, 3, this))) {
            return;
        }
        this.originalWidth = -2.1474836E9f;
        this.iconSize = i;
        updateIcon(true);
        updateSecondaryIcon(true);
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.iconTint != colorStateList) {
            this.iconTint = colorStateList;
            updateIcon(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.iconTintMode != mode) {
            this.iconTintMode = mode;
            updateIcon(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(FileUtil.getColorStateList(getContext(), i));
    }

    public void setInsetBottom(int i) {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        materialButtonHelper.setInsets(materialButtonHelper.insetLeft, materialButtonHelper.insetTop, materialButtonHelper.insetRight, i);
    }

    public void setInsetLeft(int i) {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        materialButtonHelper.setInsets(i, materialButtonHelper.insetTop, materialButtonHelper.insetRight, materialButtonHelper.insetBottom);
    }

    public void setInsetRight(int i) {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        materialButtonHelper.setInsets(materialButtonHelper.insetLeft, materialButtonHelper.insetTop, i, materialButtonHelper.insetBottom);
    }

    public void setInsetTop(int i) {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        materialButtonHelper.setInsets(materialButtonHelper.insetLeft, i, materialButtonHelper.insetRight, materialButtonHelper.insetBottom);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(OnPressedChangeListener onPressedChangeListener) {
        this.onPressedChangeListenerInternal = onPressedChangeListener;
    }

    public void setOpticalCenterEnabled(boolean z) {
        if (this.opticalCenterEnabled != z) {
            this.opticalCenterEnabled = z;
            MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
            if (z) {
                OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(7, this);
                materialButtonHelper.onCornerSizeChangeListener = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
                MaterialShapeDrawable materialShapeDrawable = materialButtonHelper.getMaterialShapeDrawable(false);
                if (materialShapeDrawable != null) {
                    materialShapeDrawable.onCornerSizeChangeListener = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
                }
            } else {
                materialButtonHelper.onCornerSizeChangeListener = null;
                MaterialShapeDrawable materialShapeDrawable2 = materialButtonHelper.getMaterialShapeDrawable(false);
                if (materialShapeDrawable2 != null) {
                    materialShapeDrawable2.onCornerSizeChangeListener = null;
                }
            }
            post(new Task$$ExternalSyntheticLambda0(21, this));
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        OnPressedChangeListener onPressedChangeListener = this.onPressedChangeListenerInternal;
        if (onPressedChangeListener != null) {
            ((MaterialButtonToggleGroup) ((MemoryCacheService) onPressedChangeListener).imageLoader).invalidate();
        }
        super.setPressed(z);
        maybeAnimateSize(false);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (isUsingOriginalBackground()) {
            MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
            MaterialButton materialButton = materialButtonHelper.materialButton;
            if (materialButtonHelper.rippleColor != colorStateList) {
                materialButtonHelper.rippleColor = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (isUsingOriginalBackground()) {
            setRippleColor(FileUtil.getColorStateList(getContext(), i));
        }
    }

    public void setSecondaryIcon(Drawable drawable) {
        if (this.secondaryIcon == drawable || maybeRunAfterWidthAnimation(new MaterialButton$$ExternalSyntheticLambda0(this, drawable, 0))) {
            return;
        }
        this.originalWidth = -2.1474836E9f;
        this.secondaryIcon = drawable;
        this.stopNullSecondaryIconUpdate = false;
        updateSecondaryIcon(true);
        updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setSecondaryIconGravity(int i) {
        if (this.secondaryIconGravity != i) {
            if (this.secondaryIcon != null && this.icon != null && areIconsGravitySameAlignment()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("secondaryIconGravity cannot have the same alignment as iconGravity");
            } else {
                this.secondaryIconGravity = i;
                updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void setSecondaryIconResource(int i) {
        setSecondaryIcon(i != 0 ? TuplesKt.getDrawable(getContext(), i) : null);
    }

    public void setSecondaryIconTint(ColorStateList colorStateList) {
        if (this.secondaryIconTint != colorStateList) {
            this.secondaryIconTint = colorStateList;
            updateSecondaryIcon(false);
        }
    }

    public void setSecondaryIconTintMode(PorterDuff.Mode mode) {
        if (this.secondaryIconTintMode != mode) {
            this.secondaryIconTintMode = mode;
            updateSecondaryIcon(false);
        }
    }

    public void setSecondaryIconTintResource(int i) {
        setSecondaryIconTint(FileUtil.getColorStateList(getContext(), i));
    }

    public void setShapeAppearance(ShapeAppearance shapeAppearance) {
        if (!isUsingOriginalBackground()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Attempted to set ShapeAppearance on a MaterialButton which has an overwritten background.");
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        if (materialButtonHelper.cornerSpringForce == null && shapeAppearance.isStateful()) {
            materialButtonHelper.cornerSpringForce = DpKt.resolveThemeSpringForce(getContext());
            if (materialButtonHelper.shapeAppearance instanceof StateListShapeAppearanceModel) {
                materialButtonHelper.updateButtonShape();
            }
        }
        materialButtonHelper.shapeAppearance = shapeAppearance;
        materialButtonHelper.updateButtonShape();
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        if (!isUsingOriginalBackground()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        materialButtonHelper.shapeAppearance = shapeAppearanceModel;
        materialButtonHelper.updateButtonShape();
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (isUsingOriginalBackground()) {
            MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
            materialButtonHelper.shouldDrawSurfaceColorStroke = z;
            materialButtonHelper.updateStroke();
        }
    }

    public void setSizeChange(StateListSizeChange stateListSizeChange) {
        if (this.sizeChange != stateListSizeChange) {
            this.sizeChange = stateListSizeChange;
            maybeAnimateSize(true);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (isUsingOriginalBackground()) {
            MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
            if (materialButtonHelper.strokeColor != colorStateList) {
                materialButtonHelper.strokeColor = colorStateList;
                materialButtonHelper.updateStroke();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (isUsingOriginalBackground()) {
            setStrokeColor(FileUtil.getColorStateList(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (isUsingOriginalBackground()) {
            MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
            if (materialButtonHelper.strokeWidth != i) {
                materialButtonHelper.strokeWidth = i;
                materialButtonHelper.updateStroke();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (isUsingOriginalBackground()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!isUsingOriginalBackground()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        if (materialButtonHelper.backgroundTint != colorStateList) {
            materialButtonHelper.backgroundTint = colorStateList;
            if (materialButtonHelper.getMaterialShapeDrawable(false) != null) {
                materialButtonHelper.getMaterialShapeDrawable(false).setTintList(materialButtonHelper.backgroundTint);
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!isUsingOriginalBackground()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        if (materialButtonHelper.backgroundTintMode != mode) {
            materialButtonHelper.backgroundTintMode = mode;
            if (materialButtonHelper.getMaterialShapeDrawable(false) == null || materialButtonHelper.backgroundTintMode == null) {
                return;
            }
            materialButtonHelper.getMaterialShapeDrawable(false).setTintMode(materialButtonHelper.backgroundTintMode);
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.originalWidth = -2.1474836E9f;
        super.setText(charSequence, bufferType);
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
        updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        this.originalWidth = -2.1474836E9f;
        super.setTextAppearance(context, i);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void setTextSize(int i, float f) {
        this.originalWidth = -2.1474836E9f;
        super.setTextSize(i, f);
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.materialButtonHelper.toggleCheckedStateOnClick = z;
    }

    @Override // android.widget.TextView
    public void setWidth(int i) {
        this.originalWidth = -2.1474836E9f;
        super.setWidth(i);
    }

    public void setWidthChangeDirection(WidthChangeDirection widthChangeDirection) {
        if (this.widthChangeDirection != widthChangeDirection) {
            this.widthChangeDirection = widthChangeDirection;
            maybeAnimateSize(true);
        }
    }

    public void setWidthChangeMax(int i) {
        if (this.widthChangeMax != i) {
            this.widthChangeMax = i;
            maybeAnimateSize(true);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.checked);
    }

    public final void updateIcon(boolean z) {
        Drawable drawable = this.icon;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.icon = mutate;
            mutate.setTintList(this.iconTint);
            PorterDuff.Mode mode = this.iconTintMode;
            if (mode != null) {
                this.icon.setTintMode(mode);
            }
            int i = this.iconSize;
            if (i == 0) {
                i = this.icon.getIntrinsicWidth();
            }
            int i2 = this.iconSize;
            if (i2 == 0) {
                i2 = this.icon.getIntrinsicHeight();
            }
            Drawable drawable2 = this.icon;
            int i3 = this.iconLeft;
            int i4 = this.iconTop;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.icon.setVisible(true, z);
        }
        if (this.icon != null && this.secondaryIcon != null && areIconsGravitySameAlignment()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("iconGravity cannot have the same alignment as secondaryIconGravity");
            return;
        }
        if (this.icon == null && this.secondaryIcon != null && areIconsGravitySameAlignment()) {
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        boolean z2 = (isIconStart() && compoundDrawablesRelative[0] != this.icon) || (isIconEnd() && compoundDrawablesRelative[2] != this.icon) || (isIconTop() && compoundDrawablesRelative[1] != this.icon);
        if (z || z2) {
            if (isIconStart()) {
                setCompoundDrawablesRelative(this.icon, getUpdatedIconFor(1), getUpdatedIconFor(2), null);
            } else if (isIconEnd()) {
                setCompoundDrawablesRelative(getUpdatedIconFor(0), getUpdatedIconFor(1), this.icon, null);
            } else if (isIconTop()) {
                setCompoundDrawablesRelative(getUpdatedIconFor(0), this.icon, getUpdatedIconFor(2), null);
            }
        }
    }

    public final void updateIconPosition(int i, int i2) {
        if (this.icon == null || getLayout() == null) {
            return;
        }
        if (isIconStart() || isIconEnd()) {
            this.iconTop = 0;
            if (canUpdateWithoutTextAlignment(this.iconGravity)) {
                this.iconLeft = 0;
                updateIcon(false);
                return;
            }
            int iconLeft = getIconLeft(i, this.iconGravity);
            if (this.iconLeft != iconLeft) {
                this.iconLeft = iconLeft;
                updateIcon(false);
                return;
            }
            return;
        }
        if (isIconTop()) {
            this.iconLeft = 0;
            if (this.iconGravity == 16) {
                this.iconTop = 0;
                updateIcon(false);
                return;
            }
            int i3 = this.iconSize;
            if (i3 == 0) {
                i3 = this.icon.getIntrinsicHeight();
            }
            int iconTop = getIconTop(i2, i3);
            if (this.iconTop != iconTop) {
                this.iconTop = iconTop;
                updateIcon(false);
            }
        }
    }

    public final void updatePaddingsAndSizeForWidthAnimation() {
        int i = (int) (this.displayedWidthIncrease - this.displayedWidthDecrease);
        boolean z = getLayoutDirection() == 1;
        int i2 = this.opticalCenterShift;
        if (z) {
            i2 = -i2;
        }
        int i3 = (i / 2) + i2;
        if (getLayoutParams() != null) {
            getLayoutParams().width = (int) (this.originalWidth + i);
        }
        setPaddingRelative(this.originalPaddingStart + i3, getPaddingTop(), (this.originalPaddingEnd + i) - i3, getPaddingBottom());
    }

    public final void updateSecondaryIcon(boolean z) {
        Drawable drawable = this.secondaryIcon;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.secondaryIcon = mutate;
            mutate.setTintList(this.secondaryIconTint);
            PorterDuff.Mode mode = this.secondaryIconTintMode;
            if (mode != null) {
                this.secondaryIcon.setTintMode(mode);
            }
            int i = this.iconSize;
            if (i == 0) {
                i = this.secondaryIcon.getIntrinsicWidth();
            }
            int i2 = this.iconSize;
            if (i2 == 0) {
                i2 = this.secondaryIcon.getIntrinsicHeight();
            }
            Drawable drawable2 = this.secondaryIcon;
            int i3 = this.secondaryIconLeft;
            int i4 = this.secondaryIconTop;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.secondaryIcon.setVisible(true, z);
        }
        if (this.secondaryIcon != null && this.icon != null && areIconsGravitySameAlignment()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("secondaryIconGravity cannot have the same alignment as iconGravity");
            return;
        }
        if (this.secondaryIcon == null) {
            if (this.stopNullSecondaryIconUpdate) {
                return;
            }
            if (this.icon != null && areIconsGravitySameAlignment()) {
                return;
            }
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        boolean z2 = (isSecondaryIconStart() && compoundDrawablesRelative[0] != this.secondaryIcon) || (isSecondaryIconEnd() && compoundDrawablesRelative[2] != this.secondaryIcon) || (isSecondaryIconTop() && compoundDrawablesRelative[1] != this.secondaryIcon);
        if (z || z2) {
            if (isSecondaryIconStart()) {
                setCompoundDrawablesRelative(this.secondaryIcon, getUpdatedSecondaryIconFor(1), getUpdatedSecondaryIconFor(2), null);
            } else if (isSecondaryIconEnd()) {
                setCompoundDrawablesRelative(getUpdatedSecondaryIconFor(0), getUpdatedSecondaryIconFor(1), this.secondaryIcon, null);
            } else if (isSecondaryIconTop()) {
                setCompoundDrawablesRelative(getUpdatedSecondaryIconFor(0), this.secondaryIcon, getUpdatedSecondaryIconFor(2), null);
            }
        }
    }

    public final void updateSecondaryIconPosition(int i, int i2) {
        if (this.secondaryIcon == null || getLayout() == null) {
            return;
        }
        if (isSecondaryIconStart() || isSecondaryIconEnd()) {
            this.secondaryIconTop = 0;
            if (canUpdateWithoutTextAlignment(this.secondaryIconGravity)) {
                this.secondaryIconLeft = 0;
                updateSecondaryIcon(false);
                return;
            }
            int iconLeft = getIconLeft(i, this.secondaryIconGravity);
            if (this.secondaryIconLeft != iconLeft) {
                this.secondaryIconLeft = iconLeft;
                updateSecondaryIcon(false);
                return;
            }
            return;
        }
        if (isSecondaryIconTop()) {
            this.secondaryIconLeft = 0;
            if (this.secondaryIconGravity == 16) {
                this.secondaryIconTop = 0;
                updateSecondaryIcon(false);
                return;
            }
            int i3 = this.iconSize;
            if (i3 == 0) {
                i3 = this.secondaryIcon.getIntrinsicHeight();
            }
            int iconTop = getIconTop(i2, i3);
            if (this.secondaryIconTop != iconTop) {
                this.secondaryIconTop = iconTop;
                updateSecondaryIcon(false);
            }
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.wikipedia.R.attr.materialButtonStyle);
    }
}
