package app.k9mail.feature.account.server.settings.ui.outgoing.content;

import android.content.res.Resources;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.ui.autofill.AndroidContentType;
import androidx.compose.ui.autofill.ContentType;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContentKt$$ExternalSyntheticLambda8;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.validation.ValidationError;
import net.thunderbird.core.validation.input.NumberInputField;
import net.thunderbird.core.validation.input.StringInputField;
import okio.Okio;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OutgoingFormItemsKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OutgoingServerSettingsContract$State f$0;
    public final /* synthetic */ Resources f$1;
    public final /* synthetic */ Function1 f$2;

    public /* synthetic */ OutgoingFormItemsKt$$ExternalSyntheticLambda0(OutgoingServerSettingsContract$State outgoingServerSettingsContract$State, Resources resources, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = outgoingServerSettingsContract$State;
        this.f$1 = resources;
        this.f$2 = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Function1 function1 = this.f$2;
        Resources resources = this.f$1;
        OutgoingServerSettingsContract$State outgoingServerSettingsContract$State = this.f$0;
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
                    StringInputField stringInputField = outgoingServerSettingsContract$State.server;
                    String str = stringInputField.value;
                    ValidationError validationError = stringInputField.error;
                    String resourceString = validationError != null ? OAuthBearer.toResourceString(validationError, resources) : null;
                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_server_settings_server_label);
                    PaddingValuesImpl defaultItemPadding = OAuthBearer.defaultItemPadding(gapComposer);
                    KeyboardOptions keyboardOptions = new KeyboardOptions(0, 125);
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(24, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    TextInputKt.TextInput((Function1) rememberedValue, null, str, stringResource, true, resourceString, defaultItemPadding, false, false, keyboardOptions, null, gapComposer, 805330944, 1410);
                    break;
                }
            case 1:
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    ConnectionSecurity.Companion.getClass();
                    ImmutableList immutableList = Okio.toImmutableList(ConnectionSecurity.$ENTRIES);
                    ConnectionSecurity connectionSecurity = outgoingServerSettingsContract$State.security;
                    String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_server_settings_security_label);
                    PaddingValuesImpl defaultItemPadding2 = OAuthBearer.defaultItemPadding(gapComposer2);
                    boolean changed2 = gapComposer2.changed(function1);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new NavHostKt$$ExternalSyntheticLambda14(27, function1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function12 = (Function1) rememberedValue2;
                    boolean changedInstance = gapComposer2.changedInstance(resources);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(4, resources);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    TextInputKt.SelectInput(immutableList, connectionSecurity, function12, null, (Function1) rememberedValue3, stringResource2, defaultItemPadding2, gapComposer2, 0, 8);
                    break;
                }
            case 2:
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    NumberInputField numberInputField = outgoingServerSettingsContract$State.port;
                    Long l = numberInputField.value;
                    ValidationError validationError2 = numberInputField.error;
                    String resourceString2 = validationError2 != null ? OAuthBearer.toResourceString(validationError2, resources) : null;
                    String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_server_settings_port_label);
                    PaddingValuesImpl defaultItemPadding3 = OAuthBearer.defaultItemPadding(gapComposer3);
                    boolean changed3 = gapComposer3.changed(function1);
                    Object rememberedValue4 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new NavHostKt$$ExternalSyntheticLambda14(22, function1);
                        gapComposer3.updateRememberedValue(rememberedValue4);
                    }
                    TextInputKt.NumberInput((Function1) rememberedValue4, null, l, stringResource3, true, resourceString2, defaultItemPadding3, gapComposer3, 24576, 2);
                    break;
                }
            case 3:
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    AuthenticationType.Companion.getClass();
                    ImmutableList immutableList2 = Okio.toImmutableList(AuthenticationType.$ENTRIES);
                    AuthenticationType authenticationType = outgoingServerSettingsContract$State.authenticationType;
                    String stringResource4 = Operation$State.stringResource(gapComposer4, R.string.account_server_settings_authentication_label);
                    PaddingValuesImpl defaultItemPadding4 = OAuthBearer.defaultItemPadding(gapComposer4);
                    boolean changed4 = gapComposer4.changed(function1);
                    Object rememberedValue5 = gapComposer4.rememberedValue();
                    if (changed4 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new NavHostKt$$ExternalSyntheticLambda14(28, function1);
                        gapComposer4.updateRememberedValue(rememberedValue5);
                    }
                    Function1 function13 = (Function1) rememberedValue5;
                    boolean changedInstance2 = gapComposer4.changedInstance(resources);
                    Object rememberedValue6 = gapComposer4.rememberedValue();
                    if (changedInstance2 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(3, resources);
                        gapComposer4.updateRememberedValue(rememberedValue6);
                    }
                    TextInputKt.SelectInput(immutableList2, authenticationType, function13, null, (Function1) rememberedValue6, stringResource4, defaultItemPadding4, gapComposer4, 0, 8);
                    break;
                }
            default:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    StringInputField stringInputField2 = outgoingServerSettingsContract$State.username;
                    String str2 = stringInputField2.value;
                    ValidationError validationError3 = stringInputField2.error;
                    String resourceString3 = validationError3 != null ? OAuthBearer.toResourceString(validationError3, resources) : null;
                    String stringResource5 = Operation$State.stringResource(gapComposer5, R.string.account_server_settings_username_label);
                    PaddingValuesImpl defaultItemPadding5 = OAuthBearer.defaultItemPadding(gapComposer5);
                    KeyboardOptions keyboardOptions2 = new KeyboardOptions(0, 125);
                    ContentType.Companion.getClass();
                    AndroidContentType androidContentType = ContentType.Companion.Username;
                    AndroidContentType androidContentType2 = ContentType.Companion.EmailAddress;
                    androidContentType.getClass();
                    androidContentType2.getClass();
                    AndroidContentType androidContentType3 = new AndroidContentType(Validate.plus(androidContentType.androidAutofillHints, (Iterable) androidContentType2.androidAutofillHints));
                    boolean changed5 = gapComposer5.changed(function1);
                    Object rememberedValue7 = gapComposer5.rememberedValue();
                    if (changed5 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new NavHostKt$$ExternalSyntheticLambda14(23, function1);
                        gapComposer5.updateRememberedValue(rememberedValue7);
                    }
                    TextInputKt.TextInput((Function1) rememberedValue7, null, str2, stringResource5, true, resourceString3, defaultItemPadding5, false, false, keyboardOptions2, androidContentType3, gapComposer5, 805330944, 386);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ OutgoingFormItemsKt$$ExternalSyntheticLambda0(OutgoingServerSettingsContract$State outgoingServerSettingsContract$State, Function1 function1, Resources resources, int i) {
        this.$r8$classId = i;
        this.f$0 = outgoingServerSettingsContract$State;
        this.f$2 = function1;
        this.f$1 = resources;
    }
}
