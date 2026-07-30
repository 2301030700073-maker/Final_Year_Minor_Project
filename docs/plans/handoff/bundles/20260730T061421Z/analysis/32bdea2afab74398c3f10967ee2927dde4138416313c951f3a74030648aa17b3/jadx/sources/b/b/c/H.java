package b.b.c;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import b.b.f.m.C0034k;

/* loaded from: classes.dex */
public final class H {

    /* renamed from: a, reason: collision with root package name */
    public int f253a;

    /* renamed from: b, reason: collision with root package name */
    public int f254b;

    /* renamed from: c, reason: collision with root package name */
    public int f255c;

    /* renamed from: d, reason: collision with root package name */
    public int f256d;
    public ViewGroup e;
    public View f;
    public View g;
    public b.b.f.m.o h;
    public C0034k i;
    public Context j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o = false;
    public boolean p;
    public Bundle q;

    public H(int i) {
        this.f253a = i;
    }

    public void a(b.b.f.m.o oVar) {
        C0034k c0034k;
        b.b.f.m.o oVar2 = this.h;
        if (oVar == oVar2) {
            return;
        }
        if (oVar2 != null) {
            oVar2.t(this.i);
        }
        this.h = oVar;
        if (oVar == null || (c0034k = this.i) == null) {
            return;
        }
        oVar.b(c0034k, oVar.f400a);
    }
}
