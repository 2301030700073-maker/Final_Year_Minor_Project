package net.thunderbird.feature.navigation.drawer.dropdown;

import androidx.appcompat.app.ActionBar;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import app.k9mail.provider.K9FeatureThemeProvider;
import com.fsck.k9.activity.MessageHomeActivity$$ExternalSyntheticLambda5;
import kotlin.Unit;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DropDownDrawer$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DropDownDrawer f$0;

    public /* synthetic */ DropDownDrawer$$ExternalSyntheticLambda1(DropDownDrawer dropDownDrawer, int i) {
        this.$r8$classId = i;
        this.f$0 = dropDownDrawer;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        DropDownDrawer dropDownDrawer = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) dropDownDrawer.themeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(1503324944, new DropDownDrawer$$ExternalSyntheticLambda1(dropDownDrawer, i2), gapComposer), gapComposer, 6);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    FolderDrawerState folderDrawerState = (FolderDrawerState) ActionBar.collectAsStateWithLifecycle(dropDownDrawer.drawerState, gapComposer2).getValue();
                    AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0 = dropDownDrawer.openAccount;
                    ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0 = dropDownDrawer.openFolder;
                    MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda5 = dropDownDrawer.openUnifiedFolder;
                    MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda52 = dropDownDrawer.openManageFolders;
                    MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda53 = dropDownDrawer.openSettings;
                    MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda54 = dropDownDrawer.openAddAccount;
                    boolean changedInstance = gapComposer2.changedInstance(dropDownDrawer);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new ResourceFileSystem$$ExternalSyntheticLambda0(15, dropDownDrawer);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    RangesKt.DrawerView(folderDrawerState, abstractMap$$ExternalSyntheticLambda0, composerKt$$ExternalSyntheticLambda0, messageHomeActivity$$ExternalSyntheticLambda5, messageHomeActivity$$ExternalSyntheticLambda52, messageHomeActivity$$ExternalSyntheticLambda53, messageHomeActivity$$ExternalSyntheticLambda54, (Function0) rememberedValue, null, gapComposer2, 0);
                    break;
                }
                break;
        }
        return unit;
    }
}
