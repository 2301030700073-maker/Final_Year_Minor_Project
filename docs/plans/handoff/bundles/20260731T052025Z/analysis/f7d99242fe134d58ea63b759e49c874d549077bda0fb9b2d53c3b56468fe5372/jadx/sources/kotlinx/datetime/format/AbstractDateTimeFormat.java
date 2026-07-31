package kotlinx.datetime.format;

import kotlin.time.InstantFormatException;
import kotlinx.datetime.LocalDateTime;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;
import kotlinx.datetime.internal.format.parser.ParseException;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractDateTimeFormat {
    public final String format(LocalDateTime localDateTime) {
        StringBuilder sb = new StringBuilder();
        getActualFormat().cachedFormatter.format(intermediateFromValue(localDateTime), sb, false);
        return sb.toString();
    }

    public abstract CachedFormatStructure getActualFormat();

    public abstract Copyable getEmptyIntermediate();

    public abstract Copyable intermediateFromValue(LocalDateTime localDateTime);

    public final Object parse(String str) {
        String str2;
        try {
            ParserStructure parserStructure = getActualFormat().cachedParser;
            parserStructure.getClass();
            try {
                return valueFromIntermediate(NodeUtils.m1080matchimpl$default(parserStructure, str, getEmptyIntermediate()));
            } catch (IllegalArgumentException e) {
                String message = e.getMessage();
                if (message == null) {
                    str2 = "The value parsed from '" + ((Object) str) + "' is invalid";
                } else {
                    str2 = message + " (when parsing '" + ((Object) str) + "')";
                }
                throw new InstantFormatException(str2, e);
            }
        } catch (ParseException e2) {
            throw new InstantFormatException("Failed to parse value from '" + ((Object) str) + '\'', e2);
        }
    }

    public abstract Object valueFromIntermediate(Copyable copyable);
}
