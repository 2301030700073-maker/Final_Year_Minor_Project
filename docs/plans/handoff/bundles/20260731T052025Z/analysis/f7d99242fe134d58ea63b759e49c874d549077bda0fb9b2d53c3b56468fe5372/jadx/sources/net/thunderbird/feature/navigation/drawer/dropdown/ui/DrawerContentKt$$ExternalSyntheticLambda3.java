package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$Event;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DrawerContentKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ DisplayAccount f$1;

    public /* synthetic */ DrawerContentKt$$ExternalSyntheticLambda3(Function1 function1, DisplayAccount displayAccount, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = displayAccount;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        DisplayAccount displayAccount = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(new DrawerContract$Event.OnAccountViewClick(displayAccount));
                break;
            case 1:
                function1.invoke(displayAccount);
                break;
            default:
                function1.invoke(displayAccount);
                break;
        }
        return unit;
    }
}
