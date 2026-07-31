package app.k9mail.core.ui.compose.designsystem.atom.textfield;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$Effect;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$Effect$DismissDialog;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1 implements FlowCollector {
    public final /* synthetic */ Function0 $onClick;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ TextFieldOutlinedFakeSelectKt$TextFieldOutlinedFakeSelect$3$1$1$1(int i, Function0 function0) {
        this.$r8$classId = i;
        this.$onClick = function0;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.$onClick;
        switch (i) {
            case 0:
                if (((Interaction) obj) instanceof PressInteraction.Release) {
                    function0.invoke();
                }
                return unit;
            case 1:
                if (((FetchingMailSettingsContract$Effect) obj) instanceof FetchingMailSettingsContract$Effect.NavigateBack) {
                    function0.invoke();
                }
                return unit;
            case 2:
                function0.invoke();
                return unit;
            case 3:
                function0.invoke();
                return unit;
            default:
                if (Intrinsics.areEqual((SetupArchiveFolderDialogContract$Effect$DismissDialog) obj, SetupArchiveFolderDialogContract$Effect$DismissDialog.INSTANCE)) {
                    function0.invoke();
                    return unit;
                }
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
        }
    }
}
