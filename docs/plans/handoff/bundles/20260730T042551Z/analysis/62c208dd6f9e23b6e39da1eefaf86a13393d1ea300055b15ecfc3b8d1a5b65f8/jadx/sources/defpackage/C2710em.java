package defpackage;

import java.util.Arrays;
import java.util.HashMap;

/* renamed from: em, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C2710em extends C0181Ea implements InterfaceC0829cm {

    /* renamed from: for, reason: not valid java name */
    public C0181Ea[] f12707for = new C0181Ea[4];

    /* renamed from: return, reason: not valid java name */
    public int f12708return = 0;

    @Override // defpackage.InterfaceC0829cm
    /* renamed from: do */
    public final void mo4934do() {
        this.f12708return = 0;
        Arrays.fill(this.f12707for, (Object) null);
    }

    @Override // defpackage.InterfaceC0829cm
    /* renamed from: for */
    public final void mo4935for(C0181Ea c0181Ea) {
        if (c0181Ea == this || c0181Ea == null) {
            return;
        }
        int i = this.f12708return + 1;
        C0181Ea[] c0181EaArr = this.f12707for;
        if (i > c0181EaArr.length) {
            this.f12707for = (C0181Ea[]) Arrays.copyOf(c0181EaArr, c0181EaArr.length * 2);
        }
        C0181Ea[] c0181EaArr2 = this.f12707for;
        int i2 = this.f12708return;
        c0181EaArr2[i2] = c0181Ea;
        this.f12708return = i2 + 1;
    }

    /* renamed from: if */
    public void mo446if() {
    }

    @Override // defpackage.C0181Ea
    /* renamed from: this */
    public void mo480this(C0181Ea c0181Ea, HashMap<C0181Ea, C0181Ea> hashMap) {
        super.mo480this(c0181Ea, hashMap);
        C2710em c2710em = (C2710em) c0181Ea;
        this.f12708return = 0;
        int i = c2710em.f12708return;
        for (int i2 = 0; i2 < i; i2++) {
            mo4935for(hashMap.get(c2710em.f12707for[i2]));
        }
    }
}
