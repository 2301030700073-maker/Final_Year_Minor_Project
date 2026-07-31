package kotlinx.datetime.format;

import kotlinx.datetime.internal.format.UnsignedIntFieldFormatDirective;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MonthDirective extends UnsignedIntFieldFormatDirective {
    public final Padding padding;

    public MonthDirective() {
        super(YearMonthFields.month, 2, null);
        this.padding = Padding.ZERO;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MonthDirective) {
            return this.padding == ((MonthDirective) obj).padding;
        }
        return false;
    }

    public final int hashCode() {
        return this.padding.hashCode();
    }
}
