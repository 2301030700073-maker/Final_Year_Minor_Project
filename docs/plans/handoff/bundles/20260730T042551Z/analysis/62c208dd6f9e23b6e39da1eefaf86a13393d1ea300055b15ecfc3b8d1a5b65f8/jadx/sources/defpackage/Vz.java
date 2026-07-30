package defpackage;

import java.io.Closeable;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public abstract class Vz implements Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SJ.m2149try(mo2490for());
    }

    /* renamed from: do */
    public abstract long mo2489do();

    /* renamed from: for */
    public abstract InterfaceC0671a6 mo2490for();

    /* renamed from: if */
    public abstract C0155Cs mo2491if();

    /* renamed from: new, reason: not valid java name */
    public final String m2682new() {
        Charset charset;
        InterfaceC0671a6 mo2490for = mo2490for();
        try {
            C0155Cs mo2491if = mo2491if();
            if (mo2491if != null) {
                charset = SJ.f3491do;
                try {
                    String str = mo2491if.f441if;
                    if (str != null) {
                        charset = Charset.forName(str);
                    }
                } catch (IllegalArgumentException unused) {
                }
            } else {
                charset = SJ.f3491do;
            }
            return mo2490for.q(SJ.m2139if(mo2490for, charset));
        } finally {
            SJ.m2149try(mo2490for);
        }
    }
}
