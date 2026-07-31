package androidx.compose.ui.text.input;

import androidx.compose.ui.text.intl.LocaleList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImeOptions {
    public static final ImeOptions Default = new ImeOptions(false, 0, true, 1, 1, LocaleList.Empty);
    public final boolean autoCorrect;
    public final int capitalization;
    public final LocaleList hintLocales;
    public final int imeAction;
    public final int keyboardType;
    public final boolean singleLine;

    public ImeOptions(boolean z, int i, boolean z2, int i2, int i3, LocaleList localeList) {
        this.singleLine = z;
        this.capitalization = i;
        this.autoCorrect = z2;
        this.keyboardType = i2;
        this.imeAction = i3;
        this.hintLocales = localeList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImeOptions)) {
            return false;
        }
        ImeOptions imeOptions = (ImeOptions) obj;
        return this.singleLine == imeOptions.singleLine && this.capitalization == imeOptions.capitalization && this.autoCorrect == imeOptions.autoCorrect && this.keyboardType == imeOptions.keyboardType && this.imeAction == imeOptions.imeAction && Intrinsics.areEqual(this.hintLocales, imeOptions.hintLocales);
    }

    public final int hashCode() {
        return this.hintLocales.localeList.hashCode() + ((((((((((this.singleLine ? 1231 : 1237) * 31) + this.capitalization) * 31) + (this.autoCorrect ? 1231 : 1237)) * 31) + this.keyboardType) * 31) + this.imeAction) * 961);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImeOptions(singleLine=");
        sb.append(this.singleLine);
        sb.append(", capitalization=");
        int i = this.capitalization;
        sb.append((Object) (i == -1 ? "Unspecified" : i == 0 ? "None" : i == 1 ? "Characters" : i == 2 ? "Words" : i == 3 ? "Sentences" : "Invalid"));
        sb.append(", autoCorrect=");
        sb.append(this.autoCorrect);
        sb.append(", keyboardType=");
        sb.append((Object) KeyboardType.m658toStringimpl(this.keyboardType));
        sb.append(", imeAction=");
        sb.append((Object) ImeAction.m657toStringimpl(this.imeAction));
        sb.append(", platformImeOptions=null, hintLocales=");
        sb.append(this.hintLocales);
        sb.append(')');
        return sb.toString();
    }
}
