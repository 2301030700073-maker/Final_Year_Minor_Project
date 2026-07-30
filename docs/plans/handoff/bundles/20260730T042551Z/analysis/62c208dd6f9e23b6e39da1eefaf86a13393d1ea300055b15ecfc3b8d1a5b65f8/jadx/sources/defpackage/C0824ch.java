package defpackage;

import com.google.protobuf.Ccase;
import com.google.protobuf.Celse;

/* renamed from: ch, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0824ch {

    /* renamed from: do, reason: not valid java name */
    public static final Ccase<?> f8593do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Celse f8594do = new Celse();

    static {
        Ccase<?> ccase;
        try {
            ccase = (Ccase) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            ccase = null;
        }
        f8593do = ccase;
    }
}
