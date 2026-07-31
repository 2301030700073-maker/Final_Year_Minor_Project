package com.braze.support;

import android.graphics.Bitmap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f239a;
    public final Map b;

    public a() {
        this.f239a = null;
        this.b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.areEqual(this.f239a, aVar.f239a) && Intrinsics.areEqual(this.b, aVar.b);
    }

    public final int hashCode() {
        Bitmap bitmap = this.f239a;
        int hashCode = (bitmap == null ? 0 : bitmap.hashCode()) * 31;
        Map map = this.b;
        return hashCode + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        return "BitmapAndHeaders(bitmap=" + this.f239a + ", headers=" + this.b + ')';
    }

    public a(Bitmap bitmap, Map map) {
        this.f239a = bitmap;
        this.b = map;
    }
}
