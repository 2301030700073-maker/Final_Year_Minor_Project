package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.sqlite.SQLite;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.text.CharsKt__CharKt;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.designsystem.resources.String0_commonMainKt;
import net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogKt;
import org.jetbrains.compose.resources.StringResource;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(int i, int i2, Function0 function0) {
        this.$r8$classId = i2;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Function0 function0 = this.f$0;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                CardKt.OnPlatformWindowBoundsChange(function0, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    IntRectKt.ButtonIcon(this.f$0, Icons$Outlined.ArrowBack, TestTagKt.testTag(companion, "SubtitleTopAppBarBackButton"), false, CharsKt__CharKt.stringResource((StringResource) String0_commonMainKt.designsystem_organism_subtitle_top_app_bar_up_description$delegate.getValue(), gapComposer), null, gapComposer, 384, 40);
                    break;
                }
            case 2:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    IntRectKt.ButtonIcon(this.f$0, Icons$Outlined.ArrowBack, TestTagKt.testTag(companion, "TopAppBarBackButton"), false, null, null, gapComposer2, 384, 56);
                    break;
                }
            case 3:
                ((Integer) obj2).getClass();
                SQLite.PermissionDeniedContent(function0, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    TopAppBarKt.TopAppBar(Operation$State.stringResource(gapComposer3, R.string.settings_import_title), null, Expect_jvmKt.rememberComposableLambda(311504743, new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(5, function0), gapComposer3), null, gapComposer3, 384, 10);
                    break;
                }
            case 5:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    IntRectKt.ButtonIcon(this.f$0, Icons$Outlined.ArrowBack, null, false, Operation$State.stringResource(gapComposer4, R.string.abc_action_bar_up_description), null, gapComposer4, 0, 44);
                    break;
                }
            case 6:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TopAppBarKt.TopAppBar(Operation$State.stringResource(gapComposer5, R.string.changelog_title), null, Expect_jvmKt.rememberComposableLambda(-31293709, new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(7, function0), gapComposer5), null, gapComposer5, 384, 10);
                    break;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    IntRectKt.ButtonIcon(this.f$0, Icons$Outlined.ArrowBack, null, false, null, null, gapComposer6, 0, 60);
                    break;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    Util.m1089ButtonTextjM_yU8I(Operation$State.stringResource(gapComposer7, R.string.sent_folder_not_found_dialog_assign_folder_action), this.f$0, null, false, null, SentFolderNotFoundConfirmationDialogKt.lambda$246239164, gapComposer7, 196608, 28);
                    break;
                }
            default:
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    IntRectKt.ButtonIcon(this.f$0, Icons$Outlined.Close, null, false, null, null, gapComposer8, 0, 60);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(int i, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }
}
