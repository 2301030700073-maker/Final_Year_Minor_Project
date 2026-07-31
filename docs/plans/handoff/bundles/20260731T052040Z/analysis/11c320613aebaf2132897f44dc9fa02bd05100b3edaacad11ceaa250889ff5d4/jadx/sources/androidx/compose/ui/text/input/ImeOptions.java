package androidx.compose.ui.text.input;

import androidx.compose.ui.text.intl.LocaleList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImeOptions {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final boolean autoCorrect;
    public final LocaleList hintLocales;
    public final int imeAction;
    public final int keyboardType;

    static {
        new ImeOptions();
    }

    public ImeOptions() {
        LocaleList localeList = LocaleList.Empty;
        this.autoCorrect = true;
        this.keyboardType = 1;
        this.imeAction = 1;
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
        return this.autoCorrect == imeOptions.autoCorrect && this.keyboardType == imeOptions.keyboardType && this.imeAction == imeOptions.imeAction && Intrinsics.areEqual(this.hintLocales, imeOptions.hintLocales);
    }

    public final int hashCode() {
        return this.hintLocales.localeList.hashCode() + ((((((1188757 + (this.autoCorrect ? 1231 : 1237)) * 31) + this.keyboardType) * 31) + this.imeAction) * 961);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImeOptions(singleLine=false, capitalization=");
        String str = "None";
        sb.append((Object) "None");
        sb.append(", autoCorrect=");
        sb.append(this.autoCorrect);
        sb.append(", keyboardType=");
        int i = this.keyboardType;
        sb.append((Object) (i == 0 ? "Unspecified" : i == 1 ? "Text" : i == 2 ? "Ascii" : i == 3 ? "Number" : i == 4 ? "Phone" : i == 5 ? "Uri" : i == 6 ? "Email" : i == 7 ? "Password" : i == 8 ? "NumberPassword" : i == 9 ? "Decimal" : "Invalid"));
        sb.append(", imeAction=");
        int i2 = this.imeAction;
        if (i2 == -1) {
            str = "Unspecified";
        } else if (i2 != 0) {
            str = i2 == 1 ? "Default" : i2 == 2 ? "Go" : i2 == 3 ? "Search" : i2 == 4 ? "Send" : i2 == 5 ? "Previous" : i2 == 6 ? "Next" : i2 == 7 ? "Done" : "Invalid";
        }
        sb.append((Object) str);
        sb.append(", platformImeOptions=null, hintLocales=");
        sb.append(this.hintLocales);
        sb.append(')');
        return sb.toString();
    }
}
