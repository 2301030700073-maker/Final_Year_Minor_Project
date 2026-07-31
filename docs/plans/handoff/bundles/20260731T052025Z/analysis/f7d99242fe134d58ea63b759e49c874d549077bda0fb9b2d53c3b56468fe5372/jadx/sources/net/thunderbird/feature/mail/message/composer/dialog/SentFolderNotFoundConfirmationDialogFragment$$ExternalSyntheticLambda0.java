package net.thunderbird.feature.mail.message.composer.dialog;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.provider.K9FeatureThemeProvider;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SentFolderNotFoundConfirmationDialogFragment f$0;
    public final /* synthetic */ String f$1;

    public /* synthetic */ SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0(SentFolderNotFoundConfirmationDialogFragment sentFolderNotFoundConfirmationDialogFragment, String str, int i) {
        this.$r8$classId = i;
        this.f$0 = sentFolderNotFoundConfirmationDialogFragment;
        this.f$1 = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final String str = this.f$1;
        final int i2 = 1;
        final int i3 = 0;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    final SentFolderNotFoundConfirmationDialogFragment sentFolderNotFoundConfirmationDialogFragment = this.f$0;
                    boolean changedInstance = gapComposer.changedInstance(sentFolderNotFoundConfirmationDialogFragment) | gapComposer.changed(str);
                    Object rememberedValue = gapComposer.rememberedValue();
                    Object obj3 = Composer.Companion.Empty;
                    if (changedInstance || rememberedValue == obj3) {
                        rememberedValue = new Function0() { // from class: net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                String str2 = str;
                                SentFolderNotFoundConfirmationDialogFragment sentFolderNotFoundConfirmationDialogFragment2 = sentFolderNotFoundConfirmationDialogFragment;
                                switch (i4) {
                                    case 0:
                                        sentFolderNotFoundConfirmationDialogFragment2.dismissInternal(false, false);
                                        Util.setFragmentResult(sentFolderNotFoundConfirmationDialogFragment2, "SentFolderNotFoundConfirmationDialogFragmentFactory_assign_sent_folder", Util.bundleOf(new Pair("SetupArchiveFolderDialogFragmentFactory_accountUuid", str2)));
                                        break;
                                    default:
                                        sentFolderNotFoundConfirmationDialogFragment2.dismissInternal(false, false);
                                        Util.setFragmentResult(sentFolderNotFoundConfirmationDialogFragment2, "SentFolderNotFoundConfirmationDialogFragmentFactory_send_and_delete", Util.bundleOf(new Pair("SetupArchiveFolderDialogFragmentFactory_accountUuid", str2)));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer.changedInstance(sentFolderNotFoundConfirmationDialogFragment) | gapComposer.changed(str);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == obj3) {
                        rememberedValue2 = new Function0() { // from class: net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i4 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                String str2 = str;
                                SentFolderNotFoundConfirmationDialogFragment sentFolderNotFoundConfirmationDialogFragment2 = sentFolderNotFoundConfirmationDialogFragment;
                                switch (i4) {
                                    case 0:
                                        sentFolderNotFoundConfirmationDialogFragment2.dismissInternal(false, false);
                                        Util.setFragmentResult(sentFolderNotFoundConfirmationDialogFragment2, "SentFolderNotFoundConfirmationDialogFragmentFactory_assign_sent_folder", Util.bundleOf(new Pair("SetupArchiveFolderDialogFragmentFactory_accountUuid", str2)));
                                        break;
                                    default:
                                        sentFolderNotFoundConfirmationDialogFragment2.dismissInternal(false, false);
                                        Util.setFragmentResult(sentFolderNotFoundConfirmationDialogFragment2, "SentFolderNotFoundConfirmationDialogFragmentFactory_send_and_delete", Util.bundleOf(new Pair("SetupArchiveFolderDialogFragmentFactory_accountUuid", str2)));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    Function0 function02 = (Function0) rememberedValue2;
                    boolean changedInstance3 = gapComposer.changedInstance(sentFolderNotFoundConfirmationDialogFragment);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == obj3) {
                        Object roomDatabase$closeBarrier$1 = new RoomDatabase$closeBarrier$1(0, sentFolderNotFoundConfirmationDialogFragment, SentFolderNotFoundConfirmationDialogFragment.class, "dismiss", "dismiss()V", 0, 21);
                        gapComposer.updateRememberedValue(roomDatabase$closeBarrier$1);
                        rememberedValue3 = roomDatabase$closeBarrier$1;
                    }
                    SentFolderNotFoundConfirmationDialogKt.SentFolderNotFoundConfirmationDialog(function0, function02, (Function0) ((KFunction) rememberedValue3), null, gapComposer, 6);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(1 & intValue2, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    SentFolderNotFoundConfirmationDialogFragment sentFolderNotFoundConfirmationDialogFragment2 = this.f$0;
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) sentFolderNotFoundConfirmationDialogFragment2.themeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(-2127441092, new SentFolderNotFoundConfirmationDialogFragment$$ExternalSyntheticLambda0(sentFolderNotFoundConfirmationDialogFragment2, str, i3), gapComposer2), gapComposer2, 6);
                    break;
                }
        }
        return unit;
    }
}
