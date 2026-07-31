package app.k9mail.feature.account.setup.domain.entity;

import com.bumptech.glide.GlideBuilder$1;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailDisplayCount {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ EmailDisplayCount[] $VALUES;
    public static final GlideBuilder$1 Companion;
    public static final EmailDisplayCount DEFAULT;
    public final int count;

    static {
        EmailDisplayCount emailDisplayCount = new EmailDisplayCount("MESSAGES_10", 0, 10);
        EmailDisplayCount emailDisplayCount2 = new EmailDisplayCount("MESSAGES_25", 1, 25);
        EmailDisplayCount emailDisplayCount3 = new EmailDisplayCount("MESSAGES_50", 2, 50);
        EmailDisplayCount emailDisplayCount4 = new EmailDisplayCount("MESSAGES_100", 3, 100);
        EmailDisplayCount[] emailDisplayCountArr = {emailDisplayCount, emailDisplayCount2, emailDisplayCount3, emailDisplayCount4, new EmailDisplayCount("MESSAGES_250", 4, 250), new EmailDisplayCount("MESSAGES_500", 5, 500), new EmailDisplayCount("MESSAGES_1000", 6, 1000)};
        $VALUES = emailDisplayCountArr;
        $ENTRIES = new EnumEntriesList(emailDisplayCountArr);
        Companion = new GlideBuilder$1();
        DEFAULT = emailDisplayCount4;
    }

    public EmailDisplayCount(String str, int i, int i2) {
        this.count = i2;
    }

    public static EmailDisplayCount valueOf(String str) {
        return (EmailDisplayCount) Enum.valueOf(EmailDisplayCount.class, str);
    }

    public static EmailDisplayCount[] values() {
        return (EmailDisplayCount[]) $VALUES.clone();
    }
}
