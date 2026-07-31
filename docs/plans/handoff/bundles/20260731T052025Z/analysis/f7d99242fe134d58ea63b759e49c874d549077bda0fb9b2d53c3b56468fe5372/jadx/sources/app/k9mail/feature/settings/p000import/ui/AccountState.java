package app.k9mail.feature.settings.p000import.ui;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountState {
    public final String incomingServerName;
    public final boolean incomingServerPasswordNeeded;
    public final String outgoingServerName;
    public final boolean outgoingServerPasswordNeeded;

    public AccountState(String str, String str2, boolean z, boolean z2) {
        this.incomingServerName = str;
        this.outgoingServerName = str2;
        this.incomingServerPasswordNeeded = z;
        this.outgoingServerPasswordNeeded = z2;
    }
}
