package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzcbr extends ScheduledThreadPoolExecutor {
    zzcbr(int i, ThreadFactory threadFactory) {
        super(3, threadFactory);
    }
}
