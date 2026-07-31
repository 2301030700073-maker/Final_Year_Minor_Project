package net.thunderbird.core.common.mail;

import kotlin.enums.EnumEntries;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Flag {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Flag[] $VALUES;
    public static final Flag DELETED = new Flag("DELETED", 0);
    public static final Flag SEEN = new Flag("SEEN", 1);
    public static final Flag ANSWERED = new Flag("ANSWERED", 2);
    public static final Flag FLAGGED = new Flag("FLAGGED", 3);
    public static final Flag DRAFT = new Flag("DRAFT", 4);
    public static final Flag RECENT = new Flag("RECENT", 5);
    public static final Flag FORWARDED = new Flag("FORWARDED", 6);
    public static final Flag X_DESTROYED = new Flag("X_DESTROYED", 7);
    public static final Flag X_SEND_FAILED = new Flag("X_SEND_FAILED", 8);
    public static final Flag X_SEND_IN_PROGRESS = new Flag("X_SEND_IN_PROGRESS", 9);
    public static final Flag X_DOWNLOADED_FULL = new Flag("X_DOWNLOADED_FULL", 10);
    public static final Flag X_DOWNLOADED_PARTIAL = new Flag("X_DOWNLOADED_PARTIAL", 11);
    public static final Flag X_REMOTE_COPY_STARTED = new Flag("X_REMOTE_COPY_STARTED", 12);
    public static final Flag X_MIGRATED_FROM_V50 = new Flag("X_MIGRATED_FROM_V50", 13);
    public static final Flag X_DRAFT_OPENPGP_INLINE = new Flag("X_DRAFT_OPENPGP_INLINE", 14);
    public static final Flag X_SUBJECT_DECRYPTED = new Flag("X_SUBJECT_DECRYPTED", 15);

    private static final /* synthetic */ Flag[] $values() {
        return new Flag[]{DELETED, SEEN, ANSWERED, FLAGGED, DRAFT, RECENT, FORWARDED, X_DESTROYED, X_SEND_FAILED, X_SEND_IN_PROGRESS, X_DOWNLOADED_FULL, X_DOWNLOADED_PARTIAL, X_REMOTE_COPY_STARTED, X_MIGRATED_FROM_V50, X_DRAFT_OPENPGP_INLINE, X_SUBJECT_DECRYPTED};
    }

    static {
        Flag[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private Flag(String str, int i) {
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static Flag valueOf(String str) {
        return (Flag) Enum.valueOf(Flag.class, str);
    }

    public static Flag[] values() {
        return (Flag[]) $VALUES.clone();
    }
}
