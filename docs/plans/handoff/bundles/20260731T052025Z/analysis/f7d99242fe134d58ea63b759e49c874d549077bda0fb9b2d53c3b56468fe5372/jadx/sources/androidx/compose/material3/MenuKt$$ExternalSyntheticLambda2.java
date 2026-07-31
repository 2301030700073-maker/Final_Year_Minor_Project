package androidx.compose.material3;

import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Operation$State;
import app.k9mail.autodiscovery.api.ConnectionSecurity;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$State;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MenuKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ boolean f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ int f$9;

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(ComposedAddressUi composedAddressUi, AnnotatedString annotatedString, boolean z, Modifier modifier, AnnotatedString annotatedString2, PersistentMap persistentMap, int i) {
        this.f$0 = composedAddressUi;
        this.f$1 = annotatedString;
        this.f$5 = z;
        this.f$2 = modifier;
        this.f$6 = annotatedString2;
        this.f$7 = persistentMap;
        this.f$9 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$9;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        Object obj5 = this.f$2;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.DropdownMenuItemContent((ComposableLambdaImpl) obj7, (Function0) obj6, (Modifier) obj5, this.f$5, (MenuItemColors) obj4, (PaddingValues) obj3, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                ContextMenuUiKt.ContextMenuItem((String) obj7, this.f$5, (ContextMenuColors) obj4, (Modifier) obj5, (Function3) obj3, (Function0) obj6, (Composer) obj, updateChangedFlags2);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                CardKt.IconButtonImpl((Modifier) obj5, (Function0) obj6, this.f$5, (Shape) obj4, (IconButtonColors) obj3, (ComposableLambdaImpl) obj7, (Composer) obj, updateChangedFlags3);
                break;
            case 3:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                TooltipKt.TooltipBox((PopupPositionProvider) obj6, (ComposableLambdaImpl) obj7, (TooltipStateImpl) obj4, (Modifier) obj5, this.f$5, (ComposableLambdaImpl) obj3, (Composer) obj, updateChangedFlags4);
                break;
            case 4:
                ((Integer) obj2).getClass();
                int updateChangedFlags5 = Updater.updateChangedFlags(i2 | 1);
                Icons$Filled.TooltipPopup((PopupPositionProvider) obj6, (TooltipStateImpl) obj5, (CoroutineScope) obj4, this.f$5, (MutableState) obj3, (ComposableLambdaImpl) obj7, (Composer) obj, updateChangedFlags5);
                break;
            case 5:
                ((Integer) obj2).getClass();
                int updateChangedFlags6 = Updater.updateChangedFlags(i2 | 1);
                Operation$State.PullToRefreshBox(this.f$5, (Function0) obj6, (Modifier) obj5, (PullToRefreshStateImpl) obj4, (Function3) obj3, (ComposableLambdaImpl) obj7, (Composer) obj, updateChangedFlags6);
                break;
            case 6:
                ((Integer) obj2).getClass();
                int updateChangedFlags7 = Updater.updateChangedFlags(i2 | 1);
                IntOffsetKt.ServerValidationContent((ServerValidationContract$State) obj7, this.f$5, (AccountOAuthContract$ViewModel) obj6, (Function1) obj4, (PaddingValues) obj3, (Modifier) obj5, (Composer) obj, updateChangedFlags7);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                int updateChangedFlags8 = Updater.updateChangedFlags(1597447);
                MathKt.m982AutoDiscoveryServerSettingsViewZl2X39w((String) obj7, (String) obj6, this.f$9, (ConnectionSecurity) obj4, (Modifier) obj5, (String) obj3, this.f$5, (Composer) obj, updateChangedFlags8);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags9 = Updater.updateChangedFlags(i2 | 1);
                MessageBodyContentKt.MessageItemSenderSubjectSecondLine((ComposedAddressUi) obj7, (AnnotatedString) obj6, this.f$5, (Modifier) obj5, (AnnotatedString) obj4, (PersistentMap) obj3, (Composer) obj, updateChangedFlags9);
                break;
        }
        return unit;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(Modifier modifier, Function0 function0, boolean z, Shape shape, IconButtonColors iconButtonColors, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$2 = modifier;
        this.f$1 = function0;
        this.f$5 = z;
        this.f$6 = shape;
        this.f$7 = iconButtonColors;
        this.f$0 = composableLambdaImpl;
        this.f$9 = i;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(PopupPositionProvider popupPositionProvider, TooltipStateImpl tooltipStateImpl, CoroutineScope coroutineScope, boolean z, MutableState mutableState, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$1 = popupPositionProvider;
        this.f$2 = tooltipStateImpl;
        this.f$6 = coroutineScope;
        this.f$5 = z;
        this.f$7 = mutableState;
        this.f$0 = composableLambdaImpl;
        this.f$9 = i;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(PopupPositionProvider popupPositionProvider, ComposableLambdaImpl composableLambdaImpl, TooltipStateImpl tooltipStateImpl, Modifier modifier, boolean z, ComposableLambdaImpl composableLambdaImpl2, int i) {
        this.f$1 = popupPositionProvider;
        this.f$0 = composableLambdaImpl;
        this.f$6 = tooltipStateImpl;
        this.f$2 = modifier;
        this.f$5 = z;
        this.f$7 = composableLambdaImpl2;
        this.f$9 = i;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(ServerValidationContract$State serverValidationContract$State, boolean z, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, Function1 function1, PaddingValues paddingValues, Modifier modifier, int i) {
        this.f$0 = serverValidationContract$State;
        this.f$5 = z;
        this.f$1 = accountOAuthContract$ViewModel;
        this.f$6 = function1;
        this.f$7 = paddingValues;
        this.f$2 = modifier;
        this.f$9 = i;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(String str, String str2, int i, ConnectionSecurity connectionSecurity, Modifier modifier, String str3, boolean z, int i2) {
        this.f$0 = str;
        this.f$1 = str2;
        this.f$9 = i;
        this.f$6 = connectionSecurity;
        this.f$2 = modifier;
        this.f$7 = str3;
        this.f$5 = z;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(String str, boolean z, ContextMenuColors contextMenuColors, Modifier modifier, Function3 function3, Function0 function0, int i) {
        this.f$0 = str;
        this.f$5 = z;
        this.f$6 = contextMenuColors;
        this.f$2 = modifier;
        this.f$7 = function3;
        this.f$1 = function0;
        this.f$9 = i;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, Function0 function0, Modifier modifier, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, int i) {
        this.f$0 = composableLambdaImpl;
        this.f$1 = function0;
        this.f$2 = modifier;
        this.f$5 = z;
        this.f$6 = menuItemColors;
        this.f$7 = paddingValues;
        this.f$9 = i;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(boolean z, Function0 function0, Modifier modifier, PullToRefreshStateImpl pullToRefreshStateImpl, Function3 function3, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$5 = z;
        this.f$1 = function0;
        this.f$2 = modifier;
        this.f$6 = pullToRefreshStateImpl;
        this.f$7 = function3;
        this.f$0 = composableLambdaImpl;
        this.f$9 = i;
    }
}
