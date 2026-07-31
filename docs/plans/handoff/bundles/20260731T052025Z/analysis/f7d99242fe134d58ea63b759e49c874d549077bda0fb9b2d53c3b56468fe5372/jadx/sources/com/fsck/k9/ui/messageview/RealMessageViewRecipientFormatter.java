package com.fsck.k9.ui.messageview;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import app.k9mail.core.android.common.contact.CachingContactRepository;
import app.k9mail.core.android.common.contact.Contact;
import com.fsck.k9.helper.RealContactNameProvider;
import com.fsck.k9.mail.Address;
import java.util.ArrayList;
import kotlin.text.StringsKt;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.EmailAddress;
import net.thunderbird.core.common.mail.TokensKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealMessageViewRecipientFormatter {
    public final Integer contactNameColor;
    public final RealContactNameProvider contactNameProvider;
    public final String meText;
    public final boolean showContactNames;
    public final boolean showCorrespondentNames;

    public RealMessageViewRecipientFormatter(RealContactNameProvider realContactNameProvider, boolean z, boolean z2, Integer num, String str) {
        this.contactNameProvider = realContactNameProvider;
        this.showCorrespondentNames = z;
        this.showContactNames = z2;
        this.contactNameColor = num;
        this.meText = str;
    }

    public final String buildDisplayName(Address address) {
        int indexOf$default;
        String str = address.personal;
        if (str != null) {
            if (StringsKt.isBlank(str) || str.equalsIgnoreCase(this.meText) || ((indexOf$default = StringsKt.indexOf$default(str, '@', 0, 6)) > 0 && str.charAt(indexOf$default - 1) != '(')) {
                str = null;
            }
            if (str != null) {
                return str;
            }
        }
        return address.address;
    }

    public final CharSequence getDisplayName(Address address, LegacyAccountDto legacyAccountDto) {
        Contact contactFor;
        String str;
        address.getClass();
        String str2 = address.address;
        legacyAccountDto.getClass();
        Identity findIdentity = legacyAccountDto.findIdentity(address);
        if (findIdentity != null) {
            return (((ArrayList) legacyAccountDto.getIdentities()).size() == 1 || ((str = findIdentity.description) == null && (str = findIdentity.name) == null && (str = findIdentity.email) == null)) ? this.meText : str;
        }
        if (!this.showCorrespondentNames) {
            return str2;
        }
        if (!this.showContactNames) {
            return buildDisplayName(address);
        }
        str2.getClass();
        EmailAddress emailAddressOrNull = TokensKt.toEmailAddressOrNull(str2);
        String str3 = (emailAddressOrNull == null || (contactFor = ((CachingContactRepository) this.contactNameProvider.contactRepository).getContactFor(emailAddressOrNull)) == null) ? null : contactFor.name;
        if (str3 == null) {
            return buildDisplayName(address);
        }
        Integer num = this.contactNameColor;
        if (num == null) {
            return str3;
        }
        SpannableString spannableString = new SpannableString(str3);
        spannableString.setSpan(new ForegroundColorSpan(num.intValue()), 0, str3.length(), 33);
        return spannableString;
    }
}
