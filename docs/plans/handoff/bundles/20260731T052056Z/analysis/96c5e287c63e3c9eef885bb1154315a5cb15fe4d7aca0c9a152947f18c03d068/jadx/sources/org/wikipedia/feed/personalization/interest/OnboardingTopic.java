package org.wikipedia.feed.personalization.interest;

import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.topics.ArticleTopic;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnboardingTopic {
    public final boolean isSelected;
    public final ArticleTopic topic;

    public OnboardingTopic(ArticleTopic articleTopic, boolean z) {
        articleTopic.getClass();
        this.topic = articleTopic;
        this.isSelected = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnboardingTopic)) {
            return false;
        }
        OnboardingTopic onboardingTopic = (OnboardingTopic) obj;
        return Intrinsics.areEqual(this.topic, onboardingTopic.topic) && this.isSelected == onboardingTopic.isSelected;
    }

    public final int hashCode() {
        return (this.topic.hashCode() * 31) + (this.isSelected ? 1231 : 1237);
    }

    public final String toString() {
        return "OnboardingTopic(topic=" + this.topic + ", isSelected=" + this.isSelected + ")";
    }
}
