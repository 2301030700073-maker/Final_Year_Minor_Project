package kotlinx.datetime.internal.format;

import java.util.List;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CachedFormatStructure extends ConcatenatedFormatStructure {
    public final FormatterStructure cachedFormatter;
    public final ParserStructure cachedParser;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedFormatStructure(List list) {
        super(list);
        list.getClass();
        this.cachedFormatter = super.formatter();
        this.cachedParser = super.parser();
    }

    @Override // kotlinx.datetime.internal.format.ConcatenatedFormatStructure, kotlinx.datetime.internal.format.FormatStructure
    public final FormatterStructure formatter() {
        return this.cachedFormatter;
    }

    @Override // kotlinx.datetime.internal.format.ConcatenatedFormatStructure, kotlinx.datetime.internal.format.FormatStructure
    public final ParserStructure parser() {
        return this.cachedParser;
    }
}
