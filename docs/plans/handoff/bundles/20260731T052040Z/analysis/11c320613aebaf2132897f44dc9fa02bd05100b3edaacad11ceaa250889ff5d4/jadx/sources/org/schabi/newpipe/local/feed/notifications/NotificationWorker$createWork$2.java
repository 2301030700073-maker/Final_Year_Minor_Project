package org.schabi.newpipe.local.feed.notifications;

import io.reactivex.rxjava3.functions.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NotificationWorker$createWork$2 implements Function {
    public static final NotificationWorker$createWork$2 INSTANCE = new NotificationWorker$createWork$2();

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
    
        if (r2.isEmpty() == false) goto L15;
     */
    @Override // io.reactivex.rxjava3.functions.Function
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object apply(java.lang.Object r4) {
        /*
            r3 = this;
            java.util.List r4 = (java.util.List) r4
            r4.getClass()
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.Iterator r4 = r4.iterator()
        Le:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L3c
            java.lang.Object r0 = r4.next()
            io.reactivex.rxjava3.core.Notification r0 = (io.reactivex.rxjava3.core.Notification) r0
            java.lang.Object r0 = r0.getValue()
            org.schabi.newpipe.local.feed.service.FeedUpdateInfo r0 = (org.schabi.newpipe.local.feed.service.FeedUpdateInfo) r0
            r1 = 0
            if (r0 == 0) goto L2e
            java.util.ArrayList r2 = r0.newStreams
            if (r2 == 0) goto L30
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto L2e
            goto L36
        L2e:
            r0 = r1
            goto L36
        L30:
            java.lang.String r3 = "newStreams"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            throw r1
        L36:
            if (r0 == 0) goto Le
            r3.add(r0)
            goto Le
        L3c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.local.feed.notifications.NotificationWorker$createWork$2.apply(java.lang.Object):java.lang.Object");
    }
}
