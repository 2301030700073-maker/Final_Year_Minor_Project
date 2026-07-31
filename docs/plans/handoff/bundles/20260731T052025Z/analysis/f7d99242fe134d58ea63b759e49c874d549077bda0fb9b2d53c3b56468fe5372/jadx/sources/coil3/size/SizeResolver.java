package coil3.size;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SizeResolver {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final SizeResolver ORIGINAL = SizeResolverKt.SizeResolver(Size.ORIGINAL);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    Object size(Continuation continuation);
}
