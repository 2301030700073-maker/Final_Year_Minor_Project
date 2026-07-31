package androidx.paging;

import androidx.recyclerview.widget.DiffUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PlaceholderPaddedDiffResult {
    public final DiffUtil.DiffResult diff;
    public final boolean hasOverlap;

    public PlaceholderPaddedDiffResult(DiffUtil.DiffResult diffResult, boolean z) {
        this.diff = diffResult;
        this.hasOverlap = z;
    }
}
