package com.google.android.gms.common.server.response;

import c.b.a.c.d.k.a.b;
import com.google.android.gms.internal.zzbkz;

/* loaded from: classes.dex */
public abstract class FastSafeParcelableJsonResponse extends b implements zzbkz {
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!getClass().isInstance(obj)) {
            return false;
        }
        b bVar = (b) obj;
        for (FastJsonResponse$Field fastJsonResponse$Field : a().values()) {
            if (f(fastJsonResponse$Field)) {
                if (!bVar.f(fastJsonResponse$Field)) {
                    return false;
                }
                b(fastJsonResponse$Field);
                throw null;
            }
            if (bVar.f(fastJsonResponse$Field)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        for (FastJsonResponse$Field fastJsonResponse$Field : a().values()) {
            if (f(fastJsonResponse$Field)) {
                b(fastJsonResponse$Field);
                throw null;
            }
        }
        return 0;
    }
}
