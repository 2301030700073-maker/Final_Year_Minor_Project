package defpackage;

import defpackage.C3128j0;
import j$.util.function.Consumer$CC;
import java.util.List;
import java.util.function.Consumer;

/* renamed from: e0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C2666e0 implements Consumer {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f12560do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3128j0.Ctry f12561do;

    public /* synthetic */ C2666e0(C3128j0.Ctry ctry, int i) {
        this.f12560do = i;
        this.f12561do = ctry;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f12560do;
        C3128j0.Ctry ctry = this.f12561do;
        switch (i) {
        }
        ((C2876hb) ctry).m6820do((List) obj);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f12560do) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
