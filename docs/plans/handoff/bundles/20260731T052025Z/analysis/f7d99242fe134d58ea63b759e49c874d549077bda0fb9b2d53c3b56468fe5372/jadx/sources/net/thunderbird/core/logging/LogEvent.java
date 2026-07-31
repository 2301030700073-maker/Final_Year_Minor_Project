package net.thunderbird.core.logging;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LogEvent {
    public final LogLevel level;
    public final String message;
    public final String tag;
    public final Throwable throwable;
    public final long timestamp;

    public LogEvent(LogLevel logLevel, String str, String str2, Throwable th, long j) {
        str2.getClass();
        this.level = logLevel;
        this.tag = str;
        this.message = str2;
        this.throwable = th;
        this.timestamp = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogEvent)) {
            return false;
        }
        LogEvent logEvent = (LogEvent) obj;
        return this.level == logEvent.level && Intrinsics.areEqual(this.tag, logEvent.tag) && Intrinsics.areEqual(this.message, logEvent.message) && Intrinsics.areEqual(this.throwable, logEvent.throwable) && this.timestamp == logEvent.timestamp;
    }

    public final int hashCode() {
        int hashCode = this.level.hashCode() * 31;
        String str = this.tag;
        int m = Modifier.CC.m((hashCode + (str == null ? 0 : str.hashCode())) * 31, this.message, 31);
        Throwable th = this.throwable;
        int hashCode2 = (m + (th != null ? th.hashCode() : 0)) * 31;
        long j = this.timestamp;
        return hashCode2 + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "LogEvent(level=" + this.level + ", tag=" + this.tag + ", message=" + this.message + ", throwable=" + this.throwable + ", timestamp=" + this.timestamp + ")";
    }
}
