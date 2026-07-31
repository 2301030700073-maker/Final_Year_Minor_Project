package org.wikipedia.search;

import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.runtime.GapComposer;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchResultsScreenKt$$ExternalSyntheticLambda33 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ HybridSearchResultsScreenKt$$ExternalSyntheticLambda33(Function0 function0, Function0 function02, int i) {
        this.$r8$classId = i;
        this.f$0 = function0;
        this.f$1 = function02;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    AndroidMenu_androidKt.DropdownMenuItem(NoSearchResultsKt.lambda$1173034519, this.f$0, null, null, null, false, null, null, gapComposer, 6, 508);
                    AndroidMenu_androidKt.DropdownMenuItem(NoSearchResultsKt.f62lambda$847955058, this.f$1, null, null, null, false, null, null, gapComposer, 6, 508);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TabsBoxKt.SettingsRow(UtilsKt.stringResource(R.string.home_feed_settings_modules_title, gapComposer2), null, UtilsKt.stringResource(R.string.home_feed_settings_for_you_subtitle, gapComposer2), this.f$0, null, null, gapComposer2, 0, 50);
                    TabsBoxKt.SettingsRow(UtilsKt.stringResource(R.string.home_feed_settings_whats_driving_title, gapComposer2), null, UtilsKt.stringResource(R.string.home_feed_settings_whats_driving_subtitle, gapComposer2), this.f$1, null, null, gapComposer2, 0, 50);
                    break;
                }
        }
        return unit;
    }
}
