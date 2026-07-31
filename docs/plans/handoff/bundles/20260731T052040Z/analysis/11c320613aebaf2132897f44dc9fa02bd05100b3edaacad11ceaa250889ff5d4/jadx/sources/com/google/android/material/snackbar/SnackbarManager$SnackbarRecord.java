package com.google.android.material.snackbar;

import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SnackbarManager$SnackbarRecord {
    public final WeakReference callback;
    public int duration;
    public boolean paused;

    public SnackbarManager$SnackbarRecord(int i, BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
        this.callback = new WeakReference(anonymousClass5);
        this.duration = i;
    }
}
