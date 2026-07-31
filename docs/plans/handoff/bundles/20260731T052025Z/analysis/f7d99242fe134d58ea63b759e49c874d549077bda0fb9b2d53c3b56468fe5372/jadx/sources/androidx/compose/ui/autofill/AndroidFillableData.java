package androidx.compose.ui.autofill;

import android.view.autofill.AutofillValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidFillableData implements FillableData {
    public final AutofillValue autofillValue;

    public AndroidFillableData(AutofillValue autofillValue) {
        this.autofillValue = autofillValue;
    }

    public final Boolean getBooleanValue() {
        if (this.autofillValue.isToggle()) {
            return Boolean.valueOf(this.autofillValue.getToggleValue());
        }
        return null;
    }

    public final CharSequence getTextValue() {
        if (this.autofillValue.isText()) {
            return this.autofillValue.getTextValue();
        }
        return null;
    }
}
