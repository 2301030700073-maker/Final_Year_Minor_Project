package org.schabi.newpipe.database.feed.model;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupEntity {
    public static final Companion Companion = new Companion();
    public final FeedGroupIcon icon;
    public final String name;
    public long sortOrder;
    public final long uid;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public FeedGroupEntity(long j, String str, FeedGroupIcon feedGroupIcon, long j2) {
        str.getClass();
        feedGroupIcon.getClass();
        this.uid = j;
        this.name = str;
        this.icon = feedGroupIcon;
        this.sortOrder = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedGroupEntity)) {
            return false;
        }
        FeedGroupEntity feedGroupEntity = (FeedGroupEntity) obj;
        return this.uid == feedGroupEntity.uid && Intrinsics.areEqual(this.name, feedGroupEntity.name) && this.icon == feedGroupEntity.icon && this.sortOrder == feedGroupEntity.sortOrder;
    }

    public final int hashCode() {
        long j = this.uid;
        int hashCode = (this.icon.hashCode() + Modifier.CC.m(((int) (j ^ (j >>> 32))) * 31, 31, this.name)) * 31;
        long j2 = this.sortOrder;
        return hashCode + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        long j = this.sortOrder;
        StringBuilder sb = new StringBuilder("FeedGroupEntity(uid=");
        sb.append(this.uid);
        sb.append(", name=");
        sb.append(this.name);
        sb.append(", icon=");
        sb.append(this.icon);
        sb.append(", sortOrder=");
        return Modifier.CC.m(j, ")", sb);
    }
}
