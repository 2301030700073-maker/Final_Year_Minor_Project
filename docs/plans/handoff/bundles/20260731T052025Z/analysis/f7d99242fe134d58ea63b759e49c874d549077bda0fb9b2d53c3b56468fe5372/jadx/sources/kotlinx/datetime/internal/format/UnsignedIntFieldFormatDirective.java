package kotlinx.datetime.internal.format;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.InvalidationTracker$implementation$1;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.formatter.SpacePaddedFormatter;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class UnsignedIntFieldFormatDirective implements FieldFormatDirective {
    public final UnsignedFieldSpec field;
    public final int maxDigits;
    public final int minDigits;
    public final Integer spacePadding;

    public UnsignedIntFieldFormatDirective(UnsignedFieldSpec unsignedFieldSpec, int i, Integer num) {
        unsignedFieldSpec.getClass();
        this.field = unsignedFieldSpec;
        this.minDigits = i;
        this.spacePadding = num;
        int i2 = unsignedFieldSpec.maxDigits;
        this.maxDigits = i2;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "The minimum number of digits (", ") is negative"));
            throw null;
        }
        if (i2 < i) {
            throw new IllegalArgumentException(("The maximum number of digits (" + i2 + ") is less than the minimum number of digits (" + i + ')').toString());
        }
        if (num == null || num.intValue() > i) {
            return;
        }
        throw new IllegalArgumentException(("The space padding (" + num + ") should be more than the minimum number of digits (" + i + ')').toString());
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final FormatterStructure formatter() {
        SpacePaddedFormatter spacePaddedFormatter = new SpacePaddedFormatter(new InvalidationTracker$implementation$1(1, this.field.accessor, PropertyAccessor.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0, 20), this.minDigits);
        Integer num = this.spacePadding;
        return num != null ? new SpacePaddedFormatter(spacePaddedFormatter, num.intValue()) : spacePaddedFormatter;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final /* bridge */ /* synthetic */ AbstractFieldSpec getField() {
        return this.field;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final ParserStructure parser() {
        Integer valueOf = Integer.valueOf(this.minDigits);
        Integer valueOf2 = Integer.valueOf(this.maxDigits);
        UnsignedFieldSpec unsignedFieldSpec = this.field;
        return AtomicFU.spaceAndZeroPaddedUnsignedInt(valueOf, valueOf2, this.spacePadding, unsignedFieldSpec.accessor, unsignedFieldSpec.name, false);
    }
}
