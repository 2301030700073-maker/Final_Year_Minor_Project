package defpackage;

import androidx.activity.OnBackPressedDispatcher;
import java.util.ListIterator;

/* renamed from: Ev, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0202Ev extends AbstractC0459Qp implements InterfaceC2650dk<B4, C3206kJ> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ OnBackPressedDispatcher f928do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0202Ev(OnBackPressedDispatcher onBackPressedDispatcher) {
        super(1);
        this.f928do = onBackPressedDispatcher;
    }

    @Override // defpackage.InterfaceC2650dk
    /* renamed from: this */
    public final C3206kJ mo364this(B4 b4) {
        AbstractC0158Cv abstractC0158Cv;
        C0173Do.m401try(b4, "backEvent");
        A2<AbstractC0158Cv> a2 = this.f928do.f5121do;
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
        return C3206kJ.f13965do;
    }
}
