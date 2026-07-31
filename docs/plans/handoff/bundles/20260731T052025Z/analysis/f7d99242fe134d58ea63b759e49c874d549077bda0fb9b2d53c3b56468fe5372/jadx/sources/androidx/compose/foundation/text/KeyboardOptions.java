package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.intl.LocaleList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class KeyboardOptions {
    public static final KeyboardOptions Default = new KeyboardOptions(0, 127);
    public final Boolean autoCorrectEnabled;
    public final int keyboardType;

    public KeyboardOptions(int i, int i2) {
        Boolean bool = (i2 & 2) != 0 ? null : Boolean.FALSE;
        i = (i2 & 4) != 0 ? 0 : i;
        this.autoCorrectEnabled = bool;
        this.keyboardType = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardOptions)) {
            return false;
        }
        KeyboardOptions keyboardOptions = (KeyboardOptions) obj;
        return Intrinsics.areEqual(this.autoCorrectEnabled, keyboardOptions.autoCorrectEnabled) && this.keyboardType == keyboardOptions.keyboardType;
    }

    public final int hashCode() {
        return ((((((-31) + (this.autoCorrectEnabled != null ? r0.hashCode() : 0)) * 31) + this.keyboardType) * 31) - 1) * 29791;
    }

    public final ImeOptions toImeOptions$foundation(boolean z) {
        Boolean bool = this.autoCorrectEnabled;
        boolean booleanValue = bool != null ? bool.booleanValue() : true;
        int i = this.keyboardType;
        KeyboardType keyboardType = new KeyboardType(i);
        if (i == 0) {
            keyboardType = null;
        }
        return new ImeOptions(z, 0, booleanValue, keyboardType != null ? keyboardType.value : 1, 1, LocaleList.Empty);
    }

    public final String toString() {
        return "KeyboardOptions(capitalization=" + ((Object) "Unspecified") + ", autoCorrectEnabled=" + this.autoCorrectEnabled + ", keyboardType=" + ((Object) KeyboardType.m713toStringimpl(this.keyboardType)) + ", imeAction=" + ((Object) "Unspecified") + ", platformImeOptions=nullshowKeyboardOnFocus=null, hintLocales=null)";
    }
}
