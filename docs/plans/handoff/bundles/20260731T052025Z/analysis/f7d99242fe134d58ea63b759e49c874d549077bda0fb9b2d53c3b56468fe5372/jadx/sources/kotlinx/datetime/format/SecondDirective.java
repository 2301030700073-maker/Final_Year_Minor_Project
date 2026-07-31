package kotlinx.datetime.format;

import kotlinx.datetime.internal.format.UnsignedFieldSpec;
import kotlinx.datetime.internal.format.UnsignedIntFieldFormatDirective;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SecondDirective extends UnsignedIntFieldFormatDirective {
    public final Padding padding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecondDirective(Padding padding) {
        super(TimeFields.second, padding == Padding.ZERO ? 2 : 1, padding == Padding.SPACE ? 2 : null);
        padding.getClass();
        UnsignedFieldSpec unsignedFieldSpec = TimeFields.hour;
        this.padding = padding;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SecondDirective) {
            return this.padding == ((SecondDirective) obj).padding;
        }
        return false;
    }

    public final int hashCode() {
        return this.padding.hashCode();
    }
}
