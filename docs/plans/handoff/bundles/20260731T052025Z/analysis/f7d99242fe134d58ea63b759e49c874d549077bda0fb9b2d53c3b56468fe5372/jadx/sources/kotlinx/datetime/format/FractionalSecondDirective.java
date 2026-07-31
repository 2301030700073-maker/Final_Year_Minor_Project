package kotlinx.datetime.format;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.InvalidationTracker$implementation$1;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlinx.datetime.internal.format.AbstractFieldSpec;
import kotlinx.datetime.internal.format.FieldFormatDirective;
import kotlinx.datetime.internal.format.GenericFieldSpec;
import kotlinx.datetime.internal.format.PropertyAccessor;
import kotlinx.datetime.internal.format.formatter.DecimalFractionFormatterStructure;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.FractionPartConsumer;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FractionalSecondDirective implements FieldFormatDirective {
    public static final List NO_EXTRA_ZEROS = IntOffsetKt.listOf((Object[]) new Integer[]{0, 0, 0, 0, 0, 0, 0, 0, 0});
    public final AbstractFieldSpec field;
    public final int maxDigits;
    public final int maxDigits$1;
    public final int minDigits;
    public final int minDigits$1;
    public final List zerosToAdd;

    static {
        IntOffsetKt.listOf((Object[]) new Integer[]{2, 1, 0, 2, 1, 0, 2, 1, 0});
    }

    public FractionalSecondDirective() {
        List list = NO_EXTRA_ZEROS;
        list.getClass();
        GenericFieldSpec genericFieldSpec = TimeFields.fractionOfSecond;
        genericFieldSpec.getClass();
        this.field = genericFieldSpec;
        this.minDigits$1 = 1;
        this.maxDigits$1 = 9;
        this.zerosToAdd = list;
        this.minDigits = 1;
        this.maxDigits = 9;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FractionalSecondDirective)) {
            return false;
        }
        FractionalSecondDirective fractionalSecondDirective = (FractionalSecondDirective) obj;
        return this.minDigits == fractionalSecondDirective.minDigits && this.maxDigits == fractionalSecondDirective.maxDigits;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final FormatterStructure formatter() {
        return new DecimalFractionFormatterStructure(new InvalidationTracker$implementation$1(1, this.field.getAccessor(), PropertyAccessor.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0, 15), this.minDigits$1, this.maxDigits$1, this.zerosToAdd);
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final AbstractFieldSpec getField() {
        return this.field;
    }

    public final int hashCode() {
        return (this.minDigits * 31) + this.maxDigits;
    }

    @Override // kotlinx.datetime.internal.format.FieldFormatDirective
    public final ParserStructure parser() {
        AbstractFieldSpec abstractFieldSpec = this.field;
        return new ParserStructure(IntOffsetKt.listOf(new NumberSpanParserOperation(IntOffsetKt.listOf(new FractionPartConsumer(this.minDigits$1, this.maxDigits$1, abstractFieldSpec.getAccessor(), abstractFieldSpec.getName())))), EmptyList.INSTANCE);
    }
}
