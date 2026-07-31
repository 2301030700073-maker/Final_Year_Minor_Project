package kotlinx.datetime.internal.format;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AlternativesParsingFormatStructure implements NonConcatenatedFormatStructure {
    public final ArrayList formats;
    public final ConcatenatedFormatStructure mainFormat;

    public AlternativesParsingFormatStructure(ConcatenatedFormatStructure concatenatedFormatStructure, ArrayList arrayList) {
        this.mainFormat = concatenatedFormatStructure;
        this.formats = arrayList;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AlternativesParsingFormatStructure)) {
            return false;
        }
        AlternativesParsingFormatStructure alternativesParsingFormatStructure = (AlternativesParsingFormatStructure) obj;
        return this.mainFormat.equals(alternativesParsingFormatStructure.mainFormat) && this.formats.equals(alternativesParsingFormatStructure.formats);
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final FormatterStructure formatter() {
        return this.mainFormat.formatter();
    }

    public final int hashCode() {
        return this.formats.hashCode() + (this.mainFormat.formats.hashCode() * 31);
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final ParserStructure parser() {
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        createListBuilder.add(this.mainFormat.parser());
        Iterator it = this.formats.iterator();
        while (it.hasNext()) {
            createListBuilder.add(((FormatStructure) it.next()).parser());
        }
        return new ParserStructure(EmptyList.INSTANCE, IntOffsetKt.build(createListBuilder));
    }

    public final String toString() {
        return "AlternativesParsing(" + this.formats + ')';
    }
}
