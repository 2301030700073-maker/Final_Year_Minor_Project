package com.google.android.material.snackbar;

import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
