package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.os.BundleKt;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.work.OperationKt;
import coil3.Extras;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.ShapeableDelegateV22;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.WeakHashMap;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.json.internal.Composer;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate, Shapeable, MaterialCheckable {
    public CharSequence accessibilityClassName;
    public ChipDrawable chipDrawable;
    public boolean closeIconFocused;
    public boolean closeIconHovered;
    public boolean closeIconPressed;
    public boolean deferredCheckedValue;
    public boolean ensureMinTouchTargetSize;
    public final AnonymousClass1 fontCallback;
    public InsetDrawable insetBackgroundDrawable;
    public int lastLayoutDirection;
    public int minTouchTargetSize;
    public CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
    public MaterialCheckable.OnCheckedChangeListener onCheckedChangeListenerInternal;
    public View.OnClickListener onCloseIconClickListener;
    public final Rect rect;
    public final RectF rectF;
    public RippleDrawable ripple;
    public final ChipTouchHelper touchHelper;
    public boolean touchHelperEnabled;
    public static final Rect EMPTY_BOUNDS = new Rect();
    public static final int[] SELECTED_STATE = {R.attr.state_selected};
    public static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.chip.Chip$2, reason: invalid class name */
    public final class AnonymousClass2 extends ViewOutlineProvider {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass2(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ChipDrawable chipDrawable = ((Chip) obj).chipDrawable;
                    if (chipDrawable == null) {
                        outline.setAlpha(0.0f);
                        break;
                    } else {
                        chipDrawable.getOutline(outline);
                        break;
                    }
                default:
                    ShapeableDelegateV22 shapeableDelegateV22 = (ShapeableDelegateV22) obj;
                    if (shapeableDelegateV22.shapeAppearanceModel != null && !shapeableDelegateV22.maskBounds.isEmpty()) {
                        RectF rectF = shapeableDelegateV22.maskBounds;
                        outline.setRoundRect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom, shapeableDelegateV22.cornerRadius);
                        break;
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ChipTouchHelper extends ExploreByTouchHelper {
        public ChipTouchHelper(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void getVisibleVirtualViews(ArrayList arrayList) {
            ChipDrawable chipDrawable;
            arrayList.add(0);
            Rect rect = Chip.EMPTY_BOUNDS;
            Chip chip = Chip.this;
            if (!chip.hasCloseIcon() || (chipDrawable = chip.chipDrawable) == null || !chipDrawable.closeIconVisible || chip.onCloseIconClickListener == null) {
                return;
            }
            arrayList.add(1);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
            if (i != 1) {
                accessibilityNodeInfo.setContentDescription("");
                accessibilityNodeInfo.setBoundsInParent(Chip.EMPTY_BOUNDS);
                return;
            }
            Chip chip = Chip.this;
            CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = chip.getText();
                accessibilityNodeInfo.setContentDescription(chip.getContext().getString(org.schabi.newpipe.R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
            }
            accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfo.setEnabled(chip.isEnabled());
        }
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, org.schabi.newpipe.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, i);
        int resourceId;
        this.rect = new Rect();
        this.rectF = new RectF();
        int i2 = 0;
        this.fontCallback = new AnonymousClass1(this, i2);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set left drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set start drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m("Chip does not support multi-line text");
                throw null;
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        ChipDrawable chipDrawable = new ChipDrawable(context2, attributeSet, i);
        Context context3 = chipDrawable.context;
        int[] iArr = R$styleable.Chip;
        TypedArray obtainStyledAttributes = ViewUtils.obtainStyledAttributes(context3, attributeSet, iArr, i, org.schabi.newpipe.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        chipDrawable.isShapeThemingEnabled = obtainStyledAttributes.hasValue(37);
        Context context4 = chipDrawable.context;
        ColorStateList colorStateList = BundleKt.getColorStateList(context4, obtainStyledAttributes, 24);
        if (chipDrawable.chipSurfaceColor != colorStateList) {
            chipDrawable.chipSurfaceColor = colorStateList;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
        ColorStateList colorStateList2 = BundleKt.getColorStateList(context4, obtainStyledAttributes, 11);
        if (chipDrawable.chipBackgroundColor != colorStateList2) {
            chipDrawable.chipBackgroundColor = colorStateList2;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
        float dimension = obtainStyledAttributes.getDimension(19, 0.0f);
        if (chipDrawable.chipMinHeight != dimension) {
            chipDrawable.chipMinHeight = dimension;
            chipDrawable.invalidateSelf();
            chipDrawable.onSizeChange();
        }
        if (obtainStyledAttributes.hasValue(12)) {
            chipDrawable.setChipCornerRadius(obtainStyledAttributes.getDimension(12, 0.0f));
        }
        chipDrawable.setChipStrokeColor(BundleKt.getColorStateList(context4, obtainStyledAttributes, 22));
        chipDrawable.setChipStrokeWidth(obtainStyledAttributes.getDimension(23, 0.0f));
        chipDrawable.setRippleColor(BundleKt.getColorStateList(context4, obtainStyledAttributes, 36));
        String text = obtainStyledAttributes.getText(5);
        text = text == null ? "" : text;
        boolean equals = TextUtils.equals(chipDrawable.text, text);
        TextDrawableHelper textDrawableHelper = chipDrawable.textDrawableHelper;
        if (!equals) {
            chipDrawable.text = text;
            textDrawableHelper.textSizeDirty = true;
            chipDrawable.invalidateSelf();
            chipDrawable.onSizeChange();
        }
        TextAppearance textAppearance = (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? null : new TextAppearance(context4, resourceId);
        textAppearance.textSize = obtainStyledAttributes.getDimension(1, textAppearance.textSize);
        textDrawableHelper.setTextAppearance(textAppearance, context4);
        int i3 = obtainStyledAttributes.getInt(3, 0);
        if (i3 == 1) {
            chipDrawable.truncateAt = TextUtils.TruncateAt.START;
        } else if (i3 == 2) {
            chipDrawable.truncateAt = TextUtils.TruncateAt.MIDDLE;
        } else if (i3 == 3) {
            chipDrawable.truncateAt = TextUtils.TruncateAt.END;
        }
        chipDrawable.setChipIconVisible(obtainStyledAttributes.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            chipDrawable.setChipIconVisible(obtainStyledAttributes.getBoolean(15, false));
        }
        chipDrawable.setChipIcon(BundleKt.getDrawable(context4, obtainStyledAttributes, 14));
        if (obtainStyledAttributes.hasValue(17)) {
            chipDrawable.setChipIconTint(BundleKt.getColorStateList(context4, obtainStyledAttributes, 17));
        }
        chipDrawable.setChipIconSize(obtainStyledAttributes.getDimension(16, -1.0f));
        chipDrawable.setCloseIconVisible(obtainStyledAttributes.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            chipDrawable.setCloseIconVisible(obtainStyledAttributes.getBoolean(26, false));
        }
        chipDrawable.setCloseIcon(BundleKt.getDrawable(context4, obtainStyledAttributes, 25));
        chipDrawable.setCloseIconTint(BundleKt.getColorStateList(context4, obtainStyledAttributes, 30));
        chipDrawable.setCloseIconSize(obtainStyledAttributes.getDimension(28, 0.0f));
        chipDrawable.setCheckable(obtainStyledAttributes.getBoolean(6, false));
        chipDrawable.setCheckedIconVisible(obtainStyledAttributes.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            chipDrawable.setCheckedIconVisible(obtainStyledAttributes.getBoolean(8, false));
        }
        chipDrawable.setCheckedIcon(BundleKt.getDrawable(context4, obtainStyledAttributes, 7));
        if (obtainStyledAttributes.hasValue(9)) {
            chipDrawable.setCheckedIconTint(BundleKt.getColorStateList(context4, obtainStyledAttributes, 9));
        }
        chipDrawable.showMotionSpec = MotionSpec.createFromAttribute(context4, obtainStyledAttributes, 39);
        chipDrawable.hideMotionSpec = MotionSpec.createFromAttribute(context4, obtainStyledAttributes, 33);
        float dimension2 = obtainStyledAttributes.getDimension(21, 0.0f);
        if (chipDrawable.chipStartPadding != dimension2) {
            chipDrawable.chipStartPadding = dimension2;
            chipDrawable.invalidateSelf();
            chipDrawable.onSizeChange();
        }
        chipDrawable.setIconStartPadding(obtainStyledAttributes.getDimension(35, 0.0f));
        chipDrawable.setIconEndPadding(obtainStyledAttributes.getDimension(34, 0.0f));
        float dimension3 = obtainStyledAttributes.getDimension(41, 0.0f);
        if (chipDrawable.textStartPadding != dimension3) {
            chipDrawable.textStartPadding = dimension3;
            chipDrawable.invalidateSelf();
            chipDrawable.onSizeChange();
        }
        float dimension4 = obtainStyledAttributes.getDimension(40, 0.0f);
        if (chipDrawable.textEndPadding != dimension4) {
            chipDrawable.textEndPadding = dimension4;
            chipDrawable.invalidateSelf();
            chipDrawable.onSizeChange();
        }
        chipDrawable.setCloseIconStartPadding(obtainStyledAttributes.getDimension(29, 0.0f));
        chipDrawable.setCloseIconEndPadding(obtainStyledAttributes.getDimension(27, 0.0f));
        float dimension5 = obtainStyledAttributes.getDimension(13, 0.0f);
        if (chipDrawable.chipEndPadding != dimension5) {
            chipDrawable.chipEndPadding = dimension5;
            chipDrawable.invalidateSelf();
            chipDrawable.onSizeChange();
        }
        chipDrawable.maxWidth = obtainStyledAttributes.getDimensionPixelSize(4, com.google.android.exoplayer2.util.Log.LOG_LEVEL_OFF);
        obtainStyledAttributes.recycle();
        ViewUtils.checkCompatibleTheme(context2, attributeSet, i, org.schabi.newpipe.R.style.Widget_MaterialComponents_Chip_Action);
        ViewUtils.checkTextAppearance(context2, attributeSet, iArr, i, org.schabi.newpipe.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, i, org.schabi.newpipe.R.style.Widget_MaterialComponents_Chip_Action);
        this.ensureMinTouchTargetSize = obtainStyledAttributes2.getBoolean(32, false);
        this.minTouchTargetSize = (int) Math.ceil(obtainStyledAttributes2.getDimension(20, (float) Math.ceil(ViewUtils.dpToPx(getContext(), 48))));
        obtainStyledAttributes2.recycle();
        setChipDrawable(chipDrawable);
        chipDrawable.setElevation(getElevation());
        ViewUtils.checkCompatibleTheme(context2, attributeSet, i, org.schabi.newpipe.R.style.Widget_MaterialComponents_Chip_Action);
        ViewUtils.checkTextAppearance(context2, attributeSet, iArr, i, org.schabi.newpipe.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray obtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr, i, org.schabi.newpipe.R.style.Widget_MaterialComponents_Chip_Action);
        boolean hasValue = obtainStyledAttributes3.hasValue(37);
        obtainStyledAttributes3.recycle();
        this.touchHelper = new ChipTouchHelper(this);
        updateAccessibilityDelegate();
        if (!hasValue) {
            setOutlineProvider(new AnonymousClass2(this, i2));
        }
        setChecked(this.deferredCheckedValue);
        setText(chipDrawable.text);
        setEllipsize(chipDrawable.truncateAt);
        updateTextPaintDrawState();
        if (!this.chipDrawable.shouldDrawText) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        updatePaddingInternal();
        if (this.ensureMinTouchTargetSize) {
            setMinHeight(this.minTouchTargetSize);
        }
        this.lastLayoutDirection = getLayoutDirection();
        super.setOnCheckedChangeListener(new Chip$$ExternalSyntheticLambda0(this, i2));
    }

    private RectF getCloseIconTouchBounds() {
        RectF rectF = this.rectF;
        rectF.setEmpty();
        if (hasCloseIcon() && this.onCloseIconClickListener != null) {
            ChipDrawable chipDrawable = this.chipDrawable;
            Rect bounds = chipDrawable.getBounds();
            rectF.setEmpty();
            if (chipDrawable.showsCloseIcon()) {
                float f = chipDrawable.chipEndPadding + chipDrawable.closeIconEndPadding + chipDrawable.closeIconSize + chipDrawable.closeIconStartPadding + chipDrawable.textEndPadding;
                if (chipDrawable.getLayoutDirection() == 0) {
                    float f2 = bounds.right;
                    rectF.right = f2;
                    rectF.left = f2 - f;
                } else {
                    float f3 = bounds.left;
                    rectF.left = f3;
                    rectF.right = f3 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i = (int) closeIconTouchBounds.left;
        int i2 = (int) closeIconTouchBounds.top;
        int i3 = (int) closeIconTouchBounds.right;
        int i4 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.rect;
        rect.set(i, i2, i3, i4);
        return rect;
    }

    private TextAppearance getTextAppearance() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.textDrawableHelper.textAppearance;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.closeIconHovered != z) {
            this.closeIconHovered = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.closeIconPressed != z) {
            this.closeIconPressed = z;
            refreshDrawableState();
        }
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i;
        if (!this.touchHelperEnabled) {
            return super.dispatchHoverEvent(motionEvent);
        }
        ChipTouchHelper chipTouchHelper = this.touchHelper;
        AccessibilityManager accessibilityManager = chipTouchHelper.mManager;
        int i2 = 0;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                Chip chip = Chip.this;
                if (chip.hasCloseIcon() && chip.getCloseIconTouchBounds().contains(x, y)) {
                    i2 = 1;
                }
                int i3 = chipTouchHelper.mHoveredVirtualViewId;
                if (i3 != i2) {
                    chipTouchHelper.mHoveredVirtualViewId = i2;
                    chipTouchHelper.sendEventForVirtualView(i2, 128);
                    chipTouchHelper.sendEventForVirtualView(i3, 256);
                    return true;
                }
            } else if (action == 10 && (i = chipTouchHelper.mHoveredVirtualViewId) != Integer.MIN_VALUE) {
                if (i != Integer.MIN_VALUE) {
                    chipTouchHelper.mHoveredVirtualViewId = Integer.MIN_VALUE;
                    chipTouchHelper.sendEventForVirtualView(Integer.MIN_VALUE, 128);
                    chipTouchHelper.sendEventForVirtualView(i, 256);
                    return true;
                }
            }
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.touchHelperEnabled) {
            return super.dispatchKeyEvent(keyEvent);
        }
        ChipTouchHelper chipTouchHelper = this.touchHelper;
        chipTouchHelper.getClass();
        boolean z = false;
        int i = 0;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i2 = 33;
                                } else if (keyCode == 21) {
                                    i2 = 17;
                                } else if (keyCode != 22) {
                                    i2 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i < repeatCount && chipTouchHelper.moveFocus(i2, null)) {
                                    i++;
                                    z2 = true;
                                }
                                z = z2;
                                break;
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i3 = chipTouchHelper.mKeyboardFocusedVirtualViewId;
                    if (i3 != Integer.MIN_VALUE) {
                        Chip chip = Chip.this;
                        if (i3 == 0) {
                            chip.performClick();
                        } else if (i3 == 1) {
                            chip.playSoundEffect(0);
                            View.OnClickListener onClickListener = chip.onCloseIconClickListener;
                            if (onClickListener != null) {
                                onClickListener.onClick(chip);
                            }
                            if (chip.touchHelperEnabled) {
                                chip.touchHelper.sendEventForVirtualView(1, 1);
                            }
                        }
                    }
                    z = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = chipTouchHelper.moveFocus(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                z = chipTouchHelper.moveFocus(1, null);
            }
        }
        if (!z || chipTouchHelper.mKeyboardFocusedVirtualViewId == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i;
        super.drawableStateChanged();
        ChipDrawable chipDrawable = this.chipDrawable;
        boolean z = false;
        if (chipDrawable != null && ChipDrawable.isStateful(chipDrawable.closeIcon)) {
            ChipDrawable chipDrawable2 = this.chipDrawable;
            ?? isEnabled = isEnabled();
            int i2 = isEnabled;
            if (this.closeIconFocused) {
                i2 = isEnabled + 1;
            }
            int i3 = i2;
            if (this.closeIconHovered) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.closeIconPressed) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            } else {
                i = 0;
            }
            if (this.closeIconFocused) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.closeIconHovered) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.closeIconPressed) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            if (!Arrays.equals(chipDrawable2.closeIconStateSet, iArr)) {
                chipDrawable2.closeIconStateSet = iArr;
                if (chipDrawable2.showsCloseIcon()) {
                    z = chipDrawable2.onStateChange(chipDrawable2.getState(), iArr);
                }
            }
        }
        if (z) {
            invalidate();
        }
    }

    public final void ensureAccessibleTouchTarget(int i) {
        this.minTouchTargetSize = i;
        if (!this.ensureMinTouchTargetSize) {
            InsetDrawable insetDrawable = this.insetBackgroundDrawable;
            if (insetDrawable == null) {
                updateFrameworkRippleBackground();
                return;
            } else {
                if (insetDrawable != null) {
                    this.insetBackgroundDrawable = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    updateFrameworkRippleBackground();
                    return;
                }
                return;
            }
        }
        int max = Math.max(0, i - ((int) this.chipDrawable.chipMinHeight));
        int max2 = Math.max(0, i - this.chipDrawable.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.insetBackgroundDrawable;
            if (insetDrawable2 == null) {
                updateFrameworkRippleBackground();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.insetBackgroundDrawable = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    updateFrameworkRippleBackground();
                    return;
                }
                return;
            }
        }
        int i2 = max2 > 0 ? max2 / 2 : 0;
        int i3 = max > 0 ? max / 2 : 0;
        if (this.insetBackgroundDrawable != null) {
            Rect rect = new Rect();
            this.insetBackgroundDrawable.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                updateFrameworkRippleBackground();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.insetBackgroundDrawable = new InsetDrawable((Drawable) this.chipDrawable, i2, i3, i2, i3);
        updateFrameworkRippleBackground();
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.accessibilityClassName)) {
            return this.accessibilityClassName;
        }
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || !chipDrawable.checkable) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).checkableGroup.singleSelection) ? "android.widget.RadioButton" : "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.insetBackgroundDrawable;
        return insetDrawable == null ? this.chipDrawable : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.checkedIcon;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.checkedIconTint;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.chipBackgroundColor;
        }
        return null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return Math.max(0.0f, chipDrawable.getChipCornerRadius());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.chipDrawable;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.chipEndPadding;
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        Drawable drawable;
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || (drawable = chipDrawable.chipIcon) == null) {
            return null;
        }
        return drawable;
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.chipIconSize;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.chipIconTint;
        }
        return null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.chipMinHeight;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.chipStartPadding;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.chipStrokeColor;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.chipStrokeWidth;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        Drawable drawable;
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || (drawable = chipDrawable.closeIcon) == null) {
            return null;
        }
        return drawable;
    }

    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.closeIconContentDescription;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.closeIconEndPadding;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.closeIconSize;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.closeIconStartPadding;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.closeIconTint;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.truncateAt;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.touchHelperEnabled) {
            ChipTouchHelper chipTouchHelper = this.touchHelper;
            if (chipTouchHelper.mKeyboardFocusedVirtualViewId == 1 || chipTouchHelper.mAccessibilityFocusedVirtualViewId == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public MotionSpec getHideMotionSpec() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.hideMotionSpec;
        }
        return null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.iconEndPadding;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.iconStartPadding;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.rippleColor;
        }
        return null;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.chipDrawable.drawableState.shapeAppearanceModel;
    }

    public MotionSpec getShowMotionSpec() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.showMotionSpec;
        }
        return null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.textEndPadding;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.textStartPadding;
        }
        return 0.0f;
    }

    public final boolean hasCloseIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null) {
            return false;
        }
        Drawable drawable = chipDrawable.closeIcon;
        if (drawable == null) {
            drawable = null;
        }
        return drawable != null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        RangesKt.setParentAbsoluteElevation(this, this.chipDrawable);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, SELECTED_STATE);
        }
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null && chipDrawable.checkable) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKABLE_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.touchHelperEnabled) {
            ChipTouchHelper chipTouchHelper = this.touchHelper;
            int i2 = chipTouchHelper.mKeyboardFocusedVirtualViewId;
            if (i2 != Integer.MIN_VALUE) {
                chipTouchHelper.clearKeyboardFocusForVirtualView(i2);
            }
            if (z) {
                chipTouchHelper.moveFocus(i, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        ChipDrawable chipDrawable = this.chipDrawable;
        int i2 = 0;
        accessibilityNodeInfo.setCheckable(chipDrawable != null && chipDrawable.checkable);
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            if (chipGroup.singleLine) {
                int i3 = 0;
                while (true) {
                    if (i2 >= chipGroup.getChildCount()) {
                        i3 = -1;
                        break;
                    }
                    View childAt = chipGroup.getChildAt(i2);
                    if ((childAt instanceof Chip) && chipGroup.getChildAt(i2).getVisibility() == 0) {
                        if (((Chip) childAt) == this) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    i2++;
                }
                i = i3;
            } else {
                i = -1;
            }
            Object tag = getTag(org.schabi.newpipe.R.id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) Extras.Key.obtain(tag instanceof Integer ? ((Integer) tag).intValue() : -1, 1, i, 1, false, isChecked()).f8default);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.lastLayoutDirection != i) {
            this.lastLayoutDirection = i;
            updatePaddingInternal();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L4a
            if (r0 == r2) goto L2c
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L45
            goto L50
        L21:
            boolean r0 = r5.closeIconPressed
            if (r0 == 0) goto L50
            if (r1 != 0) goto L2a
            r5.setCloseIconPressed(r3)
        L2a:
            r0 = r2
            goto L51
        L2c:
            boolean r0 = r5.closeIconPressed
            if (r0 == 0) goto L45
            r5.playSoundEffect(r3)
            android.view.View$OnClickListener r0 = r5.onCloseIconClickListener
            if (r0 == 0) goto L3a
            r0.onClick(r5)
        L3a:
            boolean r0 = r5.touchHelperEnabled
            if (r0 == 0) goto L43
            com.google.android.material.chip.Chip$ChipTouchHelper r0 = r5.touchHelper
            r0.sendEventForVirtualView(r2, r2)
        L43:
            r0 = r2
            goto L46
        L45:
            r0 = r3
        L46:
            r5.setCloseIconPressed(r3)
            goto L51
        L4a:
            if (r1 == 0) goto L50
            r5.setCloseIconPressed(r2)
            goto L2a
        L50:
            r0 = r3
        L51:
            if (r0 != 0) goto L5b
            boolean r5 = super.onTouchEvent(r6)
            if (r5 == 0) goto L5a
            goto L5b
        L5a:
            return r3
        L5b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.accessibilityClassName = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.ripple) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.ripple) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckable(z);
        }
    }

    public void setCheckableResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckable(chipDrawable.context.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null) {
            this.deferredCheckedValue = z;
        } else if (chipDrawable.checkable) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIcon(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIcon(Cookie.Companion.getDrawable(chipDrawable.context, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconTint(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconTint(StaticImageDecoderKt.getColorStateList(chipDrawable.context, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconVisible(chipDrawable.context.getResources().getBoolean(i));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || chipDrawable.chipBackgroundColor == colorStateList) {
            return;
        }
        chipDrawable.chipBackgroundColor = colorStateList;
        chipDrawable.onStateChange(chipDrawable.getState());
    }

    public void setChipBackgroundColorResource(int i) {
        ColorStateList colorStateList;
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || chipDrawable.chipBackgroundColor == (colorStateList = StaticImageDecoderKt.getColorStateList(chipDrawable.context, i))) {
            return;
        }
        chipDrawable.chipBackgroundColor = colorStateList;
        chipDrawable.onStateChange(chipDrawable.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipCornerRadius(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipCornerRadius(chipDrawable.context.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.chipDrawable;
        if (chipDrawable2 != chipDrawable) {
            if (chipDrawable2 != null) {
                chipDrawable2.delegate = new WeakReference(null);
            }
            this.chipDrawable = chipDrawable;
            chipDrawable.shouldDrawText = false;
            chipDrawable.delegate = new WeakReference(this);
            ensureAccessibleTouchTarget(this.minTouchTargetSize);
        }
    }

    public void setChipEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || chipDrawable.chipEndPadding == f) {
            return;
        }
        chipDrawable.chipEndPadding = f;
        chipDrawable.invalidateSelf();
        chipDrawable.onSizeChange();
    }

    public void setChipEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            float dimension = chipDrawable.context.getResources().getDimension(i);
            if (chipDrawable.chipEndPadding != dimension) {
                chipDrawable.chipEndPadding = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.onSizeChange();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIcon(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIcon(Cookie.Companion.getDrawable(chipDrawable.context, i));
        }
    }

    public void setChipIconSize(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconSize(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconSize(chipDrawable.context.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconTint(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconTint(StaticImageDecoderKt.getColorStateList(chipDrawable.context, i));
        }
    }

    public void setChipIconVisible(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconVisible(chipDrawable.context.getResources().getBoolean(i));
        }
    }

    public void setChipMinHeight(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || chipDrawable.chipMinHeight == f) {
            return;
        }
        chipDrawable.chipMinHeight = f;
        chipDrawable.invalidateSelf();
        chipDrawable.onSizeChange();
    }

    public void setChipMinHeightResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            float dimension = chipDrawable.context.getResources().getDimension(i);
            if (chipDrawable.chipMinHeight != dimension) {
                chipDrawable.chipMinHeight = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.onSizeChange();
            }
        }
    }

    public void setChipStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || chipDrawable.chipStartPadding == f) {
            return;
        }
        chipDrawable.chipStartPadding = f;
        chipDrawable.invalidateSelf();
        chipDrawable.onSizeChange();
    }

    public void setChipStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            float dimension = chipDrawable.context.getResources().getDimension(i);
            if (chipDrawable.chipStartPadding != dimension) {
                chipDrawable.chipStartPadding = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.onSizeChange();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeColor(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeColor(StaticImageDecoderKt.getColorStateList(chipDrawable.context, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeWidth(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeWidth(chipDrawable.context.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIcon(drawable);
        }
        updateAccessibilityDelegate();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || chipDrawable.closeIconContentDescription == charSequence) {
            return;
        }
        String str = BidiFormatter.LRM_STRING;
        BidiFormatter bidiFormatter = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? BidiFormatter.DEFAULT_RTL_INSTANCE : BidiFormatter.DEFAULT_LTR_INSTANCE;
        bidiFormatter.getClass();
        Composer composer = TextDirectionHeuristicsCompat.LTR;
        chipDrawable.closeIconContentDescription = bidiFormatter.unicodeWrap(charSequence);
        chipDrawable.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconEndPadding(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconEndPadding(chipDrawable.context.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIcon(Cookie.Companion.getDrawable(chipDrawable.context, i));
        }
        updateAccessibilityDelegate();
    }

    public void setCloseIconSize(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconSize(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconSize(chipDrawable.context.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconStartPadding(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconStartPadding(chipDrawable.context.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconTint(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconTint(StaticImageDecoderKt.getColorStateList(chipDrawable.context, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setElevation(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.chipDrawable == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Text within a chip are not allowed to scroll.");
            return;
        }
        super.setEllipsize(truncateAt);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.truncateAt = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.ensureMinTouchTargetSize = z;
        ensureAccessibleTouchTarget(this.minTouchTargetSize);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.hideMotionSpec = motionSpec;
        }
    }

    public void setHideMotionSpecResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.hideMotionSpec = MotionSpec.createFromResource(chipDrawable.context, i);
        }
    }

    public void setIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconEndPadding(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconEndPadding(chipDrawable.context.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconStartPadding(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconStartPadding(chipDrawable.context.getResources().getDimension(i));
        }
    }

    @Override // com.google.android.material.internal.MaterialCheckable
    public void setInternalOnCheckedChangeListener(MaterialCheckable.OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListenerInternal = onCheckedChangeListener;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.chipDrawable == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.maxWidth = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.onCloseIconClickListener = onClickListener;
        updateAccessibilityDelegate();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setRippleColor(colorStateList);
        }
        this.chipDrawable.getClass();
        updateFrameworkRippleBackground();
    }

    public void setRippleColorResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setRippleColor(StaticImageDecoderKt.getColorStateList(chipDrawable.context, i));
            this.chipDrawable.getClass();
            updateFrameworkRippleBackground();
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.chipDrawable.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.showMotionSpec = motionSpec;
        }
    }

    public void setShowMotionSpecResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.showMotionSpec = MotionSpec.createFromResource(chipDrawable.context, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(chipDrawable.shouldDrawText ? null : charSequence, bufferType);
        ChipDrawable chipDrawable2 = this.chipDrawable;
        if (chipDrawable2 == null || TextUtils.equals(chipDrawable2.text, charSequence)) {
            return;
        }
        chipDrawable2.text = charSequence;
        chipDrawable2.textDrawableHelper.textSizeDirty = true;
        chipDrawable2.invalidateSelf();
        chipDrawable2.onSizeChange();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            Context context2 = chipDrawable.context;
            chipDrawable.textDrawableHelper.setTextAppearance(new TextAppearance(context2, i), context2);
        }
        updateTextPaintDrawState();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || chipDrawable.textEndPadding == f) {
            return;
        }
        chipDrawable.textEndPadding = f;
        chipDrawable.invalidateSelf();
        chipDrawable.onSizeChange();
    }

    public void setTextEndPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            float dimension = chipDrawable.context.getResources().getDimension(i);
            if (chipDrawable.textEndPadding != dimension) {
                chipDrawable.textEndPadding = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.onSizeChange();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            float applyDimension = TypedValue.applyDimension(i, f, getResources().getDisplayMetrics());
            TextDrawableHelper textDrawableHelper = chipDrawable.textDrawableHelper;
            TextAppearance textAppearance = textDrawableHelper.textAppearance;
            if (textAppearance != null) {
                textAppearance.textSize = applyDimension;
                textDrawableHelper.textPaint.setTextSize(applyDimension);
                chipDrawable.onTextSizeChange();
            }
        }
        updateTextPaintDrawState();
    }

    public void setTextStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null || chipDrawable.textStartPadding == f) {
            return;
        }
        chipDrawable.textStartPadding = f;
        chipDrawable.invalidateSelf();
        chipDrawable.onSizeChange();
    }

    public void setTextStartPaddingResource(int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            float dimension = chipDrawable.context.getResources().getDimension(i);
            if (chipDrawable.textStartPadding != dimension) {
                chipDrawable.textStartPadding = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.onSizeChange();
            }
        }
    }

    public final void updateAccessibilityDelegate() {
        ChipDrawable chipDrawable;
        if (!hasCloseIcon() || (chipDrawable = this.chipDrawable) == null || !chipDrawable.closeIconVisible || this.onCloseIconClickListener == null) {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.touchHelperEnabled = false;
        } else {
            ViewCompat.setAccessibilityDelegate(this, this.touchHelper);
            this.touchHelperEnabled = true;
        }
    }

    public final void updateFrameworkRippleBackground() {
        this.ripple = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.chipDrawable.rippleColor), getBackgroundDrawable(), null);
        this.chipDrawable.getClass();
        RippleDrawable rippleDrawable = this.ripple;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        setBackground(rippleDrawable);
        updatePaddingInternal();
    }

    public final void updatePaddingInternal() {
        ChipDrawable chipDrawable;
        if (TextUtils.isEmpty(getText()) || (chipDrawable = this.chipDrawable) == null) {
            return;
        }
        int calculateCloseIconWidth = (int) (chipDrawable.calculateCloseIconWidth() + chipDrawable.chipEndPadding + chipDrawable.textEndPadding);
        ChipDrawable chipDrawable2 = this.chipDrawable;
        int calculateChipIconWidth = (int) (chipDrawable2.calculateChipIconWidth() + chipDrawable2.chipStartPadding + chipDrawable2.textStartPadding);
        if (this.insetBackgroundDrawable != null) {
            Rect rect = new Rect();
            this.insetBackgroundDrawable.getPadding(rect);
            calculateChipIconWidth += rect.left;
            calculateCloseIconWidth += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        setPaddingRelative(calculateChipIconWidth, paddingTop, calculateCloseIconWidth, paddingBottom);
    }

    public final void updateTextPaintDrawState() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.updateDrawState(getContext(), paint, this.fontCallback);
        }
    }

    public void setCloseIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconVisible(z);
        }
        updateAccessibilityDelegate();
    }

    public void setCheckedIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconVisible(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconVisible(z);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("Please set right drawable using R.attr#closeIcon.");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.chip.Chip$1, reason: invalid class name */
    public final class AnonymousClass1 extends OperationKt {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // androidx.work.OperationKt
        public final void onFontRetrievalFailed(int i) {
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    TextDrawableHelper textDrawableHelper = (TextDrawableHelper) this.this$0;
                    textDrawableHelper.textSizeDirty = true;
                    TextDrawableHelper.TextDrawableDelegate textDrawableDelegate = (TextDrawableHelper.TextDrawableDelegate) textDrawableHelper.delegate.get();
                    if (textDrawableDelegate != null) {
                        textDrawableDelegate.onTextSizeChange();
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.work.OperationKt
        public final void onFontRetrieved(Typeface typeface, boolean z) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    Chip chip = (Chip) obj;
                    ChipDrawable chipDrawable = chip.chipDrawable;
                    chip.setText(chipDrawable.shouldDrawText ? chipDrawable.text : chip.getText());
                    chip.requestLayout();
                    chip.invalidate();
                    break;
                default:
                    if (!z) {
                        TextDrawableHelper textDrawableHelper = (TextDrawableHelper) obj;
                        textDrawableHelper.textSizeDirty = true;
                        TextDrawableHelper.TextDrawableDelegate textDrawableDelegate = (TextDrawableHelper.TextDrawableDelegate) textDrawableHelper.delegate.get();
                        if (textDrawableDelegate != null) {
                            textDrawableDelegate.onTextSizeChange();
                            break;
                        }
                    }
                    break;
            }
        }

        private final void onFontRetrievalFailed$com$google$android$material$chip$Chip$1(int i) {
        }
    }

    public void setTextAppearance(TextAppearance textAppearance) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.textDrawableHelper.setTextAppearance(textAppearance, chipDrawable.context);
        }
        updateTextPaintDrawState();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            Context context = chipDrawable.context;
            chipDrawable.textDrawableHelper.setTextAppearance(new TextAppearance(context, i), context);
        }
        updateTextPaintDrawState();
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.schabi.newpipe.R.attr.chipStyle);
    }

    public Chip(Context context) {
        this(context, null);
    }
}
