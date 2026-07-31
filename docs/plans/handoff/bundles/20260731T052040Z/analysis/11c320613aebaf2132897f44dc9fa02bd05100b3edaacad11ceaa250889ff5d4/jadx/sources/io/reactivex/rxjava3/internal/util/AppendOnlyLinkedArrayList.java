package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.util.NotificationLite;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AppendOnlyLinkedArrayList {
    public final Object[] head;
    public int offset;
    public Object[] tail;

    public AppendOnlyLinkedArrayList() {
        Object[] objArr = new Object[5];
        this.head = objArr;
        this.tail = objArr;
    }

    public final boolean accept(Observer observer) {
        Object obj;
        Object[] objArr = this.head;
        while (true) {
            if (objArr == null) {
                return false;
            }
            for (int i = 0; i < 4 && (obj = objArr[i]) != null; i++) {
                if (obj == NotificationLite.COMPLETE) {
                    observer.onComplete();
                    return true;
                }
                if (obj instanceof NotificationLite.ErrorNotification) {
                    observer.onError(((NotificationLite.ErrorNotification) obj).e);
                    return true;
                }
                observer.onNext(obj);
            }
            objArr = objArr[4];
        }
    }

    public final void add(Object obj) {
        int i = this.offset;
        if (i == 4) {
            Object[] objArr = new Object[5];
            this.tail[4] = objArr;
            this.tail = objArr;
            i = 0;
        }
        this.tail[i] = obj;
        this.offset = i + 1;
    }
}
