package org.schabi.newpipe.extractor.exceptions;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AccountTerminatedException extends ContentNotAvailableException {
    private Reason reason;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Reason {
        public static final /* synthetic */ Reason[] $VALUES;
        public static final Reason UNKNOWN;
        public static final Reason VIOLATION;

        static {
            Reason reason = new Reason("UNKNOWN", 0);
            UNKNOWN = reason;
            Reason reason2 = new Reason("VIOLATION", 1);
            VIOLATION = reason2;
            $VALUES = new Reason[]{reason, reason2};
        }

        public static Reason valueOf(String str) {
            return (Reason) Enum.valueOf(Reason.class, str);
        }

        public static Reason[] values() {
            return (Reason[]) $VALUES.clone();
        }
    }

    public AccountTerminatedException(String str) {
        super(str);
        this.reason = Reason.UNKNOWN;
    }

    public AccountTerminatedException(String str, int i) {
        super(str);
        this.reason = Reason.VIOLATION;
    }
}
