package defpackage;

import android.content.Context;
import android.util.Base64OutputStream;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: md, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3340md implements InterfaceC0631Yl, InterfaceC0653Zl {

    /* renamed from: do, reason: not valid java name */
    public final Context f14368do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<InterfaceC0609Xl> f14369do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f14370do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3655ry<C0710am> f14371do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3655ry<FJ> f14372if;

    public C3340md() {
        throw null;
    }

    public C3340md(final Context context, final String str, Set<InterfaceC0609Xl> set, InterfaceC3655ry<FJ> interfaceC3655ry, Executor executor) {
        this.f14371do = new InterfaceC3655ry() { // from class: ld
            @Override // defpackage.InterfaceC3655ry
            public final Object get() {
                return new C0710am(context, str);
            }
        };
        this.f14369do = set;
        this.f14370do = executor;
        this.f14372if = interfaceC3655ry;
        this.f14368do = context;
    }

    @Override // defpackage.InterfaceC0631Yl
    /* renamed from: do */
    public final XV mo2948do() {
        return GJ.m724do(this.f14368do) ^ true ? LG.m1320try(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) : LG.m1316for(new Callable() { // from class: jd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String byteArrayOutputStream;
                C3340md c3340md = C3340md.this;
                synchronized (c3340md) {
                    C0710am c0710am = c3340md.f14371do.get();
                    ArrayList m3161for = c0710am.m3161for();
                    c0710am.m3163if();
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i < m3161for.size(); i++) {
                        AbstractC0770bm abstractC0770bm = (AbstractC0770bm) m3161for.get(i);
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("agent", abstractC0770bm.mo4810if());
                        jSONObject.put("dates", new JSONArray((Collection) abstractC0770bm.mo4809do()));
                        jSONArray.put(jSONObject);
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("heartbeats", jSONArray);
                    jSONObject2.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, "2");
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
                    try {
                        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                        try {
                            gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                            gZIPOutputStream.close();
                            base64OutputStream.close();
                            byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
                        } finally {
                        }
                    } finally {
                    }
                }
                return byteArrayOutputStream;
            }
        }, this.f14370do);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7459for() {
        if (this.f14369do.size() <= 0) {
            LG.m1320try(null);
            return;
        }
        int i = 1;
        if (!GJ.m724do(this.f14368do)) {
            LG.m1320try(null);
        } else {
            LG.m1316for(new CallableC2738fD(this, i), this.f14370do);
        }
    }

    @Override // defpackage.InterfaceC0653Zl
    /* renamed from: if */
    public final synchronized int mo3065if() {
        long currentTimeMillis = System.currentTimeMillis();
        C0710am c0710am = this.f14371do.get();
        if (!c0710am.m3165this(currentTimeMillis)) {
            return 1;
        }
        c0710am.m3160else();
        return 3;
    }
}
