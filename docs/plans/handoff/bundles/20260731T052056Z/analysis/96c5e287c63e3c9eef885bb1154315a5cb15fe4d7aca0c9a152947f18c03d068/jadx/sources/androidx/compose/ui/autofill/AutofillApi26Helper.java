package androidx.compose.ui.autofill;

import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AutofillApi26Helper {
    public static AutofillValue getAutofillTextValue(String str) {
        if (str.length() >= 5000) {
            str = (Character.isHighSurrogate(str.charAt(4999)) && Character.isLowSurrogate(str.charAt(5000))) ? StringsKt.take(4999, str) : StringsKt.take(5000, str);
        }
        return AutofillValue.forText(str);
    }

    public static AutofillValue getAutofillToggleValue(boolean z) {
        return AutofillValue.forToggle(z);
    }

    public static void setAutofillHints(ViewStructure viewStructure, String[] strArr) {
        viewStructure.setAutofillHints(strArr);
    }

    public static void setAutofillId(ViewStructure viewStructure, AutofillId autofillId, int i) {
        viewStructure.setAutofillId(autofillId, i);
    }

    public static void setAutofillType(ViewStructure viewStructure, int i) {
        viewStructure.setAutofillType(i);
    }

    public static void setAutofillValue(ViewStructure viewStructure, AutofillValue autofillValue) {
        viewStructure.setAutofillValue(autofillValue);
    }

    public static void setDataIsSensitive(ViewStructure viewStructure, boolean z) {
        viewStructure.setDataIsSensitive(z);
    }

    public static void setInputType(ViewStructure viewStructure) {
        viewStructure.setInputType(129);
    }
}
