package net.thunderbird.core.ui.setting.dialog.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DialogSettingViewKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ Function0 f$2;
    public final /* synthetic */ Function3 f$3;

    public /* synthetic */ DialogSettingViewKt$$ExternalSyntheticLambda2(String str, String str2, Function0 function0, Function3 function3) {
        this.f$0 = str;
        this.f$1 = str2;
        this.f$2 = function0;
        this.f$3 = function3;
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
                    RangesKt.SettingTopBar(this.f$0, this.f$1, this.f$2, this.f$3, gapComposer, 0);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                RangesKt.SettingTopBar(this.f$0, this.f$1, this.f$2, this.f$3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ DialogSettingViewKt$$ExternalSyntheticLambda2(String str, String str2, Function0 function0, Function3 function3, int i) {
        this.f$0 = str;
        this.f$1 = str2;
        this.f$2 = function0;
        this.f$3 = function3;
    }
}
