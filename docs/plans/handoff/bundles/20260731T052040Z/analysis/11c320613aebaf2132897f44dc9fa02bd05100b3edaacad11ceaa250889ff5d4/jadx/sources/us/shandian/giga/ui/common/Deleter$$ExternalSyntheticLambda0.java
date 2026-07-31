package us.shandian.giga.ui.common;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Deleter$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Deleter f$0;

    public /* synthetic */ Deleter$$ExternalSyntheticLambda0(Deleter deleter, int i) {
        this.$r8$classId = i;
        this.f$0 = deleter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Deleter deleter = this.f$0;
        switch (i) {
            case 0:
                deleter.show();
                break;
            case 1:
                Deleter.$r8$lambda$fRH27PItlkc7g0X38LEPA6BZ9V8(deleter);
                break;
            default:
                deleter.commit();
                break;
        }
    }
}
