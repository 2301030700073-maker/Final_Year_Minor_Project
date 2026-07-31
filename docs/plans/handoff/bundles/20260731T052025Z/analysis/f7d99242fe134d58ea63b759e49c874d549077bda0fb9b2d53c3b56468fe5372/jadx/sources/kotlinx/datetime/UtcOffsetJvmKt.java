package kotlinx.datetime;

import j$.time.DateTimeException;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeFormatter;
import kotlin.SynchronizedLazyImpl;
import kotlin.time.InstantFormatException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class UtcOffsetJvmKt {
    public static final SynchronizedLazyImpl isoFormat$delegate = new SynchronizedLazyImpl(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(0));
    public static final SynchronizedLazyImpl isoBasicFormat$delegate = new SynchronizedLazyImpl(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(4));
    public static final SynchronizedLazyImpl fourDigitsFormat$delegate = new SynchronizedLazyImpl(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(5));

    public static final UtcOffset access$parseWithFormat(String str, DateTimeFormatter dateTimeFormatter) {
        try {
            return new UtcOffset((ZoneOffset) dateTimeFormatter.parse(str, new UtcOffsetJvmKt$$ExternalSyntheticLambda3()));
        } catch (DateTimeException e) {
            throw new InstantFormatException(e);
        }
    }
}
