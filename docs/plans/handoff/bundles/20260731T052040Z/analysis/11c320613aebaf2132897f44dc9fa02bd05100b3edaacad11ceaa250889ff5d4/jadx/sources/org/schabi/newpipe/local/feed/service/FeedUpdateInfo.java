package org.schabi.newpipe.local.feed.service;

import androidx.compose.ui.Modifier;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedUpdateInfo {
    public final String avatarUrl;
    public final String description;
    public final ArrayList errors;
    public final String name;
    public ArrayList newStreams;
    public final int notificationMode;
    public final int serviceId;
    public final List streams;
    public final Long subscriberCount;
    public final long uid;
    public final String url;

    public FeedUpdateInfo(SubscriptionEntity subscriptionEntity, Info info, List list, ArrayList arrayList) {
        List avatars;
        subscriptionEntity.getClass();
        long j = subscriptionEntity.uid;
        int i = subscriptionEntity.notificationMode;
        String name = info.getName();
        name.getClass();
        boolean z = info instanceof ChannelInfo;
        ChannelInfo channelInfo = z ? (ChannelInfo) info : null;
        String str = (channelInfo == null || (avatars = channelInfo.getAvatars()) == null || (str = ImageStrategy.imageListToDbUrl(avatars)) == null) ? subscriptionEntity.avatarUrl : str;
        String url = info.getUrl();
        url.getClass();
        int serviceId = info.getServiceId();
        ChannelInfo channelInfo2 = z ? (ChannelInfo) info : null;
        String description = channelInfo2 != null ? channelInfo2.getDescription() : null;
        ChannelInfo channelInfo3 = z ? (ChannelInfo) info : null;
        Long valueOf = channelInfo3 != null ? Long.valueOf(channelInfo3.getSubscriberCount()) : null;
        this.uid = j;
        this.notificationMode = i;
        this.name = name;
        this.avatarUrl = str;
        this.url = url;
        this.serviceId = serviceId;
        this.description = description;
        this.subscriberCount = valueOf;
        this.streams = list;
        this.errors = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedUpdateInfo)) {
            return false;
        }
        FeedUpdateInfo feedUpdateInfo = (FeedUpdateInfo) obj;
        return this.uid == feedUpdateInfo.uid && this.notificationMode == feedUpdateInfo.notificationMode && Intrinsics.areEqual(this.name, feedUpdateInfo.name) && Intrinsics.areEqual(this.avatarUrl, feedUpdateInfo.avatarUrl) && Intrinsics.areEqual(this.url, feedUpdateInfo.url) && this.serviceId == feedUpdateInfo.serviceId && Intrinsics.areEqual(this.description, feedUpdateInfo.description) && Intrinsics.areEqual(this.subscriberCount, feedUpdateInfo.subscriberCount) && Intrinsics.areEqual(this.streams, feedUpdateInfo.streams) && Intrinsics.areEqual(this.errors, feedUpdateInfo.errors);
    }

    public final int hashCode() {
        long j = this.uid;
        int m = Modifier.CC.m(((((int) (j ^ (j >>> 32))) * 31) + this.notificationMode) * 31, 31, this.name);
        String str = this.avatarUrl;
        int m2 = (Modifier.CC.m((m + (str == null ? 0 : str.hashCode())) * 31, 31, this.url) + this.serviceId) * 31;
        String str2 = this.description;
        int hashCode = (m2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.subscriberCount;
        return this.errors.hashCode() + ((this.streams.hashCode() + ((hashCode + (l != null ? l.hashCode() : 0)) * 31)) * 31);
    }

    public final String toString() {
        return "FeedUpdateInfo(uid=" + this.uid + ", notificationMode=" + this.notificationMode + ", name=" + this.name + ", avatarUrl=" + this.avatarUrl + ", url=" + this.url + ", serviceId=" + this.serviceId + ", description=" + this.description + ", subscriberCount=" + this.subscriberCount + ", streams=" + this.streams + ", errors=" + this.errors + ")";
    }
}
