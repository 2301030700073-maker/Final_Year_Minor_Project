package app.k9mail.feature.account.server.settings.ui.incoming.content;

import android.content.res.Resources;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.ui.autofill.AndroidContentType;
import androidx.compose.ui.autofill.ContentType;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContentKt$$ExternalSyntheticLambda8;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda0;
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
public final /* synthetic */ class ImapFormItemsKt$$ExternalSyntheticLambda1 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ IncomingServerSettingsContract$State f$0;
    public final /* synthetic */ Resources f$1;
    public final /* synthetic */ Function1 f$2;

    public /* synthetic */ ImapFormItemsKt$$ExternalSyntheticLambda1(IncomingServerSettingsContract$State incomingServerSettingsContract$State, Resources resources, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = incomingServerSettingsContract$State;
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
        IncomingServerSettingsContract$State incomingServerSettingsContract$State = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else if (!incomingServerSettingsContract$State.imapAutodetectNamespaceEnabled) {
                    gapComposer.startReplaceGroup(-1581478114);
                    StringInputField stringInputField = incomingServerSettingsContract$State.imapPrefix;
                    String str = stringInputField.value;
                    ValidationError validationError = stringInputField.error;
                    String resourceString = validationError != null ? OAuthBearer.toResourceString(validationError, resources) : null;
                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_server_settings_incoming_imap_prefix_label);
                    PaddingValuesImpl defaultItemPadding = OAuthBearer.defaultItemPadding(gapComposer);
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(12, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    TextInputKt.TextInput((Function1) rememberedValue, null, str, stringResource, false, resourceString, defaultItemPadding, false, false, null, null, gapComposer, 0, 1938);
                    gapComposer.end(false);
                    break;
                } else {
                    gapComposer.startReplaceGroup(-1581778132);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new KoinModuleKt$$ExternalSyntheticLambda0(6);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    TextInputKt.TextInput((Function1) rememberedValue2, null, null, Operation$State.stringResource(gapComposer, R.string.account_server_settings_incoming_imap_prefix_label), false, null, OAuthBearer.defaultItemPadding(gapComposer), false, false, null, null, gapComposer, 100663302, 1718);
                    gapComposer.end(false);
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
                    StringInputField stringInputField2 = incomingServerSettingsContract$State.server;
                    String str2 = stringInputField2.value;
                    ValidationError validationError2 = stringInputField2.error;
                    String resourceString2 = validationError2 != null ? OAuthBearer.toResourceString(validationError2, resources) : null;
                    String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_server_settings_server_label);
                    PaddingValuesImpl defaultItemPadding2 = OAuthBearer.defaultItemPadding(gapComposer2);
                    KeyboardOptions keyboardOptions = new KeyboardOptions(0, 125);
                    boolean changed2 = gapComposer2.changed(function1);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new NavHostKt$$ExternalSyntheticLambda14(17, function1);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    TextInputKt.TextInput((Function1) rememberedValue3, null, str2, stringResource2, false, resourceString2, defaultItemPadding2, false, false, keyboardOptions, null, gapComposer2, 805306368, 1426);
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
                    ConnectionSecurity.Companion.getClass();
                    ImmutableList immutableList = Okio.toImmutableList(ConnectionSecurity.$ENTRIES);
                    ConnectionSecurity connectionSecurity = incomingServerSettingsContract$State.security;
                    String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_server_settings_security_label);
                    PaddingValuesImpl defaultItemPadding3 = OAuthBearer.defaultItemPadding(gapComposer3);
                    boolean changed3 = gapComposer3.changed(function1);
                    Object rememberedValue4 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new NavHostKt$$ExternalSyntheticLambda14(14, function1);
                        gapComposer3.updateRememberedValue(rememberedValue4);
                    }
                    Function1 function12 = (Function1) rememberedValue4;
                    boolean changedInstance = gapComposer3.changedInstance(resources);
                    Object rememberedValue5 = gapComposer3.rememberedValue();
                    if (changedInstance || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(i2, resources);
                        gapComposer3.updateRememberedValue(rememberedValue5);
                    }
                    TextInputKt.SelectInput(immutableList, connectionSecurity, function12, null, (Function1) rememberedValue5, stringResource3, defaultItemPadding3, gapComposer3, 0, 8);
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
                    NumberInputField numberInputField = incomingServerSettingsContract$State.port;
                    Long l = numberInputField.value;
                    ValidationError validationError3 = numberInputField.error;
                    String resourceString3 = validationError3 != null ? OAuthBearer.toResourceString(validationError3, resources) : null;
                    String stringResource4 = Operation$State.stringResource(gapComposer4, R.string.account_server_settings_port_label);
                    PaddingValuesImpl defaultItemPadding4 = OAuthBearer.defaultItemPadding(gapComposer4);
                    boolean changed4 = gapComposer4.changed(function1);
                    Object rememberedValue6 = gapComposer4.rememberedValue();
                    if (changed4 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new NavHostKt$$ExternalSyntheticLambda14(13, function1);
                        gapComposer4.updateRememberedValue(rememberedValue6);
                    }
                    TextInputKt.NumberInput((Function1) rememberedValue6, null, l, stringResource4, false, resourceString3, defaultItemPadding4, gapComposer4, 0, 18);
                    break;
                }
            case 4:
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    incomingServerSettingsContract$State.getClass();
                    ImmutableList immutableList2 = Okio.toImmutableList(Utf8.SafeProcessor.getAllowedAuthenticationTypes(incomingServerSettingsContract$State.protocolType));
                    AuthenticationType authenticationType = incomingServerSettingsContract$State.authenticationType;
                    String stringResource5 = Operation$State.stringResource(gapComposer5, R.string.account_server_settings_authentication_label);
                    PaddingValuesImpl defaultItemPadding5 = OAuthBearer.defaultItemPadding(gapComposer5);
                    boolean changed5 = gapComposer5.changed(function1);
                    Object rememberedValue7 = gapComposer5.rememberedValue();
                    if (changed5 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = new NavHostKt$$ExternalSyntheticLambda14(18, function1);
                        gapComposer5.updateRememberedValue(rememberedValue7);
                    }
                    Function1 function13 = (Function1) rememberedValue7;
                    boolean changedInstance2 = gapComposer5.changedInstance(resources);
                    Object rememberedValue8 = gapComposer5.rememberedValue();
                    if (changedInstance2 || rememberedValue8 == neverEqualPolicy) {
                        rememberedValue8 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(2, resources);
                        gapComposer5.updateRememberedValue(rememberedValue8);
                    }
                    TextInputKt.SelectInput(immutableList2, authenticationType, function13, null, (Function1) rememberedValue8, stringResource5, defaultItemPadding5, gapComposer5, 0, 8);
                    break;
                }
            default:
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    StringInputField stringInputField3 = incomingServerSettingsContract$State.username;
                    String str3 = stringInputField3.value;
                    ValidationError validationError4 = stringInputField3.error;
                    String resourceString4 = validationError4 != null ? OAuthBearer.toResourceString(validationError4, resources) : null;
                    String stringResource6 = Operation$State.stringResource(gapComposer6, R.string.account_server_settings_username_label);
                    PaddingValuesImpl defaultItemPadding6 = OAuthBearer.defaultItemPadding(gapComposer6);
                    KeyboardOptions keyboardOptions2 = new KeyboardOptions(0, 125);
                    ContentType.Companion.getClass();
                    AndroidContentType androidContentType = ContentType.Companion.Username;
                    AndroidContentType androidContentType2 = ContentType.Companion.EmailAddress;
                    androidContentType.getClass();
                    androidContentType2.getClass();
                    AndroidContentType androidContentType3 = new AndroidContentType(Validate.plus(androidContentType.androidAutofillHints, (Iterable) androidContentType2.androidAutofillHints));
                    boolean changed6 = gapComposer6.changed(function1);
                    Object rememberedValue9 = gapComposer6.rememberedValue();
                    if (changed6 || rememberedValue9 == neverEqualPolicy) {
                        rememberedValue9 = new NavHostKt$$ExternalSyntheticLambda14(20, function1);
                        gapComposer6.updateRememberedValue(rememberedValue9);
                    }
                    TextInputKt.TextInput((Function1) rememberedValue9, null, str3, stringResource6, false, resourceString4, defaultItemPadding6, false, false, keyboardOptions2, androidContentType3, gapComposer6, 805306368, 402);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ ImapFormItemsKt$$ExternalSyntheticLambda1(IncomingServerSettingsContract$State incomingServerSettingsContract$State, Function1 function1, Resources resources, int i) {
        this.$r8$classId = i;
        this.f$0 = incomingServerSettingsContract$State;
        this.f$2 = function1;
        this.f$1 = resources;
    }
}
