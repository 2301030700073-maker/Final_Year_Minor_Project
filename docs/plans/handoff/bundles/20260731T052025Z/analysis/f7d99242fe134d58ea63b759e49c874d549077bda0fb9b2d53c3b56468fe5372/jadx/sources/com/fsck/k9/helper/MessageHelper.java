package com.fsck.k9.helper;

import android.content.Context;
import android.text.SpannableStringBuilder;
import app.k9mail.core.android.common.contact.ContactRepository;
import com.fsck.k9.R;
import com.fsck.k9.mail.Address;
import com.fsck.k9.resources.K9CoreResourceProvider;
import java.util.regex.Pattern;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageHelper {
    public static final Pattern SPOOF_ADDRESS_PATTERN = Pattern.compile("[^(]@");
    public final ContactRepository contactRepository;
    public final DefaultMessageListPreferencesManager messageListPreferencesManager;
    public final K9CoreResourceProvider resourceProvider;

    public MessageHelper(K9CoreResourceProvider k9CoreResourceProvider, ContactRepository contactRepository, DefaultMessageListPreferencesManager defaultMessageListPreferencesManager) {
        this.resourceProvider = k9CoreResourceProvider;
        this.contactRepository = contactRepository;
        this.messageListPreferencesManager = defaultMessageListPreferencesManager;
    }

    public final CharSequence getRecipientDisplayNames(Address[] addressArr, boolean z, boolean z2, int i) {
        Context context = this.resourceProvider.context;
        if (addressArr == null || addressArr.length == 0) {
            String string = context.getString(R.string.unknown_recipient);
            string.getClass();
            return string;
        }
        ContactRepository contactRepository = addressArr.length < 50 ? ((DisplayMessageListSettings) this.messageListPreferencesManager.getConfig()).isShowContactName ? this.contactRepository : null : null;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int length = addressArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            spannableStringBuilder.append(FileHelper.toFriendly(addressArr[i2], z, z2, i, contactRepository));
            if (i2 < addressArr.length - 1) {
                spannableStringBuilder.append(',');
            }
        }
        String string2 = context.getString(R.string.message_to_label);
        string2.getClass();
        SpannableStringBuilder append = new SpannableStringBuilder(string2).append(' ').append((CharSequence) spannableStringBuilder);
        append.getClass();
        return append;
    }

    public final CharSequence getSenderDisplayName(Address address) {
        if (address != null) {
            DefaultMessageListPreferencesManager defaultMessageListPreferencesManager = this.messageListPreferencesManager;
            return FileHelper.toFriendly(address, ((DisplayMessageListSettings) defaultMessageListPreferencesManager.getConfig()).isShowCorrespondentNames, ((DisplayMessageListSettings) defaultMessageListPreferencesManager.getConfig()).isChangeContactNameColor, ((DisplayMessageListSettings) defaultMessageListPreferencesManager.getConfig()).contactNameColor, ((DisplayMessageListSettings) defaultMessageListPreferencesManager.getConfig()).isShowContactName ? this.contactRepository : null);
        }
        String string = this.resourceProvider.context.getString(R.string.unknown_sender);
        string.getClass();
        return string;
    }
}
