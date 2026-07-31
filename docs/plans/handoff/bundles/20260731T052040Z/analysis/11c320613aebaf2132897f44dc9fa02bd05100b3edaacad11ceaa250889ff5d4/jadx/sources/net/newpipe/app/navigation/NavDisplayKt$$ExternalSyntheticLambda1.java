package net.newpipe.app.navigation;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavDisplayKt$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Navigator f$0;

    public /* synthetic */ NavDisplayKt$$ExternalSyntheticLambda1(Navigator navigator, int i) {
        this.$r8$classId = i;
        this.f$0 = navigator;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Navigator navigator = this.f$0;
        switch (i) {
            case 0:
                break;
            case 1:
                navigator.navigateUp();
                break;
            case 2:
                navigator.navigateUp();
                break;
            default:
                navigator.navigateUp();
                break;
        }
        return unit;
    }
}
