package defpackage;

import java.util.ArrayList;
import java.util.function.IntSupplier;

/* renamed from: pl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C3525pl implements IntSupplier {
    @Override // java.util.function.IntSupplier
    public final int getAsInt() {
        ArrayList<Integer> arrayList = C0126Bl.f276if;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }
}
