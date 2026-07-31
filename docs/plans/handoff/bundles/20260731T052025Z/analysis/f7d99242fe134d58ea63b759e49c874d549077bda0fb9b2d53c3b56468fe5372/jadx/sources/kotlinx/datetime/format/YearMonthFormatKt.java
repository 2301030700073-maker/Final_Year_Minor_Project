package kotlinx.datetime.format;

import coil3.size.ViewSizeResolver;
import kotlin.SynchronizedLazyImpl;
import kotlin.time.InstantFormatException;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class YearMonthFormatKt {
    public static final IncompleteYearMonth emptyIncompleteYearMonth = new IncompleteYearMonth(null, null);
    public static final SynchronizedLazyImpl ISO_YEAR_MONTH$delegate = new SynchronizedLazyImpl(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(14));

    public static final void requireParsedField(Object obj, String str) {
        if (obj == null) {
            throw new InstantFormatException(ViewSizeResolver.CC.m("Can not create a ", str, " from the given input: the field ", str, " is missing"));
        }
    }
}
