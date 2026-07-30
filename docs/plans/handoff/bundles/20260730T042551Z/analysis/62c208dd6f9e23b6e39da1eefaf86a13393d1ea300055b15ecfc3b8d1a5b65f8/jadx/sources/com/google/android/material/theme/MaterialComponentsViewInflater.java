package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import com.google.android.material.textview.MaterialTextView;
import defpackage.W1;

/* loaded from: classes3.dex */
public class MaterialComponentsViewInflater extends W1 {
    @Override // defpackage.W1
    /* renamed from: do */
    public final AppCompatAutoCompleteTextView mo2684do(Context context, AttributeSet attributeSet) {
        return new MaterialAutoCompleteTextView(context, attributeSet);
    }

    @Override // defpackage.W1
    /* renamed from: for */
    public final AppCompatCheckBox mo2686for(Context context, AttributeSet attributeSet) {
        return new MaterialCheckBox(context, attributeSet);
    }

    @Override // defpackage.W1
    /* renamed from: if */
    public final AppCompatButton mo2687if(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // defpackage.W1
    /* renamed from: new */
    public final AppCompatRadioButton mo2688new(Context context, AttributeSet attributeSet) {
        return new MaterialRadioButton(context, attributeSet);
    }

    @Override // defpackage.W1
    /* renamed from: try */
    public final AppCompatTextView mo2689try(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }
}
