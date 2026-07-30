package defpackage;

import defpackage.C3128j0;
import j$.util.function.Consumer$CC;
import java.util.List;
import java.util.function.Consumer;

/* renamed from: g0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C2784g0 implements Consumer {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3128j0.Ctry f13024do;

    public /* synthetic */ C2784g0(C3128j0.Ctry ctry) {
        this.f13024do = ctry;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((C2876hb) this.f13024do).m6820do((List) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
