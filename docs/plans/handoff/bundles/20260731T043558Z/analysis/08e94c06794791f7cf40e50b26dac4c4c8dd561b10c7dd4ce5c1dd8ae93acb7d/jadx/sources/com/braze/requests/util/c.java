package com.braze.requests.util;

import android.net.Uri;
import java.net.URL;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f205a;
    public final Uri b;
    public final URL c;
    public final boolean d;

    public c(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.b = uri;
        String uri2 = uri.toString();
        this.f205a = uri2;
        this.c = new URL(uri2);
        this.d = false;
    }

    public final String toString() {
        return this.f205a;
    }

    public c(String urlString, boolean z) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        this.b = Uri.parse(urlString);
        this.f205a = urlString;
        this.c = new URL(urlString);
        this.d = z;
    }
}
