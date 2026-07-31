package kotlinx.datetime.internal.format;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlinx.datetime.format.OffsetFields$sign$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnsignedFieldSpec extends AbstractFieldSpec {
    public final PropertyAccessor accessor;
    public final Integer defaultValue;
    public final int maxDigits;
    public final String name;
    public final OffsetFields$sign$1 sign;

    public UnsignedFieldSpec(PropertyAccessor propertyAccessor, int i, OffsetFields$sign$1 offsetFields$sign$1, int i2) {
        int i3;
        String str = propertyAccessor.name;
        Integer num = (i2 & 16) != 0 ? null : 0;
        offsetFields$sign$1 = (i2 & 32) != 0 ? null : offsetFields$sign$1;
        str.getClass();
        this.accessor = propertyAccessor;
        this.name = str;
        this.defaultValue = num;
        this.sign = offsetFields$sign$1;
        if (i < 10) {
            i3 = 1;
        } else if (i < 100) {
            i3 = 2;
        } else {
            if (i >= 1000) {
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "Max value ", " is too large"));
                throw null;
            }
            i3 = 3;
        }
        this.maxDigits = i3;
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
        return this.sign;
    }
}
