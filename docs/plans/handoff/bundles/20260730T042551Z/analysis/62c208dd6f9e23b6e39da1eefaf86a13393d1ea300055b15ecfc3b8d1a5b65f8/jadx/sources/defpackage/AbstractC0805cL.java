package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashSet;

/* renamed from: cL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0805cL {

    /* renamed from: do, reason: not valid java name */
    public final HashMap f8522do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet f8523do = new LinkedHashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile boolean f8524do = false;

    /* renamed from: do, reason: not valid java name */
    public static void m4899do(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: if */
    public void mo4218if() {
    }
}
