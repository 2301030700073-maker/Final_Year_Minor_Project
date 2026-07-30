package c.b.a.b.a.a.a.a.c.y0;

import android.support.annotation.Nullable;
import java.util.Random;
import java.util.UUID;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final Random f2526a = new Random();

    public static Object a(@Nullable Object obj) {
        if (obj != null) {
            return obj;
        }
        throw null;
    }

    public static String b(String str) {
        String valueOf = String.valueOf(UUID.randomUUID());
        StringBuilder sb = new StringBuilder(valueOf.length() + str.length());
        sb.append(str);
        sb.append(valueOf);
        return sb.toString();
    }

    public static String c(String str, String str2) {
        String valueOf = String.valueOf(UUID.nameUUIDFromBytes(str2.getBytes()));
        StringBuilder sb = new StringBuilder(valueOf.length() + str.length());
        sb.append(str);
        sb.append(valueOf);
        return sb.toString();
    }
}
