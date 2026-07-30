package defpackage;

import androidx.datastore.preferences.protobuf.Cbreak;
import androidx.datastore.preferences.protobuf.Ccatch;

/* renamed from: dh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2647dh {

    /* renamed from: do, reason: not valid java name */
    public static final Cbreak<?> f12522do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ccatch f12523do = new Ccatch();

    static {
        Cbreak<?> cbreak;
        try {
            cbreak = (Cbreak) Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            cbreak = null;
        }
        f12522do = cbreak;
    }
}
