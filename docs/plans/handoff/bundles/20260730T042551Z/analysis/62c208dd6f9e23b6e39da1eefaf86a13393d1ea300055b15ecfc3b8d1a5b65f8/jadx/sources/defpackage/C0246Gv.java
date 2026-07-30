package defpackage;

import androidx.activity.OnBackPressedDispatcher;
import java.util.ListIterator;

/* renamed from: Gv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0246Gv extends AbstractC0459Qp implements InterfaceC0768bk<C3206kJ> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ OnBackPressedDispatcher f1275do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0246Gv(OnBackPressedDispatcher onBackPressedDispatcher) {
        super(0);
        this.f1275do = onBackPressedDispatcher;
    }

    @Override // defpackage.InterfaceC0768bk
    /* renamed from: new */
    public final C3206kJ mo585new() {
        AbstractC0158Cv abstractC0158Cv;
        OnBackPressedDispatcher onBackPressedDispatcher = this.f1275do;
        A2<AbstractC0158Cv> a2 = onBackPressedDispatcher.f5121do;
        ListIterator<AbstractC0158Cv> listIterator = a2.listIterator(a2.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                abstractC0158Cv = null;
                break;
            }
            abstractC0158Cv = listIterator.previous();
            if (abstractC0158Cv.f450do) {
                break;
            }
        }
        onBackPressedDispatcher.f5122do = null;
        return C3206kJ.f13965do;
    }
}
