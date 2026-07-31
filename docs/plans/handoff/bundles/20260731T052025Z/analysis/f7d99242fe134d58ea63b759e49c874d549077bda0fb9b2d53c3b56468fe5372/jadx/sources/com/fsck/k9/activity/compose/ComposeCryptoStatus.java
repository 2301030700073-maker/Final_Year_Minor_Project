package com.fsck.k9.activity.compose;

import android.app.PendingIntent;
import androidx.camera.core.impl.Config;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.activity.compose.RecipientMvpView;
import com.fsck.k9.activity.compose.RecipientPresenter;
import com.fsck.k9.message.AutocryptStatusInteractor$RecipientAutocryptStatus;
import com.fsck.k9.message.AutocryptStatusInteractor$RecipientAutocryptStatusType;
import com.fsck.k9.message.CryptoStatus;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.openintents.openpgp.OpenPgpApiManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposeCryptoStatus implements CryptoStatus {
    public final AttachErrorState attachErrorStateOrNull;
    public final PendingIntent autocryptPendingIntent;
    public final RecipientPresenter.CryptoMode cryptoMode;
    public final RecipientMvpView.CryptoStatusDisplayType displayType;
    public final boolean isEncryptAllDrafts;
    public final boolean isEncryptSubject;
    public final boolean isEncryptionEnabled;
    public final boolean isOpenPgpConfigured;
    public final boolean isPgpInlineModeEnabled;
    public final boolean isRecipientsPreferEncryptMutual;
    public final boolean isReplyToEncrypted;
    public final boolean isSenderPreferEncryptMutual;
    public final boolean isSignOnly;
    public final Long openPgpKeyId;
    public final OpenPgpApiManager.OpenPgpProviderState openPgpProviderState;
    public final ArrayList recipientAddresses;
    public final String[] recipientAddressesAsArray;
    public final AutocryptStatusInteractor$RecipientAutocryptStatus recipientAutocryptStatus;
    public final SendErrorState sendErrorStateOrNull;
    public final RecipientMvpView.CryptoSpecialModeDisplayType specialModeDisplayType;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AttachErrorState {
        public static final /* synthetic */ AttachErrorState[] $VALUES;
        public static final AttachErrorState IS_INLINE;

        static {
            AttachErrorState attachErrorState = new AttachErrorState("IS_INLINE", 0);
            IS_INLINE = attachErrorState;
            $VALUES = new AttachErrorState[]{attachErrorState};
        }

        public static AttachErrorState valueOf(String str) {
            return (AttachErrorState) Enum.valueOf(AttachErrorState.class, str);
        }

        public static AttachErrorState[] values() {
            return (AttachErrorState[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SendErrorState {
        public static final /* synthetic */ SendErrorState[] $VALUES;
        public static final SendErrorState ENABLED_ERROR;
        public static final SendErrorState KEY_CONFIG_ERROR;
        public static final SendErrorState PROVIDER_ERROR;

        static {
            SendErrorState sendErrorState = new SendErrorState("PROVIDER_ERROR", 0);
            PROVIDER_ERROR = sendErrorState;
            SendErrorState sendErrorState2 = new SendErrorState("KEY_CONFIG_ERROR", 1);
            KEY_CONFIG_ERROR = sendErrorState2;
            SendErrorState sendErrorState3 = new SendErrorState("ENABLED_ERROR", 2);
            ENABLED_ERROR = sendErrorState3;
            $VALUES = new SendErrorState[]{sendErrorState, sendErrorState2, sendErrorState3};
        }

        public static SendErrorState valueOf(String str) {
            return (SendErrorState) Enum.valueOf(SendErrorState.class, str);
        }

        public static SendErrorState[] values() {
            return (SendErrorState[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[OpenPgpApiManager.OpenPgpProviderState.values().length];
            try {
                iArr[4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[2] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[AutocryptStatusInteractor$RecipientAutocryptStatusType.values().length];
            try {
                iArr2[8] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public ComposeCryptoStatus(OpenPgpApiManager.OpenPgpProviderState openPgpProviderState, Long l, ArrayList arrayList, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, RecipientPresenter.CryptoMode cryptoMode, AutocryptStatusInteractor$RecipientAutocryptStatus autocryptStatusInteractor$RecipientAutocryptStatus) {
        RecipientMvpView.CryptoStatusDisplayType cryptoStatusDisplayType;
        cryptoMode.getClass();
        this.openPgpProviderState = openPgpProviderState;
        this.openPgpKeyId = l;
        this.recipientAddresses = arrayList;
        this.isPgpInlineModeEnabled = z;
        this.isSenderPreferEncryptMutual = z2;
        this.isReplyToEncrypted = z3;
        this.isEncryptAllDrafts = z4;
        this.isEncryptSubject = z5;
        this.cryptoMode = cryptoMode;
        this.recipientAutocryptStatus = autocryptStatusInteractor$RecipientAutocryptStatus;
        AttachErrorState attachErrorState = null;
        AutocryptStatusInteractor$RecipientAutocryptStatusType autocryptStatusInteractor$RecipientAutocryptStatusType = autocryptStatusInteractor$RecipientAutocryptStatus != null ? autocryptStatusInteractor$RecipientAutocryptStatus.type : null;
        boolean z6 = autocryptStatusInteractor$RecipientAutocryptStatus != null ? autocryptStatusInteractor$RecipientAutocryptStatus.type.isMutual : false;
        this.isRecipientsPreferEncryptMutual = z6;
        boolean z7 = cryptoMode == RecipientPresenter.CryptoMode.CHOICE_ENABLED;
        RecipientPresenter.CryptoMode cryptoMode2 = RecipientPresenter.CryptoMode.CHOICE_DISABLED;
        boolean z8 = cryptoMode != cryptoMode2 && allRecipientsCanEncrypt() && z2 && z6;
        boolean z9 = cryptoMode != cryptoMode2 && z3;
        OpenPgpApiManager.OpenPgpProviderState openPgpProviderState2 = OpenPgpApiManager.OpenPgpProviderState.UNCONFIGURED;
        this.isOpenPgpConfigured = openPgpProviderState != openPgpProviderState2;
        boolean z10 = cryptoMode == RecipientPresenter.CryptoMode.SIGN_ONLY;
        this.isSignOnly = z10;
        boolean z11 = (openPgpProviderState == openPgpProviderState2 || z10 || (!z7 && !z8 && !z9)) ? false : true;
        this.isEncryptionEnabled = z11;
        this.recipientAddressesAsArray = (String[]) arrayList.toArray(new String[0]);
        int ordinal = openPgpProviderState.ordinal();
        RecipientMvpView.CryptoStatusDisplayType cryptoStatusDisplayType2 = RecipientMvpView.CryptoStatusDisplayType.ERROR;
        if (ordinal == 0) {
            cryptoStatusDisplayType = RecipientMvpView.CryptoStatusDisplayType.UNCONFIGURED;
        } else if (ordinal == 1) {
            cryptoStatusDisplayType = RecipientMvpView.CryptoStatusDisplayType.UNINITIALIZED;
        } else if (ordinal == 2 || ordinal == 3) {
            cryptoStatusDisplayType = cryptoStatusDisplayType2;
        } else {
            if (ordinal != 4) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                throw null;
            }
            cryptoStatusDisplayType = null;
        }
        int i = autocryptStatusInteractor$RecipientAutocryptStatusType == null ? -1 : WhenMappings.$EnumSwitchMapping$1[autocryptStatusInteractor$RecipientAutocryptStatusType.ordinal()];
        RecipientMvpView.CryptoStatusDisplayType cryptoStatusDisplayType3 = (i == -1 || i == 1) ? cryptoStatusDisplayType2 : null;
        if (!z11) {
            cryptoStatusDisplayType2 = null;
        } else if (autocryptStatusInteractor$RecipientAutocryptStatusType != null) {
            cryptoStatusDisplayType2 = !autocryptStatusInteractor$RecipientAutocryptStatusType.canEncrypt ? RecipientMvpView.CryptoStatusDisplayType.ENABLED_ERROR : autocryptStatusInteractor$RecipientAutocryptStatusType.isConfirmed ? RecipientMvpView.CryptoStatusDisplayType.ENABLED_TRUSTED : RecipientMvpView.CryptoStatusDisplayType.ENABLED;
        }
        RecipientMvpView.CryptoStatusDisplayType cryptoStatusDisplayType4 = z10 ? RecipientMvpView.CryptoStatusDisplayType.SIGN_ONLY : null;
        RecipientMvpView.CryptoStatusDisplayType cryptoStatusDisplayType5 = (autocryptStatusInteractor$RecipientAutocryptStatusType == null || !autocryptStatusInteractor$RecipientAutocryptStatusType.canEncrypt) ? null : RecipientMvpView.CryptoStatusDisplayType.AVAILABLE;
        this.displayType = cryptoStatusDisplayType == null ? cryptoStatusDisplayType3 == null ? cryptoStatusDisplayType2 == null ? cryptoStatusDisplayType4 == null ? cryptoStatusDisplayType5 == null ? RecipientMvpView.CryptoStatusDisplayType.UNAVAILABLE : cryptoStatusDisplayType5 : cryptoStatusDisplayType4 : cryptoStatusDisplayType2 : cryptoStatusDisplayType3 : cryptoStatusDisplayType;
        RecipientMvpView.CryptoSpecialModeDisplayType cryptoSpecialModeDisplayType = RecipientMvpView.CryptoSpecialModeDisplayType.NONE;
        OpenPgpApiManager.OpenPgpProviderState openPgpProviderState3 = OpenPgpApiManager.OpenPgpProviderState.OK;
        if (openPgpProviderState == openPgpProviderState3) {
            if (z10 && z) {
                cryptoSpecialModeDisplayType = RecipientMvpView.CryptoSpecialModeDisplayType.SIGN_ONLY_PGP_INLINE;
            } else if (z10) {
                cryptoSpecialModeDisplayType = RecipientMvpView.CryptoSpecialModeDisplayType.SIGN_ONLY;
            } else if (allRecipientsCanEncrypt() && z) {
                cryptoSpecialModeDisplayType = RecipientMvpView.CryptoSpecialModeDisplayType.PGP_INLINE;
            }
        }
        this.specialModeDisplayType = cryptoSpecialModeDisplayType;
        this.autocryptPendingIntent = autocryptStatusInteractor$RecipientAutocryptStatus != null ? autocryptStatusInteractor$RecipientAutocryptStatus.intent : null;
        this.sendErrorStateOrNull = openPgpProviderState != openPgpProviderState3 ? SendErrorState.PROVIDER_ERROR : (l == null && (z11 || z10)) ? SendErrorState.KEY_CONFIG_ERROR : (!z11 || allRecipientsCanEncrypt()) ? null : SendErrorState.ENABLED_ERROR;
        if (openPgpProviderState != openPgpProviderState2 && z) {
            attachErrorState = AttachErrorState.IS_INLINE;
        }
        this.attachErrorStateOrNull = attachErrorState;
    }

    public final boolean allRecipientsCanEncrypt() {
        AutocryptStatusInteractor$RecipientAutocryptStatus autocryptStatusInteractor$RecipientAutocryptStatus = this.recipientAutocryptStatus;
        return autocryptStatusInteractor$RecipientAutocryptStatus != null && autocryptStatusInteractor$RecipientAutocryptStatus.type.canEncrypt;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComposeCryptoStatus)) {
            return false;
        }
        ComposeCryptoStatus composeCryptoStatus = (ComposeCryptoStatus) obj;
        return this.openPgpProviderState == composeCryptoStatus.openPgpProviderState && Intrinsics.areEqual(this.openPgpKeyId, composeCryptoStatus.openPgpKeyId) && this.recipientAddresses.equals(composeCryptoStatus.recipientAddresses) && this.isPgpInlineModeEnabled == composeCryptoStatus.isPgpInlineModeEnabled && this.isSenderPreferEncryptMutual == composeCryptoStatus.isSenderPreferEncryptMutual && this.isReplyToEncrypted == composeCryptoStatus.isReplyToEncrypted && this.isEncryptAllDrafts == composeCryptoStatus.isEncryptAllDrafts && this.isEncryptSubject == composeCryptoStatus.isEncryptSubject && this.cryptoMode == composeCryptoStatus.cryptoMode && Intrinsics.areEqual(this.recipientAutocryptStatus, composeCryptoStatus.recipientAutocryptStatus);
    }

    public final int hashCode() {
        int hashCode = this.openPgpProviderState.hashCode() * 31;
        Long l = this.openPgpKeyId;
        int hashCode2 = (this.cryptoMode.hashCode() + ((((((((((Config.CC.m(this.recipientAddresses, (hashCode + (l == null ? 0 : l.hashCode())) * 31, 31) + (this.isPgpInlineModeEnabled ? 1231 : 1237)) * 31) + (this.isSenderPreferEncryptMutual ? 1231 : 1237)) * 31) + (this.isReplyToEncrypted ? 1231 : 1237)) * 31) + (this.isEncryptAllDrafts ? 1231 : 1237)) * 31) + (this.isEncryptSubject ? 1231 : 1237)) * 31)) * 31;
        AutocryptStatusInteractor$RecipientAutocryptStatus autocryptStatusInteractor$RecipientAutocryptStatus = this.recipientAutocryptStatus;
        return hashCode2 + (autocryptStatusInteractor$RecipientAutocryptStatus != null ? autocryptStatusInteractor$RecipientAutocryptStatus.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ComposeCryptoStatus(openPgpProviderState=");
        sb.append(this.openPgpProviderState);
        sb.append(", openPgpKeyId=");
        sb.append(this.openPgpKeyId);
        sb.append(", recipientAddresses=");
        sb.append(this.recipientAddresses);
        sb.append(", isPgpInlineModeEnabled=");
        sb.append(this.isPgpInlineModeEnabled);
        sb.append(", isSenderPreferEncryptMutual=");
        ViewSizeResolver.CC.m(sb, this.isSenderPreferEncryptMutual, ", isReplyToEncrypted=", this.isReplyToEncrypted, ", isEncryptAllDrafts=");
        ViewSizeResolver.CC.m(sb, this.isEncryptAllDrafts, ", isEncryptSubject=", this.isEncryptSubject, ", cryptoMode=");
        sb.append(this.cryptoMode);
        sb.append(", recipientAutocryptStatus=");
        sb.append(this.recipientAutocryptStatus);
        sb.append(")");
        return sb.toString();
    }
}
