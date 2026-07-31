package androidx.glance.appwidget;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AppWidgetId {
    public final int appWidgetId;

    public AppWidgetId(int i) {
        this.appWidgetId = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AppWidgetId) && this.appWidgetId == ((AppWidgetId) obj).appWidgetId;
    }

    public final int hashCode() {
        return this.appWidgetId;
    }

    public final String toString() {
        return Animation.CC.m(new StringBuilder("AppWidgetId(appWidgetId="), this.appWidgetId, ')');
    }
}
