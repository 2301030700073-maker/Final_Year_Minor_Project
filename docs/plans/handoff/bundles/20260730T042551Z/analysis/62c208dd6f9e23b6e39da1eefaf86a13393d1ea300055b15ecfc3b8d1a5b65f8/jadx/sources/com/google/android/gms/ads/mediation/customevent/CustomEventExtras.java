package com.google.android.gms.ads.mediation.customevent;

import java.util.HashMap;

@Deprecated
/* loaded from: classes.dex */
public final class CustomEventExtras {

    /* renamed from: do, reason: not valid java name */
    public final HashMap f9949do = new HashMap();

    public Object getExtra(String str) {
        return this.f9949do.get(str);
    }

    public void setExtra(String str, Object obj) {
        this.f9949do.put(str, obj);
    }
}
