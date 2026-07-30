package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: Vd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0557Vd extends C0623Yd {

    /* renamed from: do, reason: not valid java name */
    public final List<C0793c9<?>> f4161do;

    public C0557Vd(ArrayList arrayList) {
        super("Dependency cycle detected: " + Arrays.toString(arrayList.toArray()));
        this.f4161do = arrayList;
    }
}
