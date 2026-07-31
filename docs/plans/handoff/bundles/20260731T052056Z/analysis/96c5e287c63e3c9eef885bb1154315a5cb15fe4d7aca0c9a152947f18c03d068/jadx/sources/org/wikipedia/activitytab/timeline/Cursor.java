package org.wikipedia.activitytab.timeline;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Cursor {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HistoryEntryCursor extends Cursor {
        public final int offset;

        public HistoryEntryCursor(int i) {
            this.offset = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HistoryEntryCursor) && this.offset == ((HistoryEntryCursor) obj).offset;
        }

        public final int hashCode() {
            return this.offset;
        }

        public final String toString() {
            return Animation.CC.m(this.offset, "HistoryEntryCursor(offset=", ")");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReadingListCursor extends Cursor {
        public final int offset;

        public ReadingListCursor(int i) {
            this.offset = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ReadingListCursor) && this.offset == ((ReadingListCursor) obj).offset;
        }

        public final int hashCode() {
            return this.offset;
        }

        public final String toString() {
            return Animation.CC.m(this.offset, "ReadingListCursor(offset=", ")");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UserContribCursor extends Cursor {
        public final String token;

        public UserContribCursor(String str) {
            this.token = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UserContribCursor) && Intrinsics.areEqual(this.token, ((UserContribCursor) obj).token);
        }

        public final int hashCode() {
            String str = this.token;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return Animation.CC.m("UserContribCursor(token=", this.token, ")");
        }
    }
}
