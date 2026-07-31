package androidx.compose.ui.autofill;

import android.view.autofill.AutofillValue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
