package net.thunderbird.core.common.action;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum SwipeAction {
    None(false),
    ToggleSelection(false),
    ToggleRead(false),
    ToggleStar(false),
    Archive(true),
    ArchiveDisabled(false),
    ArchiveSetupArchiveFolder(false),
    Delete(true),
    Spam(true),
    Move(true);

    public final boolean removesItem;

    SwipeAction(boolean z) {
        this.removesItem = z;
    }
}
