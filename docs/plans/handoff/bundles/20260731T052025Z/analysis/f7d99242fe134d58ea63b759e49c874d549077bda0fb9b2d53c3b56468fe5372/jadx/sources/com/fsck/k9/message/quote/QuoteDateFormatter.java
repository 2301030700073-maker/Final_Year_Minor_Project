package com.fsck.k9.message.quote;

import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import j$.util.DesugarTimeZone;
import java.text.DateFormat;
import java.util.Date;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QuoteDateFormatter {
    public final GeneralSettingsManager generalSettingsManager;

    public QuoteDateFormatter(GeneralSettingsManager generalSettingsManager) {
        this.generalSettingsManager = generalSettingsManager;
    }

    public final String format(Date date) {
        try {
            DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(1, 1);
            if (((DefaultGeneralSettingsManager) this.generalSettingsManager).getSettings().privacy.isHideTimeZone) {
                dateTimeInstance.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
            }
            dateTimeInstance.getClass();
            String format = dateTimeInstance.format(date);
            format.getClass();
            return format;
        } catch (Exception unused) {
            return "";
        }
    }
}
