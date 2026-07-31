package kotlinx.datetime.internal.format.parser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface NumberConsumptionError {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ExpectedInt implements NumberConsumptionError {
        public static final ExpectedInt INSTANCE = new ExpectedInt();

        @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
        public final String errorMessage() {
            return "expected an Int value";
        }
    }

    String errorMessage();
}
