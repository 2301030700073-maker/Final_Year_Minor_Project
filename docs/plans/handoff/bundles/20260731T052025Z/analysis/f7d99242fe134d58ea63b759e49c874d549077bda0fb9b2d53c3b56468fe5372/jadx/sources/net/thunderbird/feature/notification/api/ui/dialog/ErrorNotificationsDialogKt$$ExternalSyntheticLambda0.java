package net.thunderbird.feature.notification.api.ui.dialog;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.collections.immutable.ImmutableSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ErrorNotificationsDialogKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ ImmutableSet f$0;
    public final /* synthetic */ Function0 f$1;
    public final /* synthetic */ Function1 f$2;
    public final /* synthetic */ Modifier f$3;

    public /* synthetic */ ErrorNotificationsDialogKt$$ExternalSyntheticLambda0(ImmutableSet immutableSet, Function0 function0, Function1 function1, Modifier modifier) {
        this.f$0 = immutableSet;
        this.f$1 = function0;
        this.f$2 = function1;
        this.f$3 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    StringsKt__IndentKt.ErrorNotificationsDialogContent(0, gapComposer, this.f$3, this.f$1, this.f$2, this.f$0);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                StringsKt__IndentKt.ErrorNotificationsDialogContent(Updater.updateChangedFlags(1), (Composer) obj, this.f$3, this.f$1, this.f$2, this.f$0);
                break;
        }
        return unit;
    }

    public /* synthetic */ ErrorNotificationsDialogKt$$ExternalSyntheticLambda0(ImmutableSet immutableSet, Function0 function0, Function1 function1, Modifier modifier, int i) {
        this.f$0 = immutableSet;
        this.f$1 = function0;
        this.f$2 = function1;
        this.f$3 = modifier;
    }
}
