package kotlinx.datetime.internal.format;

import kotlinx.datetime.format.OffsetFields$sign$1;
import kotlinx.datetime.internal.DecimalFraction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GenericFieldSpec extends AbstractFieldSpec {
    public final PropertyAccessor accessor;
    public final Object defaultValue;
    public final String name;

    public GenericFieldSpec(PropertyAccessor propertyAccessor, DecimalFraction decimalFraction, int i) {
        String str = propertyAccessor.name;
        decimalFraction = (i & 4) != 0 ? null : decimalFraction;
        str.getClass();
        this.accessor = propertyAccessor;
        this.name = str;
        this.defaultValue = decimalFraction;
    }

    @Override // kotlinx.datetime.internal.format.AbstractFieldSpec
    public final PropertyAccessor getAccessor() {
        return this.accessor;
    }

    @Override // kotlinx.datetime.internal.format.AbstractFieldSpec
    public final Object getDefaultValue() {
        return this.defaultValue;
    }

    @Override // kotlinx.datetime.internal.format.AbstractFieldSpec
    public final String getName() {
        return this.name;
    }

    @Override // kotlinx.datetime.internal.format.AbstractFieldSpec
    public final OffsetFields$sign$1 getSign() {
        return null;
    }
}
