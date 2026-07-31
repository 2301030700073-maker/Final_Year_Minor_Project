package kotlinx.datetime.format;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.InvalidationTracker$implementation$1;
import java.util.ArrayList;
import kotlin.collections.EmptyList;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.datetime.internal.format.AbstractFieldSpec;
import kotlinx.datetime.internal.format.FieldFormatDirective;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.formatter.SignedIntFormatterStructure;
import kotlinx.datetime.internal.format.formatter.SpacePaddedFormatter;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.ParserOperation;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.PlainStringParserOperation;
import kotlinx.datetime.internal.format.parser.UnsignedIntConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class YearDirective implements FieldFormatDirective {
    public final AbstractFieldSpec field;
    public final Integer minDigits;
    public final Integer outputPlusOnExceededWidth;
    public final Padding padding;
    public final Integer spacePadding;

    public YearDirective() {
        GenericFieldSpec genericFieldSpec = YearMonthFields.year;
        genericFieldSpec.getClass();
        this.field = genericFieldSpec;
        this.minDigits = 4;
        this.spacePadding = null;
        this.outputPlusOnExceededWidth = 4;
        this.padding = Padding.ZERO;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof YearDirective) {
            return this.padding == ((YearDirective) obj).padding;
        }
        return false;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final FormatterStructure formatter() {
        InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = new InvalidationTracker$implementation$1(1, this.field.getAccessor(), PropertyAccessor.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0, 19);
        Integer num = this.minDigits;
        SignedIntFormatterStructure signedIntFormatterStructure = new SignedIntFormatterStructure(invalidationTracker$implementation$1, num != null ? num.intValue() : 0, this.outputPlusOnExceededWidth);
        Integer num2 = this.spacePadding;
        return num2 != null ? new SpacePaddedFormatter(signedIntFormatterStructure, num2.intValue()) : signedIntFormatterStructure;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final AbstractFieldSpec getField() {
        return this.field;
    }

    public final int hashCode() {
        return (this.padding.hashCode() * 31) + 1237;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final ParserStructure parser() {
        AbstractFieldSpec abstractFieldSpec = this.field;
        PropertyAccessor accessor = abstractFieldSpec.getAccessor();
        String name = abstractFieldSpec.getName();
        accessor.getClass();
        name.getClass();
        Integer num = this.minDigits;
        Integer num2 = this.spacePadding;
        ArrayList mutableListOf = IntOffsetKt.mutableListOf(AtomicFU.spaceAndZeroPaddedUnsignedInt(num, null, num2, accessor, name, true));
        Integer num3 = this.outputPlusOnExceededWidth;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (num3 != null) {
            mutableListOf.add(AtomicFU.spaceAndZeroPaddedUnsignedInt(num, num3, num2, accessor, name, false));
            mutableListOf.add(new ParserStructure(IntOffsetKt.listOf((Object[]) new ParserOperation[]{new PlainStringParserOperation("+"), new NumberSpanParserOperation(IntOffsetKt.listOf(new UnsignedIntConsumer(Integer.valueOf(num3.intValue() + 1), null, accessor, name, false)))}), emptyList));
        } else {
            mutableListOf.add(AtomicFU.spaceAndZeroPaddedUnsignedInt(num, null, num2, accessor, name, false));
        }
        return new ParserStructure(emptyList, mutableListOf);
    }
}
