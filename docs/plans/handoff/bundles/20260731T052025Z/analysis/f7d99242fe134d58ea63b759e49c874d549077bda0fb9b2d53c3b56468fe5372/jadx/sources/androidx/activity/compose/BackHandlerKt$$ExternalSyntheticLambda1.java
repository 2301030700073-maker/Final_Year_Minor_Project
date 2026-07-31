package androidx.activity.compose;

import androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1;
import androidx.compose.material3.SnackbarHostState$SnackbarDataImpl;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import com.fsck.k9.activity.MessageCompose;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BackHandlerKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ BackHandlerKt$$ExternalSyntheticLambda1(boolean z, String str, SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl) {
        this.$r8$classId = 2;
        this.f$1 = z;
        this.f$0 = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 0;
        boolean z = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ComposeBackHandler composeBackHandler = (ComposeBackHandler) obj2;
                ((MessageCompose.AnonymousClass3) composeBackHandler.key).setEnabled(z);
                ((BackHandlerCompat$navigationEventHandler$1) composeBackHandler.defaultValue).setBackEnabled(z);
                return new BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1((LifecycleStartStopEffectScope) obj, composeBackHandler, i2);
            case 1:
                ComposePredictiveBackHandler composePredictiveBackHandler = (ComposePredictiveBackHandler) obj2;
                composePredictiveBackHandler.setBackEnabled(z);
                return new BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1((LifecycleStartStopEffectScope) obj, composePredictiveBackHandler, 1);
            case 2:
                String str = (String) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                if (z) {
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                    SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.LiveRegion;
                    KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[3];
                    semanticsPropertyReceiver.set(semanticsPropertyKey, new LiveRegionMode(0));
                }
                TextKt$$ExternalSyntheticLambda4 textKt$$ExternalSyntheticLambda4 = new TextKt$$ExternalSyntheticLambda4(8, null);
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
                semanticsPropertyReceiver.set(SemanticsActions.Dismiss, new AccessibilityAction(null, textKt$$ExternalSyntheticLambda4));
                SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver, str);
                return Unit.INSTANCE;
            default:
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) obj2;
                String str2 = legacyAccountDto.uuid;
                String displayName = legacyAccountDto.getDisplayName();
                int accountNumber = legacyAccountDto.getAccountNumber();
                return AuthenticationErrorNotification.Companion.invoke(str2, displayName, accountNumber, this.f$1, (Continuation) obj);
        }
    }

    public /* synthetic */ BackHandlerKt$$ExternalSyntheticLambda1(int i, Object obj, boolean z) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
    }
}
