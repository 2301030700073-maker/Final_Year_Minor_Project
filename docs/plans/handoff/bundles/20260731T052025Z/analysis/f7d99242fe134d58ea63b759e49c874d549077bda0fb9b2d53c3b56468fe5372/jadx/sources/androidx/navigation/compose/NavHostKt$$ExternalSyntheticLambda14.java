package androidx.navigation.compose;

import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.SizeTransformImpl;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.compose.ComposeNavigator;
import androidx.work.OperationKt;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldCommonKt;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.oauth.domain.entity.OAuthResult;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$Event;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$Event;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$Event;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Event;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavHostKt$$ExternalSyntheticLambda14 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda14(int i, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) obj;
                NavDestination navDestination = ((NavBackStackEntry) animatedContentTransitionScopeImpl.getTargetState()).destination;
                navDestination.getClass();
                int i2 = NavDestination.$r8$clinit;
                for (NavDestination navDestination2 : OperationKt.getHierarchy((ComposeNavigator.Destination) navDestination)) {
                }
                if (function1 != null) {
                    return (SizeTransformImpl) function1.invoke(animatedContentTransitionScopeImpl);
                }
                return null;
            case 1:
                Long l = (Long) obj;
                l.getClass();
                return function1.invoke(l);
            case 2:
                Snapshot snapshot = (Snapshot) function1.invoke((SnapshotIdSet) obj);
                synchronized (SnapshotKt.lock) {
                    SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(snapshot.getSnapshotId());
                }
                return snapshot;
            case 3:
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                textFieldValue.getClass();
                function1.invoke(TextFieldValue.m715copy3r_uNRQ$default(textFieldValue, TextFieldCommonKt.LINE_BREAK.replace(textFieldValue.annotatedString.text, "")));
                return Unit.INSTANCE;
            case 4:
                String str = (String) obj;
                str.getClass();
                function1.invoke(TextFieldCommonKt.LINE_BREAK.replace(str, ""));
                return Unit.INSTANCE;
            case 5:
                String str2 = (String) obj;
                str2.getClass();
                if (StringsKt.isBlank(str2)) {
                    str2 = null;
                }
                function1.invoke(str2 != null ? StringsKt__StringsJVMKt.toLongOrNull(str2) : null);
                return Unit.INSTANCE;
            case 6:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                textLayoutResult.getClass();
                function1.invoke(Boolean.valueOf(textLayoutResult.getHasVisualOverflow()));
                return Unit.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AccountOAuthContract$Event accountOAuthContract$Event = (AccountOAuthContract$Event) obj;
                accountOAuthContract$Event.getClass();
                function1.invoke(accountOAuthContract$Event);
                return Unit.INSTANCE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                IncomingServerSettingsContract$Event incomingServerSettingsContract$Event = (IncomingServerSettingsContract$Event) obj;
                incomingServerSettingsContract$Event.getClass();
                function1.invoke(incomingServerSettingsContract$Event);
                return Unit.INSTANCE;
            case 9:
                function1.invoke(new IncomingServerSettingsContract$Event.ImapUseCompressionChanged(((Boolean) obj).booleanValue()));
                return Unit.INSTANCE;
            case 10:
                function1.invoke(new IncomingServerSettingsContract$Event.ImapSendClientInfoChanged(((Boolean) obj).booleanValue()));
                return Unit.INSTANCE;
            case 11:
                function1.invoke(new IncomingServerSettingsContract$Event.ImapAutoDetectNamespaceChanged(((Boolean) obj).booleanValue()));
                return Unit.INSTANCE;
            case BasicTextKt.ShiftMeta /* 12 */:
                String str3 = (String) obj;
                str3.getClass();
                function1.invoke(new IncomingServerSettingsContract$Event.ImapPrefixChanged(str3));
                return Unit.INSTANCE;
            case 13:
                function1.invoke(new IncomingServerSettingsContract$Event.PortChanged((Long) obj));
                return Unit.INSTANCE;
            case 14:
                ConnectionSecurity connectionSecurity = (ConnectionSecurity) obj;
                connectionSecurity.getClass();
                function1.invoke(new IncomingServerSettingsContract$Event.SecurityChanged(connectionSecurity));
                return Unit.INSTANCE;
            case OffsetKt.Horizontal /* 15 */:
                IncomingProtocolType incomingProtocolType = (IncomingProtocolType) obj;
                incomingProtocolType.getClass();
                function1.invoke(new IncomingServerSettingsContract$Event.ProtocolTypeChanged(incomingProtocolType));
                return Unit.INSTANCE;
            case 16:
                function1.invoke(new IncomingServerSettingsContract$Event.ClientCertificateChanged((String) obj));
                return Unit.INSTANCE;
            case 17:
                String str4 = (String) obj;
                str4.getClass();
                function1.invoke(new IncomingServerSettingsContract$Event.ServerChanged(str4));
                return Unit.INSTANCE;
            case 18:
                AuthenticationType authenticationType = (AuthenticationType) obj;
                authenticationType.getClass();
                function1.invoke(new IncomingServerSettingsContract$Event.AuthenticationTypeChanged(authenticationType));
                return Unit.INSTANCE;
            case 19:
                String str5 = (String) obj;
                str5.getClass();
                function1.invoke(new IncomingServerSettingsContract$Event.PasswordChanged(str5));
                return Unit.INSTANCE;
            case 20:
                String str6 = (String) obj;
                str6.getClass();
                function1.invoke(new IncomingServerSettingsContract$Event.UsernameChanged(str6));
                return Unit.INSTANCE;
            case 21:
                OutgoingServerSettingsContract$Event outgoingServerSettingsContract$Event = (OutgoingServerSettingsContract$Event) obj;
                outgoingServerSettingsContract$Event.getClass();
                function1.invoke(outgoingServerSettingsContract$Event);
                return Unit.INSTANCE;
            case 22:
                function1.invoke(new OutgoingServerSettingsContract$Event.PortChanged((Long) obj));
                return Unit.INSTANCE;
            case 23:
                String str7 = (String) obj;
                str7.getClass();
                function1.invoke(new OutgoingServerSettingsContract$Event.UsernameChanged(str7));
                return Unit.INSTANCE;
            case 24:
                String str8 = (String) obj;
                str8.getClass();
                function1.invoke(new OutgoingServerSettingsContract$Event.ServerChanged(str8));
                return Unit.INSTANCE;
            case 25:
                function1.invoke(new OutgoingServerSettingsContract$Event.ClientCertificateChanged((String) obj));
                return Unit.INSTANCE;
            case 26:
                String str9 = (String) obj;
                str9.getClass();
                function1.invoke(new OutgoingServerSettingsContract$Event.PasswordChanged(str9));
                return Unit.INSTANCE;
            case 27:
                ConnectionSecurity connectionSecurity2 = (ConnectionSecurity) obj;
                connectionSecurity2.getClass();
                function1.invoke(new OutgoingServerSettingsContract$Event.SecurityChanged(connectionSecurity2));
                return Unit.INSTANCE;
            case 28:
                AuthenticationType authenticationType2 = (AuthenticationType) obj;
                authenticationType2.getClass();
                function1.invoke(new OutgoingServerSettingsContract$Event.AuthenticationTypeChanged(authenticationType2));
                return Unit.INSTANCE;
            default:
                OAuthResult oAuthResult = (OAuthResult) obj;
                oAuthResult.getClass();
                function1.invoke(new ServerValidationContract$Event.OnOAuthResult(oAuthResult));
                return Unit.INSTANCE;
        }
    }
}
