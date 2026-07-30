package j$.util.stream;

import java.util.function.Predicate;

/* renamed from: j$.util.stream.r0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3077r0 extends AbstractC3097v0 {
    final /* synthetic */ EnumC3102w0 c;
    final /* synthetic */ Predicate d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C3077r0(EnumC3102w0 enumC3102w0, Predicate predicate) {
        super(enumC3102w0);
        this.c = enumC3102w0;
        this.d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.a) {
            return;
        }
        boolean test = this.d.test(obj);
        EnumC3102w0 enumC3102w0 = this.c;
        z = enumC3102w0.a;
        if (test == z) {
            this.a = true;
            z2 = enumC3102w0.b;
            this.b = z2;
        }
    }
}
