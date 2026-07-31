package net.thunderbird.feature.changelog.internal;

import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.work.Data;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.uuid.UuidKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.dialog.ui.DialogSettingViewKt$$ExternalSyntheticLambda4;
import net.thunderbird.feature.account.AccountIdFactory;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$AdvancedFetchingMailSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$FetchingMailSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$GeneralSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$ReadingMailSettings;
import net.thunderbird.feature.account.settings.api.AccountSettingsRoute$SearchSettings;
import net.thunderbird.feature.changelog.internal.ChangelogViewModel;
import net.thunderbird.feature.navigation.changelog.api.ChangelogRoute;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayAccount;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.koin.compose.KoinApplicationKt;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultChangelogNavigation$$ExternalSyntheticLambda0 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;

    public /* synthetic */ DefaultChangelogNavigation$$ExternalSyntheticLambda0(int i, Function0 function0) {
        this.$r8$classId = i;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Object obj5 = Composer.Companion.Empty;
        Continuation continuation = null;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                navBackStackEntry.getClass();
                Object obj6 = (ChangelogRoute) MathKt.toRoute(navBackStackEntry, Reflection.getOrCreateKotlinClass(ChangelogRoute.class));
                GapComposer gapComposer = (GapComposer) ((Composer) obj3);
                boolean changedInstance = gapComposer.changedInstance(obj6);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == obj5) {
                    rememberedValue = new ResourceFileSystem$$ExternalSyntheticLambda0(8, obj6);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function0 = (Function0) rememberedValue;
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return null;
                }
                ChangelogViewModel changelogViewModel = (ChangelogViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ChangelogViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), function0);
                MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(changelogViewModel.state, gapComposer);
                boolean changedInstance2 = gapComposer.changedInstance(changelogViewModel);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue2 == obj5) {
                    rememberedValue2 = new ProduceKt$awaitClose$4$1(13, changelogViewModel);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function1 function1 = (Function1) rememberedValue2;
                Updater.LaunchedEffect(gapComposer, changelogViewModel.effect, new ChangelogViewModel.AnonymousClass1(changelogViewModel, continuation, 1));
                collectAsStateWithLifecycle.getClass();
                function1.getClass();
                ImmutableList immutableList = ((ChangelogContract$State) collectAsStateWithLifecycle.getValue()).releaseItems;
                boolean z = ((ChangelogContract$State) collectAsStateWithLifecycle.getValue()).showRecentChanges;
                boolean changed = gapComposer.changed(function1) | gapComposer.changed(collectAsStateWithLifecycle);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed || rememberedValue3 == obj5) {
                    rememberedValue3 = new DialogSettingViewKt$$ExternalSyntheticLambda4(1, collectAsStateWithLifecycle, function1);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Jsoup.ChangelogScreen(immutableList, z, (Function1) rememberedValue3, this.f$0, null, gapComposer, 8);
                return unit;
            case 1:
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj2;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                navBackStackEntry2.getClass();
                Cookie.Companion.GeneralSettingsScreen(AccountIdFactory.INSTANCE.of(((AccountSettingsRoute$GeneralSettings) MathKt.toRoute(navBackStackEntry2, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$GeneralSettings.class))).accountId), this.f$0, null, null, null, (Composer) obj3, 0);
                return unit;
            case 2:
                NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) obj2;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                navBackStackEntry3.getClass();
                CharsKt__CharKt.ReadingMailSettingsScreen(AccountIdFactory.INSTANCE.of(((AccountSettingsRoute$ReadingMailSettings) MathKt.toRoute(navBackStackEntry3, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$ReadingMailSettings.class))).accountId), this.f$0, null, null, null, null, (Composer) obj3, 0);
                return unit;
            case 3:
                NavBackStackEntry navBackStackEntry4 = (NavBackStackEntry) obj2;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                navBackStackEntry4.getClass();
                Options.Companion.FetchingMailSettingsScreen(AccountIdFactory.INSTANCE.of(((AccountSettingsRoute$FetchingMailSettings) MathKt.toRoute(navBackStackEntry4, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$FetchingMailSettings.class))).accountId), this.f$0, null, null, null, null, (Composer) obj3, 0);
                return unit;
            case 4:
                NavBackStackEntry navBackStackEntry5 = (NavBackStackEntry) obj2;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                navBackStackEntry5.getClass();
                CloseableKt.AdvancedFetchingMailSettingsScreen(AccountIdFactory.INSTANCE.of(((AccountSettingsRoute$AdvancedFetchingMailSettings) MathKt.toRoute(navBackStackEntry5, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$AdvancedFetchingMailSettings.class))).accountId), this.f$0, null, null, null, (Composer) obj3, 0);
                return unit;
            case 5:
                NavBackStackEntry navBackStackEntry6 = (NavBackStackEntry) obj2;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                navBackStackEntry6.getClass();
                StringsKt__IndentKt.SearchSettingsScreen(AccountIdFactory.INSTANCE.of(((AccountSettingsRoute$SearchSettings) MathKt.toRoute(navBackStackEntry6, Reflection.getOrCreateKotlinClass(AccountSettingsRoute$SearchSettings.class))).accountId), this.f$0, null, null, null, null, (Composer) obj3, 0);
                return unit;
            default:
                DisplayAccount displayAccount = (DisplayAccount) obj2;
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((AnimatedContentScopeImpl) obj).getClass();
                displayAccount.getClass();
                if ((intValue & 48) == 0) {
                    intValue |= (intValue & 64) == 0 ? ((GapComposer) composer).changed(displayAccount) : ((GapComposer) composer).changedInstance(displayAccount) ? 32 : 16;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.shouldExecute(intValue & 1, (intValue & 145) != 144)) {
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), vertical, gapComposer2, 48);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, Modifier.Companion.$$INSTANCE);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m380setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i2);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m380setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m379reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m380setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    Function0 function02 = this.f$0;
                    boolean changed2 = gapComposer2.changed(function02);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue4 == obj5) {
                        rememberedValue4 = new AppBarKt$$ExternalSyntheticLambda0(10, function02);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Base64.AccountAvatar(displayAccount, null, (Function1) rememberedValue4, gapComposer2, ((intValue >> 3) & 14) | 48);
                    ((ThemeSpacings) gapComposer2.consume(staticProvidableCompositionLocal)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(4.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                    Modifier then = SizeKt.FillWholeMaxWidth.then(new LayoutWeightElement(1.0f, true));
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$SpacedAligned, Alignment.Companion.Start, gapComposer2, 0);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, then);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m380setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Config.CC.m(i3, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m380setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    String displayAccountName = UuidKt.getDisplayAccountName(displayAccount, gapComposer2);
                    AnnotatedString.Builder builder = new AnnotatedString.Builder();
                    int pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
                    try {
                        builder.append(displayAccountName);
                        builder.pop(pushStyle);
                        Utf8.SafeProcessor.m798TextBodyLargeXl4FiYE(builder.toAnnotatedString(), null, 0L, 0, 0, gapComposer2, 0, 62);
                        if (displayAccount instanceof MailDisplayAccount) {
                            MailDisplayAccount mailDisplayAccount = (MailDisplayAccount) displayAccount;
                            String str = mailDisplayAccount.email;
                            if (!mailDisplayAccount.name.equals(str)) {
                                gapComposer2.startReplaceGroup(-2044093892);
                                Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer2, 0, 126);
                                gapComposer2.end(false);
                                gapComposer2.end(true);
                                gapComposer2.end(true);
                            }
                        }
                        gapComposer2.startReplaceGroup(-2043969923);
                        gapComposer2.end(false);
                        gapComposer2.end(true);
                        gapComposer2.end(true);
                    } catch (Throwable th) {
                        builder.pop(pushStyle);
                        throw th;
                    }
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
        }
    }
}
