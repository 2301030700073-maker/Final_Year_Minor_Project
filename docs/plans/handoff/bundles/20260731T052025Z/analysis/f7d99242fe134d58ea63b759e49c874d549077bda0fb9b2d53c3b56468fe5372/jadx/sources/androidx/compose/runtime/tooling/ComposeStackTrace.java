package androidx.compose.runtime.tooling;

import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposeStackTrace {
    public final List frames;
    public final boolean hasSourceInformation;

    public ComposeStackTrace(List list, boolean z) {
        this.frames = list;
        this.hasSourceInformation = z;
    }
}
