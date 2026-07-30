package defpackage;

import android.net.Uri;
import java.util.HashSet;

/* renamed from: Oa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0400Oa {

    /* renamed from: do, reason: not valid java name */
    public final HashSet f2650do = new HashSet();

    /* renamed from: Oa$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Uri f2651do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f2652do;

        public Cdo(boolean z, Uri uri) {
            this.f2651do = uri;
            this.f2652do = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Cdo.class != obj.getClass()) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return this.f2652do == cdo.f2652do && this.f2651do.equals(cdo.f2651do);
        }

        public final int hashCode() {
            return (this.f2651do.hashCode() * 31) + (this.f2652do ? 1 : 0);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0400Oa.class != obj.getClass()) {
            return false;
        }
        return this.f2650do.equals(((C0400Oa) obj).f2650do);
    }

    public final int hashCode() {
        return this.f2650do.hashCode();
    }
}
