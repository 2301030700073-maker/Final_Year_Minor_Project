package defpackage;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import java.util.WeakHashMap;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public final class WE extends LinearLayout {

    /* renamed from: do, reason: not valid java name */
    public ColorStateList f4351do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f4352do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View.OnLongClickListener f4353do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AppCompatTextView f4354do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CheckableImageButton f4355do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextInputLayout f4356do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f4357do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4358do;

    /* renamed from: for, reason: not valid java name */
    public int f4359for;

    public WE(TextInputLayout textInputLayout, C3970xH c3970xH) {
        super(textInputLayout.getContext());
        CharSequence m8629catch;
        this.f4356do = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f4355do = checkableImageButton;
        C2946in.m6935new(checkableImageButton);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.f4354do = appCompatTextView;
        if (C0659Zr.m3073try(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.f4353do;
        checkableImageButton.setOnClickListener(null);
        C2946in.m6936try(checkableImageButton, onLongClickListener);
        this.f4353do = null;
        checkableImageButton.setOnLongClickListener(null);
        C2946in.m6936try(checkableImageButton, null);
        if (c3970xH.m8630class(69)) {
            this.f4351do = C0659Zr.m3069do(getContext(), c3970xH, 69);
        }
        if (c3970xH.m8630class(70)) {
            this.f4352do = C3738tL.m8284goto(c3970xH.m8635goto(70, -1), null);
        }
        if (c3970xH.m8630class(66)) {
            Drawable m8639try = c3970xH.m8639try(66);
            checkableImageButton.setImageDrawable(m8639try);
            if (m8639try != null) {
                C2946in.m6932do(textInputLayout, checkableImageButton, this.f4351do, this.f4352do);
                if (!(checkableImageButton.getVisibility() == 0)) {
                    checkableImageButton.setVisibility(0);
                    m2717if();
                    m2716for();
                }
                C2946in.m6933for(textInputLayout, checkableImageButton, this.f4351do);
            } else {
                if (checkableImageButton.getVisibility() == 0) {
                    checkableImageButton.setVisibility(8);
                    m2717if();
                    m2716for();
                }
                View.OnLongClickListener onLongClickListener2 = this.f4353do;
                checkableImageButton.setOnClickListener(null);
                C2946in.m6936try(checkableImageButton, onLongClickListener2);
                this.f4353do = null;
                checkableImageButton.setOnLongClickListener(null);
                C2946in.m6936try(checkableImageButton, null);
                if (checkableImageButton.getContentDescription() != null) {
                    checkableImageButton.setContentDescription(null);
                }
            }
            if (c3970xH.m8630class(65) && checkableImageButton.getContentDescription() != (m8629catch = c3970xH.m8629catch(65))) {
                checkableImageButton.setContentDescription(m8629catch);
            }
            boolean m8631do = c3970xH.m8631do(64, true);
            if (checkableImageButton.f11164for != m8631do) {
                checkableImageButton.f11164for = m8631do;
                checkableImageButton.sendAccessibilityEvent(0);
            }
        }
        int m8637new = c3970xH.m8637new(67, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (m8637new < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (m8637new != this.f4359for) {
            this.f4359for = m8637new;
            checkableImageButton.setMinimumWidth(m8637new);
            checkableImageButton.setMinimumHeight(m8637new);
        }
        if (c3970xH.m8630class(68)) {
            checkableImageButton.setScaleType(C2946in.m6934if(c3970xH.m8635goto(68, -1)));
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        appCompatTextView.setAccessibilityLiveRegion(1);
        XG.m2800for(appCompatTextView, c3970xH.m8638this(60, 0));
        if (c3970xH.m8630class(61)) {
            appCompatTextView.setTextColor(c3970xH.m8636if(61));
        }
        CharSequence m8629catch2 = c3970xH.m8629catch(59);
        this.f4357do = TextUtils.isEmpty(m8629catch2) ? null : m8629catch2;
        appCompatTextView.setText(m8629catch2);
        m2716for();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    /* renamed from: do, reason: not valid java name */
    public final int m2715do() {
        CheckableImageButton checkableImageButton = this.f4355do;
        int marginEnd = checkableImageButton.getVisibility() == 0 ? ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth() : 0;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return this.f4354do.getPaddingStart() + getPaddingStart() + marginEnd;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m2716for() {
        int i = (this.f4357do == null || this.f4358do) ? 8 : 0;
        setVisibility(this.f4355do.getVisibility() == 0 || i == 0 ? 0 : 8);
        this.f4354do.setVisibility(i);
        this.f4356do.m5977default();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2717if() {
        EditText editText = this.f4356do.f11639do;
        if (editText == null) {
            return;
        }
        int i = 0;
        if (!(this.f4355do.getVisibility() == 0)) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            i = editText.getPaddingStart();
        }
        int compoundPaddingTop = editText.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = editText.getCompoundPaddingBottom();
        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
        this.f4354do.setPaddingRelative(i, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m2717if();
    }
}
