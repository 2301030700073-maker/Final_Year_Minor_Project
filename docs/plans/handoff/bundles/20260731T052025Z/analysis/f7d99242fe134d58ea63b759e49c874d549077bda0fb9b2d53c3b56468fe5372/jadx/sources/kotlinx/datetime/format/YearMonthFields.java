package kotlinx.datetime.format;

import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.UnsignedFieldSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class YearMonthFields {
    public static final GenericFieldSpec year = new GenericFieldSpec(new PropertyAccessor(YearMonthFields$year$1.INSTANCE), null, 14);
    public static final UnsignedFieldSpec month = new UnsignedFieldSpec(new PropertyAccessor(YearMonthFields$month$1.INSTANCE), 12, null, 56);
}
