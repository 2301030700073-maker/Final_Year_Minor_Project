package app.k9mail.feature.account.setup.domain.entity;

import com.mikepenz.fastadapter.VerboseLogger;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailCheckFrequency {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ EmailCheckFrequency[] $VALUES;
    public static final VerboseLogger Companion;
    public static final EmailCheckFrequency DEFAULT;
    public final int minutes;

    static {
        EmailCheckFrequency emailCheckFrequency = new EmailCheckFrequency("MANUAL", 0, -1);
        EmailCheckFrequency emailCheckFrequency2 = new EmailCheckFrequency("EVERY_15_MINUTES", 1, 15);
        EmailCheckFrequency[] emailCheckFrequencyArr = {emailCheckFrequency, emailCheckFrequency2, new EmailCheckFrequency("EVERY_30_MINUTES", 2, 30), new EmailCheckFrequency("EVERY_HOUR", 3, 60), new EmailCheckFrequency("EVERY_2_HOURS", 4, 120), new EmailCheckFrequency("EVERY_3_HOURS", 5, 180), new EmailCheckFrequency("EVERY_6_HOURS", 6, 360), new EmailCheckFrequency("EVERY_12_HOURS", 7, 720), new EmailCheckFrequency("EVERY_24_HOURS", 8, 1440)};
        $VALUES = emailCheckFrequencyArr;
        $ENTRIES = new EnumEntriesList(emailCheckFrequencyArr);
        Companion = new VerboseLogger();
        DEFAULT = emailCheckFrequency2;
    }

    public EmailCheckFrequency(String str, int i, int i2) {
        this.minutes = i2;
    }

    public static EmailCheckFrequency valueOf(String str) {
        return (EmailCheckFrequency) Enum.valueOf(EmailCheckFrequency.class, str);
    }

    public static EmailCheckFrequency[] values() {
        return (EmailCheckFrequency[]) $VALUES.clone();
    }
}
