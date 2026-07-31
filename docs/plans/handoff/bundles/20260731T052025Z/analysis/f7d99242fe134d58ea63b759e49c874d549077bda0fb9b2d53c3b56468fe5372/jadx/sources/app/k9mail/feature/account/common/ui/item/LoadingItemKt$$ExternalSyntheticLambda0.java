package app.k9mail.feature.account.common.ui.item;

import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntRectKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LoadingItemKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ LoadingItemKt$$ExternalSyntheticLambda0(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        String str = this.f$0;
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
                    SchemaInfoUtilKt.LoadingView(null, this.f$0, null, gapComposer, 0, 5);
                    break;
                }
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Validate.m1066TextLabelLargeXl4FiYE(this.f$0, null, 0L, 0, 0, gapComposer2, 0, 62);
                    break;
                }
            case 2:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m362TextNvy7gAk(this.f$0, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer3, 0, 0, 262142);
                    break;
                }
            case 3:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    Data.Companion.m825TextBodyMediumZHfKjFs(this.f$0, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer4, 0, 126);
                    break;
                }
            case 4:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    DBUtil.m807TextTitleLargeXl4FiYE(this.f$0, null, 0L, null, 0, 0, gapComposer5, 0, 62);
                    break;
                }
            case 5:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    gapComposer6.startReplaceGroup(2034455780);
                    RelationUtil.m809TextTitleSmallXl4FiYE(this.f$0, (Modifier) null, 0L, 2, 1, gapComposer6, 221184, 14);
                    gapComposer6.end(false);
                    break;
                }
            case 6:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    Validate.m1066TextLabelLargeXl4FiYE(this.f$0, null, 0L, 2, 2, gapComposer7, 221184, 14);
                    break;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                IntRectKt.BulletedListItem(str, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.HeaderArea(str, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 9:
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    WelcomeScreenKt.WelcomeHeaderSection(str, null, gapComposer8, 0);
                    break;
                }
            default:
                Composer composer9 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    Data.Companion.m825TextBodyMediumZHfKjFs(this.f$0, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer9, 0, 126);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ LoadingItemKt$$ExternalSyntheticLambda0(String str, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = str;
    }
}
