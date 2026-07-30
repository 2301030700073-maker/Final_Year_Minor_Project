package defpackage;

/* renamed from: Zt, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC0661Zt extends Q4 {
    /* renamed from: new */
    public abstract void mo821new();

    @Override // androidx.fragment.app.Fragment
    public final void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (!z || getView() == null) {
            return;
        }
        mo821new();
    }
}
