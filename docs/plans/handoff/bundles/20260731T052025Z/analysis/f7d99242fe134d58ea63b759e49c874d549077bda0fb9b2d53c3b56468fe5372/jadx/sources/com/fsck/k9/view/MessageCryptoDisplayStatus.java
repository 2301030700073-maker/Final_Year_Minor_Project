package com.fsck.k9.view;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.CryptoResultAnnotation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.OpenPgpDecryptionResult;
import org.openintents.openpgp.OpenPgpSignatureResult;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'CANCELLED' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageCryptoDisplayStatus {
    public static final /* synthetic */ MessageCryptoDisplayStatus[] $VALUES;
    public static final MessageCryptoDisplayStatus CANCELLED;
    public static final Companion Companion;
    public static final MessageCryptoDisplayStatus DISABLED;
    public static final MessageCryptoDisplayStatus ENCRYPTED_ERROR;
    public static final MessageCryptoDisplayStatus ENCRYPTED_INSECURE;
    public static final MessageCryptoDisplayStatus ENCRYPTED_NO_PROVIDER;
    public static final MessageCryptoDisplayStatus ENCRYPTED_SIGN_ERROR;
    public static final MessageCryptoDisplayStatus ENCRYPTED_SIGN_EXPIRED;
    public static final MessageCryptoDisplayStatus ENCRYPTED_SIGN_INSECURE;
    public static final MessageCryptoDisplayStatus ENCRYPTED_SIGN_MISMATCH;
    public static final MessageCryptoDisplayStatus ENCRYPTED_SIGN_REVOKED;
    public static final MessageCryptoDisplayStatus ENCRYPTED_SIGN_UNKNOWN;
    public static final MessageCryptoDisplayStatus ENCRYPTED_SIGN_UNVERIFIED;
    public static final MessageCryptoDisplayStatus ENCRYPTED_SIGN_VERIFIED;
    public static final MessageCryptoDisplayStatus ENCRYPTED_UNSIGNED;
    public static final MessageCryptoDisplayStatus INCOMPLETE_ENCRYPTED;
    public static final MessageCryptoDisplayStatus INCOMPLETE_SIGNED;
    public static final MessageCryptoDisplayStatus LOADING;
    public static final MessageCryptoDisplayStatus UNENCRYPTED_SIGN_ERROR;
    public static final MessageCryptoDisplayStatus UNENCRYPTED_SIGN_EXPIRED;
    public static final MessageCryptoDisplayStatus UNENCRYPTED_SIGN_INSECURE;
    public static final MessageCryptoDisplayStatus UNENCRYPTED_SIGN_MISMATCH;
    public static final MessageCryptoDisplayStatus UNENCRYPTED_SIGN_REVOKED;
    public static final MessageCryptoDisplayStatus UNENCRYPTED_SIGN_UNKNOWN;
    public static final MessageCryptoDisplayStatus UNENCRYPTED_SIGN_UNVERIFIED;
    public static final MessageCryptoDisplayStatus UNENCRYPTED_SIGN_VERIFIED;
    public static final MessageCryptoDisplayStatus UNSUPPORTED_ENCRYPTED;
    public static final MessageCryptoDisplayStatus UNSUPPORTED_SIGNED;
    public final int colorAttr;
    public final Integer descriptionTextRes;
    public final boolean isEnabled;
    public final int statusIconRes;
    public final Integer titleTextRes;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        public abstract /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ImageAnalysis$$ExternalSyntheticLambda3.values(9).length];
                try {
                    iArr[0] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[5] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[4] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[7] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[6] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[1] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[2] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[3] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[8] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[OpenPgpSignatureResult.SenderStatusResult.values().length];
                try {
                    iArr2[1] = 1;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    OpenPgpSignatureResult.SenderStatusResult senderStatusResult = OpenPgpSignatureResult.SenderStatusResult.UNKNOWN;
                    iArr2[2] = 2;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    OpenPgpSignatureResult.SenderStatusResult senderStatusResult2 = OpenPgpSignatureResult.SenderStatusResult.UNKNOWN;
                    iArr2[3] = 3;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    OpenPgpSignatureResult.SenderStatusResult senderStatusResult3 = OpenPgpSignatureResult.SenderStatusResult.UNKNOWN;
                    iArr2[0] = 4;
                } catch (NoSuchFieldError unused13) {
                }
            }
        }

        public static MessageCryptoDisplayStatus fromResultAnnotation(CryptoResultAnnotation cryptoResultAnnotation) {
            CryptoResultAnnotation cryptoResultAnnotation2;
            OpenPgpSignatureResult openPgpSignatureResult;
            int i = cryptoResultAnnotation != null ? cryptoResultAnnotation.errorType : 0;
            switch (i == 0 ? -1 : WhenMappings.$EnumSwitchMapping$0[ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i)]) {
                case -1:
                    return MessageCryptoDisplayStatus.DISABLED;
                case 0:
                default:
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                case 1:
                    OpenPgpSignatureResult openPgpSignatureResult2 = cryptoResultAnnotation.openPgpSignatureResult;
                    OpenPgpDecryptionResult openPgpDecryptionResult = cryptoResultAnnotation.openPgpDecryptionResult;
                    if (openPgpDecryptionResult == null || openPgpSignatureResult2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Both OpenPGP results must be non-null at this point!");
                        return null;
                    }
                    if (openPgpSignatureResult2.result == -1 && (cryptoResultAnnotation2 = cryptoResultAnnotation.encapsulatedResult) != null && cryptoResultAnnotation2.openPgpDecryptionResult != null && (openPgpSignatureResult = cryptoResultAnnotation2.openPgpSignatureResult) != null) {
                        if (openPgpSignatureResult == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "OpenPGP must contain signature result at this point!");
                            return null;
                        }
                        openPgpSignatureResult2 = openPgpSignatureResult;
                    }
                    OpenPgpSignatureResult.SenderStatusResult senderStatusResult = openPgpSignatureResult2.senderStatusResult;
                    int i2 = openPgpSignatureResult2.result;
                    int i3 = openPgpDecryptionResult.result;
                    if (i3 == -1) {
                        switch (i2) {
                            case -1:
                                return MessageCryptoDisplayStatus.DISABLED;
                            case 0:
                                return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_ERROR;
                            case 1:
                            case 3:
                                senderStatusResult.getClass();
                                int ordinal = senderStatusResult.ordinal();
                                if (ordinal == 0) {
                                    return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_UNVERIFIED;
                                }
                                if (ordinal == 1) {
                                    return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_VERIFIED;
                                }
                                if (ordinal == 2) {
                                    return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_UNVERIFIED;
                                }
                                if (ordinal == 3) {
                                    return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_MISMATCH;
                                }
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return null;
                            case 2:
                                return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_UNKNOWN;
                            case 4:
                                return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_REVOKED;
                            case 5:
                                return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_EXPIRED;
                            case 6:
                                return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_INSECURE;
                            default:
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unhandled encrypted result case!");
                                return null;
                        }
                    }
                    if (i3 == 0) {
                        return MessageCryptoDisplayStatus.ENCRYPTED_INSECURE;
                    }
                    if (i3 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "all cases must be handled, this is a bug!");
                        return null;
                    }
                    switch (i2) {
                        case -1:
                            return MessageCryptoDisplayStatus.ENCRYPTED_UNSIGNED;
                        case 0:
                            return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_ERROR;
                        case 1:
                        case 3:
                            senderStatusResult.getClass();
                            int ordinal2 = senderStatusResult.ordinal();
                            if (ordinal2 == 0) {
                                return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_UNVERIFIED;
                            }
                            if (ordinal2 == 1) {
                                return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_VERIFIED;
                            }
                            if (ordinal2 == 2) {
                                return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_UNVERIFIED;
                            }
                            if (ordinal2 == 3) {
                                return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_MISMATCH;
                            }
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return null;
                        case 2:
                            return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_UNKNOWN;
                        case 4:
                            return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_REVOKED;
                        case 5:
                            return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_EXPIRED;
                        case 6:
                            return MessageCryptoDisplayStatus.ENCRYPTED_SIGN_INSECURE;
                        default:
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unhandled encrypted result case!");
                            return null;
                    }
                case 2:
                    return MessageCryptoDisplayStatus.INCOMPLETE_ENCRYPTED;
                case 3:
                    return MessageCryptoDisplayStatus.INCOMPLETE_SIGNED;
                case 4:
                    return MessageCryptoDisplayStatus.UNSUPPORTED_ENCRYPTED;
                case 5:
                    return MessageCryptoDisplayStatus.UNSUPPORTED_SIGNED;
                case 6:
                    return MessageCryptoDisplayStatus.CANCELLED;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return MessageCryptoDisplayStatus.UNENCRYPTED_SIGN_ERROR;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return MessageCryptoDisplayStatus.ENCRYPTED_ERROR;
                case 9:
                    return MessageCryptoDisplayStatus.ENCRYPTED_NO_PROVIDER;
            }
        }
    }

    static {
        MessageCryptoDisplayStatus messageCryptoDisplayStatus = new MessageCryptoDisplayStatus("LOADING", 0, R.attr.openpgp_grey, R.drawable.ic_no_encryption, null, null, 24);
        LOADING = messageCryptoDisplayStatus;
        Integer valueOf = Integer.valueOf(R.string.crypto_msg_title_encrypted_unknown);
        MessageCryptoDisplayStatus messageCryptoDisplayStatus2 = new MessageCryptoDisplayStatus("CANCELLED", 1, R.attr.openpgp_black, R.drawable.ic_help, valueOf, Integer.valueOf(R.string.crypto_msg_cancelled), 1);
        CANCELLED = messageCryptoDisplayStatus2;
        Integer valueOf2 = Integer.valueOf(R.string.crypto_msg_title_plaintext);
        MessageCryptoDisplayStatus messageCryptoDisplayStatus3 = new MessageCryptoDisplayStatus("DISABLED", 2, R.attr.openpgp_grey, R.drawable.ic_no_encryption, valueOf2, null, 16);
        DISABLED = messageCryptoDisplayStatus3;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus4 = new MessageCryptoDisplayStatus("UNENCRYPTED_SIGN_ERROR", 3, R.attr.openpgp_grey, R.drawable.ic_help, valueOf2, Integer.valueOf(R.string.crypto_msg_unencrypted_sign_error), 1);
        UNENCRYPTED_SIGN_ERROR = messageCryptoDisplayStatus4;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus5 = new MessageCryptoDisplayStatus("INCOMPLETE_SIGNED", 4, R.attr.openpgp_black, R.drawable.ic_help, valueOf2, Integer.valueOf(R.string.crypto_msg_incomplete_signed), 1);
        INCOMPLETE_SIGNED = messageCryptoDisplayStatus5;
        Integer valueOf3 = Integer.valueOf(R.string.crypto_msg_title_unencrypted_signed_e2e);
        MessageCryptoDisplayStatus messageCryptoDisplayStatus6 = new MessageCryptoDisplayStatus("UNENCRYPTED_SIGN_VERIFIED", 5, R.attr.openpgp_blue, R.drawable.status_signature_dots_3, valueOf3, Integer.valueOf(R.string.crypto_msg_unencrypted_sign_verified), 1);
        UNENCRYPTED_SIGN_VERIFIED = messageCryptoDisplayStatus6;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus7 = new MessageCryptoDisplayStatus("UNENCRYPTED_SIGN_UNVERIFIED", 6, R.attr.openpgp_blue, R.drawable.ic_check_circle, valueOf3, null, 17);
        UNENCRYPTED_SIGN_UNVERIFIED = messageCryptoDisplayStatus7;
        Integer valueOf4 = Integer.valueOf(R.string.crypto_msg_title_unencrypted_signed);
        MessageCryptoDisplayStatus messageCryptoDisplayStatus8 = new MessageCryptoDisplayStatus("UNENCRYPTED_SIGN_UNKNOWN", 7, R.attr.openpgp_orange, R.drawable.ic_help, valueOf4, Integer.valueOf(R.string.crypto_msg_unencrypted_sign_unknown), 1);
        UNENCRYPTED_SIGN_UNKNOWN = messageCryptoDisplayStatus8;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus9 = new MessageCryptoDisplayStatus("UNENCRYPTED_SIGN_MISMATCH", 8, R.attr.openpgp_grey, R.drawable.ic_help, valueOf4, Integer.valueOf(R.string.crypto_msg_unencrypted_sign_mismatch), 1);
        UNENCRYPTED_SIGN_MISMATCH = messageCryptoDisplayStatus9;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus10 = new MessageCryptoDisplayStatus("UNENCRYPTED_SIGN_EXPIRED", 9, R.attr.openpgp_grey, R.drawable.ic_help, valueOf4, Integer.valueOf(R.string.crypto_msg_unencrypted_sign_expired), 1);
        UNENCRYPTED_SIGN_EXPIRED = messageCryptoDisplayStatus10;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus11 = new MessageCryptoDisplayStatus("UNENCRYPTED_SIGN_REVOKED", 10, R.attr.openpgp_grey, R.drawable.ic_help, valueOf4, Integer.valueOf(R.string.crypto_msg_unencrypted_sign_revoked), 1);
        UNENCRYPTED_SIGN_REVOKED = messageCryptoDisplayStatus11;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus12 = new MessageCryptoDisplayStatus("UNENCRYPTED_SIGN_INSECURE", 11, R.attr.openpgp_grey, R.drawable.ic_help, valueOf4, Integer.valueOf(R.string.crypto_msg_unencrypted_sign_insecure), 1);
        UNENCRYPTED_SIGN_INSECURE = messageCryptoDisplayStatus12;
        Integer valueOf5 = Integer.valueOf(R.string.crypto_msg_title_encrypted_signed_e2e);
        MessageCryptoDisplayStatus messageCryptoDisplayStatus13 = new MessageCryptoDisplayStatus("ENCRYPTED_SIGN_VERIFIED", 12, R.attr.openpgp_green, R.drawable.status_lock_dots_3, valueOf5, Integer.valueOf(R.string.crypto_msg_encrypted_sign_verified), 1);
        ENCRYPTED_SIGN_VERIFIED = messageCryptoDisplayStatus13;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus14 = new MessageCryptoDisplayStatus("ENCRYPTED_SIGN_UNVERIFIED", 13, R.attr.openpgp_green, R.drawable.ic_lock, valueOf5, null, 17);
        ENCRYPTED_SIGN_UNVERIFIED = messageCryptoDisplayStatus14;
        Integer valueOf6 = Integer.valueOf(R.string.crypto_msg_title_encrypted_signed);
        MessageCryptoDisplayStatus messageCryptoDisplayStatus15 = new MessageCryptoDisplayStatus("ENCRYPTED_SIGN_UNKNOWN", 14, R.attr.openpgp_orange, R.drawable.ic_help, valueOf6, Integer.valueOf(R.string.crypto_msg_encrypted_sign_unknown), 1);
        ENCRYPTED_SIGN_UNKNOWN = messageCryptoDisplayStatus15;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus16 = new MessageCryptoDisplayStatus("ENCRYPTED_SIGN_MISMATCH", 15, R.attr.openpgp_grey, R.drawable.status_lock_error, valueOf6, Integer.valueOf(R.string.crypto_msg_encrypted_sign_mismatch), 1);
        ENCRYPTED_SIGN_MISMATCH = messageCryptoDisplayStatus16;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus17 = new MessageCryptoDisplayStatus("ENCRYPTED_SIGN_EXPIRED", 16, R.attr.openpgp_grey, R.drawable.status_lock_error, valueOf6, Integer.valueOf(R.string.crypto_msg_encrypted_sign_expired), 1);
        ENCRYPTED_SIGN_EXPIRED = messageCryptoDisplayStatus17;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus18 = new MessageCryptoDisplayStatus("ENCRYPTED_SIGN_REVOKED", 17, R.attr.openpgp_grey, R.drawable.status_lock_error, valueOf6, Integer.valueOf(R.string.crypto_msg_encrypted_sign_revoked), 1);
        ENCRYPTED_SIGN_REVOKED = messageCryptoDisplayStatus18;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus19 = new MessageCryptoDisplayStatus("ENCRYPTED_SIGN_INSECURE", 18, R.attr.openpgp_grey, R.drawable.status_lock_error, valueOf6, Integer.valueOf(R.string.crypto_msg_encrypted_sign_insecure), 1);
        ENCRYPTED_SIGN_INSECURE = messageCryptoDisplayStatus19;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus20 = new MessageCryptoDisplayStatus("ENCRYPTED_SIGN_ERROR", 19, R.attr.openpgp_grey, R.drawable.status_lock_error, valueOf6, Integer.valueOf(R.string.crypto_msg_encrypted_sign_error), 1);
        ENCRYPTED_SIGN_ERROR = messageCryptoDisplayStatus20;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus21 = new MessageCryptoDisplayStatus("ENCRYPTED_INSECURE", 20, R.attr.openpgp_red, R.drawable.status_lock_error, valueOf6, Integer.valueOf(R.string.crypto_msg_encrypted_insecure), 1);
        ENCRYPTED_INSECURE = messageCryptoDisplayStatus21;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus22 = new MessageCryptoDisplayStatus("ENCRYPTED_UNSIGNED", 21, R.attr.openpgp_grey, R.drawable.status_lock_error, Integer.valueOf(R.string.crypto_msg_title_encrypted_unsigned), Integer.valueOf(R.string.crypto_msg_encrypted_unsigned), 1);
        ENCRYPTED_UNSIGNED = messageCryptoDisplayStatus22;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus23 = new MessageCryptoDisplayStatus("ENCRYPTED_ERROR", 22, R.attr.openpgp_red, R.drawable.status_lock_error, valueOf, Integer.valueOf(R.string.crypto_msg_encrypted_error), 1);
        ENCRYPTED_ERROR = messageCryptoDisplayStatus23;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus24 = new MessageCryptoDisplayStatus("INCOMPLETE_ENCRYPTED", 23, R.attr.openpgp_black, R.drawable.ic_help, valueOf, Integer.valueOf(R.string.crypto_msg_encrypted_incomplete), 1);
        INCOMPLETE_ENCRYPTED = messageCryptoDisplayStatus24;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus25 = new MessageCryptoDisplayStatus("ENCRYPTED_NO_PROVIDER", 24, R.attr.openpgp_red, R.drawable.status_lock_error, valueOf, Integer.valueOf(R.string.crypto_msg_encrypted_no_provider), 1);
        ENCRYPTED_NO_PROVIDER = messageCryptoDisplayStatus25;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus26 = new MessageCryptoDisplayStatus("UNSUPPORTED_ENCRYPTED", 25, R.attr.openpgp_red, R.drawable.status_lock_error, valueOf, Integer.valueOf(R.string.crypto_msg_unsupported_encrypted), 1);
        UNSUPPORTED_ENCRYPTED = messageCryptoDisplayStatus26;
        MessageCryptoDisplayStatus messageCryptoDisplayStatus27 = new MessageCryptoDisplayStatus("UNSUPPORTED_SIGNED", 26, R.attr.openpgp_grey, R.drawable.ic_no_encryption, valueOf, Integer.valueOf(R.string.crypto_msg_unsupported_signed), 1);
        UNSUPPORTED_SIGNED = messageCryptoDisplayStatus27;
        $VALUES = new MessageCryptoDisplayStatus[]{messageCryptoDisplayStatus, messageCryptoDisplayStatus2, messageCryptoDisplayStatus3, messageCryptoDisplayStatus4, messageCryptoDisplayStatus5, messageCryptoDisplayStatus6, messageCryptoDisplayStatus7, messageCryptoDisplayStatus8, messageCryptoDisplayStatus9, messageCryptoDisplayStatus10, messageCryptoDisplayStatus11, messageCryptoDisplayStatus12, messageCryptoDisplayStatus13, messageCryptoDisplayStatus14, messageCryptoDisplayStatus15, messageCryptoDisplayStatus16, messageCryptoDisplayStatus17, messageCryptoDisplayStatus18, messageCryptoDisplayStatus19, messageCryptoDisplayStatus20, messageCryptoDisplayStatus21, messageCryptoDisplayStatus22, messageCryptoDisplayStatus23, messageCryptoDisplayStatus24, messageCryptoDisplayStatus25, messageCryptoDisplayStatus26, messageCryptoDisplayStatus27};
        Companion = new Companion();
    }

    public MessageCryptoDisplayStatus(String str, int i, int i2, int i3, Integer num, Integer num2, int i4) {
        boolean z = (i4 & 1) != 0;
        num = (i4 & 8) != 0 ? null : num;
        num2 = (i4 & 16) != 0 ? null : num2;
        this.isEnabled = z;
        this.colorAttr = i2;
        this.statusIconRes = i3;
        this.titleTextRes = num;
        this.descriptionTextRes = num2;
    }

    public static MessageCryptoDisplayStatus valueOf(String str) {
        return (MessageCryptoDisplayStatus) Enum.valueOf(MessageCryptoDisplayStatus.class, str);
    }

    public static MessageCryptoDisplayStatus[] values() {
        return (MessageCryptoDisplayStatus[]) $VALUES.clone();
    }
}
