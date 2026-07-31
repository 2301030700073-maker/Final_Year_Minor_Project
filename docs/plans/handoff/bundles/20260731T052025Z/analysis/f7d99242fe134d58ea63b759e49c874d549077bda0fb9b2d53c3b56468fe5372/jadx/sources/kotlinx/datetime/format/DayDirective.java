package kotlinx.datetime.format;

import kotlinx.datetime.internal.format.UnsignedIntFieldFormatDirective;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DayDirective extends UnsignedIntFieldFormatDirective {
    public final Padding padding;

    public DayDirective() {
        super(DateFields.day, 2, null);
        this.padding = Padding.ZERO;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DayDirective) {
            return this.padding == ((DayDirective) obj).padding;
        }
        return false;
    }

    public final int hashCode() {
        return this.padding.hashCode();
    }
}
