package app.k9mail.feature.account.common.domain.entity;

import com.bumptech.glide.load.Option;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IncomingProtocolType {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ IncomingProtocolType[] $VALUES;
    public static final Option.AnonymousClass1 Companion;
    public static final IncomingProtocolType DEFAULT;
    public static final IncomingProtocolType IMAP;
    public final String defaultName;

    static {
        IncomingProtocolType incomingProtocolType = new IncomingProtocolType(0, "IMAP", "imap");
        IMAP = incomingProtocolType;
        IncomingProtocolType[] incomingProtocolTypeArr = {incomingProtocolType, new IncomingProtocolType(1, "POP3", "pop3")};
        $VALUES = incomingProtocolTypeArr;
        $ENTRIES = new EnumEntriesList(incomingProtocolTypeArr);
        Companion = new Option.AnonymousClass1();
        DEFAULT = incomingProtocolType;
    }

    public IncomingProtocolType(int i, String str, String str2) {
        this.defaultName = str2;
    }

    public static IncomingProtocolType valueOf(String str) {
        return (IncomingProtocolType) Enum.valueOf(IncomingProtocolType.class, str);
    }

    public static IncomingProtocolType[] values() {
        return (IncomingProtocolType[]) $VALUES.clone();
    }
}
