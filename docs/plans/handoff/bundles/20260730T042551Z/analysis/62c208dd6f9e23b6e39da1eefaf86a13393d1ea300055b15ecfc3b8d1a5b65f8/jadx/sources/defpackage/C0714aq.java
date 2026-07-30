package defpackage;

import android.content.Context;
import android.os.Trace;
import defpackage.C0774bq;

/* renamed from: aq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0714aq implements InterfaceC3314m9 {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f8234do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f8235do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f8236do;

    public /* synthetic */ C0714aq(String str, Object obj, int i) {
        this.f8234do = i;
        this.f8236do = str;
        this.f8235do = obj;
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try */
    public final Object mo1186try(Xz xz) {
        int i = this.f8234do;
        String str = this.f8236do;
        Object obj = this.f8235do;
        switch (i) {
            case 0:
                return new C2729f4(str, ((C0774bq.Cdo) obj).mo2067if((Context) xz.mo2881for(Context.class)));
            default:
                C0793c9 c0793c9 = (C0793c9) obj;
                try {
                    Trace.beginSection(str);
                    return c0793c9.f8501do.mo1186try(xz);
                } finally {
                    Trace.endSection();
                }
        }
    }
}
