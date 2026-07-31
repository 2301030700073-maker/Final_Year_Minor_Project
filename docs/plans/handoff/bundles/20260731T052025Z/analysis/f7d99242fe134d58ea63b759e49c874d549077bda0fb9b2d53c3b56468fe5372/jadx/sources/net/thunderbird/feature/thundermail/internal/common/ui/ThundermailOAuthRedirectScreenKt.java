package net.thunderbird.feature.thundermail.internal.common.ui;

import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MaterialThemeKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.dialog.ui.components.list.value.TextItemKt$$ExternalSyntheticLambda1;
import net.thunderbird.feature.notification.api.ui.ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$Error;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;
import org.koin.compose.KoinApplicationKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ThundermailOAuthRedirectScreenKt {
    public static final ComposableLambdaImpl lambda$571617464 = new ComposableLambdaImpl(571617464, new ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0(1), false);

    public static final void ErrorDetails(ThundermailContract$Error thundermailContract$Error, Modifier modifier, Composer composer, int i) {
        int i2;
        String stringResource;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2043088640);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(thundermailContract$Error) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            DBUtil.m807TextTitleLargeXl4FiYE(Operation$State.stringResource(gapComposer, R.string.thundermail_something_went_wrong), null, 0L, null, 0, 0, gapComposer, 0, 62);
            if (Intrinsics.areEqual(thundermailContract$Error, ThundermailContract$Error.BrowserNotAvailable.INSTANCE)) {
                gapComposer.startReplaceGroup(230252583);
                stringResource = Operation$State.stringResource(gapComposer, R.string.thundermail_browser_is_not_available);
                gapComposer.end(false);
            } else if (Intrinsics.areEqual(thundermailContract$Error, ThundermailContract$Error.Canceled.INSTANCE)) {
                gapComposer.startReplaceGroup(230256325);
                stringResource = Operation$State.stringResource(gapComposer, R.string.thundermail_operation_was_canceled);
                gapComposer.end(false);
            } else {
                if (!(thundermailContract$Error instanceof ThundermailContract$Error.Unknown)) {
                    throw ViewSizeResolver.CC.m(gapComposer, 230249766, false);
                }
                gapComposer.startReplaceGroup(230260726);
                stringResource = Operation$State.stringResource(gapComposer, R.string.thundermail_unknown_error_please_consider_reporting);
                gapComposer.end(false);
            }
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(stringResource, null, 0L, null, 0, 0, gapComposer, 0, 62);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 18, thundermailContract$Error, modifier);
        }
    }

    public static final void LaunchedErrorEffect(ThundermailContract$State thundermailContract$State, NavController$$ExternalSyntheticLambda0 navController$$ExternalSyntheticLambda0, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-124270515);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(thundermailContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(navController$$ExternalSyntheticLambda0) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ThundermailContract$Error thundermailContract$Error = thundermailContract$State.error;
            boolean z = ((i2 & 14) == 4) | ((i2 & 112) == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new InterruptibleKt$runInterruptible$2(thundermailContract$State, navController$$ExternalSyntheticLambda0, null, 29);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.LaunchedEffect(gapComposer, thundermailContract$Error, (Function2) rememberedValue);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(i, 17, thundermailContract$State, navController$$ExternalSyntheticLambda0);
        }
    }

    public static final void RedirectingUserContent(Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1790265842);
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.CenterHorizontally, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i2 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i2);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i3, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            OAuthBearer.m939CircularProgressIndicatoriJQMabo(SizeKt.m234size3ABfNKs(Modifier.Companion.$$INSTANCE, 32.0f), 0L, gapComposer, 0, 2);
            gapComposer.end(true);
            Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(Operation$State.stringResource(gapComposer, R.string.thundermail_redirecting), null, 0L, null, 0, 0, gapComposer, 0, 62);
            gapComposer = gapComposer;
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$$ExternalSyntheticLambda0(modifier, i, 9);
        }
    }

    public static final void ThundermailOAuthRedirectScreen(NavController$$ExternalSyntheticLambda0 navController$$ExternalSyntheticLambda0, FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2, Modifier modifier, ThundermailOAuthViewModel thundermailOAuthViewModel, Composer composer, int i) {
        Modifier modifier2;
        ThundermailOAuthViewModel thundermailOAuthViewModel2;
        ThundermailOAuthViewModel thundermailOAuthViewModel3;
        int i2;
        Modifier modifier3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(803701743);
        int i3 = i | (gapComposer.changedInstance(navController$$ExternalSyntheticLambda0) ? 4 : 2) | (gapComposer.changedInstance(featureLauncherNavHostKt$$ExternalSyntheticLambda2) ? 32 : 16) | 1408;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                } else {
                    thundermailOAuthViewModel3 = (ThundermailOAuthViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ThundermailOAuthViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null);
                    i2 = i3 & (-7169);
                    modifier3 = Modifier.Companion.$$INSTANCE;
                }
            } else {
                gapComposer.skipToGroupEnd();
                thundermailOAuthViewModel3 = thundermailOAuthViewModel;
                i2 = i3 & (-7169);
                modifier3 = modifier;
            }
            gapComposer.endDefaults();
            AuthorizationContract authorizationContract = new AuthorizationContract(6);
            boolean changed = gapComposer.changed(thundermailOAuthViewModel3);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (changed || rememberedValue == obj) {
                rememberedValue = new ForwardingFileSystem$$ExternalSyntheticLambda0(16, thundermailOAuthViewModel3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ManagedActivityResultLauncher rememberLauncherForActivityResult = DBUtil.rememberLauncherForActivityResult(authorizationContract, (Function1) rememberedValue, gapComposer);
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(thundermailOAuthViewModel3.state, gapComposer);
            boolean changedInstance = gapComposer.changedInstance(thundermailOAuthViewModel3);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == obj) {
                rememberedValue2 = new ProduceKt$awaitClose$4$1(17, thundermailOAuthViewModel3);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Object obj2 = (Function1) rememberedValue2;
            thundermailOAuthViewModel2 = thundermailOAuthViewModel3;
            Updater.LaunchedEffect(gapComposer, thundermailOAuthViewModel3.effect, new StringResourcesKt$stringResource$str$3$1(thundermailOAuthViewModel2, (Continuation) null, rememberLauncherForActivityResult, featureLauncherNavHostKt$$ExternalSyntheticLambda2, 11));
            collectAsStateWithLifecycle.getClass();
            obj2.getClass();
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj) {
                rememberedValue3 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            MutableState mutableState = (MutableState) rememberedValue3;
            Boolean valueOf = Boolean.valueOf(((ThundermailContract$State) collectAsStateWithLifecycle.getValue()).initialized);
            boolean changed2 = gapComposer.changed(collectAsStateWithLifecycle) | gapComposer.changed(obj2);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue4 == obj) {
                Object imageLoadKt$ImageLoad$2$1$1 = new ImageLoadKt$ImageLoad$2$1$1(collectAsStateWithLifecycle, obj2, mutableState, null, 10);
                gapComposer.updateRememberedValue(imageLoadKt$ImageLoad$2$1$1);
                rememberedValue4 = imageLoadKt$ImageLoad$2$1$1;
            }
            Updater.LaunchedEffect(gapComposer, valueOf, (Function2) rememberedValue4);
            int i4 = (i2 << 3) & 112;
            LaunchedErrorEffect((ThundermailContract$State) collectAsStateWithLifecycle.getValue(), navController$$ExternalSyntheticLambda0, gapComposer, i4);
            ThundermailOAuthRedirectScreen((ThundermailContract$State) collectAsStateWithLifecycle.getValue(), navController$$ExternalSyntheticLambda0, modifier3, gapComposer, i4 | 384);
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            thundermailOAuthViewModel2 = thundermailOAuthViewModel;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MaterialThemeKt$$ExternalSyntheticLambda0(navController$$ExternalSyntheticLambda0, featureLauncherNavHostKt$$ExternalSyntheticLambda2, modifier2, thundermailOAuthViewModel2, i, 23);
        }
    }

    public static final void ThundermailOAuthRedirectScreen(ThundermailContract$State thundermailContract$State, NavController$$ExternalSyntheticLambda0 navController$$ExternalSyntheticLambda0, Modifier modifier, Composer composer, int i) {
        int i2;
        thundermailContract$State.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1267448223);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(thundermailContract$State) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(navController$$ExternalSyntheticLambda0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            ScaffoldKt.Scaffold(modifier, null, Expect_jvmKt.rememberComposableLambda(1471595386, new AboutFragmentKt$$ExternalSyntheticLambda7(20, navController$$ExternalSyntheticLambda0, thundermailContract$State), gapComposer), null, null, null, Expect_jvmKt.rememberComposableLambda(2064470419, new MovableContentKt$$ExternalSyntheticLambda0(17, thundermailContract$State), gapComposer), gapComposer, ((i2 >> 6) & 14) | 1573248, 58);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextItemKt$$ExternalSyntheticLambda1(thundermailContract$State, navController$$ExternalSyntheticLambda0, modifier, i, 10);
        }
    }
}
