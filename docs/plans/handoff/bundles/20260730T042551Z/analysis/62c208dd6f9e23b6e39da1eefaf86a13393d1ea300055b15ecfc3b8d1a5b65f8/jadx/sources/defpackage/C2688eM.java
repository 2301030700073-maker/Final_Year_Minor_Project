package defpackage;

import java.util.ArrayList;

/* renamed from: eM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C2688eM extends C0181Ea {

    /* renamed from: if, reason: not valid java name */
    public ArrayList<C0181Ea> f12669if = new ArrayList<>();

    @Override // defpackage.C0181Ea
    /* renamed from: default */
    public final void mo464default(C2861hI c2861hI) {
        super.mo464default(c2861hI);
        int size = this.f12669if.size();
        for (int i = 0; i < size; i++) {
            this.f12669if.get(i).mo464default(c2861hI);
        }
    }

    /* renamed from: strictfp */
    public void mo619strictfp() {
        ArrayList<C0181Ea> arrayList = this.f12669if;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0181Ea c0181Ea = this.f12669if.get(i);
            if (c0181Ea instanceof C2688eM) {
                ((C2688eM) c0181Ea).mo619strictfp();
            }
        }
    }

    @Override // defpackage.C0181Ea
    /* renamed from: switch */
    public void mo479switch() {
        this.f12669if.clear();
        super.mo479switch();
    }
}
