package org.wikipedia.settings.homefeed;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FeedConfigurationItem {
    public final int description;
    public final int icon;
    public final int title;
    public final FeedConfigurationType type;

    public FeedConfigurationItem(int i, int i2, int i3, FeedConfigurationType feedConfigurationType) {
        feedConfigurationType.getClass();
        this.title = i;
        this.description = i2;
        this.icon = i3;
        this.type = feedConfigurationType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedConfigurationItem)) {
            return false;
        }
        FeedConfigurationItem feedConfigurationItem = (FeedConfigurationItem) obj;
        return this.title == feedConfigurationItem.title && this.description == feedConfigurationItem.description && this.icon == feedConfigurationItem.icon && this.type == feedConfigurationItem.type;
    }

    public final int hashCode() {
        return this.type.hashCode() + (((((this.title * 31) + this.description) * 31) + this.icon) * 31);
    }

    public final String toString() {
        StringBuilder m = Animation.CC.m(this.title, this.description, "FeedConfigurationItem(title=", ", description=", ", icon=");
        m.append(this.icon);
        m.append(", type=");
        m.append(this.type);
        m.append(")");
        return m.toString();
    }
}
