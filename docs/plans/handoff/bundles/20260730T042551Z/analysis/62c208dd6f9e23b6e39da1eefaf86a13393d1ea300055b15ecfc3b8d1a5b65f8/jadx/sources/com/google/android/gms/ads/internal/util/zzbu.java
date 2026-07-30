package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzbu {

    /* renamed from: do, reason: not valid java name */
    public final ConcurrentHashMap f9786do = new ConcurrentHashMap();

    public zzbu() {
        new AtomicInteger(0);
    }

    public final Bitmap zza(Integer num) {
        return (Bitmap) this.f9786do.get(num);
    }
}
