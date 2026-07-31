package kotlinx.datetime.format;

import kotlin.SynchronizedLazyImpl;
import kotlinx.datetime.UtcOffsetJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class UtcOffsetFormatKt {
    public static final SynchronizedLazyImpl ISO_OFFSET$delegate = new SynchronizedLazyImpl(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(11));
    public static final SynchronizedLazyImpl ISO_OFFSET_BASIC$delegate = new SynchronizedLazyImpl(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(12));
    public static final SynchronizedLazyImpl FOUR_DIGIT_OFFSET$delegate = new SynchronizedLazyImpl(new UtcOffsetJvmKt$$ExternalSyntheticLambda0(13));
    public static final IncompleteUtcOffset emptyIncompleteUtcOffset = new IncompleteUtcOffset(null, null, null, null);
}
