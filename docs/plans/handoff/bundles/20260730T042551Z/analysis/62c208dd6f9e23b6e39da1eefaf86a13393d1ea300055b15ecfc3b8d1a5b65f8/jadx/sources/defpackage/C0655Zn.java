package defpackage;

import android.view.View;
import defpackage.C2924iM;
import java.util.Iterator;
import java.util.List;

/* renamed from: Zn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0655Zn extends C2924iM.Cif {

    /* renamed from: do, reason: not valid java name */
    public final View f4897do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f4898do = new int[2];

    /* renamed from: for, reason: not valid java name */
    public int f4899for;

    /* renamed from: if, reason: not valid java name */
    public int f4900if;

    public C0655Zn(View view) {
        this.f4897do = view;
    }

    @Override // defpackage.C2924iM.Cif
    /* renamed from: do, reason: not valid java name */
    public final C3150jM mo3066do(C3150jM c3150jM, List<C2924iM> list) {
        Iterator<C2924iM> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((it.next().f13466do.mo6901for() & 8) != 0) {
                this.f4897do.setTranslationY(C2785g1.m6710if(r0.f13466do.mo6902if(), this.f4899for, 0));
                break;
            }
        }
        return c3150jM;
    }
}
