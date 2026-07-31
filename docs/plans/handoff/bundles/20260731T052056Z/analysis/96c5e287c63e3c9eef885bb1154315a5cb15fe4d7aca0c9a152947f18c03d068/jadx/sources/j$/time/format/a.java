package j$.time.format;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class a extends b0 {
    public final /* synthetic */ a0 d;

    public a(a0 a0Var) {
        this.d = a0Var;
    }

    @Override // j$.time.format.b0
    public final String b(j$.time.chrono.a aVar, j$.time.temporal.n nVar, long j, TextStyle textStyle, Locale locale) {
        return this.d.a(j, textStyle);
    }

    @Override // j$.time.format.b0
    public final String c(j$.time.temporal.n nVar, long j, TextStyle textStyle, Locale locale) {
        return this.d.a(j, textStyle);
    }

    @Override // j$.time.format.b0
    public final Iterator d(j$.time.chrono.a aVar, j$.time.temporal.n nVar, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.d.b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }

    @Override // j$.time.format.b0
    public final Iterator e(j$.time.temporal.n nVar, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.d.b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }
}
