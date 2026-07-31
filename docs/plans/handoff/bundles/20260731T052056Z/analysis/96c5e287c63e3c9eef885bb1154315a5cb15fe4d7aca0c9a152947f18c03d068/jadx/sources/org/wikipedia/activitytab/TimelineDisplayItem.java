package org.wikipedia.activitytab;

import java.util.Date;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.activitytab.timeline.TimelineItem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TimelineDisplayItem {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DateSeparator extends TimelineDisplayItem {
        public final Date date;

        public DateSeparator(Date date) {
            date.getClass();
            this.date = date;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DateSeparator) && Intrinsics.areEqual(this.date, ((DateSeparator) obj).date);
        }

        public final int hashCode() {
            return this.date.hashCode();
        }

        public final String toString() {
            return "DateSeparator(date=" + this.date + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TimelineEntry extends TimelineDisplayItem {
        public final TimelineItem item;

        public TimelineEntry(TimelineItem timelineItem) {
            timelineItem.getClass();
            this.item = timelineItem;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TimelineEntry) && Intrinsics.areEqual(this.item, ((TimelineEntry) obj).item);
        }

        public final int hashCode() {
            return this.item.hashCode();
        }

        public final String toString() {
            return "TimelineEntry(item=" + this.item + ")";
        }
    }
}
