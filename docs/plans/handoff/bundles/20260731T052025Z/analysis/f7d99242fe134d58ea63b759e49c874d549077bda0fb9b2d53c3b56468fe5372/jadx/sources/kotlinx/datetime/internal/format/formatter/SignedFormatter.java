package kotlinx.datetime.internal.format.formatter;

import kotlinx.datetime.internal.format.SignedFormatStructure$formatter$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SignedFormatter implements FormatterStructure {
    public final SignedFormatStructure$formatter$1 allSubFormatsNegative;
    public final FormatterStructure formatter;

    public SignedFormatter(FormatterStructure formatterStructure, SignedFormatStructure$formatter$1 signedFormatStructure$formatter$1) {
        formatterStructure.getClass();
        this.formatter = formatterStructure;
        this.allSubFormatsNegative = signedFormatStructure$formatter$1;
    }

    @Override // kotlinx.datetime.internal.format.formatter.FormatterStructure
    public final void format(Object obj, StringBuilder sb, boolean z) {
        Character ch = (z || !((Boolean) this.allSubFormatsNegative.invoke(obj)).booleanValue()) ? '+' : '-';
        sb.append(ch.charValue());
        this.formatter.format(obj, sb, z || ch.charValue() == '-');
    }
}
