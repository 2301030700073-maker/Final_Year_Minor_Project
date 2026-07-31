package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.util.NotificationLite;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Notification {
    public static final Notification COMPLETE = new Notification(null);
    public final Object value;

    public Notification(Object obj) {
        this.value = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Notification) {
            return Objects.equals(this.value, ((Notification) obj).value);
        }
        return false;
    }

    public final Object getValue() {
        Object obj = this.value;
        if (obj == null || (obj instanceof NotificationLite.ErrorNotification)) {
            return null;
        }
        return obj;
    }

    public final int hashCode() {
        Object obj = this.value;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        Object obj = this.value;
        if (obj == null) {
            return "OnCompleteNotification";
        }
        if (obj instanceof NotificationLite.ErrorNotification) {
            return "OnErrorNotification[" + NotificationLite.getError(obj) + "]";
        }
        return "OnNextNotification[" + obj + "]";
    }
}
