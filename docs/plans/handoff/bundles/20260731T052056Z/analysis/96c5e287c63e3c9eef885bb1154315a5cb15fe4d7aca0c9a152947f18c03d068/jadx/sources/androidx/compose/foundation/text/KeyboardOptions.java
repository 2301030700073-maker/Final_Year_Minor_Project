package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KeyboardOptions {
    public static final KeyboardOptions Default = new KeyboardOptions(0, 127);
    public final int imeAction;
    public final int keyboardType;

    public KeyboardOptions(int i, int i2) {
        i = (i2 & 4) != 0 ? 0 : i;
        int i3 = (i2 & 8) != 0 ? -1 : 4;
        this.keyboardType = i;
        this.imeAction = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardOptions)) {
            return false;
        }
        KeyboardOptions keyboardOptions = (KeyboardOptions) obj;
        return this.keyboardType == keyboardOptions.keyboardType && this.imeAction == keyboardOptions.imeAction;
    }

    public final int hashCode() {
        return (((((-31) * 31) + this.keyboardType) * 31) + this.imeAction) * 29791;
    }

    public final String toString() {
        return "KeyboardOptions(capitalization=" + ((Object) "Unspecified") + ", autoCorrectEnabled=null, keyboardType=" + ((Object) KeyboardType.m658toStringimpl(this.keyboardType)) + ", imeAction=" + ((Object) ImeAction.m657toStringimpl(this.imeAction)) + ", platformImeOptions=nullshowKeyboardOnFocus=null, hintLocales=null)";
    }
}
