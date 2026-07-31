package net.thunderbird.core.android.account;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AccountDefaultsProvider {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: net.thunderbird.core.android.account.AccountDefaultsProvider$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static final /* synthetic */ int $r8$clinit = 0;

        static {
            Companion companion = AccountDefaultsProvider.Companion;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final MessageFormat DEFAULT_MESSAGE_FORMAT = MessageFormat.HTML;
        public static final QuoteStyle DEFAULT_QUOTE_STYLE = QuoteStyle.PREFIX;
        public static final SortType DEFAULT_SORT_TYPE = SortType.SORT_DATE;

        public static MessageFormat getDEFAULT_MESSAGE_FORMAT() {
            return DEFAULT_MESSAGE_FORMAT;
        }

        public static QuoteStyle getDEFAULT_QUOTE_STYLE() {
            return DEFAULT_QUOTE_STYLE;
        }
    }
}
