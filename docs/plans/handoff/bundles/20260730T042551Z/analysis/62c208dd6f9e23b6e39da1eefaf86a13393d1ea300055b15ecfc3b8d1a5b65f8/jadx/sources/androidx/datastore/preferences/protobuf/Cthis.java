package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cfinal;
import defpackage.C0705ah;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.this, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthis {

    /* renamed from: do, reason: not valid java name */
    public static volatile Cthis f6650do;

    /* renamed from: if, reason: not valid java name */
    public static final Cthis f6651if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<Cdo, Cfinal.Ctry<?, ?>> f6652do;

    /* renamed from: androidx.datastore.preferences.protobuf.this$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f6653do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f6654do;

        public Cdo(Object obj, int i) {
            this.f6654do = obj;
            this.f6653do = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return this.f6654do == cdo.f6654do && this.f6653do == cdo.f6653do;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f6654do) * 65535) + this.f6653do;
        }
    }

    static {
        try {
            Class.forName("androidx.datastore.preferences.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
        }
        f6651if = new Cthis(0);
    }

    public Cthis() {
        this.f6652do = new HashMap();
    }

    /* renamed from: do, reason: not valid java name */
    public static Cthis m3994do() {
        Cthis cthis = f6650do;
        if (cthis == null) {
            synchronized (Cthis.class) {
                cthis = f6650do;
                if (cthis == null) {
                    Class<?> cls = C0705ah.f4981do;
                    if (cls != null) {
                        try {
                            cthis = (Cthis) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                        }
                        f6650do = cthis;
                    }
                    cthis = f6651if;
                    f6650do = cthis;
                }
            }
        }
        return cthis;
    }

    public Cthis(int i) {
        this.f6652do = Collections.emptyMap();
    }
}
