package com.google.android.material.checkbox;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.colorspace.Rgb$$ExternalSyntheticLambda3;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.fragment.app.FragmentState;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.work.Operation$State;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.TuplesKt;
import kotlin.text.UStringsKt;
import org.wikipedia.R;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MaterialCheckBox extends AppCompatCheckBox {
    public boolean broadcasting;
    public Drawable buttonDrawable;
    public Drawable buttonIconDrawable;
    public ColorStateList buttonIconTintList;
    public PorterDuff.Mode buttonIconTintMode;
    public ColorStateList buttonTintList;
    public boolean centerIfNoTextEnabled;
    public int checkedState;
    public int[] currentStateChecked;
    public CharSequence customStateDescription;
    public CharSequence errorAccessibilityLabel;
    public boolean errorShown;
    public ColorStateList materialThemeColorsTintList;
    public CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
    public final LinkedHashSet onCheckedStateChangedListeners;
    public final LinkedHashSet onErrorChangedListeners;
    public final AnimatedVectorDrawableCompat transitionToUnchecked;
    public final AnonymousClass1 transitionToUncheckedCallback;
    public boolean useMaterialThemeColors;
    public boolean usingMaterialButtonDrawable;
    public static final int[] INDETERMINATE_STATE_SET = {R.attr.state_indeterminate};
    public static final int[] ERROR_STATE_SET = {R.attr.state_error};
    public static final int[][] CHECKBOX_STATES = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public static final int FRAMEWORK_BUTTON_DRAWABLE_RES_ID = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.checkbox.MaterialCheckBox$1, reason: invalid class name */
    public final class AnonymousClass1 extends Animatable2Compat$AnimationCallback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ View this$0;

        public /* synthetic */ AnonymousClass1(View view, int i) {
            this.$r8$classId = i;
            this.this$0 = view;
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback
        public final void onAnimationEnd(Drawable drawable) {
            int i = this.$r8$classId;
            View view = this.this$0;
            switch (i) {
                case 0:
                    ColorStateList colorStateList = ((MaterialCheckBox) view).buttonTintList;
                    if (colorStateList != null) {
                        drawable.setTintList(colorStateList);
                        break;
                    }
                    break;
                case 1:
                    BaseProgressIndicator baseProgressIndicator = (BaseProgressIndicator) view;
                    baseProgressIndicator.setIndeterminate(false);
                    baseProgressIndicator.setProgressCompat(baseProgressIndicator.storedProgress);
                    break;
                default:
                    BaseProgressIndicator baseProgressIndicator2 = (BaseProgressIndicator) view;
                    if (!baseProgressIndicator2.isIndeterminateModeChangeRequested) {
                        baseProgressIndicator2.setVisibility(baseProgressIndicator2.visibilityAfterHide);
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback
        public void onAnimationStart(Drawable drawable) {
            switch (this.$r8$classId) {
                case 0:
                    MaterialCheckBox materialCheckBox = (MaterialCheckBox) this.this$0;
                    ColorStateList colorStateList = materialCheckBox.buttonTintList;
                    if (colorStateList != null) {
                        drawable.setTint(colorStateList.getColorForState(materialCheckBox.currentStateChecked, colorStateList.getDefaultColor()));
                        break;
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new FragmentState.AnonymousClass1(26);
        public int checkedState;

        public final String toString() {
            StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" CheckedState=");
            int i = this.checkedState;
            return Animation.CC.m(sb, i != 1 ? i != 2 ? "unchecked" : "indeterminate" : "checked", "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.checkedState));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCheckBox(android.content.Context r13, android.util.AttributeSet r14) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.checkbox.MaterialCheckBox.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private String getButtonStateDescription() {
        int i = this.checkedState;
        return i == 1 ? getResources().getString(R.string.mtrl_checkbox_state_description_checked) : i == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        ColorStateList colorStateList = this.materialThemeColorsTintList;
        if (colorStateList != null) {
            return colorStateList;
        }
        int resolveColor = UStringsKt.resolveColor(getContext(), Operation$State.resolveTypedValueOrThrow(this, R.attr.colorControlActivated));
        int resolveColor2 = UStringsKt.resolveColor(getContext(), Operation$State.resolveTypedValueOrThrow(this, R.attr.colorError));
        int resolveColor3 = UStringsKt.resolveColor(getContext(), Operation$State.resolveTypedValueOrThrow(this, R.attr.colorSurface));
        int resolveColor4 = UStringsKt.resolveColor(getContext(), Operation$State.resolveTypedValueOrThrow(this, R.attr.colorOnSurface));
        ColorStateList colorStateList2 = new ColorStateList(CHECKBOX_STATES, new int[]{UStringsKt.layer(resolveColor3, 1.0f, resolveColor2), UStringsKt.layer(resolveColor3, 1.0f, resolveColor), UStringsKt.layer(resolveColor3, 0.54f, resolveColor4), UStringsKt.layer(resolveColor3, 0.38f, resolveColor4), UStringsKt.layer(resolveColor3, 0.38f, resolveColor4)});
        this.materialThemeColorsTintList = colorStateList2;
        return colorStateList2;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.buttonTintList;
        return colorStateList != null ? colorStateList : super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    private void setRippleColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof DrawableWrapper) {
            background = ((DrawableWrapper) background).getDrawable();
        }
        if (background instanceof RippleDrawable) {
            ((RippleDrawable) background).setColor(colorStateList);
        }
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.buttonDrawable;
    }

    public Drawable getButtonIconDrawable() {
        return this.buttonIconDrawable;
    }

    public ColorStateList getButtonIconTintList() {
        return this.buttonIconTintList;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.buttonIconTintMode;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.buttonTintList;
    }

    public int getCheckedState() {
        return this.checkedState;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.errorAccessibilityLabel;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.checkedState == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.useMaterialThemeColors && this.buttonTintList == null && this.buttonIconTintList == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(onCreateDrawableState, INDETERMINATE_STATE_SET);
        }
        if (this.errorShown) {
            View.mergeDrawableStates(onCreateDrawableState, ERROR_STATE_SET);
        }
        this.currentStateChecked = FileUtil.getCheckedState(onCreateDrawableState);
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.centerIfNoTextEnabled || !TextUtils.isEmpty(getText()) || (buttonDrawable = getButtonDrawable()) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (getLayoutDirection() == 1 ? -1 : 1);
        int save = canvas.save();
        canvas.translate(width, RecyclerView.DECELERATION_RATE);
        super.onDraw(canvas);
        canvas.restoreToCount(save);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            getBackground().setHotspotBounds(bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.errorShown) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.errorAccessibilityLabel));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.checkedState);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checkedState = getCheckedState();
        return savedState;
    }

    public final void refreshButtonDrawable() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        Transition.AnonymousClass3 anonymousClass3;
        this.buttonDrawable = FileUtil.createTintableMutatedDrawableIfNeeded$1(this.buttonDrawable, this.buttonTintList, getButtonTintMode());
        this.buttonIconDrawable = FileUtil.createTintableMutatedDrawableIfNeeded$1(this.buttonIconDrawable, this.buttonIconTintList, this.buttonIconTintMode);
        if (this.usingMaterialButtonDrawable) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = this.transitionToUnchecked;
            if (animatedVectorDrawableCompat != null) {
                AnimatedVectorDrawableCompat.AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState = animatedVectorDrawableCompat.mAnimatedVectorState;
                AnonymousClass1 anonymousClass1 = this.transitionToUncheckedCallback;
                if (anonymousClass1 != null) {
                    Drawable drawable = animatedVectorDrawableCompat.mDelegateDrawable;
                    if (drawable != null) {
                        AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
                        Animatable2Compat$AnimationCallback.AnonymousClass1 anonymousClass12 = anonymousClass1.mPlatformCallback;
                        if (anonymousClass12 == null) {
                            anonymousClass12 = new Animatable2.AnimationCallback() { // from class: androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback.1
                                public AnonymousClass1() {
                                }

                                @Override // android.graphics.drawable.Animatable2.AnimationCallback
                                public final void onAnimationEnd(Drawable drawable2) {
                                    Animatable2Compat$AnimationCallback.this.onAnimationEnd(drawable2);
                                }

                                @Override // android.graphics.drawable.Animatable2.AnimationCallback
                                public final void onAnimationStart(Drawable drawable2) {
                                    Animatable2Compat$AnimationCallback.this.onAnimationStart(drawable2);
                                }
                            };
                            anonymousClass1.mPlatformCallback = anonymousClass12;
                        }
                        AnimatedVectorDrawableCompat.Api23Impl.unregisterAnimationCallback(animatedVectorDrawable, anonymousClass12);
                    }
                    ArrayList arrayList = animatedVectorDrawableCompat.mAnimationCallbacks;
                    if (arrayList != null) {
                        arrayList.remove(anonymousClass1);
                        if (animatedVectorDrawableCompat.mAnimationCallbacks.size() == 0 && (anonymousClass3 = animatedVectorDrawableCompat.mAnimatorListener) != null) {
                            animatedVectorDrawableCompatState.mAnimatorSet.removeListener(anonymousClass3);
                            animatedVectorDrawableCompat.mAnimatorListener = null;
                        }
                    }
                }
                if (anonymousClass1 != null) {
                    Drawable drawable2 = animatedVectorDrawableCompat.mDelegateDrawable;
                    if (drawable2 != null) {
                        AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) drawable2;
                        Animatable2Compat$AnimationCallback.AnonymousClass1 anonymousClass13 = anonymousClass1.mPlatformCallback;
                        if (anonymousClass13 == null) {
                            anonymousClass13 = new Animatable2.AnimationCallback() { // from class: androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback.1
                                public AnonymousClass1() {
                                }

                                @Override // android.graphics.drawable.Animatable2.AnimationCallback
                                public final void onAnimationEnd(Drawable drawable22) {
                                    Animatable2Compat$AnimationCallback.this.onAnimationEnd(drawable22);
                                }

                                @Override // android.graphics.drawable.Animatable2.AnimationCallback
                                public final void onAnimationStart(Drawable drawable22) {
                                    Animatable2Compat$AnimationCallback.this.onAnimationStart(drawable22);
                                }
                            };
                            anonymousClass1.mPlatformCallback = anonymousClass13;
                        }
                        AnimatedVectorDrawableCompat.Api23Impl.registerAnimationCallback(animatedVectorDrawable2, anonymousClass13);
                    } else {
                        ArrayList arrayList2 = animatedVectorDrawableCompat.mAnimationCallbacks;
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                            animatedVectorDrawableCompat.mAnimationCallbacks = arrayList2;
                        }
                        if (!arrayList2.contains(anonymousClass1)) {
                            animatedVectorDrawableCompat.mAnimationCallbacks.add(anonymousClass1);
                            Transition.AnonymousClass3 anonymousClass32 = animatedVectorDrawableCompat.mAnimatorListener;
                            if (anonymousClass32 == null) {
                                anonymousClass32 = new Transition.AnonymousClass3(2, animatedVectorDrawableCompat);
                                animatedVectorDrawableCompat.mAnimatorListener = anonymousClass32;
                            }
                            animatedVectorDrawableCompatState.mAnimatorSet.addListener(anonymousClass32);
                        }
                    }
                }
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Drawable drawable3 = this.buttonDrawable;
                if ((drawable3 instanceof AnimatedStateListDrawable) && animatedVectorDrawableCompat != null) {
                    ((AnimatedStateListDrawable) drawable3).addTransition(R.id.checked, R.id.unchecked, animatedVectorDrawableCompat, false);
                    ((AnimatedStateListDrawable) this.buttonDrawable).addTransition(R.id.indeterminate, R.id.unchecked, animatedVectorDrawableCompat, false);
                }
            }
        }
        Drawable drawable4 = this.buttonDrawable;
        if (drawable4 != null && (colorStateList2 = this.buttonTintList) != null) {
            drawable4.setTintList(colorStateList2);
        }
        Drawable drawable5 = this.buttonIconDrawable;
        if (drawable5 != null && (colorStateList = this.buttonIconTintList) != null) {
            drawable5.setTintList(colorStateList);
        }
        super.setButtonDrawable(FileUtil.compositeTwoLayeredDrawable(this.buttonDrawable, this.buttonIconDrawable, -1, -1));
        refreshDrawableState();
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(TuplesKt.getDrawable(getContext(), i));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.buttonIconDrawable = drawable;
        refreshButtonDrawable();
    }

    public void setButtonIconDrawableResource(int i) {
        setButtonIconDrawable(TuplesKt.getDrawable(getContext(), i));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.buttonIconTintList == colorStateList) {
            return;
        }
        this.buttonIconTintList = colorStateList;
        refreshButtonDrawable();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.buttonIconTintMode == mode) {
            return;
        }
        this.buttonIconTintMode = mode;
        refreshButtonDrawable();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.buttonTintList == colorStateList) {
            return;
        }
        this.buttonTintList = colorStateList;
        refreshButtonDrawable();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        refreshButtonDrawable();
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.centerIfNoTextEnabled = z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedState(z ? 1 : 0);
    }

    public void setCheckedState(int i) {
        AutofillManager m661m;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.checkedState != i) {
            this.checkedState = i;
            super.setChecked(i == 1);
            refreshDrawableState();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && this.customStateDescription == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.broadcasting) {
                return;
            }
            this.broadcasting = true;
            LinkedHashSet linkedHashSet = this.onCheckedStateChangedListeners;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw Modifier.CC.m(it);
                }
            }
            if (this.checkedState != 2 && (onCheckedChangeListener = this.onCheckedChangeListener) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            if (i2 >= 26 && (m661m = VisualTransformation$Companion$$ExternalSyntheticLambda0.m661m(getContext().getSystemService(Rgb$$ExternalSyntheticLambda3.m462m()))) != null) {
                m661m.notifyValueChanged(this);
            }
            this.broadcasting = false;
        }
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.errorAccessibilityLabel = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i) {
        setErrorAccessibilityLabel(i != 0 ? getResources().getText(i) : null);
    }

    public void setErrorShown(boolean z) {
        if (this.errorShown == z) {
            return;
        }
        this.errorShown = z;
        refreshDrawableState();
        Iterator it = this.onErrorChangedListeners.iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.customStateDescription = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.useMaterialThemeColors = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.buttonDrawable = drawable;
        this.usingMaterialButtonDrawable = false;
        refreshButtonDrawable();
    }
}
