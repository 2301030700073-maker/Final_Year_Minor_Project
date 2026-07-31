package net.newpipe.app.screen.about;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutPageKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ int f$3;

    public /* synthetic */ AboutPageKt$$ExternalSyntheticLambda4(List list, Function1 function1, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = list;
        this.f$1 = function1;
        this.f$3 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        Function1 function1 = this.f$1;
        List list = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                AboutPageKt.AboutPageContent(list, function1, composer, Updater.updateChangedFlags(1), i2);
                break;
            default:
                AboutPageKt.LicensePageContent(list, function1, composer, Updater.updateChangedFlags(1), i2);
                break;
        }
        return unit;
    }
}
