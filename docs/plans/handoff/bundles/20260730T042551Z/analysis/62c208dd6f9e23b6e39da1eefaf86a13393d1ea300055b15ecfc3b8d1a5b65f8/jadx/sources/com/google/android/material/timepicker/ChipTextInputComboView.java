package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C3385nL;
import defpackage.QK;
import defpackage.RunnableC3620rL;
import defpackage.ZG;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: do, reason: not valid java name */
    public final EditText f11726do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Chip f11727do;

    /* renamed from: com.google.android.material.timepicker.ChipTextInputComboView$do, reason: invalid class name */
    public class Cdo extends ZG {
        public Cdo() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            boolean isEmpty = TextUtils.isEmpty(editable);
            ChipTextInputComboView chipTextInputComboView = ChipTextInputComboView.this;
            if (isEmpty) {
                chipTextInputComboView.f11727do.setText(ChipTextInputComboView.m6018do(chipTextInputComboView, "00"));
                return;
            }
            String m6018do = ChipTextInputComboView.m6018do(chipTextInputComboView, editable);
            Chip chip = chipTextInputComboView.f11727do;
            if (TextUtils.isEmpty(m6018do)) {
                m6018do = ChipTextInputComboView.m6018do(chipTextInputComboView, "00");
            }
            chip.setText(m6018do);
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m6018do(ChipTextInputComboView chipTextInputComboView, CharSequence charSequence) {
        try {
            return String.format(chipTextInputComboView.getResources().getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f11727do.isChecked();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        LocaleList locales;
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 24) {
            locales = getContext().getResources().getConfiguration().getLocales();
            this.f11726do.setImeHintLocales(locales);
        }
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        Chip chip = this.f11727do;
        chip.setChecked(z);
        int i = z ? 0 : 4;
        EditText editText = this.f11726do;
        editText.setVisibility(i);
        chip.setVisibility(z ? 8 : 0);
        if (isChecked()) {
            editText.requestFocus();
            editText.post(new RunnableC3620rL(editText));
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f11727do.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public final void setTag(int i, Object obj) {
        this.f11727do.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        this.f11727do.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LocaleList locales;
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.f11727do = chip;
        chip.f10802do = "android.view.View";
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        EditText editText = textInputLayout.f11639do;
        this.f11726do = editText;
        editText.setVisibility(4);
        editText.addTextChangedListener(new Cdo());
        if (Build.VERSION.SDK_INT >= 24) {
            locales = getContext().getResources().getConfiguration().getLocales();
            editText.setImeHintLocales(locales);
        }
        addView(chip);
        addView(textInputLayout);
        TextView textView = (TextView) findViewById(R.id.material_label);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        editText.setId(View.generateViewId());
        textView.setLabelFor(editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
