package app.k9mail.feature.account.server.settings.ui.outgoing.content;

import android.content.res.Resources;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State;
import com.fsck.k9.sasl.OAuthBearer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.validation.ValidationError;
import net.thunderbird.core.validation.input.StringInputField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OutgoingFormItemsKt$$ExternalSyntheticLambda5 implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ OutgoingServerSettingsContract$State f$0;
    public final /* synthetic */ Resources f$1;
    public final /* synthetic */ InteractionMode f$2;
    public final /* synthetic */ Function1 f$3;

    public /* synthetic */ OutgoingFormItemsKt$$ExternalSyntheticLambda5(InteractionMode interactionMode, OutgoingServerSettingsContract$State outgoingServerSettingsContract$State, Function1 function1, Resources resources) {
        this.f$2 = interactionMode;
        this.f$0 = outgoingServerSettingsContract$State;
        this.f$3 = function1;
        this.f$1 = resources;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = Composer.Companion.Empty;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    StringInputField stringInputField = this.f$0.password;
                    String str = stringInputField.value;
                    ValidationError validationError = stringInputField.error;
                    String resourceString = validationError != null ? OAuthBearer.toResourceString(validationError, this.f$1) : null;
                    PaddingValuesImpl defaultItemPadding = OAuthBearer.defaultItemPadding(gapComposer);
                    Function1 function1 = this.f$3;
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == obj4) {
                        rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(26, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    DBUtil.ServerSettingsPasswordInput(this.f$2, (Function1) rememberedValue, null, str, true, resourceString, defaultItemPadding, gapComposer, 24576, 4);
                    break;
                }
            default:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                    ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                    InteractionMode interactionMode = this.f$2;
                    boolean changed2 = gapComposer2.changed(interactionMode.ordinal());
                    OutgoingServerSettingsContract$State outgoingServerSettingsContract$State = this.f$0;
                    boolean changedInstance = changed2 | gapComposer2.changedInstance(outgoingServerSettingsContract$State);
                    Function1 function12 = this.f$3;
                    boolean changed3 = changedInstance | gapComposer2.changed(function12);
                    Resources resources = this.f$1;
                    boolean changedInstance2 = changed3 | gapComposer2.changedInstance(resources);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == obj4) {
                        rememberedValue2 = new NavControllerImpl$$ExternalSyntheticLambda0(interactionMode, outgoingServerSettingsContract$State, function12, resources, 9);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    ActionBar.LazyColumn(((intValue2 << 6) & 896) | 196614, 458, null, null, arrangement$SpacedAligned, paddingValues, null, gapComposer2, horizontal, fillElement, (Function1) rememberedValue2, false);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ OutgoingFormItemsKt$$ExternalSyntheticLambda5(OutgoingServerSettingsContract$State outgoingServerSettingsContract$State, Resources resources, InteractionMode interactionMode, Function1 function1) {
        this.f$0 = outgoingServerSettingsContract$State;
        this.f$1 = resources;
        this.f$2 = interactionMode;
        this.f$3 = function1;
    }
}
