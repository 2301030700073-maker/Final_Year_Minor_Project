package kotlinx.serialization;

import androidx.compose.ui.unit.IntOffsetKt;
import coil3.size.ViewSizeResolver;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MissingFieldException extends SerializationException {
    public final List missingFields;
    public final String serialName;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MissingFieldException(String str, String str2) {
        this(ViewSizeResolver.CC.m("Field '", str, "' is required for type with serial name '", str2, "', but it was missing"), null, IntOffsetKt.listOf(str), str2);
        str2.getClass();
    }

    public MissingFieldException(String str, MissingFieldException missingFieldException, List list, String str2) {
        super(str, missingFieldException);
        this.missingFields = list;
        this.serialName = str2;
    }
}
