package net.thunderbird.feature.mail.message.list.domain;

import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SetAccountFolderOutcome$Error {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AccountNotFound implements SetAccountFolderOutcome$Error {
        public static final AccountNotFound INSTANCE = new AccountNotFound();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof AccountNotFound);
        }

        public final int hashCode() {
            return 692658179;
        }

        public final String toString() {
            return "AccountNotFound";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UnhandledError implements SetAccountFolderOutcome$Error {
        public final MessagingException throwable;

        public UnhandledError(MessagingException messagingException) {
            this.throwable = messagingException;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnhandledError) && this.throwable.equals(((UnhandledError) obj).throwable);
        }

        public final int hashCode() {
            return this.throwable.hashCode();
        }

        public final String toString() {
            return "UnhandledError(throwable=" + this.throwable + ")";
        }
    }
}
