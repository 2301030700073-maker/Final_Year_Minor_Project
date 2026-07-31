package com.fsck.k9.notification;

import androidx.camera.core.impl.Config;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationAppearance {
    public final Integer ledColor;
    public final String ringtone;
    public final long[] vibrationPattern;

    public NotificationAppearance(String str, long[] jArr, Integer num) {
        this.ringtone = str;
        this.vibrationPattern = jArr;
        this.ledColor = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationAppearance)) {
            return false;
        }
        NotificationAppearance notificationAppearance = (NotificationAppearance) obj;
        return Intrinsics.areEqual(this.ringtone, notificationAppearance.ringtone) && Intrinsics.areEqual(this.vibrationPattern, notificationAppearance.vibrationPattern) && Intrinsics.areEqual(this.ledColor, notificationAppearance.ledColor);
    }

    public final int hashCode() {
        String str = this.ringtone;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        long[] jArr = this.vibrationPattern;
        int hashCode2 = (hashCode + (jArr == null ? 0 : Arrays.hashCode(jArr))) * 31;
        Integer num = this.ledColor;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("NotificationAppearance(ringtone=", this.ringtone, ", vibrationPattern=", Arrays.toString(this.vibrationPattern), ", ledColor=");
        m.append(this.ledColor);
        m.append(")");
        return m.toString();
    }
}
