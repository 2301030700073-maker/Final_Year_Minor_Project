package defpackage;

import java.util.ArrayList;
import java.util.function.IntSupplier;

/* loaded from: classes3.dex */
public final /* synthetic */ class LA implements IntSupplier {
    @Override // java.util.function.IntSupplier
    public final int getAsInt() {
        ArrayList arrayList = MA.f2134do;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }
}
