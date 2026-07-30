package defpackage;

/* loaded from: classes3.dex */
public final class KT extends EP {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f1813do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AbstractC3863vS f1814do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ KT(AbstractC3863vS abstractC3863vS, InterfaceC3511pT interfaceC3511pT, int i) {
        super(interfaceC3511pT);
        this.f1813do = i;
        this.f1814do = abstractC3863vS;
    }

    @Override // defpackage.EP
    /* renamed from: for */
    public final void mo451for() {
        int i = this.f1813do;
        AbstractC3863vS abstractC3863vS = this.f1814do;
        switch (i) {
            case 0:
                ((C4041yT) abstractC3863vS).a();
                break;
            default:
                ((C3217kU) abstractC3863vS).mo2249case().f13722new.m7369if("Tasks have been queued for a long time");
                break;
        }
    }
}
