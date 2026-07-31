package org.wikipedia.topics;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleTopic {
    public final int msgKey;
    public final String queryTopicId;
    public final String topicId;

    public ArticleTopic(int i, String str, String str2) {
        this.topicId = str;
        this.msgKey = i;
        this.queryTopicId = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ArticleTopic)) {
            return false;
        }
        ArticleTopic articleTopic = (ArticleTopic) obj;
        return this.topicId.equals(articleTopic.topicId) && this.msgKey == articleTopic.msgKey && this.queryTopicId.equals(articleTopic.queryTopicId);
    }

    public final int hashCode() {
        return this.queryTopicId.hashCode() + (((this.topicId.hashCode() * 31) + this.msgKey) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ArticleTopic(topicId=");
        sb.append(this.topicId);
        sb.append(", msgKey=");
        sb.append(this.msgKey);
        sb.append(", queryTopicId=");
        return Animation.CC.m(sb, this.queryTopicId, ")");
    }
}
