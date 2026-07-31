package net.thunderbird.feature.mail.message.list.internal.ui.dialog;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import app.k9mail.provider.K9FeatureThemeProvider;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.account.AccountId;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ SetupArchiveFolderDialogFragment f$0;
    public final /* synthetic */ AccountId f$1;

    public /* synthetic */ SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0(AccountId accountId, SetupArchiveFolderDialogFragment setupArchiveFolderDialogFragment) {
        this.f$1 = accountId;
        this.f$0 = setupArchiveFolderDialogFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SetupArchiveFolderDialogFragment setupArchiveFolderDialogFragment = this.f$0;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) setupArchiveFolderDialogFragment.themeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(-1044382895, new SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0(this.f$1, setupArchiveFolderDialogFragment), gapComposer), gapComposer, 6);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer2.changedInstance(setupArchiveFolderDialogFragment);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new ResourceFileSystem$$ExternalSyntheticLambda0(10, setupArchiveFolderDialogFragment);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Jsoup.SetupArchiveFolderDialog(this.f$1, (Function0) rememberedValue, null, null, gapComposer2, 0);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ SetupArchiveFolderDialogFragment$$ExternalSyntheticLambda0(SetupArchiveFolderDialogFragment setupArchiveFolderDialogFragment, AccountId accountId) {
        this.f$0 = setupArchiveFolderDialogFragment;
        this.f$1 = accountId;
    }
}
