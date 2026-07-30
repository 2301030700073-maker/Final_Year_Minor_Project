package defpackage;

import com.google.android.gms.common.util.BiConsumer;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.regex.Pattern;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class H9 {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f1300do;

    /* renamed from: if, reason: not valid java name */
    public static final Pattern f1301if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final D9 f1302do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f1303do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f1304do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final D9 f1305if;

    static {
        Charset.forName("UTF-8");
        f1300do = Pattern.compile("^(1|true|t|yes|y|on)$", 2);
        f1301if = Pattern.compile("^(0|false|f|no|n|off|)$", 2);
    }

    public H9(ScheduledExecutorService scheduledExecutorService, D9 d9, D9 d92) {
        this.f1304do = scheduledExecutorService;
        this.f1302do = d9;
        this.f1305if = d92;
    }

    /* renamed from: for, reason: not valid java name */
    public static HashSet m817for(D9 d9) {
        HashSet hashSet = new HashSet();
        E9 m353for = d9.m353for();
        if (m353for == null) {
            return hashSet;
        }
        Iterator<String> keys = m353for.f745if.keys();
        while (keys.hasNext()) {
            hashSet.add(keys.next());
        }
        return hashSet;
    }

    /* renamed from: new, reason: not valid java name */
    public static String m818new(D9 d9, String str) {
        E9 m353for = d9.m353for();
        if (m353for == null) {
            return null;
        }
        try {
            return m353for.f745if.getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m819do(C3303lz c3303lz) {
        synchronized (this.f1303do) {
            this.f1303do.add(c3303lz);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m820if(E9 e9, String str) {
        if (e9 == null) {
            return;
        }
        synchronized (this.f1303do) {
            Iterator it = this.f1303do.iterator();
            while (it.hasNext()) {
                this.f1304do.execute(new RunnableC0120Bf((BiConsumer) it.next(), str, e9, 1));
            }
        }
    }
}
