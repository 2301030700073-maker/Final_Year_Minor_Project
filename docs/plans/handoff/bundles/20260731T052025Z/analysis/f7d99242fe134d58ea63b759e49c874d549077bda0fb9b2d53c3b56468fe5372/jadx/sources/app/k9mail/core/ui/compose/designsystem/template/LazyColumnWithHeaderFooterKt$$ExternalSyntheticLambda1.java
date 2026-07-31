package app.k9mail.core.ui.compose.designsystem.template;

import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$State;
import app.k9mail.feature.account.setup.ui.autodiscovery.AutoDiscoveryStringMapperKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Function1 f$7;
    public final /* synthetic */ int f$8;

    public /* synthetic */ LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1(RowScope rowScope, SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State, String str, Function0 function0, Function0 function02, Function0 function03, Function1 function1, Function1 function12, int i) {
        this.f$0 = rowScope;
        this.f$1 = setupArchiveFolderDialogContract$State;
        this.f$2 = str;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = function03;
        this.f$7 = function1;
        this.f$6 = function12;
        this.f$8 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$8;
        Object obj3 = this.f$0;
        Object obj4 = this.f$6;
        Object obj5 = this.f$5;
        Object obj6 = this.f$4;
        Object obj7 = this.f$3;
        Object obj8 = this.f$2;
        Object obj9 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                ScaffoldKt.LazyColumnWithHeaderFooter((Modifier) obj3, (LazyListState) obj9, (PaddingValues) obj8, (Arrangement$Vertical) obj7, (Alignment.Horizontal) obj6, (ComposableLambdaImpl) obj5, (ComposableLambdaImpl) obj4, this.f$7, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                AutoDiscoveryStringMapperKt.AccountAutoDiscoveryContent((AccountAutoDiscoveryContract$State) obj9, this.f$7, (Function0) obj7, (Function0) obj6, (AccountOAuthContract$ViewModel) obj5, (String) obj4, (PaddingValues) obj8, (Modifier) obj3, (Composer) obj, updateChangedFlags2);
                break;
            case 2:
                ((Integer) obj2).intValue();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Jsoup.SetupArchiveFolderDialogButtons((RowScope) obj3, (SetupArchiveFolderDialogContract$State) obj9, (String) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, this.f$7, (Function1) obj4, (Composer) obj, updateChangedFlags3);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                CloseableKt.NewMessageItem((MessageItemUi) obj9, (MessageListPreferences) obj8, (MessageItemAccountIndicator) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, this.f$7, (Modifier) obj3, (Composer) obj, updateChangedFlags4);
                break;
        }
        return unit;
    }

    public /* synthetic */ LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, Arrangement$Vertical arrangement$Vertical, Alignment.Horizontal horizontal, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Function1 function1, int i) {
        this.f$0 = modifier;
        this.f$1 = lazyListState;
        this.f$2 = paddingValues;
        this.f$3 = arrangement$Vertical;
        this.f$4 = horizontal;
        this.f$5 = composableLambdaImpl;
        this.f$6 = composableLambdaImpl2;
        this.f$7 = function1;
        this.f$8 = i;
    }

    public /* synthetic */ LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1(AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State, Function1 function1, Function0 function0, Function0 function02, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, String str, PaddingValues paddingValues, Modifier modifier, int i) {
        this.f$1 = accountAutoDiscoveryContract$State;
        this.f$7 = function1;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = accountOAuthContract$ViewModel;
        this.f$6 = str;
        this.f$2 = paddingValues;
        this.f$0 = modifier;
        this.f$8 = i;
    }

    public /* synthetic */ LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1(MessageItemUi messageItemUi, MessageListPreferences messageListPreferences, MessageItemAccountIndicator messageItemAccountIndicator, Function0 function0, Function0 function02, Function0 function03, Function1 function1, Modifier modifier, int i) {
        this.f$1 = messageItemUi;
        this.f$2 = messageListPreferences;
        this.f$3 = messageItemAccountIndicator;
        this.f$4 = function0;
        this.f$5 = function02;
        this.f$6 = function03;
        this.f$7 = function1;
        this.f$0 = modifier;
        this.f$8 = i;
    }
}
