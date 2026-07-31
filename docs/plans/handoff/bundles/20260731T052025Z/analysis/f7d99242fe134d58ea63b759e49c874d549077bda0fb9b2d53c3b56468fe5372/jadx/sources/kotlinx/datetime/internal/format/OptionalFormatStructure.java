package kotlinx.datetime.internal.format;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Pair;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.uuid.UuidKt;
import kotlinx.datetime.internal.format.formatter.ConditionalFormatter;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.UnconditionalModification;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OptionalFormatStructure implements NonConcatenatedFormatStructure {
    public final ArrayList fields;
    public final ConcatenatedFormatStructure format;
    public final String onZero;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class PropertyWithDefault {
        public final PropertyAccessor accessor;
        public final Object defaultValue;

        public PropertyWithDefault(PropertyAccessor propertyAccessor, Object obj) {
            this.accessor = propertyAccessor;
            this.defaultValue = obj;
        }
    }

    public OptionalFormatStructure(String str, ConcatenatedFormatStructure concatenatedFormatStructure) {
        this.onZero = str;
        this.format = concatenatedFormatStructure;
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        Jsoup.basicFormats$lambda$2$rec(createListBuilder, concatenatedFormatStructure);
        ListBuilder build = IntOffsetKt.build(createListBuilder);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(build, 10));
        ListIterator listIterator = build.listIterator(0);
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                break;
            } else {
                arrayList.add(((FieldFormatDirective) itr.next()).getField());
            }
        }
        List<AbstractFieldSpec> list = CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList));
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (AbstractFieldSpec abstractFieldSpec : list) {
            abstractFieldSpec.getClass();
            Object defaultValue = abstractFieldSpec.getDefaultValue();
            if (defaultValue == null) {
                DBUtil$$ExternalSyntheticBUOutline0.m(abstractFieldSpec.getName(), "' does not define a default value", "The field '");
                throw null;
            }
            arrayList2.add(new PropertyWithDefault(abstractFieldSpec.getAccessor(), defaultValue));
        }
        this.fields = arrayList2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof OptionalFormatStructure)) {
            return false;
        }
        OptionalFormatStructure optionalFormatStructure = (OptionalFormatStructure) obj;
        return this.onZero.equals(optionalFormatStructure.onZero) && this.format.equals(optionalFormatStructure.format);
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final FormatterStructure formatter() {
        FormatterStructure formatter = this.format.formatter();
        ArrayList arrayList = this.fields;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            PropertyWithDefault propertyWithDefault = (PropertyWithDefault) it.next();
            arrayList2.add(new ComparisonPredicate(propertyWithDefault.defaultValue, new InvalidationTracker$implementation$1(1, propertyWithDefault.accessor, PropertyAccessor.class, "getter", "getter(Ljava/lang/Object;)Ljava/lang/Object;", 0, 16)));
        }
        boolean isEmpty = arrayList2.isEmpty();
        Predicate predicate = Truth.INSTANCE;
        Predicate conjunctionPredicate = isEmpty ? predicate : arrayList2.size() == 1 ? (Predicate) CollectionsKt.single(arrayList2) : new ConjunctionPredicate(arrayList2);
        boolean z = conjunctionPredicate instanceof Truth;
        String str = this.onZero;
        return z ? new ConditionalFormatter(str) : new ConditionalFormatter(0, IntOffsetKt.listOf((Object[]) new Pair[]{new Pair(new InvalidationTracker$implementation$1(1, conjunctionPredicate, Predicate.class, "test", "test(Ljava/lang/Object;)Z", 0, 17), new ConditionalFormatter(str)), new Pair(new InvalidationTracker$implementation$1(1, predicate, Truth.class, "test", "test(Ljava/lang/Object;)Z", 0, 18), formatter)}));
    }

    public final int hashCode() {
        return this.format.formats.hashCode() + (this.onZero.hashCode() * 31);
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final ParserStructure parser() {
        ParserStructure parser = this.format.parser();
        ParserStructure parser2 = new ConstantFormatStructure(this.onZero).parser();
        boolean isEmpty = this.fields.isEmpty();
        EmptyList emptyList = EmptyList.INSTANCE;
        return new ParserStructure(emptyList, IntOffsetKt.listOf((Object[]) new ParserStructure[]{parser, UuidKt.concat(IntOffsetKt.listOf((Object[]) new ParserStructure[]{parser2, new ParserStructure(isEmpty ? emptyList : IntOffsetKt.listOf(new UnconditionalModification(new AbstractMap$$ExternalSyntheticLambda0(28, this))), emptyList)}))}));
    }

    public final String toString() {
        return "Optional(" + this.onZero + ", " + this.format + ')';
    }
}
