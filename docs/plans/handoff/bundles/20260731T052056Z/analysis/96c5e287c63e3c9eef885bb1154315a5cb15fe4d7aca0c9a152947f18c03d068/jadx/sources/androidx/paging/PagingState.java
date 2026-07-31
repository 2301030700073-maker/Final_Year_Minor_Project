package androidx.paging;

import androidx.compose.animation.core.Animation;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagingState {
    public final Integer anchorPosition;
    public final PagingConfig config;
    public final int leadingPlaceholderCount;
    public final List pages;

    public PagingState(List list, Integer num, PagingConfig pagingConfig, int i) {
        this.pages = list;
        this.anchorPosition = num;
        this.config = pagingConfig;
        this.leadingPlaceholderCount = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PagingState)) {
            return false;
        }
        PagingState pagingState = (PagingState) obj;
        return this.pages.equals(pagingState.pages) && Intrinsics.areEqual(this.anchorPosition, pagingState.anchorPosition) && this.config == pagingState.config && this.leadingPlaceholderCount == pagingState.leadingPlaceholderCount;
    }

    public final int hashCode() {
        int hashCode = this.pages.hashCode();
        Integer num = this.anchorPosition;
        return this.config.hashCode() + hashCode + (num != null ? num.hashCode() : 0) + this.leadingPlaceholderCount;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PagingState(pages=");
        sb.append(this.pages);
        sb.append(", anchorPosition=");
        sb.append(this.anchorPosition);
        sb.append(", config=");
        sb.append(this.config);
        sb.append(", leadingPlaceholderCount=");
        return Animation.CC.m(sb, this.leadingPlaceholderCount, ')');
    }
}
