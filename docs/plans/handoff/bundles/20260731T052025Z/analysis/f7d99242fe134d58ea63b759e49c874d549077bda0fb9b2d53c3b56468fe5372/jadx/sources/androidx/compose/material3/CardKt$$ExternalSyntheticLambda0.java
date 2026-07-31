package androidx.compose.material3;

import androidx.appcompat.app.ActionBar;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.window.DialogProperties;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.RelationUtil;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$State;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$State;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import app.k9mail.provider.K9FeatureThemeProvider;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.ui.settings.AboutFragment;
import com.fsck.k9.ui.settings.AboutViewModel;
import kotlin.Function;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$State;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import okhttp3.CacheControl;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CardKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ CardKt$$ExternalSyntheticLambda0(LazyItemScopeImpl lazyItemScopeImpl, String str, Modifier modifier, String str2, Function0 function0, int i) {
        this.$r8$classId = 5;
        this.f$1 = lazyItemScopeImpl;
        this.f$2 = str;
        this.f$0 = modifier;
        this.f$3 = str2;
        this.f$4 = function0;
        this.f$5 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$5;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$4;
        Object obj6 = this.f$0;
        Object obj7 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                CardKt.ElevatedCard((Modifier) obj6, (Shape) obj7, (CardColors) obj4, (CardElevation) obj3, (ComposableLambdaImpl) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                ArcSplineKt.UpdateInitialAndTargetValues((Transition) obj6, (Transition.TransitionAnimationState) obj7, this.f$2, this.f$3, (FiniteAnimationSpec) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                CardKt.CheckboxImpl((ToggleableState) obj7, (Modifier) obj6, (CheckboxColors) obj4, (Stroke) obj3, (Stroke) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                MaterialThemeKt.MaterialTheme((ColorScheme) obj6, (MotionScheme$StandardMotionSchemeImpl) obj7, (Shapes) obj4, (Typography) obj3, (ComposableLambdaImpl) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                TopAppBarKt.SubtitleTopAppBarWithBackButton((String) obj7, (String) obj4, (Function0) obj3, (Modifier) obj6, (Function3) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                RelationUtil.ErrorItem((LazyItemScopeImpl) obj7, (String) obj4, (Modifier) obj6, (String) obj3, (Function0) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                DisplayOptionsScreenKt.DisplayOptionsContent((DisplayOptionsContract$State) obj7, (Function1) obj4, (PaddingValues) obj3, (String) obj5, (Modifier) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                SyncOptionsScreenKt.SyncOptionsContent((SyncOptionsContract$State) obj7, (Function1) obj4, (PaddingValues) obj3, (String) obj5, (Modifier) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                SpecialFoldersScreenKt.SpecialFoldersContent((SpecialFoldersContract$State) obj7, (Function1) obj4, (PaddingValues) obj3, (String) obj5, (Modifier) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 9:
                AboutFragment aboutFragment = (AboutFragment) obj6;
                ComposeView composeView = (ComposeView) obj7;
                String str = (String) obj4;
                String str2 = (String) obj3;
                String str3 = (String) obj5;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    AboutViewModel aboutViewModel = (AboutViewModel) aboutFragment.viewModel$delegate.getValue();
                    MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(aboutViewModel.state, gapComposer);
                    boolean changedInstance = gapComposer.changedInstance(aboutViewModel);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new ProduceKt$awaitClose$4$1(9, aboutViewModel);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function1 function1 = (Function1) rememberedValue;
                    Updater.LaunchedEffect(gapComposer, aboutViewModel.effect, new Preferences$getAccountFlow$1(aboutViewModel, (Continuation) null, aboutFragment, composeView, 26));
                    collectAsStateWithLifecycle.getClass();
                    function1.getClass();
                    ((K9FeatureThemeProvider) ((FeatureThemeProvider) aboutFragment.themeProvider$delegate.getValue())).WithTheme(Expect_jvmKt.rememberComposableLambda(104424105, new CardKt$$ExternalSyntheticLambda1(collectAsStateWithLifecycle, str, str2, str3, this.f$5, function1, aboutFragment), gapComposer), gapComposer, 6);
                    break;
                }
                break;
            case 10:
                ((Integer) obj2).getClass();
                ByteStreamsKt.AdvancedFetchingMailSettingsContent((FetchingMailSettingsContract$State) obj7, (Function1) obj4, (DialogSettingViewProvider) obj3, (FetchingMailSettingsBuilder) obj5, (Modifier) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                CacheControl.Companion.GeneralSettingsContent((GeneralSettingsContract$State) obj7, (Function1) obj4, (DialogSettingViewProvider) obj3, (GeneralSettingsBuilder) obj5, (Modifier) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Integer) obj2).getClass();
                Cookie.Companion.MessageListPage((DefaultMessageListScope) obj7, (Function1) obj4, (MessageListState) obj3, (Function1) obj5, (Modifier) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                StringsKt__IndentKt.EmailCantBeArchivedDialogButtons((SetupArchiveFolderDialogContract$State.EmailCantBeArchived) obj7, (Function0) obj4, (Function0) obj3, (Function1) obj5, (Modifier) obj6, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                StringsKt__IndentKt.ErrorNotificationsDialog((ImmutableSet) obj7, (Function0) obj4, (Function1) obj3, (Modifier) obj6, (DialogProperties) obj5, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda0(ToggleableState toggleableState, Modifier modifier, CheckboxColors checkboxColors, Stroke stroke, Stroke stroke2, int i) {
        this.$r8$classId = 2;
        this.f$1 = toggleableState;
        this.f$0 = modifier;
        this.f$2 = checkboxColors;
        this.f$3 = stroke;
        this.f$4 = stroke2;
        this.f$5 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Function function, Modifier modifier, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = obj;
        this.f$2 = obj2;
        this.f$3 = function;
        this.f$0 = modifier;
        this.f$4 = obj3;
        this.f$5 = i;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda0(Object obj, Function function, Object obj2, Object obj3, Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = obj;
        this.f$2 = function;
        this.f$3 = obj2;
        this.f$4 = obj3;
        this.f$0 = modifier;
        this.f$5 = i;
    }
}
