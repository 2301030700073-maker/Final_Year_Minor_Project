package j$.util.stream;

import j$.util.Collection;
import j$.util.List;
import j$.util.Objects;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class l6 extends d6 {
    public ArrayList d;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        this.d.add(obj);
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final void c(long j) {
        if (j < 2147483639) {
            this.d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
        } else {
            j$.nio.file.m.c("Stream size exceeds max array size");
        }
    }

    @Override // j$.util.stream.k5, j$.util.stream.o5
    public final void end() {
        List.EL.sort(this.d, this.b);
        long size = this.d.size();
        o5 o5Var = this.a;
        o5Var.c(size);
        boolean z = this.c;
        ArrayList arrayList = this.d;
        if (z) {
            int size2 = arrayList.size();
            int i = 0;
            while (i < size2) {
                Object obj = arrayList.get(i);
                i++;
                if (o5Var.e()) {
                    break;
                } else {
                    o5Var.s((o5) obj);
                }
            }
        } else {
            Objects.requireNonNull(o5Var);
            Collection.EL.a(arrayList, new j$.desugar.sun.nio.fs.g(15, o5Var));
        }
        o5Var.end();
        this.d = null;
    }
}
