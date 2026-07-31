package androidx.compose.ui.platform;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GlobalSnapshotManager {
    public static final AtomicBoolean started = new AtomicBoolean(false);
    public static final AtomicBoolean sent = new AtomicBoolean(false);
}
