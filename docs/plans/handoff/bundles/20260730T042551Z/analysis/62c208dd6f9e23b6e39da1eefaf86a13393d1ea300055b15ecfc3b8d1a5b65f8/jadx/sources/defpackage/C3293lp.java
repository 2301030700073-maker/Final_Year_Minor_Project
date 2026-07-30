package defpackage;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

/* renamed from: lp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3293lp {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3352mp f14252do;

    public C3293lp(C3352mp c3352mp) {
        this.f14252do = c3352mp;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m7396do(Object obj) {
        StringWriter stringWriter = new StringWriter();
        try {
            m7397if(obj, stringWriter);
        } catch (IOException unused) {
        }
        return stringWriter.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7397if(Object obj, Writer writer) {
        C3352mp c3352mp = this.f14252do;
        C3588qp c3588qp = new C3588qp(writer, c3352mp.f14398do, c3352mp.f14400if, c3352mp.f14397do, c3352mp.f14399do);
        c3588qp.m7907goto(obj);
        c3588qp.m7906break();
        c3588qp.f15158do.flush();
    }
}
