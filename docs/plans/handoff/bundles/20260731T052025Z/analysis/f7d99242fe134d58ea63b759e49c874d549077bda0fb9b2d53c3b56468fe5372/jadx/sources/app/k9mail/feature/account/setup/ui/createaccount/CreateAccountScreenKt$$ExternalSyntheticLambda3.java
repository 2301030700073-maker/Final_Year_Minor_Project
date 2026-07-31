package app.k9mail.feature.account.setup.ui.createaccount;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Operation$State;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$State;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsScreenKt;
import com.fsck.k9.R;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingContentKt$$ExternalSyntheticLambda8;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CreateAccountScreenKt$$ExternalSyntheticLambda3 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;

    public /* synthetic */ CreateAccountScreenKt$$ExternalSyntheticLambda3(MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        int i2 = 2;
        int i3 = 3;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    CreateAccountScreenKt.CreateAccountContent((CreateAccountContract$State) mutableState.getValue(), paddingValues, null, gapComposer, (intValue << 3) & 112);
                    break;
                }
            case 1:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(paddingValues2) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    SaveServerSettingsScreenKt.SaveServerSettingsContent((SaveServerSettingsContract$State) mutableState.getValue(), paddingValues2, null, gapComposer2, ((intValue2 << 3) & 112) | 8);
                    break;
                }
            case 2:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    MutableState mutableState2 = (MutableState) rememberedValue;
                    boolean booleanValue = ((Boolean) mutableState2.getValue()).booleanValue();
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new BasicTextKt$$ExternalSyntheticLambda0(mutableState2, 12);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function1 = (Function1) rememberedValue2;
                    AbstractPersistentList persistentListOf = Okio.persistentListOf(Operation$State.stringResource(gapComposer3, R.string.account_settings_remove_account_action));
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new SearchSettingContentKt$$ExternalSyntheticLambda8(mutableState, mutableState2, i2);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    Utf8.SafeProcessor.DropdownMenuBox(booleanValue, function1, persistentListOf, (Function1) rememberedValue3, null, false, null, Expect_jvmKt.rememberComposableLambda(-349397168, new CreateAccountScreenKt$$ExternalSyntheticLambda3(mutableState2, i3), gapComposer3), gapComposer3, 12586032);
                    break;
                }
            case 3:
                ((Boolean) obj).getClass();
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue4 = gapComposer4.rememberedValue();
                    if (rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 15);
                        gapComposer4.updateRememberedValue(rememberedValue4);
                    }
                    IntRectKt.ButtonIcon((Function0) rememberedValue4, Icons$Outlined.MoreVert, null, false, null, null, gapComposer4, 6, 60);
                    break;
                }
            case 4:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue5 = gapComposer5.rememberedValue();
                    if (rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = Updater.mutableStateOf$default(Boolean.FALSE);
                        gapComposer5.updateRememberedValue(rememberedValue5);
                    }
                    MutableState mutableState3 = (MutableState) rememberedValue5;
                    boolean booleanValue2 = ((Boolean) mutableState3.getValue()).booleanValue();
                    Object rememberedValue6 = gapComposer5.rememberedValue();
                    if (rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new BasicTextKt$$ExternalSyntheticLambda0(mutableState3, 13);
                        gapComposer5.updateRememberedValue(rememberedValue6);
                    }
                    Function1 function12 = (Function1) rememberedValue6;
                    AbstractPersistentList persistentListOf2 = Okio.persistentListOf(Operation$State.stringResource(gapComposer5, R.string.account_settings_remove_account_action));
                    Object rememberedValue7 = gapComposer5.rememberedValue();
                    if (rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new SearchSettingContentKt$$ExternalSyntheticLambda8(mutableState, mutableState3, i3);
                        gapComposer5.updateRememberedValue(rememberedValue7);
                    }
                    Utf8.SafeProcessor.DropdownMenuBox(booleanValue2, function12, persistentListOf2, (Function1) rememberedValue7, null, false, null, Expect_jvmKt.rememberComposableLambda(1853549720, new CreateAccountScreenKt$$ExternalSyntheticLambda3(mutableState3, 5), gapComposer5), gapComposer5, 12586032);
                    break;
                }
            case 5:
                ((Boolean) obj).getClass();
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue8 = gapComposer6.rememberedValue();
                    if (rememberedValue8 == neverEqualPolicy) {
                        rememberedValue8 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 18);
                        gapComposer6.updateRememberedValue(rememberedValue8);
                    }
                    IntRectKt.ButtonIcon((Function0) rememberedValue8, Icons$Outlined.MoreVert, null, false, null, null, gapComposer6, 6, 60);
                    break;
                }
            case 6:
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue9 = gapComposer7.rememberedValue();
                    if (rememberedValue9 == neverEqualPolicy) {
                        rememberedValue9 = Updater.mutableStateOf$default(Boolean.FALSE);
                        gapComposer7.updateRememberedValue(rememberedValue9);
                    }
                    MutableState mutableState4 = (MutableState) rememberedValue9;
                    boolean booleanValue3 = ((Boolean) mutableState4.getValue()).booleanValue();
                    Object rememberedValue10 = gapComposer7.rememberedValue();
                    if (rememberedValue10 == neverEqualPolicy) {
                        rememberedValue10 = new BasicTextKt$$ExternalSyntheticLambda0(mutableState4, 14);
                        gapComposer7.updateRememberedValue(rememberedValue10);
                    }
                    Function1 function13 = (Function1) rememberedValue10;
                    AbstractPersistentList persistentListOf3 = Okio.persistentListOf(Operation$State.stringResource(gapComposer7, R.string.account_settings_remove_account_action));
                    Object rememberedValue11 = gapComposer7.rememberedValue();
                    if (rememberedValue11 == neverEqualPolicy) {
                        rememberedValue11 = new SearchSettingContentKt$$ExternalSyntheticLambda8(mutableState, mutableState4, r12 ? 1 : 0);
                        gapComposer7.updateRememberedValue(rememberedValue11);
                    }
                    Utf8.SafeProcessor.DropdownMenuBox(booleanValue3, function13, persistentListOf3, (Function1) rememberedValue11, null, false, null, Expect_jvmKt.rememberComposableLambda(400021157, new CreateAccountScreenKt$$ExternalSyntheticLambda3(mutableState4, 7), gapComposer7), gapComposer7, 12586032);
                    break;
                }
            default:
                ((Boolean) obj).getClass();
                Composer composer8 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 17) != 16)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue12 = gapComposer8.rememberedValue();
                    if (rememberedValue12 == neverEqualPolicy) {
                        rememberedValue12 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 21);
                        gapComposer8.updateRememberedValue(rememberedValue12);
                    }
                    IntRectKt.ButtonIcon((Function0) rememberedValue12, Icons$Outlined.MoreVert, null, false, null, null, gapComposer8, 6, 60);
                    break;
                }
        }
        return unit;
    }
}
