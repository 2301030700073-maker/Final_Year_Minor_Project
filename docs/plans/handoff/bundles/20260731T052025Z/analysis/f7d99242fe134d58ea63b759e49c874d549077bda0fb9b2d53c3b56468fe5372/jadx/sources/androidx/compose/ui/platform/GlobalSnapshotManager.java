package androidx.compose.ui.platform;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class GlobalSnapshotManager {
    public static final AtomicBoolean started = new AtomicBoolean(false);
    public static final AtomicBoolean sent = new AtomicBoolean(false);
}
