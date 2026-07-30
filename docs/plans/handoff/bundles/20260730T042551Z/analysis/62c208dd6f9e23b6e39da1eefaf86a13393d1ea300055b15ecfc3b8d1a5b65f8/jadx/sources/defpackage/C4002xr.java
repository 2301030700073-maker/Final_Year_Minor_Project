package defpackage;

import androidx.datastore.preferences.protobuf.Cdefault;
import androidx.datastore.preferences.protobuf.Cextends;

/* renamed from: xr, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4002xr {

    /* renamed from: do, reason: not valid java name */
    public static final Cdefault f16623do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cextends f16624do;

    static {
        Cdefault cdefault;
        try {
            cdefault = (Cdefault) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            cdefault = null;
        }
        f16623do = cdefault;
        f16624do = new Cextends();
    }
}
