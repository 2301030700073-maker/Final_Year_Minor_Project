package androidx.compose.runtime.composer.gapbuffer;

import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class GapGroupSourceInformation {
    public ArrayList groups;

    public abstract boolean hasAnchor(GapAnchor gapAnchor);

    public abstract GapGroupSourceInformation openInformation();

    public abstract boolean removeAnchor(GapAnchor gapAnchor);
}
