package net.thunderbird.core.ui.compose.designsystem.organism;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okio.Options;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ModalBottomSheetKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ ComposableLambdaImpl f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ ModalBottomSheetKt$$ExternalSyntheticLambda0(Function0 function0, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = composableLambdaImpl;
        this.f$3 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        ComposableLambdaImpl composableLambdaImpl = this.f$2;
        Modifier modifier = this.f$1;
        Function0 function0 = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                Options.Companion.ModalBottomSheet(function0, modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                Jsoup.AccountLayout(function0, modifier, composableLambdaImpl, composer, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }
}
