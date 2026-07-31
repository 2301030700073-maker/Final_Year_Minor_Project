package org.schabi.newpipe.local.feed.notifications;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceManager;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScheduleOptions {
    public static final Companion Companion = new Companion();
    public final long interval;
    public final boolean isRequireNonMeteredNetwork;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
        public static ScheduleOptions from(Context context) {
            SharedPreferences sharedPreferences = context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
            sharedPreferences.getClass();
            String string = context.getString(R.string.streams_notifications_interval_key);
            string.getClass();
            String string2 = context.getString(R.string.streams_notifications_interval_default);
            string2.getClass();
            String string3 = sharedPreferences.getString(string, null);
            if (string3 != null) {
                string2 = string3;
            }
            return new ScheduleOptions(TimeUnit.SECONDS.toMillis(Long.parseLong(string2)), Intrinsics.areEqual(sharedPreferences.getString(context.getString(R.string.streams_notifications_network_key), context.getString(R.string.streams_notifications_network_default)), context.getString(R.string.streams_notifications_network_wifi)));
        }
    }

    public ScheduleOptions(long j, boolean z) {
        this.interval = j;
        this.isRequireNonMeteredNetwork = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ScheduleOptions)) {
            return false;
        }
        ScheduleOptions scheduleOptions = (ScheduleOptions) obj;
        return this.interval == scheduleOptions.interval && this.isRequireNonMeteredNetwork == scheduleOptions.isRequireNonMeteredNetwork;
    }

    public final int hashCode() {
        long j = this.interval;
        return (((int) (j ^ (j >>> 32))) * 31) + (this.isRequireNonMeteredNetwork ? 1231 : 1237);
    }

    public final String toString() {
        return "ScheduleOptions(interval=" + this.interval + ", isRequireNonMeteredNetwork=" + this.isRequireNonMeteredNetwork + ")";
    }
}
