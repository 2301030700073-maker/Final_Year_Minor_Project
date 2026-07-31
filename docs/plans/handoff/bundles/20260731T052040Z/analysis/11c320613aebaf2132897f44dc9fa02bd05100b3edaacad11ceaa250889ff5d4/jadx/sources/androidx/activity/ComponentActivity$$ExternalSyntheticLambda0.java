package androidx.activity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentActivity$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComponentActivity f$0;

    public /* synthetic */ ComponentActivity$$ExternalSyntheticLambda0(ComponentActivity componentActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = componentActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        ComponentActivity componentActivity = this.f$0;
        switch (i) {
            case 0:
                componentActivity.invalidateOptionsMenu();
                break;
            default:
                ComponentActivity.$r8$lambda$vCwjfXDiSGcirCy4I008VOiJ_lw(componentActivity);
                break;
        }
    }
}
