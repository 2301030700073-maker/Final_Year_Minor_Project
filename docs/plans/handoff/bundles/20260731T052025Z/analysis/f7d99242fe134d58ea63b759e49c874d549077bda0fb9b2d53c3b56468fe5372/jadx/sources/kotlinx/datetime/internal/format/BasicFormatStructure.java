package kotlinx.datetime.internal.format;

import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BasicFormatStructure implements NonConcatenatedFormatStructure {
    public final FieldFormatDirective directive;

    public BasicFormatStructure(FieldFormatDirective fieldFormatDirective) {
        this.directive = fieldFormatDirective;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof BasicFormatStructure) {
            return this.directive.equals(((BasicFormatStructure) obj).directive);
        }
        return false;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final FormatterStructure formatter() {
        return this.directive.formatter();
    }

    public final int hashCode() {
        return this.directive.hashCode();
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final ParserStructure parser() {
        return this.directive.parser();
    }

    public final String toString() {
        return "BasicFormatStructure(" + this.directive + ')';
    }
}
