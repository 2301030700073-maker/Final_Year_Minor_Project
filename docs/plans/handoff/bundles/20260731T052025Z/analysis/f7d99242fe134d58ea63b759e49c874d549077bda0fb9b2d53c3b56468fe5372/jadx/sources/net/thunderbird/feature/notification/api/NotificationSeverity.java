package net.thunderbird.feature.notification.api;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum NotificationSeverity {
    Fatal(false),
    /* JADX INFO: Fake field, exist only in values array */
    EF2(false),
    /* JADX INFO: Fake field, exist only in values array */
    EF4(true),
    Warning(true),
    /* JADX INFO: Fake field, exist only in values array */
    EF41(true);

    public final boolean dismissable;

    NotificationSeverity(boolean z) {
        this.dismissable = z;
    }
}
