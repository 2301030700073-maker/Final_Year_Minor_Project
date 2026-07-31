package org.schabi.newpipe.local.feed.service;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedLoadState {
    public final int currentProgress;
    public final int maxProgress;
    public final String updateDescription;

    public FeedLoadState(String str, int i, int i2) {
        str.getClass();
        this.updateDescription = str;
        this.maxProgress = i;
        this.currentProgress = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedLoadState)) {
            return false;
        }
        FeedLoadState feedLoadState = (FeedLoadState) obj;
        return Intrinsics.areEqual(this.updateDescription, feedLoadState.updateDescription) && this.maxProgress == feedLoadState.maxProgress && this.currentProgress == feedLoadState.currentProgress;
    }

    public final int hashCode() {
        return (((this.updateDescription.hashCode() * 31) + this.maxProgress) * 31) + this.currentProgress;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FeedLoadState(updateDescription=");
        sb.append(this.updateDescription);
        sb.append(", maxProgress=");
        sb.append(this.maxProgress);
        sb.append(", currentProgress=");
        return Modifier.CC.m(sb, this.currentProgress, ")");
    }
}
