package kotlinx.datetime.format;

import kotlinx.datetime.internal.format.UnsignedIntFieldFormatDirective;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtcOffsetMinuteOfHourDirective extends UnsignedIntFieldFormatDirective {
    public final Padding padding;

    public UtcOffsetMinuteOfHourDirective(Padding padding) {
        super(OffsetFields.minutesOfHour, padding == Padding.ZERO ? 2 : 1, padding == Padding.SPACE ? 2 : null);
        this.padding = padding;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UtcOffsetMinuteOfHourDirective) {
            return this.padding == ((UtcOffsetMinuteOfHourDirective) obj).padding;
        }
        return false;
    }

    public final int hashCode() {
        return this.padding.hashCode();
    }
}
