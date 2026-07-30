package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.Transition;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.internal.CheckableImageButton;
import defpackage.C0154Cr;
import defpackage.C0161Dc;
import defpackage.C0172Dn;
import defpackage.C0194En;
import defpackage.C0222Ft;
import defpackage.C0426Pe;
import defpackage.C0466Ra;
import defpackage.C0470Re;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C0762be;
import defpackage.C2775fs;
import defpackage.C2785g1;
import defpackage.C2946in;
import defpackage.C3224kf;
import defpackage.C3369n5;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3738tL;
import defpackage.C3893w;
import defpackage.C3902w8;
import defpackage.C3970xH;
import defpackage.Cimplements;
import defpackage.Cpackage;
import defpackage.EH;
import defpackage.HQ;
import defpackage.InterfaceC2817gb;
import defpackage.K1;
import defpackage.O2;
import defpackage.QK;
import defpackage.SG;
import defpackage.V1;
import defpackage.VG;
import defpackage.WE;
import defpackage.XG;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: do, reason: not valid java name */
    public static final int[][] f11617do = {new int[]{R.attr.state_pressed}, new int[0]};

    /* renamed from: break, reason: not valid java name */
    public int f11618break;

    /* renamed from: break, reason: not valid java name and collision with other field name */
    public final boolean f11619break;

    /* renamed from: case, reason: not valid java name */
    public int f11620case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public ColorStateList f11621case;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public boolean f11622case;

    /* renamed from: catch, reason: not valid java name */
    public final int f11623catch;

    /* renamed from: catch, reason: not valid java name and collision with other field name */
    public boolean f11624catch;

    /* renamed from: class, reason: not valid java name */
    public int f11625class;

    /* renamed from: class, reason: not valid java name and collision with other field name */
    public boolean f11626class;

    /* renamed from: const, reason: not valid java name */
    public int f11627const;

    /* renamed from: const, reason: not valid java name and collision with other field name */
    public boolean f11628const;

    /* renamed from: default, reason: not valid java name */
    public final int f11629default;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0172Dn f11630do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WE f11631do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f11632do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f11633do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f11634do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f11635do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorDrawable f11636do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f11637do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public StateListDrawable f11638do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EditText f11639do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FrameLayout f11640do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AppCompatTextView f11641do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Fade f11642do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0716as f11643do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final com.google.android.material.textfield.Cdo f11644do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f11645do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<Cnew> f11646do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cpackage f11647do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f11648do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3902w8 f11649do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11650do;

    /* renamed from: else, reason: not valid java name */
    public int f11651else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public ColorStateList f11652else;

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public boolean f11653else;

    /* renamed from: extends, reason: not valid java name */
    public final int f11654extends;

    /* renamed from: final, reason: not valid java name */
    public int f11655final;

    /* renamed from: finally, reason: not valid java name */
    public final int f11656finally;

    /* renamed from: for, reason: not valid java name */
    public int f11657for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ColorStateList f11658for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public C0716as f11659for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public CharSequence f11660for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f11661for;

    /* renamed from: goto, reason: not valid java name */
    public int f11662goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public ColorStateList f11663goto;

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public boolean f11664goto;

    /* renamed from: if, reason: not valid java name */
    public ColorStateList f11665if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Rect f11666if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorDrawable f11667if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public AppCompatTextView f11668if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Fade f11669if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C0716as f11670if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public CharSequence f11671if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f11672if;

    /* renamed from: import, reason: not valid java name */
    public int f11673import;

    /* renamed from: native, reason: not valid java name */
    public int f11674native;

    /* renamed from: new, reason: not valid java name */
    public int f11675new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final ColorStateList f11676new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public C0716as f11677new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f11678new;

    /* renamed from: package, reason: not valid java name */
    public int f11679package;

    /* renamed from: private, reason: not valid java name */
    public int f11680private;

    /* renamed from: public, reason: not valid java name */
    public int f11681public;

    /* renamed from: return, reason: not valid java name */
    public int f11682return;

    /* renamed from: static, reason: not valid java name */
    public int f11683static;

    /* renamed from: super, reason: not valid java name */
    public final int f11684super;

    /* renamed from: switch, reason: not valid java name */
    public int f11685switch;

    /* renamed from: this, reason: not valid java name */
    public int f11686this;

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public final boolean f11687this;

    /* renamed from: throw, reason: not valid java name */
    public final int f11688throw;

    /* renamed from: throws, reason: not valid java name */
    public final int f11689throws;

    /* renamed from: try, reason: not valid java name */
    public int f11690try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final ColorStateList f11691try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f11692try;

    /* renamed from: while, reason: not valid java name */
    public int f11693while;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public CharSequence f11694do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11695do;

        /* renamed from: com.google.android.material.textfield.TextInputLayout$SavedState$do, reason: invalid class name */
        public class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f11694do) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(((AbsSavedState) this).f6568do, i);
            TextUtils.writeToParcel(this.f11694do, parcel, i);
            parcel.writeInt(this.f11695do ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11694do = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f11695do = parcel.readInt() == 1;
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            CheckableImageButton checkableImageButton = TextInputLayout.this.f11644do.f11717if;
            checkableImageButton.performClick();
            checkableImageButton.jumpDrawablesToCurrentState();
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$for, reason: invalid class name */
    public static class Cfor extends Cimplements {

        /* renamed from: do, reason: not valid java name */
        public final TextInputLayout f11697do;

        public Cfor(TextInputLayout textInputLayout) {
            this.f11697do = textInputLayout;
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            AppCompatTextView appCompatTextView;
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            TextInputLayout textInputLayout = this.f11697do;
            EditText editText = textInputLayout.f11639do;
            CharSequence charSequence = null;
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence m5984goto = textInputLayout.m5984goto();
            CharSequence m5979else = textInputLayout.m5979else();
            CharSequence charSequence2 = textInputLayout.f11661for ? textInputLayout.f11671if : null;
            int i = textInputLayout.f11651else;
            if (textInputLayout.f11650do && textInputLayout.f11672if && (appCompatTextView = textInputLayout.f11641do) != null) {
                charSequence = appCompatTextView.getContentDescription();
            }
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(m5984goto);
            boolean z3 = !textInputLayout.f11664goto;
            boolean z4 = !TextUtils.isEmpty(m5979else);
            boolean z5 = z4 || !TextUtils.isEmpty(charSequence);
            String charSequence3 = z2 ? m5984goto.toString() : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            WE we = textInputLayout.f11631do;
            AppCompatTextView appCompatTextView2 = we.f4354do;
            if (appCompatTextView2.getVisibility() == 0) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView2);
                if (Build.VERSION.SDK_INT >= 22) {
                    accessibilityNodeInfo.setTraversalAfter(appCompatTextView2);
                }
            } else if (Build.VERSION.SDK_INT >= 22) {
                accessibilityNodeInfo.setTraversalAfter(we.f4355do);
            }
            if (z) {
                c3893w.m8506super(text);
            } else if (!TextUtils.isEmpty(charSequence3)) {
                c3893w.m8506super(charSequence3);
                if (z3 && charSequence2 != null) {
                    c3893w.m8506super(charSequence3 + ", " + ((Object) charSequence2));
                }
            } else if (charSequence2 != null) {
                c3893w.m8506super(charSequence2);
            }
            if (!TextUtils.isEmpty(charSequence3)) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 26) {
                    c3893w.m8499const(charSequence3);
                } else {
                    if (z) {
                        charSequence3 = ((Object) text) + ", " + charSequence3;
                    }
                    c3893w.m8506super(charSequence3);
                }
                boolean z6 = true ^ z;
                if (i2 >= 26) {
                    accessibilityNodeInfo.setShowingHintText(z6);
                } else {
                    c3893w.m8504goto(4, z6);
                }
            }
            if (text == null || text.length() != i) {
                i = -1;
            }
            accessibilityNodeInfo.setMaxTextLength(i);
            if (z5) {
                if (!z4) {
                    m5979else = charSequence;
                }
                accessibilityNodeInfo.setError(m5979else);
            }
            AppCompatTextView appCompatTextView3 = textInputLayout.f11630do.f675if;
            if (appCompatTextView3 != null) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView3);
            }
            textInputLayout.f11644do.m6013if().mo6570final(c3893w);
        }

        @Override // defpackage.Cimplements
        /* renamed from: try */
        public final void mo4579try(View view, AccessibilityEvent accessibilityEvent) {
            super.mo4579try(view, accessibilityEvent);
            this.f11697do.f11644do.m6013if().mo6572super(accessibilityEvent);
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f11649do.m8552super(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$new, reason: invalid class name */
    public interface Cnew {
        /* renamed from: do, reason: not valid java name */
        void mo6002do(TextInputLayout textInputLayout);
    }

    /* renamed from: com.google.android.material.textfield.TextInputLayout$try, reason: invalid class name */
    public interface Ctry {
        /* renamed from: do, reason: not valid java name */
        void m6003do();
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.joeykrim.rootcheck.R.attr.textInputStyle);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m5970const(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m5970const((ViewGroup) childAt, z);
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m5971abstract(Editable editable) {
        this.f11647do.getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.f11640do;
        if (length != 0 || this.f11664goto) {
            AppCompatTextView appCompatTextView = this.f11668if;
            if (appCompatTextView == null || !this.f11661for) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            androidx.transition.Ctry.m4665do(frameLayout, this.f11669if);
            this.f11668if.setVisibility(4);
            return;
        }
        if (this.f11668if == null || !this.f11661for || TextUtils.isEmpty(this.f11671if)) {
            return;
        }
        this.f11668if.setText(this.f11671if);
        androidx.transition.Ctry.m4665do(frameLayout, this.f11642do);
        this.f11668if.setVisibility(0);
        this.f11668if.bringToFront();
        announceForAccessibility(this.f11671if);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f11640do;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        m5989package();
        EditText editText = (EditText) view;
        if (this.f11639do != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        com.google.android.material.textfield.Cdo cdo = this.f11644do;
        if (cdo.f11714for != 3) {
            boolean z = editText instanceof TextInputEditText;
        }
        this.f11639do = editText;
        int i2 = this.f11657for;
        if (i2 != -1) {
            this.f11657for = i2;
            if (editText != null && i2 != -1) {
                editText.setMinEms(i2);
            }
        } else {
            int i3 = this.f11690try;
            this.f11690try = i3;
            if (editText != null && i3 != -1) {
                editText.setMinWidth(i3);
            }
        }
        int i4 = this.f11675new;
        if (i4 != -1) {
            this.f11675new = i4;
            EditText editText2 = this.f11639do;
            if (editText2 != null && i4 != -1) {
                editText2.setMaxEms(i4);
            }
        } else {
            int i5 = this.f11620case;
            this.f11620case = i5;
            EditText editText3 = this.f11639do;
            if (editText3 != null && i5 != -1) {
                editText3.setMaxWidth(i5);
            }
        }
        this.f11622case = false;
        m5974catch();
        Cfor cfor = new Cfor(this);
        EditText editText4 = this.f11639do;
        if (editText4 != null) {
            QK.m1858native(editText4, cfor);
        }
        Typeface typeface = this.f11639do.getTypeface();
        C3902w8 c3902w8 = this.f11649do;
        boolean m8545class = c3902w8.m8545class(typeface);
        boolean m8547final = c3902w8.m8547final(typeface);
        if (m8545class || m8547final) {
            c3902w8.m8553this(false);
        }
        float textSize = this.f11639do.getTextSize();
        if (c3902w8.f16258new != textSize) {
            c3902w8.f16258new = textSize;
            c3902w8.m8553this(false);
        }
        int i6 = Build.VERSION.SDK_INT;
        float letterSpacing = this.f11639do.getLetterSpacing();
        if (c3902w8.f16272throws != letterSpacing) {
            c3902w8.f16272throws = letterSpacing;
            c3902w8.m8553this(false);
        }
        int gravity = this.f11639do.getGravity();
        int i7 = (gravity & (-113)) | 48;
        if (c3902w8.f16240for != i7) {
            c3902w8.f16240for = i7;
            c3902w8.m8553this(false);
        }
        if (c3902w8.f16247if != gravity) {
            c3902w8.f16247if = gravity;
            c3902w8.m8553this(false);
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        this.f11680private = editText.getMinimumHeight();
        this.f11639do.addTextChangedListener(new VG(this, editText));
        if (this.f11621case == null) {
            this.f11621case = this.f11639do.getHintTextColors();
        }
        if (this.f11678new) {
            if (TextUtils.isEmpty(this.f11660for)) {
                CharSequence hint = this.f11639do.getHint();
                this.f11645do = hint;
                m6001while(hint);
                this.f11639do.setHint((CharSequence) null);
            }
            this.f11692try = true;
        }
        if (i6 >= 29) {
            m5999throws();
        }
        if (this.f11641do != null) {
            m5993static(this.f11639do.getText());
        }
        m5980extends();
        this.f11630do.m389if();
        this.f11631do.bringToFront();
        cdo.bringToFront();
        Iterator<Cnew> it = this.f11646do.iterator();
        while (it.hasNext()) {
            it.next().mo6002do(this);
        }
        cdo.m6007class();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        m5990private(false, true);
    }

    /* renamed from: break, reason: not valid java name */
    public final int m5972break(int i, boolean z) {
        int compoundPaddingRight;
        if (!z) {
            com.google.android.material.textfield.Cdo cdo = this.f11644do;
            if (cdo.f11711do != null) {
                compoundPaddingRight = cdo.m6011for();
                return i - compoundPaddingRight;
            }
        }
        if (z) {
            WE we = this.f11631do;
            if (we.f4357do != null) {
                compoundPaddingRight = we.m2715do();
                return i - compoundPaddingRight;
            }
        }
        compoundPaddingRight = this.f11639do.getCompoundPaddingRight();
        return i - compoundPaddingRight;
    }

    /* renamed from: case, reason: not valid java name */
    public final C0716as m5973case(boolean z) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.mtrl_shape_corner_size_small_component);
        float f = z ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f11639do;
        float dimensionPixelOffset2 = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).f11604do : getResources().getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset3 = getResources().getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        C3554qD.Cdo cdo = new C3554qD.Cdo();
        cdo.m7870try(f);
        cdo.m7866case(f);
        cdo.m7867for(dimensionPixelOffset);
        cdo.m7869new(dimensionPixelOffset);
        C3554qD c3554qD = new C3554qD(cdo);
        EditText editText2 = this.f11639do;
        ColorStateList colorStateList = editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).f11605do : null;
        Context context = getContext();
        if (colorStateList == null) {
            Paint paint = C0716as.f8245for;
            TypedValue m305for = C0154Cr.m305for(context, com.joeykrim.rootcheck.R.attr.colorSurface, C0716as.class.getSimpleName());
            int i = m305for.resourceId;
            colorStateList = ColorStateList.valueOf(i != 0 ? C0466Ra.getColor(context, i) : m305for.data);
        }
        C0716as c0716as = new C0716as();
        c0716as.m4766class(context);
        c0716as.m4778super(colorStateList);
        c0716as.m4770final(dimensionPixelOffset2);
        c0716as.mo4768do(c3554qD);
        C0716as.Cif cif = c0716as.f8253do;
        if (cif.f8277do == null) {
            cif.f8277do = new Rect();
        }
        c0716as.f8253do.f8277do.set(0, dimensionPixelOffset3, 0, dimensionPixelOffset3);
        c0716as.invalidateSelf();
        return c0716as;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m5974catch() {
        int i = this.f11625class;
        if (i == 0) {
            this.f11643do = null;
            this.f11659for = null;
            this.f11677new = null;
        } else if (i == 1) {
            this.f11643do = new C0716as(this.f11648do);
            this.f11659for = new C0716as();
            this.f11677new = new C0716as();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(V1.m2506this(new StringBuilder(), this.f11625class, " is illegal; only @BoxBackgroundMode constants are supported."));
            }
            if (!this.f11678new || (this.f11643do instanceof C0161Dc)) {
                this.f11643do = new C0716as(this.f11648do);
            } else {
                C3554qD c3554qD = this.f11648do;
                int i2 = C0161Dc.f632new;
                if (c3554qD == null) {
                    c3554qD = new C3554qD();
                }
                this.f11643do = new C0161Dc.Cif(new C0161Dc.Cdo(c3554qD, new RectF()));
            }
            this.f11659for = null;
            this.f11677new = null;
        }
        m5982finally();
        m5994strictfp();
        if (this.f11625class == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.f11627const = getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (C0659Zr.m3073try(getContext())) {
                this.f11627const = getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f11639do != null && this.f11625class == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText = this.f11639do;
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                editText.setPaddingRelative(editText.getPaddingStart(), getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.material_filled_edittext_font_2_0_padding_top), this.f11639do.getPaddingEnd(), getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (C0659Zr.m3073try(getContext())) {
                EditText editText2 = this.f11639do;
                WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.material_filled_edittext_font_1_3_padding_top), this.f11639do.getPaddingEnd(), getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.f11625class != 0) {
            m5989package();
        }
        EditText editText3 = this.f11639do;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i3 = this.f11625class;
                if (i3 == 2) {
                    if (this.f11670if == null) {
                        this.f11670if = m5973case(true);
                    }
                    autoCompleteTextView.setDropDownBackgroundDrawable(this.f11670if);
                } else if (i3 == 1) {
                    if (this.f11638do == null) {
                        StateListDrawable stateListDrawable = new StateListDrawable();
                        this.f11638do = stateListDrawable;
                        int[] iArr = {R.attr.state_above_anchor};
                        if (this.f11670if == null) {
                            this.f11670if = m5973case(true);
                        }
                        stateListDrawable.addState(iArr, this.f11670if);
                        this.f11638do.addState(new int[0], m5973case(false));
                    }
                    autoCompleteTextView.setDropDownBackgroundDrawable(this.f11638do);
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final void m5975class() {
        float f;
        float f2;
        float f3;
        RectF rectF;
        float f4;
        int i;
        int i2;
        if (m6000try()) {
            int width = this.f11639do.getWidth();
            int gravity = this.f11639do.getGravity();
            C3902w8 c3902w8 = this.f11649do;
            boolean m8550if = c3902w8.m8550if(c3902w8.f16230do);
            c3902w8.f16255if = m8550if;
            Rect rect = c3902w8.f16251if;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (m8550if) {
                        i2 = rect.left;
                        f3 = i2;
                    } else {
                        f = rect.right;
                        f2 = c3902w8.f16236extends;
                    }
                } else if (m8550if) {
                    f = rect.right;
                    f2 = c3902w8.f16236extends;
                } else {
                    i2 = rect.left;
                    f3 = i2;
                }
                float max = Math.max(f3, rect.left);
                rectF = this.f11635do;
                rectF.left = max;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f4 = (width / 2.0f) + (c3902w8.f16236extends / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (c3902w8.f16255if) {
                        f4 = c3902w8.f16236extends + max;
                    } else {
                        i = rect.right;
                        f4 = i;
                    }
                } else if (c3902w8.f16255if) {
                    i = rect.right;
                    f4 = i;
                } else {
                    f4 = c3902w8.f16236extends + max;
                }
                rectF.right = Math.min(f4, rect.right);
                rectF.bottom = c3902w8.m8555try() + rect.top;
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f5 = rectF.left;
                float f6 = this.f11623catch;
                rectF.left = f5 - f6;
                rectF.right += f6;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f11655final);
                C0161Dc c0161Dc = (C0161Dc) this.f11643do;
                c0161Dc.getClass();
                c0161Dc.m375throws(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f = width / 2.0f;
            f2 = c3902w8.f16236extends / 2.0f;
            f3 = f - f2;
            float max2 = Math.max(f3, rect.left);
            rectF = this.f11635do;
            rectF.left = max2;
            rectF.top = rect.top;
            if (gravity != 17) {
            }
            f4 = (width / 2.0f) + (c3902w8.f16236extends / 2.0f);
            rectF.right = Math.min(f4, rect.right);
            rectF.bottom = c3902w8.m8555try() + rect.top;
            if (rectF.width() > 0.0f) {
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m5976continue(boolean z, boolean z2) {
        int defaultColor = this.f11663goto.getDefaultColor();
        int colorForState = this.f11663goto.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f11663goto.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.f11693while = colorForState2;
        } else if (z2) {
            this.f11693while = colorForState;
        } else {
            this.f11693while = defaultColor;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
    
        if (r2.m6014new() != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
    
        if (r2.f11711do != null) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0121  */
    /* renamed from: default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5977default() {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m5977default():boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f11639do;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f11645do != null) {
            boolean z = this.f11692try;
            this.f11692try = false;
            CharSequence hint = editText.getHint();
            this.f11639do.setHint(this.f11645do);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f11639do.setHint(hint);
                this.f11692try = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.f11640do;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.f11639do) {
                newChild.setHint(m5984goto());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f11626class = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f11626class = false;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5978do(float f) {
        C3902w8 c3902w8 = this.f11649do;
        if (c3902w8.f16217do == f) {
            return;
        }
        if (this.f11632do == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f11632do = valueAnimator;
            valueAnimator.setInterpolator(C0222Ft.m651new(getContext(), com.joeykrim.rootcheck.R.attr.motionEasingEmphasizedInterpolator, C2785g1.f13026do));
            this.f11632do.setDuration(C0222Ft.m649for(getContext(), com.joeykrim.rootcheck.R.attr.motionDurationMedium4, 167));
            this.f11632do.addUpdateListener(new Cif());
        }
        this.f11632do.setFloatValues(c3902w8.f16217do, f);
        this.f11632do.start();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        C0716as c0716as;
        super.draw(canvas);
        boolean z = this.f11678new;
        C3902w8 c3902w8 = this.f11649do;
        if (z) {
            c3902w8.m8551new(canvas);
        }
        if (this.f11677new == null || (c0716as = this.f11659for) == null) {
            return;
        }
        c0716as.draw(canvas);
        if (this.f11639do.isFocused()) {
            Rect bounds = this.f11677new.getBounds();
            Rect bounds2 = this.f11659for.getBounds();
            float f = c3902w8.f16217do;
            int centerX = bounds2.centerX();
            bounds.left = C2785g1.m6710if(f, centerX, bounds2.left);
            bounds.right = C2785g1.m6710if(f, centerX, bounds2.right);
            this.f11677new.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f11624catch) {
            return;
        }
        this.f11624catch = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        C3902w8 c3902w8 = this.f11649do;
        boolean m8556while = c3902w8 != null ? c3902w8.m8556while(drawableState) | false : false;
        if (this.f11639do != null) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            m5990private(isLaidOut() && isEnabled(), false);
        }
        m5980extends();
        m5994strictfp();
        if (m8556while) {
            invalidate();
        }
        this.f11624catch = false;
    }

    /* renamed from: else, reason: not valid java name */
    public final CharSequence m5979else() {
        C0172Dn c0172Dn = this.f11630do;
        if (c0172Dn.f666do) {
            return c0172Dn.f665do;
        }
        return null;
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m5980extends() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.f11639do;
        if (editText == null || this.f11625class != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = C0470Re.f3209do;
        Drawable mutate = background.mutate();
        if (m5992return()) {
            AppCompatTextView appCompatTextView2 = this.f11630do.f663do;
            mutate.setColorFilter(K1.m1102for(appCompatTextView2 != null ? appCompatTextView2.getCurrentTextColor() : -1, PorterDuff.Mode.SRC_IN));
        } else if (this.f11672if && (appCompatTextView = this.f11641do) != null) {
            mutate.setColorFilter(K1.m1102for(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            C0426Pe.m1776do(mutate);
            this.f11639do.refreshDrawableState();
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final void m5981final(CharSequence charSequence) {
        C0172Dn c0172Dn = this.f11630do;
        if (!c0172Dn.f666do) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                m5995super(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            c0172Dn.m384case();
            return;
        }
        c0172Dn.m387for();
        c0172Dn.f665do = charSequence;
        c0172Dn.f663do.setText(charSequence);
        int i = c0172Dn.f680try;
        if (i != 1) {
            c0172Dn.f654case = 1;
        }
        c0172Dn.m391this(i, c0172Dn.f654case, c0172Dn.m388goto(c0172Dn.f663do, charSequence));
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m5982finally() {
        Drawable drawable;
        EditText editText = this.f11639do;
        if (editText == null || this.f11643do == null) {
            return;
        }
        if ((this.f11622case || editText.getBackground() == null) && this.f11625class != 0) {
            EditText editText2 = this.f11639do;
            if (editText2 instanceof AutoCompleteTextView) {
                if (!(editText2.getInputType() != 0)) {
                    int m1587goto = O2.m1587goto(this.f11639do, com.joeykrim.rootcheck.R.attr.colorControlHighlight);
                    int i = this.f11625class;
                    int[][] iArr = f11617do;
                    if (i == 2) {
                        Context context = getContext();
                        C0716as c0716as = this.f11643do;
                        TypedValue m305for = C0154Cr.m305for(context, com.joeykrim.rootcheck.R.attr.colorSurface, "TextInputLayout");
                        int i2 = m305for.resourceId;
                        int color = i2 != 0 ? C0466Ra.getColor(context, i2) : m305for.data;
                        C0716as c0716as2 = new C0716as(c0716as.f8253do.f8278do);
                        int m1581catch = O2.m1581catch(0.1f, m1587goto, color);
                        c0716as2.m4778super(new ColorStateList(iArr, new int[]{m1581catch, 0}));
                        c0716as2.setTint(color);
                        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{m1581catch, color});
                        C0716as c0716as3 = new C0716as(c0716as.f8253do.f8278do);
                        c0716as3.setTint(-1);
                        drawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c0716as2, c0716as3), c0716as});
                    } else if (i == 1) {
                        C0716as c0716as4 = this.f11643do;
                        int i3 = this.f11673import;
                        drawable = new RippleDrawable(new ColorStateList(iArr, new int[]{O2.m1581catch(0.1f, m1587goto, i3), i3}), c0716as4, c0716as4);
                    } else {
                        drawable = null;
                    }
                    EditText editText3 = this.f11639do;
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    editText3.setBackground(drawable);
                    this.f11622case = true;
                }
            }
            drawable = this.f11643do;
            EditText editText32 = this.f11639do;
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            editText32.setBackground(drawable);
            this.f11622case = true;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final int m5983for() {
        float m8555try;
        if (!this.f11678new) {
            return 0;
        }
        int i = this.f11625class;
        C3902w8 c3902w8 = this.f11649do;
        if (i == 0) {
            m8555try = c3902w8.m8555try();
        } else {
            if (i != 2) {
                return 0;
            }
            m8555try = c3902w8.m8555try() / 2.0f;
        }
        return (int) m8555try;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final int getBaseline() {
        EditText editText = this.f11639do;
        if (editText == null) {
            return super.getBaseline();
        }
        return m5983for() + getPaddingTop() + editText.getBaseline();
    }

    /* renamed from: goto, reason: not valid java name */
    public final CharSequence m5984goto() {
        if (this.f11678new) {
            return this.f11660for;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5985if() {
        /*
            r7 = this;
            as r0 = r7.f11643do
            if (r0 != 0) goto L5
            return
        L5:
            as$if r1 = r0.f8253do
            qD r1 = r1.f8278do
            qD r2 = r7.f11648do
            if (r1 == r2) goto L10
            r0.mo4768do(r2)
        L10:
            int r0 = r7.f11625class
            r1 = 2
            r2 = -1
            r3 = 0
            r4 = 1
            if (r0 != r1) goto L27
            int r0 = r7.f11655final
            if (r0 <= r2) goto L22
            int r0 = r7.f11693while
            if (r0 == 0) goto L22
            r0 = 1
            goto L23
        L22:
            r0 = 0
        L23:
            if (r0 == 0) goto L27
            r0 = 1
            goto L28
        L27:
            r0 = 0
        L28:
            if (r0 == 0) goto L3f
            as r0 = r7.f11643do
            int r1 = r7.f11655final
            float r1 = (float) r1
            int r5 = r7.f11693while
            as$if r6 = r0.f8253do
            r6.f8280for = r1
            r0.invalidateSelf()
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r5)
            r0.m4775public(r1)
        L3f:
            int r0 = r7.f11673import
            int r1 = r7.f11625class
            if (r1 != r4) goto L56
            android.content.Context r0 = r7.getContext()
            r1 = 2130903329(0x7f030121, float:1.7413473E38)
            int r0 = defpackage.O2.m1584else(r0, r1, r3)
            int r1 = r7.f11673import
            int r0 = defpackage.G8.m711new(r1, r0)
        L56:
            r7.f11673import = r0
            as r1 = r7.f11643do
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r0)
            r1.m4778super(r0)
            as r0 = r7.f11659for
            if (r0 == 0) goto L9b
            as r1 = r7.f11677new
            if (r1 != 0) goto L6a
            goto L9b
        L6a:
            int r1 = r7.f11655final
            if (r1 <= r2) goto L73
            int r1 = r7.f11693while
            if (r1 == 0) goto L73
            r3 = 1
        L73:
            if (r3 == 0) goto L98
            android.widget.EditText r1 = r7.f11639do
            boolean r1 = r1.isFocused()
            if (r1 == 0) goto L84
            int r1 = r7.f11682return
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            goto L8a
        L84:
            int r1 = r7.f11693while
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
        L8a:
            r0.m4778super(r1)
            as r0 = r7.f11677new
            int r1 = r7.f11693while
            android.content.res.ColorStateList r1 = android.content.res.ColorStateList.valueOf(r1)
            r0.m4778super(r1)
        L98:
            r7.invalidate()
        L9b:
            r7.m5982finally()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m5985if():void");
    }

    /* renamed from: import, reason: not valid java name */
    public final void m5986import(CharSequence charSequence) {
        if (this.f11668if == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.f11668if = appCompatTextView;
            appCompatTextView.setId(com.joeykrim.rootcheck.R.id.textinput_placeholder);
            AppCompatTextView appCompatTextView2 = this.f11668if;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            appCompatTextView2.setImportantForAccessibility(2);
            Fade m5988new = m5988new();
            this.f11642do = m5988new;
            ((Transition) m5988new).f7873do = 67L;
            this.f11669if = m5988new();
            int i = this.f11618break;
            this.f11618break = i;
            AppCompatTextView appCompatTextView3 = this.f11668if;
            if (appCompatTextView3 != null) {
                XG.m2800for(appCompatTextView3, i);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            m5987native(false);
        } else {
            if (!this.f11661for) {
                m5987native(true);
            }
            this.f11671if = charSequence;
        }
        EditText editText = this.f11639do;
        m5971abstract(editText != null ? editText.getText() : null);
    }

    /* renamed from: native, reason: not valid java name */
    public final void m5987native(boolean z) {
        if (this.f11661for == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = this.f11668if;
            if (appCompatTextView != null) {
                this.f11640do.addView(appCompatTextView);
                this.f11668if.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.f11668if;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.f11668if = null;
        }
        this.f11661for = z;
    }

    /* renamed from: new, reason: not valid java name */
    public final Fade m5988new() {
        Fade fade = new Fade();
        ((Transition) fade).f7889if = C0222Ft.m649for(getContext(), com.joeykrim.rootcheck.R.attr.motionDurationShort2, 87);
        ((Transition) fade).f7875do = C0222Ft.m651new(getContext(), com.joeykrim.rootcheck.R.attr.motionEasingLinearInterpolator, C2785g1.f13028do);
        return fade;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f11649do.m8549goto(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int max;
        com.google.android.material.textfield.Cdo cdo = this.f11644do;
        cdo.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.f11628const = false;
        if (this.f11639do != null && this.f11639do.getMeasuredHeight() < (max = Math.max(cdo.getMeasuredHeight(), this.f11631do.getMeasuredHeight()))) {
            this.f11639do.setMinimumHeight(max);
            z = true;
        }
        boolean m5977default = m5977default();
        if (z || m5977default) {
            this.f11639do.post(new EH(this, 6));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f11639do;
        if (editText != null) {
            Rect rect = this.f11634do;
            C0762be.m4845do(this, editText, rect);
            C0716as c0716as = this.f11659for;
            if (c0716as != null) {
                int i5 = rect.bottom;
                c0716as.setBounds(rect.left, i5 - this.f11684super, rect.right, i5);
            }
            C0716as c0716as2 = this.f11677new;
            if (c0716as2 != null) {
                int i6 = rect.bottom;
                c0716as2.setBounds(rect.left, i6 - this.f11688throw, rect.right, i6);
            }
            if (this.f11678new) {
                float textSize = this.f11639do.getTextSize();
                C3902w8 c3902w8 = this.f11649do;
                if (c3902w8.f16258new != textSize) {
                    c3902w8.f16258new = textSize;
                    c3902w8.m8553this(false);
                }
                int gravity = this.f11639do.getGravity();
                int i7 = (gravity & (-113)) | 48;
                if (c3902w8.f16240for != i7) {
                    c3902w8.f16240for = i7;
                    c3902w8.m8553this(false);
                }
                if (c3902w8.f16247if != gravity) {
                    c3902w8.f16247if = gravity;
                    c3902w8.m8553this(false);
                }
                if (this.f11639do == null) {
                    throw new IllegalStateException();
                }
                boolean m8282else = C3738tL.m8282else(this);
                int i8 = rect.bottom;
                Rect rect2 = this.f11666if;
                rect2.bottom = i8;
                int i9 = this.f11625class;
                if (i9 == 1) {
                    rect2.left = m5997this(rect.left, m8282else);
                    rect2.top = rect.top + this.f11627const;
                    rect2.right = m5972break(rect.right, m8282else);
                } else if (i9 != 2) {
                    rect2.left = m5997this(rect.left, m8282else);
                    rect2.top = getPaddingTop();
                    rect2.right = m5972break(rect.right, m8282else);
                } else {
                    rect2.left = this.f11639do.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - m5983for();
                    rect2.right = rect.right - this.f11639do.getPaddingRight();
                }
                int i10 = rect2.left;
                int i11 = rect2.top;
                int i12 = rect2.right;
                int i13 = rect2.bottom;
                Rect rect3 = c3902w8.f16251if;
                if (!(rect3.left == i10 && rect3.top == i11 && rect3.right == i12 && rect3.bottom == i13)) {
                    rect3.set(i10, i11, i12, i13);
                    c3902w8.f16262new = true;
                }
                if (this.f11639do == null) {
                    throw new IllegalStateException();
                }
                TextPaint textPaint = c3902w8.f16253if;
                textPaint.setTextSize(c3902w8.f16258new);
                textPaint.setTypeface(c3902w8.f16261new);
                textPaint.setLetterSpacing(c3902w8.f16272throws);
                float f = -textPaint.ascent();
                rect2.left = this.f11639do.getCompoundPaddingLeft() + rect.left;
                rect2.top = this.f11625class == 1 && this.f11639do.getMinLines() <= 1 ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f11639do.getCompoundPaddingTop();
                rect2.right = rect.right - this.f11639do.getCompoundPaddingRight();
                int compoundPaddingBottom = this.f11625class == 1 && this.f11639do.getMinLines() <= 1 ? (int) (rect2.top + f) : rect.bottom - this.f11639do.getCompoundPaddingBottom();
                rect2.bottom = compoundPaddingBottom;
                int i14 = rect2.left;
                int i15 = rect2.top;
                int i16 = rect2.right;
                Rect rect4 = c3902w8.f16223do;
                if (!(rect4.left == i14 && rect4.top == i15 && rect4.right == i16 && rect4.bottom == compoundPaddingBottom)) {
                    rect4.set(i14, i15, i16, compoundPaddingBottom);
                    c3902w8.f16262new = true;
                }
                c3902w8.m8553this(false);
                if (!m6000try() || this.f11664goto) {
                    return;
                }
                m5975class();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        EditText editText;
        super.onMeasure(i, i2);
        boolean z = this.f11628const;
        com.google.android.material.textfield.Cdo cdo = this.f11644do;
        if (!z) {
            cdo.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f11628const = true;
        }
        if (this.f11668if != null && (editText = this.f11639do) != null) {
            this.f11668if.setGravity(editText.getGravity());
            this.f11668if.setPadding(this.f11639do.getCompoundPaddingLeft(), this.f11639do.getCompoundPaddingTop(), this.f11639do.getCompoundPaddingRight(), this.f11639do.getCompoundPaddingBottom());
        }
        cdo.m6007class();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(((AbsSavedState) savedState).f6568do);
        m5981final(savedState.f11694do);
        if (savedState.f11695do) {
            post(new Cdo());
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = i == 1;
        if (z != this.f11653else) {
            InterfaceC2817gb interfaceC2817gb = this.f11648do.f15058do;
            RectF rectF = this.f11635do;
            float mo1748do = interfaceC2817gb.mo1748do(rectF);
            float mo1748do2 = this.f11648do.f15064if.mo1748do(rectF);
            float mo1748do3 = this.f11648do.f15067new.mo1748do(rectF);
            float mo1748do4 = this.f11648do.f15061for.mo1748do(rectF);
            C3554qD c3554qD = this.f11648do;
            HQ hq = c3554qD.f15057do;
            C3554qD.Cdo cdo = new C3554qD.Cdo();
            HQ hq2 = c3554qD.f15063if;
            cdo.f15069do = hq2;
            float m7865do = C3554qD.Cdo.m7865do(hq2);
            if (m7865do != -1.0f) {
                cdo.m7870try(m7865do);
            }
            cdo.f15075if = hq;
            float m7865do2 = C3554qD.Cdo.m7865do(hq);
            if (m7865do2 != -1.0f) {
                cdo.m7866case(m7865do2);
            }
            HQ hq3 = c3554qD.f15060for;
            cdo.f15078new = hq3;
            float m7865do3 = C3554qD.Cdo.m7865do(hq3);
            if (m7865do3 != -1.0f) {
                cdo.m7867for(m7865do3);
            }
            HQ hq4 = c3554qD.f15066new;
            cdo.f15072for = hq4;
            float m7865do4 = C3554qD.Cdo.m7865do(hq4);
            if (m7865do4 != -1.0f) {
                cdo.m7869new(m7865do4);
            }
            cdo.m7870try(mo1748do2);
            cdo.m7866case(mo1748do);
            cdo.m7867for(mo1748do4);
            cdo.m7869new(mo1748do3);
            C3554qD c3554qD2 = new C3554qD(cdo);
            this.f11653else = z;
            C0716as c0716as = this.f11643do;
            if (c0716as == null || c0716as.f8253do.f8278do == c3554qD2) {
                return;
            }
            this.f11648do = c3554qD2;
            m5985if();
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (m5992return()) {
            savedState.f11694do = m5979else();
        }
        com.google.android.material.textfield.Cdo cdo = this.f11644do;
        savedState.f11695do = (cdo.f11714for != 0) && cdo.f11717if.isChecked();
        return savedState;
    }

    /* renamed from: package, reason: not valid java name */
    public final void m5989package() {
        if (this.f11625class != 1) {
            FrameLayout frameLayout = this.f11640do;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int m5983for = m5983for();
            if (m5983for != layoutParams.topMargin) {
                layoutParams.topMargin = m5983for;
                frameLayout.requestLayout();
            }
        }
    }

    /* renamed from: private, reason: not valid java name */
    public final void m5990private(boolean z, boolean z2) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean isEnabled = isEnabled();
        EditText editText = this.f11639do;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f11639do;
        boolean z4 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.f11621case;
        C3902w8 c3902w8 = this.f11649do;
        if (colorStateList2 != null) {
            c3902w8.m8542break(colorStateList2);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.f11621case;
            c3902w8.m8542break(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f11679package) : this.f11679package));
        } else if (m5992return()) {
            AppCompatTextView appCompatTextView2 = this.f11630do.f663do;
            c3902w8.m8542break(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.f11672if && (appCompatTextView = this.f11641do) != null) {
            c3902w8.m8542break(appCompatTextView.getTextColors());
        } else if (z4 && (colorStateList = this.f11652else) != null && c3902w8.f16250if != colorStateList) {
            c3902w8.f16250if = colorStateList;
            c3902w8.m8553this(false);
        }
        com.google.android.material.textfield.Cdo cdo = this.f11644do;
        WE we = this.f11631do;
        boolean z5 = this.f11619break;
        if (z3 || !this.f11687this || (isEnabled() && z4)) {
            if (z2 || this.f11664goto) {
                ValueAnimator valueAnimator = this.f11632do;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f11632do.cancel();
                }
                if (z && z5) {
                    m5978do(1.0f);
                } else {
                    c3902w8.m8552super(1.0f);
                }
                this.f11664goto = false;
                if (m6000try()) {
                    m5975class();
                }
                EditText editText3 = this.f11639do;
                m5971abstract(editText3 != null ? editText3.getText() : null);
                we.f4358do = false;
                we.m2716for();
                cdo.f11713do = false;
                cdo.m6008const();
                return;
            }
            return;
        }
        if (z2 || !this.f11664goto) {
            ValueAnimator valueAnimator2 = this.f11632do;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f11632do.cancel();
            }
            if (z && z5) {
                m5978do(0.0f);
            } else {
                c3902w8.m8552super(0.0f);
            }
            if (m6000try() && (!((C0161Dc) this.f11643do).f633do.f634do.isEmpty()) && m6000try()) {
                ((C0161Dc) this.f11643do).m375throws(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f11664goto = true;
            AppCompatTextView appCompatTextView3 = this.f11668if;
            if (appCompatTextView3 != null && this.f11661for) {
                appCompatTextView3.setText((CharSequence) null);
                androidx.transition.Ctry.m4665do(this.f11640do, this.f11669if);
                this.f11668if.setVisibility(4);
            }
            we.f4358do = true;
            we.m2716for();
            cdo.f11713do = true;
            cdo.m6008const();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        if (r3.getTextColors().getDefaultColor() == (-65281)) goto L11;
     */
    /* renamed from: public, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5991public(android.widget.TextView r3, int r4) {
        /*
            r2 = this;
            r0 = 1
            defpackage.XG.m2800for(r3, r4)     // Catch: java.lang.Exception -> L1b
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L1b
            r1 = 23
            if (r4 < r1) goto L18
            android.content.res.ColorStateList r4 = r3.getTextColors()     // Catch: java.lang.Exception -> L1b
            int r4 = r4.getDefaultColor()     // Catch: java.lang.Exception -> L1b
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r4 != r1) goto L18
            goto L1c
        L18:
            r4 = 0
            r0 = 0
            goto L1c
        L1b:
        L1c:
            if (r0 == 0) goto L32
            r4 = 2131886490(0x7f12019a, float:1.940756E38)
            defpackage.XG.m2800for(r3, r4)
            android.content.Context r4 = r2.getContext()
            r0 = 2131034240(0x7f050080, float:1.7678992E38)
            int r4 = defpackage.C0466Ra.getColor(r4, r0)
            r3.setTextColor(r4)
        L32:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.m5991public(android.widget.TextView, int):void");
    }

    /* renamed from: return, reason: not valid java name */
    public final boolean m5992return() {
        C0172Dn c0172Dn = this.f11630do;
        return (c0172Dn.f654case != 1 || c0172Dn.f663do == null || TextUtils.isEmpty(c0172Dn.f665do)) ? false : true;
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        m5970const(this, z);
        super.setEnabled(z);
    }

    /* renamed from: static, reason: not valid java name */
    public final void m5993static(Editable editable) {
        this.f11647do.getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z = this.f11672if;
        int i = this.f11651else;
        String str = null;
        if (i == -1) {
            this.f11641do.setText(String.valueOf(length));
            this.f11641do.setContentDescription(null);
            this.f11672if = false;
        } else {
            this.f11672if = length > i;
            this.f11641do.setContentDescription(getContext().getString(this.f11672if ? com.joeykrim.rootcheck.R.string.character_counter_overflowed_content_description : com.joeykrim.rootcheck.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.f11651else)));
            if (z != this.f11672if) {
                m5996switch();
            }
            String str2 = C3369n5.f14448do;
            C3369n5 c3369n5 = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? C3369n5.f14451if : C3369n5.f14449do;
            AppCompatTextView appCompatTextView = this.f11641do;
            String string = getContext().getString(com.joeykrim.rootcheck.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.f11651else));
            c3369n5.getClass();
            if (string != null) {
                boolean m2126if = ((SG.Cfor) c3369n5.f14453do).m2126if(string, string.length());
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z2 = (c3369n5.f14452do & 2) != 0;
                String str3 = C3369n5.f14450if;
                String str4 = C3369n5.f14448do;
                boolean z3 = c3369n5.f14454do;
                if (z2) {
                    boolean m2126if2 = (m2126if ? SG.f3483if : SG.f3481do).m2126if(string, string.length());
                    spannableStringBuilder.append((CharSequence) ((z3 || !(m2126if2 || C3369n5.m7546do(string) == 1)) ? (!z3 || (m2126if2 && C3369n5.m7546do(string) != -1)) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str3 : str4));
                }
                if (m2126if != z3) {
                    spannableStringBuilder.append(m2126if ? (char) 8235 : (char) 8234);
                    spannableStringBuilder.append((CharSequence) string);
                    spannableStringBuilder.append((char) 8236);
                } else {
                    spannableStringBuilder.append((CharSequence) string);
                }
                boolean m2126if3 = (m2126if ? SG.f3483if : SG.f3481do).m2126if(string, string.length());
                if (!z3 && (m2126if3 || C3369n5.m7547if(string) == 1)) {
                    str3 = str4;
                } else if (!z3 || (m2126if3 && C3369n5.m7547if(string) != -1)) {
                    str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                spannableStringBuilder.append((CharSequence) str3);
                str = spannableStringBuilder.toString();
            }
            appCompatTextView.setText(str);
        }
        if (this.f11639do == null || z == this.f11672if) {
            return;
        }
        m5990private(false, false);
        m5994strictfp();
        m5980extends();
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m5994strictfp() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.f11643do == null || this.f11625class == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.f11639do) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f11639do) != null && editText.isHovered())) {
            z = true;
        }
        if (!isEnabled()) {
            this.f11693while = this.f11679package;
        } else if (m5992return()) {
            if (this.f11663goto != null) {
                m5976continue(z2, z);
            } else {
                AppCompatTextView appCompatTextView2 = this.f11630do.f663do;
                this.f11693while = appCompatTextView2 != null ? appCompatTextView2.getCurrentTextColor() : -1;
            }
        } else if (!this.f11672if || (appCompatTextView = this.f11641do) == null) {
            if (z2) {
                this.f11693while = this.f11685switch;
            } else if (z) {
                this.f11693while = this.f11683static;
            } else {
                this.f11693while = this.f11682return;
            }
        } else if (this.f11663goto != null) {
            m5976continue(z2, z);
        } else {
            this.f11693while = appCompatTextView.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            m5999throws();
        }
        com.google.android.material.textfield.Cdo cdo = this.f11644do;
        cdo.m6006catch();
        ColorStateList colorStateList = cdo.f11699do;
        CheckableImageButton checkableImageButton = cdo.f11706do;
        TextInputLayout textInputLayout = cdo.f11707do;
        C2946in.m6933for(textInputLayout, checkableImageButton, colorStateList);
        ColorStateList colorStateList2 = cdo.f11715if;
        CheckableImageButton checkableImageButton2 = cdo.f11717if;
        C2946in.m6933for(textInputLayout, checkableImageButton2, colorStateList2);
        if (cdo.m6013if() instanceof C3224kf) {
            if (!textInputLayout.m5992return() || checkableImageButton2.getDrawable() == null) {
                C2946in.m6932do(textInputLayout, checkableImageButton2, cdo.f11715if, cdo.f11716if);
            } else {
                Drawable mutate = C0426Pe.m1779goto(checkableImageButton2.getDrawable()).mutate();
                AppCompatTextView appCompatTextView3 = textInputLayout.f11630do.f663do;
                C0426Pe.Cdo.m1785else(mutate, appCompatTextView3 != null ? appCompatTextView3.getCurrentTextColor() : -1);
                checkableImageButton2.setImageDrawable(mutate);
            }
        }
        WE we = this.f11631do;
        C2946in.m6933for(we.f4356do, we.f4355do, we.f4351do);
        if (this.f11625class == 2) {
            int i = this.f11655final;
            if (z2 && isEnabled()) {
                this.f11655final = this.f11688throw;
            } else {
                this.f11655final = this.f11684super;
            }
            if (this.f11655final != i && m6000try() && !this.f11664goto) {
                if (m6000try()) {
                    ((C0161Dc) this.f11643do).m375throws(0.0f, 0.0f, 0.0f, 0.0f);
                }
                m5975class();
            }
        }
        if (this.f11625class == 1) {
            if (!isEnabled()) {
                this.f11673import = this.f11629default;
            } else if (z && !z2) {
                this.f11673import = this.f11656finally;
            } else if (z2) {
                this.f11673import = this.f11654extends;
            } else {
                this.f11673import = this.f11689throws;
            }
        }
        m5985if();
    }

    /* renamed from: super, reason: not valid java name */
    public final void m5995super(boolean z) {
        C0172Dn c0172Dn = this.f11630do;
        if (c0172Dn.f666do == z) {
            return;
        }
        c0172Dn.m387for();
        TextInputLayout textInputLayout = c0172Dn.f664do;
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(c0172Dn.f659do, null);
            c0172Dn.f663do = appCompatTextView;
            appCompatTextView.setId(com.joeykrim.rootcheck.R.id.textinput_error);
            c0172Dn.f663do.setTextAlignment(5);
            int i = c0172Dn.f671goto;
            c0172Dn.f671goto = i;
            AppCompatTextView appCompatTextView2 = c0172Dn.f663do;
            if (appCompatTextView2 != null) {
                textInputLayout.m5991public(appCompatTextView2, i);
            }
            ColorStateList colorStateList = c0172Dn.f660do;
            c0172Dn.f660do = colorStateList;
            AppCompatTextView appCompatTextView3 = c0172Dn.f663do;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = c0172Dn.f676if;
            c0172Dn.f676if = charSequence;
            AppCompatTextView appCompatTextView4 = c0172Dn.f663do;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i2 = c0172Dn.f667else;
            c0172Dn.f667else = i2;
            AppCompatTextView appCompatTextView5 = c0172Dn.f663do;
            if (appCompatTextView5 != null) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                appCompatTextView5.setAccessibilityLiveRegion(i2);
            }
            c0172Dn.f663do.setVisibility(4);
            c0172Dn.m385do(c0172Dn.f663do, 0);
        } else {
            c0172Dn.m384case();
            c0172Dn.m386else(c0172Dn.f663do, 0);
            c0172Dn.f663do = null;
            textInputLayout.m5980extends();
            textInputLayout.m5994strictfp();
        }
        c0172Dn.f666do = z;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m5996switch() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.f11641do;
        if (appCompatTextView != null) {
            m5991public(appCompatTextView, this.f11672if ? this.f11662goto : this.f11686this);
            if (!this.f11672if && (colorStateList2 = this.f11665if) != null) {
                this.f11641do.setTextColor(colorStateList2);
            }
            if (!this.f11672if || (colorStateList = this.f11658for) == null) {
                return;
            }
            this.f11641do.setTextColor(colorStateList);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final int m5997this(int i, boolean z) {
        int compoundPaddingLeft;
        if (!z) {
            WE we = this.f11631do;
            if (we.f4357do != null) {
                compoundPaddingLeft = we.m2715do();
                return compoundPaddingLeft + i;
            }
        }
        if (z) {
            com.google.android.material.textfield.Cdo cdo = this.f11644do;
            if (cdo.f11711do != null) {
                compoundPaddingLeft = cdo.m6011for();
                return compoundPaddingLeft + i;
            }
        }
        compoundPaddingLeft = this.f11639do.getCompoundPaddingLeft();
        return compoundPaddingLeft + i;
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m5998throw(boolean z) {
        C0172Dn c0172Dn = this.f11630do;
        if (c0172Dn.f677if == z) {
            return;
        }
        c0172Dn.m387for();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(c0172Dn.f659do, null);
            c0172Dn.f675if = appCompatTextView;
            appCompatTextView.setId(com.joeykrim.rootcheck.R.id.textinput_helper_text);
            c0172Dn.f675if.setTextAlignment(5);
            c0172Dn.f675if.setVisibility(4);
            AppCompatTextView appCompatTextView2 = c0172Dn.f675if;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            appCompatTextView2.setAccessibilityLiveRegion(1);
            int i = c0172Dn.f679this;
            c0172Dn.f679this = i;
            AppCompatTextView appCompatTextView3 = c0172Dn.f675if;
            if (appCompatTextView3 != null) {
                XG.m2800for(appCompatTextView3, i);
            }
            ColorStateList colorStateList = c0172Dn.f674if;
            c0172Dn.f674if = colorStateList;
            AppCompatTextView appCompatTextView4 = c0172Dn.f675if;
            if (appCompatTextView4 != null && colorStateList != null) {
                appCompatTextView4.setTextColor(colorStateList);
            }
            c0172Dn.m385do(c0172Dn.f675if, 1);
            c0172Dn.f675if.setAccessibilityDelegate(new C0194En(c0172Dn));
        } else {
            c0172Dn.m387for();
            int i2 = c0172Dn.f680try;
            if (i2 == 2) {
                c0172Dn.f654case = 0;
            }
            c0172Dn.m391this(i2, c0172Dn.f654case, c0172Dn.m388goto(c0172Dn.f675if, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
            c0172Dn.m386else(c0172Dn.f675if, 1);
            c0172Dn.f675if = null;
            TextInputLayout textInputLayout = c0172Dn.f664do;
            textInputLayout.m5980extends();
            textInputLayout.m5994strictfp();
        }
        c0172Dn.f677if = z;
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m5999throws() {
        Drawable textCursorDrawable;
        Drawable textCursorDrawable2;
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f11676new;
        if (colorStateList2 == null) {
            Context context = getContext();
            TypedValue m304do = C0154Cr.m304do(context, com.joeykrim.rootcheck.R.attr.colorControlActivated);
            if (m304do != null) {
                int i = m304do.resourceId;
                if (i != 0) {
                    colorStateList2 = C0466Ra.getColorStateList(context, i);
                } else {
                    int i2 = m304do.data;
                    if (i2 != 0) {
                        colorStateList2 = ColorStateList.valueOf(i2);
                    }
                }
            }
            colorStateList2 = null;
        }
        EditText editText = this.f11639do;
        if (editText != null) {
            textCursorDrawable = editText.getTextCursorDrawable();
            if (textCursorDrawable == null) {
                return;
            }
            textCursorDrawable2 = this.f11639do.getTextCursorDrawable();
            Drawable mutate = C0426Pe.m1779goto(textCursorDrawable2).mutate();
            if ((m5992return() || (this.f11641do != null && this.f11672if)) && (colorStateList = this.f11691try) != null) {
                colorStateList2 = colorStateList;
            }
            C0426Pe.Cdo.m1787goto(mutate, colorStateList2);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m6000try() {
        return this.f11678new && !TextUtils.isEmpty(this.f11660for) && (this.f11643do instanceof C0161Dc);
    }

    /* renamed from: while, reason: not valid java name */
    public final void m6001while(CharSequence charSequence) {
        if (this.f11678new) {
            if (!TextUtils.equals(charSequence, this.f11660for)) {
                this.f11660for = charSequence;
                C3902w8 c3902w8 = this.f11649do;
                if (charSequence == null || !TextUtils.equals(c3902w8.f16230do, charSequence)) {
                    c3902w8.f16230do = charSequence;
                    c3902w8.f16254if = null;
                    Bitmap bitmap = c3902w8.f16222do;
                    if (bitmap != null) {
                        bitmap.recycle();
                        c3902w8.f16222do = null;
                    }
                    c3902w8.m8553this(false);
                }
                if (!this.f11664goto) {
                    m5975class();
                }
            }
            sendAccessibilityEvent(2048);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_Design_TextInputLayout), attributeSet, i);
        ColorStateList m8636if;
        ColorStateList m8636if2;
        ColorStateList m8636if3;
        ColorStateList m8636if4;
        boolean z;
        ColorStateList m3069do;
        this.f11657for = -1;
        this.f11675new = -1;
        this.f11690try = -1;
        this.f11620case = -1;
        C0172Dn c0172Dn = new C0172Dn(this);
        this.f11630do = c0172Dn;
        this.f11647do = new Cpackage(4);
        this.f11634do = new Rect();
        this.f11666if = new Rect();
        this.f11635do = new RectF();
        this.f11646do = new LinkedHashSet<>();
        C3902w8 c3902w8 = new C3902w8(this);
        this.f11649do = c3902w8;
        this.f11628const = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f11640do = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = C2785g1.f13028do;
        c3902w8.f16249if = linearInterpolator;
        c3902w8.m8553this(false);
        c3902w8.f16220do = linearInterpolator;
        c3902w8.m8553this(false);
        if (c3902w8.f16240for != 8388659) {
            c3902w8.f16240for = 8388659;
            c3902w8.m8553this(false);
        }
        C3970xH m3116try = C0682aH.m3116try(context2, attributeSet, O2.t, i, com.joeykrim.rootcheck.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 49);
        WE we = new WE(this, m3116try);
        this.f11631do = we;
        this.f11678new = m3116try.m8631do(48, true);
        m6001while(m3116try.m8629catch(4));
        this.f11619break = m3116try.m8631do(47, true);
        this.f11687this = m3116try.m8631do(42, true);
        if (m3116try.m8630class(6)) {
            int m8635goto = m3116try.m8635goto(6, -1);
            this.f11657for = m8635goto;
            EditText editText = this.f11639do;
            if (editText != null && m8635goto != -1) {
                editText.setMinEms(m8635goto);
            }
        } else if (m3116try.m8630class(3)) {
            int m8637new = m3116try.m8637new(3, -1);
            this.f11690try = m8637new;
            EditText editText2 = this.f11639do;
            if (editText2 != null && m8637new != -1) {
                editText2.setMinWidth(m8637new);
            }
        }
        if (m3116try.m8630class(5)) {
            int m8635goto2 = m3116try.m8635goto(5, -1);
            this.f11675new = m8635goto2;
            EditText editText3 = this.f11639do;
            if (editText3 != null && m8635goto2 != -1) {
                editText3.setMaxEms(m8635goto2);
            }
        } else if (m3116try.m8630class(2)) {
            int m8637new2 = m3116try.m8637new(2, -1);
            this.f11620case = m8637new2;
            EditText editText4 = this.f11639do;
            if (editText4 != null && m8637new2 != -1) {
                editText4.setMaxWidth(m8637new2);
            }
        }
        this.f11648do = new C3554qD(C3554qD.m7859for(context2, attributeSet, i, com.joeykrim.rootcheck.R.style.Widget_Design_TextInputLayout));
        this.f11623catch = context2.getResources().getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f11627const = m3116try.m8634for(9, 0);
        int m8637new3 = m3116try.m8637new(16, context2.getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f11684super = m8637new3;
        this.f11688throw = m3116try.m8637new(17, context2.getResources().getDimensionPixelSize(com.joeykrim.rootcheck.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.f11655final = m8637new3;
        TypedArray typedArray = m3116try.f16536do;
        float dimension = typedArray.getDimension(13, -1.0f);
        float dimension2 = typedArray.getDimension(12, -1.0f);
        float dimension3 = typedArray.getDimension(10, -1.0f);
        float dimension4 = typedArray.getDimension(11, -1.0f);
        C3554qD c3554qD = this.f11648do;
        c3554qD.getClass();
        C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
        if (dimension >= 0.0f) {
            cdo.m7870try(dimension);
        }
        if (dimension2 >= 0.0f) {
            cdo.m7866case(dimension2);
        }
        if (dimension3 >= 0.0f) {
            cdo.m7869new(dimension3);
        }
        if (dimension4 >= 0.0f) {
            cdo.m7867for(dimension4);
        }
        this.f11648do = new C3554qD(cdo);
        ColorStateList m3069do2 = C0659Zr.m3069do(context2, m3116try, 7);
        if (m3069do2 != null) {
            int defaultColor = m3069do2.getDefaultColor();
            this.f11689throws = defaultColor;
            this.f11673import = defaultColor;
            if (m3069do2.isStateful()) {
                this.f11629default = m3069do2.getColorForState(new int[]{-16842910}, -1);
                this.f11654extends = m3069do2.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f11656finally = m3069do2.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.f11654extends = defaultColor;
                ColorStateList colorStateList = C0466Ra.getColorStateList(context2, com.joeykrim.rootcheck.R.color.mtrl_filled_background_color);
                this.f11629default = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.f11656finally = colorStateList.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.f11673import = 0;
            this.f11689throws = 0;
            this.f11629default = 0;
            this.f11654extends = 0;
            this.f11656finally = 0;
        }
        if (m3116try.m8630class(1)) {
            ColorStateList m8636if5 = m3116try.m8636if(1);
            this.f11652else = m8636if5;
            this.f11621case = m8636if5;
        }
        ColorStateList m3069do3 = C0659Zr.m3069do(context2, m3116try, 14);
        this.f11685switch = typedArray.getColor(14, 0);
        this.f11682return = C0466Ra.getColor(context2, com.joeykrim.rootcheck.R.color.mtrl_textinput_default_box_stroke_color);
        this.f11679package = C0466Ra.getColor(context2, com.joeykrim.rootcheck.R.color.mtrl_textinput_disabled_color);
        this.f11683static = C0466Ra.getColor(context2, com.joeykrim.rootcheck.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (m3069do3 != null) {
            if (m3069do3.isStateful()) {
                this.f11682return = m3069do3.getDefaultColor();
                this.f11679package = m3069do3.getColorForState(new int[]{-16842910}, -1);
                this.f11683static = m3069do3.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
                this.f11685switch = m3069do3.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
            } else if (this.f11685switch != m3069do3.getDefaultColor()) {
                this.f11685switch = m3069do3.getDefaultColor();
            }
            m5994strictfp();
        }
        if (m3116try.m8630class(15) && this.f11663goto != (m3069do = C0659Zr.m3069do(context2, m3116try, 15))) {
            this.f11663goto = m3069do;
            m5994strictfp();
        }
        if (m3116try.m8638this(49, -1) != -1) {
            c3902w8.m8544catch(m3116try.m8638this(49, 0));
            this.f11652else = c3902w8.f16250if;
            if (this.f11639do != null) {
                m5990private(false, false);
                m5989package();
            }
        }
        this.f11676new = m3116try.m8636if(24);
        this.f11691try = m3116try.m8636if(25);
        int m8638this = m3116try.m8638this(40, 0);
        CharSequence m8629catch = m3116try.m8629catch(35);
        int m8635goto3 = m3116try.m8635goto(34, 1);
        boolean m8631do = m3116try.m8631do(36, false);
        int m8638this2 = m3116try.m8638this(45, 0);
        boolean m8631do2 = m3116try.m8631do(44, false);
        CharSequence m8629catch2 = m3116try.m8629catch(43);
        int m8638this3 = m3116try.m8638this(57, 0);
        CharSequence m8629catch3 = m3116try.m8629catch(56);
        boolean m8631do3 = m3116try.m8631do(18, false);
        int m8635goto4 = m3116try.m8635goto(19, -1);
        if (this.f11651else != m8635goto4) {
            if (m8635goto4 > 0) {
                this.f11651else = m8635goto4;
            } else {
                this.f11651else = -1;
            }
            if (this.f11650do && this.f11641do != null) {
                EditText editText5 = this.f11639do;
                m5993static(editText5 == null ? null : editText5.getText());
            }
        }
        this.f11686this = m3116try.m8638this(22, 0);
        this.f11662goto = m3116try.m8638this(20, 0);
        int m8635goto5 = m3116try.m8635goto(8, 0);
        if (m8635goto5 != this.f11625class) {
            this.f11625class = m8635goto5;
            if (this.f11639do != null) {
                m5974catch();
            }
        }
        c0172Dn.f676if = m8629catch;
        AppCompatTextView appCompatTextView = c0172Dn.f663do;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(m8629catch);
        }
        c0172Dn.f667else = m8635goto3;
        AppCompatTextView appCompatTextView2 = c0172Dn.f663do;
        if (appCompatTextView2 != null) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            appCompatTextView2.setAccessibilityLiveRegion(m8635goto3);
        }
        c0172Dn.f679this = m8638this2;
        AppCompatTextView appCompatTextView3 = c0172Dn.f675if;
        if (appCompatTextView3 != null) {
            XG.m2800for(appCompatTextView3, m8638this2);
        }
        c0172Dn.f671goto = m8638this;
        AppCompatTextView appCompatTextView4 = c0172Dn.f663do;
        if (appCompatTextView4 != null) {
            c0172Dn.f664do.m5991public(appCompatTextView4, m8638this);
        }
        m5986import(m8629catch3);
        this.f11618break = m8638this3;
        AppCompatTextView appCompatTextView5 = this.f11668if;
        if (appCompatTextView5 != null) {
            XG.m2800for(appCompatTextView5, m8638this3);
        }
        if (m3116try.m8630class(41)) {
            ColorStateList m8636if6 = m3116try.m8636if(41);
            c0172Dn.f660do = m8636if6;
            AppCompatTextView appCompatTextView6 = c0172Dn.f663do;
            if (appCompatTextView6 != null && m8636if6 != null) {
                appCompatTextView6.setTextColor(m8636if6);
            }
        }
        if (m3116try.m8630class(46)) {
            ColorStateList m8636if7 = m3116try.m8636if(46);
            c0172Dn.f674if = m8636if7;
            AppCompatTextView appCompatTextView7 = c0172Dn.f675if;
            if (appCompatTextView7 != null && m8636if7 != null) {
                appCompatTextView7.setTextColor(m8636if7);
            }
        }
        if (m3116try.m8630class(50) && this.f11652else != (m8636if4 = m3116try.m8636if(50))) {
            if (this.f11621case != null || c3902w8.f16250if == m8636if4) {
                z = false;
            } else {
                c3902w8.f16250if = m8636if4;
                z = false;
                c3902w8.m8553this(false);
            }
            this.f11652else = m8636if4;
            if (this.f11639do != null) {
                m5990private(z, z);
            }
        }
        if (m3116try.m8630class(23) && this.f11665if != (m8636if3 = m3116try.m8636if(23))) {
            this.f11665if = m8636if3;
            m5996switch();
        }
        if (m3116try.m8630class(21) && this.f11658for != (m8636if2 = m3116try.m8636if(21))) {
            this.f11658for = m8636if2;
            m5996switch();
        }
        if (m3116try.m8630class(58) && this.f11633do != (m8636if = m3116try.m8636if(58))) {
            this.f11633do = m8636if;
            AppCompatTextView appCompatTextView8 = this.f11668if;
            if (appCompatTextView8 != null && m8636if != null) {
                appCompatTextView8.setTextColor(m8636if);
            }
        }
        com.google.android.material.textfield.Cdo cdo2 = new com.google.android.material.textfield.Cdo(this, m3116try);
        this.f11644do = cdo2;
        boolean m8631do4 = m3116try.m8631do(0, true);
        m3116try.m8633final();
        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
        setImportantForAccessibility(2);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26 && i2 >= 26) {
            QK.Celse.m1888const(this, 1);
        }
        frameLayout.addView(we);
        frameLayout.addView(cdo2);
        addView(frameLayout);
        setEnabled(m8631do4);
        m5998throw(m8631do2);
        m5995super(m8631do);
        if (this.f11650do != m8631do3) {
            if (m8631do3) {
                AppCompatTextView appCompatTextView9 = new AppCompatTextView(getContext(), null);
                this.f11641do = appCompatTextView9;
                appCompatTextView9.setId(com.joeykrim.rootcheck.R.id.textinput_counter);
                this.f11641do.setMaxLines(1);
                c0172Dn.m385do(this.f11641do, 2);
                ((ViewGroup.MarginLayoutParams) this.f11641do.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(com.joeykrim.rootcheck.R.dimen.mtrl_textinput_counter_margin_start));
                m5996switch();
                if (this.f11641do != null) {
                    EditText editText6 = this.f11639do;
                    m5993static(editText6 != null ? editText6.getText() : null);
                }
            } else {
                c0172Dn.m386else(this.f11641do, 2);
                this.f11641do = null;
            }
            this.f11650do = m8631do3;
        }
        if (TextUtils.isEmpty(m8629catch2)) {
            if (c0172Dn.f677if) {
                m5998throw(false);
                return;
            }
            return;
        }
        if (!c0172Dn.f677if) {
            m5998throw(true);
        }
        c0172Dn.m387for();
        c0172Dn.f670for = m8629catch2;
        c0172Dn.f675if.setText(m8629catch2);
        int i3 = c0172Dn.f680try;
        if (i3 != 2) {
            c0172Dn.f654case = 2;
        }
        c0172Dn.m391this(i3, c0172Dn.f654case, c0172Dn.m388goto(c0172Dn.f675if, m8629catch2));
    }
}
