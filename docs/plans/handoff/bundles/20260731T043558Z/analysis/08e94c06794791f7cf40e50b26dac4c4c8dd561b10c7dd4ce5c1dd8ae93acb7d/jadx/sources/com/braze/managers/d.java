package com.braze.managers;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f113a;
    public final WeakReference b;
    public boolean c;

    public d(String placementId, WeakReference view, boolean z) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(view, "view");
        this.f113a = placementId;
        this.b = view;
        this.c = z;
    }
}
