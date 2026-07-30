package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC2704eg;
import defpackage.Aw;
import defpackage.C0596Wu;
import defpackage.C0659Zr;
import defpackage.C0792c8;
import defpackage.C2946in;
import defpackage.C3224kf;
import defpackage.C3385nL;
import defpackage.C3516pc;
import defpackage.C3645ro;
import defpackage.C3738tL;
import defpackage.C3970xH;
import defpackage.Cinstanceof;
import defpackage.Csynchronized;
import defpackage.QK;
import defpackage.V1;
import defpackage.XG;
import defpackage.ZG;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

@SuppressLint({"ViewConstructor"})
/* renamed from: com.google.android.material.textfield.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo extends LinearLayout {

    /* renamed from: do, reason: not valid java name */
    public ColorStateList f11699do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f11700do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View.OnLongClickListener f11701do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessibilityManager f11702do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EditText f11703do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FrameLayout f11704do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AppCompatTextView f11705do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CheckableImageButton f11706do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextInputLayout f11707do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0072do f11708do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f11709do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cinstanceof f11710do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CharSequence f11711do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<TextInputLayout.Ctry> f11712do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11713do;

    /* renamed from: for, reason: not valid java name */
    public int f11714for;

    /* renamed from: if, reason: not valid java name */
    public ColorStateList f11715if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f11716if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final CheckableImageButton f11717if;

    /* renamed from: new, reason: not valid java name */
    public int f11718new;

    /* renamed from: com.google.android.material.textfield.do$do, reason: invalid class name and collision with other inner class name */
    public class C0072do extends ZG {
        public C0072do() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            Cdo.this.m6013if().mo4882do();
        }

        @Override // defpackage.ZG, android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            Cdo.this.m6013if().mo126if();
        }
    }

    /* renamed from: com.google.android.material.textfield.do$for, reason: invalid class name */
    public class Cfor implements View.OnAttachStateChangeListener {
        public Cfor() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            AccessibilityManager accessibilityManager;
            Cdo cdo = Cdo.this;
            if (cdo.f11710do == null || (accessibilityManager = cdo.f11702do) == null) {
                return;
            }
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (cdo.isAttachedToWindow()) {
                accessibilityManager.addTouchExplorationStateChangeListener(new Csynchronized(cdo.f11710do));
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            AccessibilityManager accessibilityManager;
            Cdo cdo = Cdo.this;
            Cinstanceof cinstanceof = cdo.f11710do;
            if (cinstanceof == null || (accessibilityManager = cdo.f11702do) == null) {
                return;
            }
            accessibilityManager.removeTouchExplorationStateChangeListener(new Csynchronized(cinstanceof));
        }
    }

    /* renamed from: com.google.android.material.textfield.do$if, reason: invalid class name */
    public class Cif implements TextInputLayout.Cnew {
        public Cif() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.Cnew
        /* renamed from: do */
        public final void mo6002do(TextInputLayout textInputLayout) {
            Cdo cdo = Cdo.this;
            EditText editText = cdo.f11703do;
            if (editText == textInputLayout.f11639do) {
                return;
            }
            C0072do c0072do = cdo.f11708do;
            if (editText != null) {
                editText.removeTextChangedListener(c0072do);
                if (cdo.f11703do.getOnFocusChangeListener() == cdo.m6013if().mo4887try()) {
                    cdo.f11703do.setOnFocusChangeListener(null);
                }
            }
            EditText editText2 = textInputLayout.f11639do;
            cdo.f11703do = editText2;
            if (editText2 != null) {
                editText2.addTextChangedListener(c0072do);
            }
            cdo.m6013if().mo124const(cdo.f11703do);
            cdo.m6015this(cdo.m6013if());
        }
    }

    /* renamed from: com.google.android.material.textfield.do$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        public final int f11722do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final SparseArray<AbstractC2704eg> f11723do = new SparseArray<>();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f11724do;

        /* renamed from: if, reason: not valid java name */
        public final int f11725if;

        public Cnew(Cdo cdo, C3970xH c3970xH) {
            this.f11724do = cdo;
            this.f11722do = c3970xH.m8638this(28, 0);
            this.f11725if = c3970xH.m8638this(52, 0);
        }
    }

    public Cdo(TextInputLayout textInputLayout, C3970xH c3970xH) {
        super(textInputLayout.getContext());
        CharSequence m8629catch;
        this.f11714for = 0;
        this.f11712do = new LinkedHashSet<>();
        this.f11708do = new C0072do();
        Cif cif = new Cif();
        this.f11702do = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f11707do = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f11704do = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton m6009do = m6009do(this, from, R.id.text_input_error_icon);
        this.f11706do = m6009do;
        CheckableImageButton m6009do2 = m6009do(frameLayout, from, R.id.text_input_end_icon);
        this.f11717if = m6009do2;
        this.f11709do = new Cnew(this, c3970xH);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.f11705do = appCompatTextView;
        if (c3970xH.m8630class(38)) {
            this.f11699do = C0659Zr.m3069do(getContext(), c3970xH, 38);
        }
        if (c3970xH.m8630class(39)) {
            this.f11700do = C3738tL.m8284goto(c3970xH.m8635goto(39, -1), null);
        }
        if (c3970xH.m8630class(37)) {
            m6009do.setImageDrawable(c3970xH.m8639try(37));
            m6006catch();
            C2946in.m6932do(textInputLayout, m6009do, this.f11699do, this.f11700do);
        }
        m6009do.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        m6009do.setImportantForAccessibility(2);
        m6009do.setClickable(false);
        m6009do.f11166new = false;
        m6009do.setFocusable(false);
        if (!c3970xH.m8630class(53)) {
            if (c3970xH.m8630class(32)) {
                this.f11715if = C0659Zr.m3069do(getContext(), c3970xH, 32);
            }
            if (c3970xH.m8630class(33)) {
                this.f11716if = C3738tL.m8284goto(c3970xH.m8635goto(33, -1), null);
            }
        }
        if (c3970xH.m8630class(30)) {
            m6010else(c3970xH.m8635goto(30, 0));
            if (c3970xH.m8630class(27) && m6009do2.getContentDescription() != (m8629catch = c3970xH.m8629catch(27))) {
                m6009do2.setContentDescription(m8629catch);
            }
            boolean m8631do = c3970xH.m8631do(26, true);
            if (m6009do2.f11164for != m8631do) {
                m6009do2.f11164for = m8631do;
                m6009do2.sendAccessibilityEvent(0);
            }
        } else if (c3970xH.m8630class(53)) {
            if (c3970xH.m8630class(54)) {
                this.f11715if = C0659Zr.m3069do(getContext(), c3970xH, 54);
            }
            if (c3970xH.m8630class(55)) {
                this.f11716if = C3738tL.m8284goto(c3970xH.m8635goto(55, -1), null);
            }
            m6010else(c3970xH.m8631do(53, false) ? 1 : 0);
            CharSequence m8629catch2 = c3970xH.m8629catch(51);
            if (m6009do2.getContentDescription() != m8629catch2) {
                m6009do2.setContentDescription(m8629catch2);
            }
        }
        int m8637new = c3970xH.m8637new(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (m8637new < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (m8637new != this.f11718new) {
            this.f11718new = m8637new;
            m6009do2.setMinimumWidth(m8637new);
            m6009do2.setMinimumHeight(m8637new);
            m6009do.setMinimumWidth(m8637new);
            m6009do.setMinimumHeight(m8637new);
        }
        if (c3970xH.m8630class(31)) {
            ImageView.ScaleType m6934if = C2946in.m6934if(c3970xH.m8635goto(31, -1));
            m6009do2.setScaleType(m6934if);
            m6009do.setScaleType(m6934if);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        appCompatTextView.setAccessibilityLiveRegion(1);
        XG.m2800for(appCompatTextView, c3970xH.m8638this(72, 0));
        if (c3970xH.m8630class(73)) {
            appCompatTextView.setTextColor(c3970xH.m8636if(73));
        }
        CharSequence m8629catch3 = c3970xH.m8629catch(71);
        this.f11711do = TextUtils.isEmpty(m8629catch3) ? null : m8629catch3;
        appCompatTextView.setText(m8629catch3);
        m6008const();
        frameLayout.addView(m6009do2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(m6009do);
        textInputLayout.f11646do.add(cif);
        if (textInputLayout.f11639do != null) {
            cif.mo6002do(textInputLayout);
        }
        addOnAttachStateChangeListener(new Cfor());
    }

    /* renamed from: break, reason: not valid java name */
    public final void m6004break() {
        this.f11704do.setVisibility((this.f11717if.getVisibility() != 0 || m6016try()) ? 8 : 0);
        setVisibility(m6014new() || m6016try() || ((this.f11711do == null || this.f11713do) ? '\b' : (char) 0) == 0 ? 0 : 8);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m6005case(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean isChecked;
        AbstractC2704eg m6013if = m6013if();
        boolean mo122catch = m6013if.mo122catch();
        boolean z3 = true;
        CheckableImageButton checkableImageButton = this.f11717if;
        if (!mo122catch || (isChecked = checkableImageButton.isChecked()) == m6013if.mo123class()) {
            z2 = false;
        } else {
            checkableImageButton.setChecked(!isChecked);
            z2 = true;
        }
        if (!(m6013if instanceof C3224kf) || (isActivated = checkableImageButton.isActivated()) == m6013if.mo6569break()) {
            z3 = z2;
        } else {
            checkableImageButton.setActivated(!isActivated);
        }
        if (z || z3) {
            C2946in.m6933for(this.f11707do, checkableImageButton, this.f11715if);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m6006catch() {
        CheckableImageButton checkableImageButton = this.f11706do;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f11707do;
        checkableImageButton.setVisibility(drawable != null && textInputLayout.f11630do.f666do && textInputLayout.m5992return() ? 0 : 8);
        m6004break();
        m6007class();
        if (this.f11714for != 0) {
            return;
        }
        textInputLayout.m5977default();
    }

    /* renamed from: class, reason: not valid java name */
    public final void m6007class() {
        int i;
        TextInputLayout textInputLayout = this.f11707do;
        if (textInputLayout.f11639do == null) {
            return;
        }
        if (m6014new() || m6016try()) {
            i = 0;
        } else {
            EditText editText = textInputLayout.f11639do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            i = editText.getPaddingEnd();
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = textInputLayout.f11639do.getPaddingTop();
        int paddingBottom = textInputLayout.f11639do.getPaddingBottom();
        WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
        this.f11705do.setPaddingRelative(dimensionPixelSize, paddingTop, i, paddingBottom);
    }

    /* renamed from: const, reason: not valid java name */
    public final void m6008const() {
        AppCompatTextView appCompatTextView = this.f11705do;
        int visibility = appCompatTextView.getVisibility();
        int i = (this.f11711do == null || this.f11713do) ? 8 : 0;
        if (visibility != i) {
            m6013if().mo4886throw(i == 0);
        }
        m6004break();
        appCompatTextView.setVisibility(i);
        this.f11707do.m5977default();
    }

    /* renamed from: do, reason: not valid java name */
    public final CheckableImageButton m6009do(ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i);
        C2946in.m6935new(checkableImageButton);
        if (C0659Zr.m3073try(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m6010else(int i) {
        if (this.f11714for == i) {
            return;
        }
        AbstractC2704eg m6013if = m6013if();
        Cinstanceof cinstanceof = this.f11710do;
        AccessibilityManager accessibilityManager = this.f11702do;
        if (cinstanceof != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(new Csynchronized(cinstanceof));
        }
        this.f11710do = null;
        m6013if.mo128native();
        this.f11714for = i;
        Iterator<TextInputLayout.Ctry> it = this.f11712do.iterator();
        while (it.hasNext()) {
            it.next().m6003do();
        }
        m6012goto(i != 0);
        AbstractC2704eg m6013if2 = m6013if();
        int i2 = this.f11709do.f11722do;
        if (i2 == 0) {
            i2 = m6013if2.mo129new();
        }
        Drawable m7997extends = i2 != 0 ? C3645ro.m7997extends(getContext(), i2) : null;
        CheckableImageButton checkableImageButton = this.f11717if;
        checkableImageButton.setImageDrawable(m7997extends);
        TextInputLayout textInputLayout = this.f11707do;
        if (m7997extends != null) {
            C2946in.m6932do(textInputLayout, checkableImageButton, this.f11715if, this.f11716if);
            C2946in.m6933for(textInputLayout, checkableImageButton, this.f11715if);
        }
        int mo125for = m6013if2.mo125for();
        CharSequence text = mo125for != 0 ? getResources().getText(mo125for) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        boolean mo122catch = m6013if2.mo122catch();
        if (checkableImageButton.f11164for != mo122catch) {
            checkableImageButton.f11164for = mo122catch;
            checkableImageButton.sendAccessibilityEvent(0);
        }
        if (!m6013if2.mo6573this(textInputLayout.f11625class)) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.f11625class + " is not supported by the end icon mode " + i);
        }
        m6013if2.mo127import();
        Cinstanceof mo6571goto = m6013if2.mo6571goto();
        this.f11710do = mo6571goto;
        if (mo6571goto != null && accessibilityManager != null) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            if (isAttachedToWindow()) {
                accessibilityManager.addTouchExplorationStateChangeListener(new Csynchronized(this.f11710do));
            }
        }
        View.OnClickListener mo121case = m6013if2.mo121case();
        View.OnLongClickListener onLongClickListener = this.f11701do;
        checkableImageButton.setOnClickListener(mo121case);
        C2946in.m6936try(checkableImageButton, onLongClickListener);
        EditText editText = this.f11703do;
        if (editText != null) {
            m6013if2.mo124const(editText);
            m6015this(m6013if2);
        }
        C2946in.m6932do(textInputLayout, checkableImageButton, this.f11715if, this.f11716if);
        m6005case(true);
    }

    /* renamed from: for, reason: not valid java name */
    public final int m6011for() {
        int marginStart;
        if (m6014new() || m6016try()) {
            CheckableImageButton checkableImageButton = this.f11717if;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return this.f11705do.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m6012goto(boolean z) {
        if (m6014new() != z) {
            this.f11717if.setVisibility(z ? 0 : 8);
            m6004break();
            m6007class();
            this.f11707do.m5977default();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final AbstractC2704eg m6013if() {
        AbstractC2704eg c3516pc;
        int i = this.f11714for;
        Cnew cnew = this.f11709do;
        SparseArray<AbstractC2704eg> sparseArray = cnew.f11723do;
        AbstractC2704eg abstractC2704eg = sparseArray.get(i);
        if (abstractC2704eg == null) {
            Cdo cdo = cnew.f11724do;
            if (i == -1) {
                c3516pc = new C3516pc(cdo);
            } else if (i == 0) {
                c3516pc = new C0596Wu(cdo);
            } else if (i == 1) {
                abstractC2704eg = new Aw(cdo, cnew.f11725if);
                sparseArray.append(i, abstractC2704eg);
            } else if (i == 2) {
                c3516pc = new C0792c8(cdo);
            } else {
                if (i != 3) {
                    throw new IllegalArgumentException(V1.m2494case("Invalid end icon mode: ", i));
                }
                c3516pc = new C3224kf(cdo);
            }
            abstractC2704eg = c3516pc;
            sparseArray.append(i, abstractC2704eg);
        }
        return abstractC2704eg;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m6014new() {
        return this.f11704do.getVisibility() == 0 && this.f11717if.getVisibility() == 0;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m6015this(AbstractC2704eg abstractC2704eg) {
        if (this.f11703do == null) {
            return;
        }
        if (abstractC2704eg.mo4887try() != null) {
            this.f11703do.setOnFocusChangeListener(abstractC2704eg.mo4887try());
        }
        if (abstractC2704eg.mo4883else() != null) {
            this.f11717if.setOnFocusChangeListener(abstractC2704eg.mo4883else());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m6016try() {
        return this.f11706do.getVisibility() == 0;
    }
}
