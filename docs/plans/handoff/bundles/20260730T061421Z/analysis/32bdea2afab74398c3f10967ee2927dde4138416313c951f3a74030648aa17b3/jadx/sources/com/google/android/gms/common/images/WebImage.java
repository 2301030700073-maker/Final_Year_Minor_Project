package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.i.b;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class WebImage extends zzbkv {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final int f3396a;

    /* renamed from: b, reason: collision with root package name */
    public final Uri f3397b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3398c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3399d;

    public WebImage(int i, Uri uri, int i2, int i3) {
        this.f3396a = i;
        this.f3397b = uri;
        this.f3398c = i2;
        this.f3399d = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (a.p0(this.f3397b, webImage.f3397b) && this.f3398c == webImage.f3398c && this.f3399d == webImage.f3399d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3397b, Integer.valueOf(this.f3398c), Integer.valueOf(this.f3399d)});
    }

    public final String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.f3398c), Integer.valueOf(this.f3399d), this.f3397b.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3396a);
        a.b0(parcel, 2, this.f3397b, i, false);
        a.s0(parcel, 3, this.f3398c);
        a.s0(parcel, 4, this.f3399d);
        a.H0(parcel, q0);
    }
}
