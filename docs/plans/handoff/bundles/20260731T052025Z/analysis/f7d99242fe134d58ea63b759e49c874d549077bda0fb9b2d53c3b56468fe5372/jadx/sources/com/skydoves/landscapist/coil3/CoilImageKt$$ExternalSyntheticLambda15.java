package com.skydoves.landscapist.coil3;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation;
import app.k9mail.feature.account.edit.ui.server.settings.save.BaseSaveServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsScreenKt;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountViewModel;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsViewModel;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsViewModel;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$UiPermissionState;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda3;
import com.fsck.k9.ui.messagelist.MessageListLoaderKt;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.components.ImageComponent;
import java.util.Set;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlin.text.StringsKt__IndentKt;
import kotlin.uuid.UuidKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.common.provider.AppNameProvider;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.setting.Setting;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsViewModel;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.domain.model.SortType;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenRenderer;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import okhttp3.CacheControl;
import okhttp3.Cookie;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.minidns.util.Hex;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CoilImageKt$$ExternalSyntheticLambda15 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ CoilImageKt$$ExternalSyntheticLambda15(ImageComponent imageComponent, Modifier modifier, Object obj, ImageOptions imageOptions, ImageBitmap imageBitmap, int i) {
        this.$r8$classId = 14;
        this.f$0 = imageComponent;
        this.f$1 = modifier;
        this.f$2 = obj;
        this.f$4 = imageOptions;
        this.f$3 = imageBitmap;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Unit CoilImage$lambda$7$2$1$0;
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        final int i2 = 0;
        final int i3 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$2;
        Object obj4 = this.f$4;
        Object obj5 = this.f$3;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                CoilImage$lambda$7$2$1$0 = CoilImageKt.CoilImage$lambda$7$2$1$0((Function5) obj7, (BoxWithConstraintsScope) obj6, (CoilImageState) obj3, (Painter) obj5, (ImageOptions) obj4, (Composer) obj, ((Integer) obj2).intValue());
                break;
            case 1:
                Modifier modifier = (Modifier) obj7;
                MutableState mutableState = (MutableState) obj6;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj5;
                Function0 function0 = (Function0) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new BasicTextKt$$ExternalSyntheticLambda0(mutableState, 5);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(modifier, (Function1) rememberedValue);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    long j = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, onGloballyPositioned);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke((Object) gapComposer, (Object) 0);
                    basicTextContextMenuProvider.ContextMenu(function0, gapComposer, 6);
                    gapComposer.end(true);
                    break;
                }
            case 2:
                ((Integer) obj2).getClass();
                OAuthBearer.CardElevated((Modifier) obj7, (Shape) obj6, (CardColors) obj3, (CardElevation) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, Updater.updateChangedFlags(196609));
                break;
            case 3:
                ((Integer) obj2).getClass();
                SaveServerSettingsScreenKt.SaveServerSettingsScreen((String) obj7, (Function0) obj6, (Function0) obj3, (BaseSaveServerSettingsViewModel) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(4097));
                break;
            case 4:
                ((Integer) obj2).getClass();
                Validate.ClientCertificateInput((String) obj7, (Function1) obj6, (Modifier) obj3, (String) obj5, (PaddingValuesImpl) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                CreateAccountScreenKt.CreateAccountScreen((Function1) obj7, (Function0) obj6, (CreateAccountViewModel) obj3, (BrandNameProvider) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(513));
                break;
            case 6:
                ((Integer) obj2).getClass();
                DisplayOptionsScreenKt.DisplayOptionsScreen((Function0) obj7, (Function0) obj6, (DisplayOptionsViewModel) obj3, (BrandNameProvider) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(513));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                SyncOptionsScreenKt.SyncOptionsScreen((Function0) obj7, (Function0) obj6, (SyncOptionsViewModel) obj3, (BrandNameProvider) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(513));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                SpecialFoldersScreenKt.SpecialFoldersScreen((Function1) obj7, (Function0) obj6, (SpecialFoldersViewModel) obj3, (BrandNameProvider) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(513));
                break;
            case 9:
                ((Integer) obj2).getClass();
                ((NoOpOnboardingMigrationManager) obj7).OnboardingMigrationScreen((Function0) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                ActionBar.PermissionBox((ImageVector) obj7, (PermissionsContract$UiPermissionState) obj6, (String) obj3, (String) obj5, (Function0) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                WelcomeScreenKt.WelcomeScreen((Function0) obj7, (Function0) obj6, (AppNameProvider) obj3, (NoOpOnboardingMigrationManager) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                final SortCriteria sortCriteria = (SortCriteria) obj7;
                ImmutableSet immutableSet = (ImmutableSet) obj6;
                final Function1 function1 = (Function1) obj3;
                final AccountId accountId = (AccountId) obj5;
                ImmutableSet immutableSet2 = (ImmutableSet) obj4;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer2.changed(sortCriteria);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new MessageListFragment$$ExternalSyntheticLambda3(sortCriteria, 0);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function12 = (Function1) rememberedValue2;
                    boolean changed2 = gapComposer2.changed(function1) | gapComposer2.changedInstance(accountId) | gapComposer2.changed(sortCriteria);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new Function1() { // from class: com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj8) {
                                int i5 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                SortCriteria sortCriteria2 = sortCriteria;
                                AccountId accountId2 = accountId;
                                Function1 function13 = function1;
                                SortType sortType = (SortType) obj8;
                                switch (i5) {
                                    case 0:
                                        sortType.getClass();
                                        SortType sortType2 = SortCriteria.SecondaryNotRequiredForSortTypes.contains(sortType) ? null : SortType.DateDesc;
                                        sortCriteria2.getClass();
                                        function13.invoke(new MessageListEvent.ChangeSortCriteria(accountId2, new SortCriteria(sortType, sortType2)));
                                        break;
                                    default:
                                        sortType.getClass();
                                        SortType sortType3 = sortCriteria2.primary;
                                        Set set = SortCriteria.DateSortTypeOnly;
                                        sortType3.getClass();
                                        function13.invoke(new MessageListEvent.ChangeSortCriteria(accountId2, new SortCriteria(sortType3, sortType)));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function1 function13 = (Function1) rememberedValue3;
                    boolean changed3 = gapComposer2.changed(function1) | gapComposer2.changedInstance(accountId) | gapComposer2.changed(sortCriteria);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changed3 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new Function1() { // from class: com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj8) {
                                int i5 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                SortCriteria sortCriteria2 = sortCriteria;
                                AccountId accountId2 = accountId;
                                Function1 function132 = function1;
                                SortType sortType = (SortType) obj8;
                                switch (i5) {
                                    case 0:
                                        sortType.getClass();
                                        SortType sortType2 = SortCriteria.SecondaryNotRequiredForSortTypes.contains(sortType) ? null : SortType.DateDesc;
                                        sortCriteria2.getClass();
                                        function132.invoke(new MessageListEvent.ChangeSortCriteria(accountId2, new SortCriteria(sortType, sortType2)));
                                        break;
                                    default:
                                        sortType.getClass();
                                        SortType sortType3 = sortCriteria2.primary;
                                        Set set = SortCriteria.DateSortTypeOnly;
                                        sortType3.getClass();
                                        function132.invoke(new MessageListEvent.ChangeSortCriteria(accountId2, new SortCriteria(sortType3, sortType)));
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    MessageListLoaderKt.SortTypeList(sortCriteria, immutableSet, function12, function13, null, immutableSet2, (Function1) rememberedValue4, gapComposer2, 0);
                    break;
                }
            case 13:
                ((Integer) obj2).getClass();
                Util.AttachmentListContent((ImmutableList) obj7, (SizeFormatter) obj6, (Function1) obj3, (Function1) obj5, (Function0) obj4, (Composer) obj, Updater.updateChangedFlags(65));
                break;
            case 14:
                ((Integer) obj2).getClass();
                ActionBar.ComposeSuccessStatePlugins((ImageComponent) obj7, (Modifier) obj6, this.f$2, (ImageOptions) obj4, (ImageBitmap) obj5, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case OffsetKt.Horizontal /* 15 */:
                ((Integer) obj2).getClass();
                StringsKt__IndentKt.SettingDialog((Setting) obj7, (Function1) obj6, (Function0) obj3, (Function0) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 16:
                ((Integer) obj2).getClass();
                CloseableKt.AdvancedFetchingMailSettingsScreen((AccountId) obj7, (Function0) obj6, (FetchingMailSettingsViewModel) obj3, (DialogSettingViewProvider) obj5, (FetchingMailSettingsBuilder) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 17:
                ((Integer) obj2).getClass();
                Cookie.Companion.GeneralSettingsScreen((AccountId) obj7, (Function0) obj6, (GeneralSettingsViewModel) obj3, (DialogSettingViewProvider) obj5, (GeneralSettingsBuilder) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 18:
                ((Integer) obj2).getClass();
                CacheControl.Companion.MessageListSwipeableItem((MessageItemUi) obj7, (SwipeActions) obj6, (Function1) obj3, (Modifier) obj5, (ComposableLambdaImpl) obj4, (Composer) obj, Updater.updateChangedFlags(24577));
                break;
            case 19:
                ((Integer) obj2).getClass();
                Hex.CreateNewArchiveFolderDialogContent((String) obj7, (Function1) obj6, (Modifier) obj3, (String) obj5, (String) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 20:
                ((Integer) obj2).getClass();
                Jsoup.SetupArchiveFolderDialogContent((SetupArchiveFolderDialogContract$State) obj7, (String) obj6, (Function1) obj3, (Function1) obj5, (Modifier) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                UuidKt.Render$default((Function2) obj7, (Modifier) obj6, (MessageListContract$ViewModel) obj3, (Function1) obj5, (MessageListScreenRenderer) obj4, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ CoilImageKt$$ExternalSyntheticLambda15(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
    }

    public /* synthetic */ CoilImageKt$$ExternalSyntheticLambda15(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
    }
}
