package defpackage;

import androidx.activity.ComponentActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* renamed from: ak, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0708ak {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0768bk<C3206kJ> f5004do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f5005do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f5006do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f5007do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f5008do;

    public C0708ak(ComponentActivity.Ctry ctry, C2675e9 c2675e9) {
        this.f5007do = ctry;
        this.f5004do = c2675e9;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3152do() {
        synchronized (this.f5005do) {
            this.f5008do = true;
            Iterator it = this.f5006do.iterator();
            while (it.hasNext()) {
                ((InterfaceC0768bk) it.next()).mo585new();
            }
            this.f5006do.clear();
            C3206kJ c3206kJ = C3206kJ.f13965do;
        }
    }
}
