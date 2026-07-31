package net.thunderbird.feature.notification.impl.ui.dialog;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda11;
import app.k9mail.provider.K9FeatureThemeProvider;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.notification.impl.receiver.DefaultInAppNotificationStream;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ErrorNotificationsDialogFragment f$0;

    public /* synthetic */ ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0(ErrorNotificationsDialogFragment errorNotificationsDialogFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = errorNotificationsDialogFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ErrorNotificationsDialogFragment errorNotificationsDialogFragment = this.f$0;
        int i2 = 1;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) errorNotificationsDialogFragment.themeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(-182074417, new ErrorNotificationsDialogFragment$$ExternalSyntheticLambda0(errorNotificationsDialogFragment, i2), gapComposer), gapComposer, 6);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(((DefaultInAppNotificationStream) errorNotificationsDialogFragment.stream$delegate.getValue()).notifications, gapComposer2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = Updater.derivedStateOf(new NavHostKt$$ExternalSyntheticLambda11(collectAsStateWithLifecycle, 5));
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    PersistentOrderedSet persistentOrderedSet = (PersistentOrderedSet) ((State) rememberedValue).getValue();
                    boolean changedInstance = gapComposer2.changedInstance(errorNotificationsDialogFragment);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ResourceFileSystem$$ExternalSyntheticLambda0(21, errorNotificationsDialogFragment);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Function0 function0 = (Function0) rememberedValue2;
                    boolean changedInstance2 = gapComposer2.changedInstance(errorNotificationsDialogFragment);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new ForwardingFileSystem$$ExternalSyntheticLambda0(14, errorNotificationsDialogFragment);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    StringsKt__IndentKt.ErrorNotificationsDialog(persistentOrderedSet, function0, (Function1) rememberedValue3, SizeKt.FillWholeMaxSize, null, gapComposer2, 3072);
                    break;
                }
        }
        return unit;
    }
}
