package kotlinx.datetime.internal.format;

import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda0;
import kotlin.uuid.UuidKt;
import kotlinx.datetime.format.OffsetFields$sign$1;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.formatter.SignedFormatter;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.SignParser;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SignedFormatStructure implements NonConcatenatedFormatStructure {
    public final Set fieldSigns;
    public final BasicFormatStructure format;

    public SignedFormatStructure(BasicFormatStructure basicFormatStructure) {
        this.format = basicFormatStructure;
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        Jsoup.basicFormats$lambda$2$rec(createListBuilder, basicFormatStructure);
        ListBuilder build = IntOffsetKt.build(createListBuilder);
        ArrayList arrayList = new ArrayList();
        ListIterator listIterator = build.listIterator(0);
        while (true) {
            ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
            if (!itr.hasNext()) {
                break;
            }
            OffsetFields$sign$1 sign = ((FieldFormatDirective) itr.next()).getField().getSign();
            if (sign != null) {
                arrayList.add(sign);
            }
        }
        Set set = CollectionsKt.toSet(arrayList);
        this.fieldSigns = set;
        if (set.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("Signed format must contain at least one field with a sign");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SignedFormatStructure) {
            return this.format.equals(((SignedFormatStructure) obj).format);
        }
        return false;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final FormatterStructure formatter() {
        return new SignedFormatter(this.format.directive.formatter(), new SignedFormatStructure$formatter$1(this));
    }

    public final int hashCode() {
        return (this.format.hashCode() * 31) + 1231;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final ParserStructure parser() {
        return UuidKt.concat(IntOffsetKt.listOf((Object[]) new ParserStructure[]{new ParserStructure(IntOffsetKt.listOf(new SignParser(new StringsKt__StringsKt$$ExternalSyntheticLambda0(3, this), "sign for " + this.fieldSigns)), EmptyList.INSTANCE), this.format.directive.parser()}));
    }

    public final String toString() {
        return "SignedFormatStructure(" + this.format + ')';
    }
}
