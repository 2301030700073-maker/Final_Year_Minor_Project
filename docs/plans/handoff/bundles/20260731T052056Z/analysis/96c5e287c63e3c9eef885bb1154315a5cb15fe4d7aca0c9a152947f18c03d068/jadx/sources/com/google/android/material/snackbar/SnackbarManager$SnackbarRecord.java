package com.google.android.material.snackbar;

import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
