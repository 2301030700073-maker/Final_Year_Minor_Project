package com.takisoft.preferencex;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.fsck.k9.R;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Deprecated
/* loaded from: classes.dex */
public class AutoSummaryEditTextPreference extends EditTextPreference {
    public final int inputType;
    public final String passwordSubstitute;
    public final int passwordSubstituteLength;
    public CharSequence summary;
    public final CharSequence summaryHasText;

    public AutoSummaryEditTextPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.inputType = 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AutoSummaryEditTextPreference, i, 0);
        this.summaryHasText = obtainStyledAttributes.getText(0);
        String string = obtainStyledAttributes.getString(1);
        this.passwordSubstitute = string;
        this.passwordSubstituteLength = obtainStyledAttributes.getInt(2, 5);
        if (string == null) {
            this.passwordSubstitute = "•";
        }
        obtainStyledAttributes.recycle();
        this.summary = super.getSummary();
        for (int i3 = 0; i3 < attributeSet.getAttributeCount(); i3++) {
            if (16843296 == attributeSet.getAttributeNameResource(i3)) {
                this.inputType = attributeSet.getAttributeIntValue(i3, 1);
                return;
            }
        }
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        String str = this.mText;
        if (TextUtils.isEmpty(str)) {
            return this.summary;
        }
        int i = this.inputType;
        if ((i & 16) == 16 || (i & 128) == 128 || (i & 224) == 224) {
            int i2 = this.passwordSubstituteLength;
            if (i2 <= 0) {
                i2 = str.length();
            }
            str = new String(new char[i2]).replaceAll(WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR, this.passwordSubstitute);
        }
        CharSequence charSequence = this.summaryHasText;
        return charSequence != null ? String.format(charSequence.toString(), str) : str;
    }

    @Override // androidx.preference.Preference
    public final void setSummary(CharSequence charSequence) {
        super.setSummary(charSequence);
        if (charSequence == null && this.summary != null) {
            this.summary = null;
        } else {
            if (charSequence == null || charSequence.equals(this.summary)) {
                return;
            }
            this.summary = ((String) charSequence).toString();
        }
    }

    public AutoSummaryEditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextPreferenceStyle);
    }

    public AutoSummaryEditTextPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public AutoSummaryEditTextPreference(Context context) {
        this(context, null);
    }
}
