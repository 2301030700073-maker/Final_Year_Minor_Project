package app.k9mail.feature.account.setup.ui.autodiscovery;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.setup.domain.usecase.ValidateEmailAddress$ValidateEmailAddressError;
import kotlin.text.StringsKt;
import net.thunderbird.core.common.mail.EmailAddressParserConfig;
import net.thunderbird.core.common.mail.EmailAddressParserException;
import net.thunderbird.core.common.mail.TokensKt;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.outcome.Outcome;
import org.minidns.util.Hex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountAutoDiscoveryValidator {
    public final Outcome validateEmailAddress(String str) {
        str.getClass();
        Object obj = ValidateEmailAddress$ValidateEmailAddressError.NotAllowed.INSTANCE;
        if (StringsKt.isBlank(str)) {
            return new Outcome.Failure(ValidateEmailAddress$ValidateEmailAddressError.EmptyEmailAddress.INSTANCE, null);
        }
        try {
            return TokensKt.parse(str, EmailAddressParserConfig.LIMITED).warnings.backing.isEmpty() ? Hex.getValidationSuccess() : new Outcome.Failure(obj, null);
        } catch (EmailAddressParserException e) {
            Log.v(e, "Error parsing email address: %s", str);
            switch (e.error.ordinal()) {
                case 6:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                case 9:
                case 10:
                case 11:
                case BasicTextKt.ShiftMeta /* 12 */:
                case 13:
                    break;
                default:
                    if (!StringsKt.contains$default(str, '@')) {
                        obj = ValidateEmailAddress$ValidateEmailAddressError.InvalidEmailAddress.INSTANCE;
                        break;
                    } else {
                        obj = ValidateEmailAddress$ValidateEmailAddressError.InvalidOrNotSupported.INSTANCE;
                        break;
                    }
            }
            return new Outcome.Failure(obj, null);
        }
    }
}
