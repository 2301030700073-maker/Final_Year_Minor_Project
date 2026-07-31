package androidx.core.util;

import android.content.Context;
import android.content.res.Resources;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.os.Parcel;
import android.os.Process;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.BackHandlerInfo;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda1;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda3;
import androidx.activity.compose.ComposeBackHandler;
import androidx.activity.compose.LocalOnBackPressedDispatcherOwner;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.cardview.widget.CardView;
import androidx.cardview.widget.RoundRectDrawable;
import androidx.cardview.widget.RoundRectDrawableWithShadow;
import androidx.collection.CircularArray;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.selection.CrossStatus;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion;
import androidx.compose.foundation.text.selection.SelectionAdjustmentKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$3;
import androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$2;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupId$1$1;
import androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1;
import androidx.compose.ui.window.DialogLayout;
import androidx.compose.ui.window.DialogProperties;
import androidx.compose.ui.window.DialogWrapper;
import androidx.compose.ui.window.PopupLayout$Content$4;
import androidx.datastore.core.DirectBootUsageException;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.compose.DialogHostKt$$ExternalSyntheticLambda0;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import androidx.room.util.DBUtil;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.tracing.TraceApi29Impl;
import androidx.work.Data;
import app.k9mail.autodiscovery.api.ImapServerSettings;
import app.k9mail.autodiscovery.api.SmtpServerSettings;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.ConnectionSecurity;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$State;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerScreenKt$QrCodeScannerScreen$2$1;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.settings.p000import.ui.AuthorizationContract;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.eygraber.uri.NotCachedHolder;
import com.eygraber.uri.parts.PathPart;
import com.fsck.k9.R;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda2;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda3;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda5;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.fsck.k9.ui.settings.Library;
import com.google.zxing.BinaryBitmap;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.adapters.ItemFilter;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1;
import j$.net.URLDecoder;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.koin.compose.KoinApplicationKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DebugUtils {
    public static ImageVector _accountCircle = null;
    public static ImageVector _keyboardArrowDown = null;
    public static boolean sTryHiddenSuppressLayout = true;

    public static final void AboutScreen(String str, String str2, String str3, String str4, int i, ImmutableList immutableList, Modifier modifier, Function0 function0, Function0 function02, Function0 function03, Function0 function04, Function0 function05, Composer composer, int i2) {
        Modifier modifier2;
        immutableList.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(54012073);
        int i3 = i2 | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(str2) ? 32 : 16) | (gapComposer.changed(str3) ? 256 : 128) | (gapComposer.changed(str4) ? 2048 : 1024) | (gapComposer.changed(i) ? 16384 : 8192) | (gapComposer.changed(immutableList) ? 131072 : 65536) | 1572864 | (gapComposer.changedInstance(function0) ? 8388608 : 4194304) | (gapComposer.changedInstance(function02) ? 67108864 : 33554432) | (gapComposer.changedInstance(function03) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i3 & 1, ((306783379 & i3) == 306783378 && (((gapComposer.changedInstance(function04) ? (char) 4 : (char) 2) | (gapComposer.changedInstance(function05) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            MathKt.m983Surface_UMDTes(SizeKt.FillWholeMaxSize, null, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-602995642, new AboutFragmentKt$$ExternalSyntheticLambda0(ImageKt.rememberScrollState(gapComposer), i, str2, str, function0, function02, function03, str3, function04, function05, str4, immutableList), gapComposer), gapComposer, 196614, 30);
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda0(str, str2, str3, str4, i, immutableList, modifier2, function0, function02, function03, function04, function05, i2);
        }
    }

    public static final void AppLogo(int i, int i2, Composer composer, Modifier modifier) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1784570620);
        int i3 = (gapComposer.changed(i) ? 4 : 2) | i2 | 48;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(fillElement, 16.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.Center, Alignment.Companion.Top, gapComposer, 6);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m218padding3ABfNKs);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Painter painterResource = MathKt.painterResource(i, gapComposer, i3 & 14);
            modifier = Modifier.Companion.$$INSTANCE;
            ImageKt.Image(painterResource, null, SizeKt.m234size3ABfNKs(modifier, 100.0f), null, null, 0.0f, null, gapComposer, 440, 120);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda3(i, modifier, i2);
        }
    }

    public static final void BackHandler(boolean z, Function0 function0, Composer composer, int i, int i2) {
        boolean z2;
        int i3;
        boolean z3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-361453782);
        int i4 = i2 & 1;
        int i5 = 2;
        if (i4 != 0) {
            i3 = i | 6;
            z2 = z;
        } else if ((i & 6) == 0) {
            z2 = z;
            i3 = i | (gapComposer.changed(z2) ? 4 : 2);
        } else {
            z2 = z;
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        int i6 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            boolean z4 = i4 != 0 ? true : z2;
            Object obj = (NavigationEventDispatcherOwner) gapComposer.consume(LocalNavigationEventDispatcherOwner.LocalNavigationEventDispatcherOwner);
            if (obj == null) {
                gapComposer.startReplaceGroup(535274673);
                obj = LocalOnBackPressedDispatcherOwner.getCurrent(gapComposer);
            } else {
                gapComposer.startReplaceGroup(535271790);
            }
            gapComposer.end(false);
            if (obj == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.");
                return;
            }
            boolean changed = gapComposer.changed(obj);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            Object obj2 = rememberedValue;
            if (changed || rememberedValue == neverEqualPolicy) {
                NavigationEventDispatcherOwner navigationEventDispatcherOwner = obj instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) obj : null;
                Dispatcher navigationEventDispatcher = navigationEventDispatcherOwner != null ? navigationEventDispatcherOwner.getNavigationEventDispatcher() : null;
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = obj instanceof OnBackPressedDispatcherOwner ? (OnBackPressedDispatcherOwner) obj : null;
                BackHandlerDispatcherCompat backHandlerDispatcherCompat = new BackHandlerDispatcherCompat(navigationEventDispatcher, onBackPressedDispatcherOwner != null ? onBackPressedDispatcherOwner.getOnBackPressedDispatcher() : null);
                gapComposer.updateRememberedValue(backHandlerDispatcherCompat);
                obj2 = backHandlerDispatcherCompat;
            }
            BackHandlerDispatcherCompat backHandlerDispatcherCompat2 = (BackHandlerDispatcherCompat) obj2;
            long j = gapComposer.compositeKeyHashCode;
            boolean changed2 = gapComposer.changed(backHandlerDispatcherCompat2) | gapComposer.changed(j);
            Object rememberedValue2 = gapComposer.rememberedValue();
            Object obj3 = rememberedValue2;
            if (changed2 || rememberedValue2 == neverEqualPolicy) {
                ComposeBackHandler composeBackHandler = new ComposeBackHandler(new BackHandlerInfo(j, obj));
                composeBackHandler.currentOnBackCompleted = new ImmLeaksCleaner$$ExternalSyntheticLambda0(i5);
                gapComposer.updateRememberedValue(composeBackHandler);
                obj3 = composeBackHandler;
            }
            ComposeBackHandler composeBackHandler2 = (ComposeBackHandler) obj3;
            gapComposer.startReplaceGroup(-585307852);
            boolean changedInstance = gapComposer.changedInstance(composeBackHandler2) | ((i3 & 112) == 32);
            Object rememberedValue3 = gapComposer.rememberedValue();
            Object obj4 = rememberedValue3;
            if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(r11, composeBackHandler2, function0);
                gapComposer.updateRememberedValue(recomposer$$ExternalSyntheticLambda6);
                obj4 = recomposer$$ExternalSyntheticLambda6;
            }
            Updater.SideEffect((Function0) obj4, gapComposer);
            Boolean valueOf = Boolean.valueOf(z4);
            int i7 = i3 & 14;
            int i8 = (gapComposer.changedInstance(composeBackHandler2) ? 1 : 0) | (i7 != 4 ? 0 : 1);
            Object rememberedValue4 = gapComposer.rememberedValue();
            Object obj5 = rememberedValue4;
            if (i8 != 0 || rememberedValue4 == neverEqualPolicy) {
                BackHandlerKt$$ExternalSyntheticLambda1 backHandlerKt$$ExternalSyntheticLambda1 = new BackHandlerKt$$ExternalSyntheticLambda1(i6, composeBackHandler2, z4);
                gapComposer.updateRememberedValue(backHandlerKt$$ExternalSyntheticLambda1);
                obj5 = backHandlerKt$$ExternalSyntheticLambda1;
            }
            SchemaInfoUtilKt.LifecycleStartEffect(valueOf, composeBackHandler2, null, (Function1) obj5, gapComposer, i7);
            boolean changedInstance2 = gapComposer.changedInstance(backHandlerDispatcherCompat2) | gapComposer.changedInstance(composeBackHandler2);
            Object rememberedValue5 = gapComposer.rememberedValue();
            Object obj6 = rememberedValue5;
            if (changedInstance2 || rememberedValue5 == neverEqualPolicy) {
                BackHandlerKt$$ExternalSyntheticLambda2 backHandlerKt$$ExternalSyntheticLambda2 = new BackHandlerKt$$ExternalSyntheticLambda2(i6, backHandlerDispatcherCompat2, composeBackHandler2);
                gapComposer.updateRememberedValue(backHandlerKt$$ExternalSyntheticLambda2);
                obj6 = backHandlerKt$$ExternalSyntheticLambda2;
            }
            Updater.DisposableEffect(backHandlerDispatcherCompat2, composeBackHandler2, (Function1) obj6, gapComposer);
            gapComposer.end(false);
            z3 = z4;
        } else {
            gapComposer.skipToGroupEnd();
            z3 = z2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BackHandlerKt$$ExternalSyntheticLambda3(z3, function0, i, i2, 0);
        }
    }

    public static final void Dialog(final Function0 function0, final DialogProperties dialogProperties, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(826668973);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(dialogProperties) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        int i3 = i2;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
            Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
            final LayoutDirection layoutDirection = (LayoutDirection) gapComposer.consume(CompositionLocalsKt.LocalLayoutDirection);
            GapComposer.CompositionContextImpl rememberCompositionContext = Updater.rememberCompositionContext(gapComposer);
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(composableLambdaImpl, gapComposer);
            Object[] objArr = new Object[0];
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            Object obj = rememberedValue;
            if (rememberedValue == neverEqualPolicy) {
                AndroidPopup_androidKt$Popup$popupId$1$1 androidPopup_androidKt$Popup$popupId$1$1 = AndroidPopup_androidKt$Popup$popupId$1$1.INSTANCE$1;
                gapComposer.updateRememberedValue(androidPopup_androidKt$Popup$popupId$1$1);
                obj = androidPopup_androidKt$Popup$popupId$1$1;
            }
            UUID uuid = (UUID) SaverKt.rememberSaveable(objArr, (Function0) obj, gapComposer, 48);
            boolean changed = gapComposer.changed(dialogProperties.windowType) | gapComposer.changed(view) | gapComposer.changed(density) | gapComposer.changed((Object) null);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                DialogWrapper dialogWrapper = new DialogWrapper(function0, dialogProperties, view, layoutDirection, density, uuid);
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-1338939603, new PopupLayout$Content$4(6, rememberUpdatedState), true);
                DialogLayout dialogLayout = dialogWrapper.dialogLayout;
                dialogLayout.setParentCompositionContext(rememberCompositionContext);
                dialogLayout.content$delegate.setValue(composableLambdaImpl2);
                dialogLayout.shouldCreateCompositionOnAttachedToWindow = true;
                dialogLayout.createComposition();
                gapComposer.updateRememberedValue(dialogWrapper);
                rememberedValue2 = dialogWrapper;
            }
            final DialogWrapper dialogWrapper2 = (DialogWrapper) rememberedValue2;
            boolean changedInstance = gapComposer.changedInstance(dialogWrapper2);
            Object rememberedValue3 = gapComposer.rememberedValue();
            Object obj2 = rememberedValue3;
            if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                DialogWrapper.AnonymousClass2 anonymousClass2 = new DialogWrapper.AnonymousClass2(dialogWrapper2, r13);
                gapComposer.updateRememberedValue(anonymousClass2);
                obj2 = anonymousClass2;
            }
            Updater.DisposableEffect(dialogWrapper2, (Function1) obj2, gapComposer);
            int i4 = (gapComposer.changedInstance(dialogWrapper2) ? 1 : 0) | ((i3 & 14) == 4 ? 1 : 0) | ((i3 & 112) != 32 ? 0 : 1) | (gapComposer.changed(layoutDirection.ordinal()) ? 1 : 0);
            Object rememberedValue4 = gapComposer.rememberedValue();
            Object obj3 = rememberedValue4;
            if (i4 != 0 || rememberedValue4 == neverEqualPolicy) {
                Function0 function02 = new Function0() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        DialogWrapper.this.updateParameters(function0, dialogProperties, layoutDirection);
                        return Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(function02);
                obj3 = function02;
            }
            Updater.SideEffect((Function0) obj3, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AndroidDialog_androidKt$Dialog$3(function0, dialogProperties, composableLambdaImpl, i, 0);
        }
    }

    public static final void DialogHost(final DialogNavigator dialogNavigator, Composer composer, int i) {
        SnapshotStateList snapshotStateList;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(294589392);
        if ((((gapComposer.changedInstance(dialogNavigator) ? 4 : 2) | i) & 3) == 2 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            final SaveableStateHolderImpl rememberSaveableStateHolder = SaverKt.rememberSaveableStateHolder(gapComposer);
            MutableState collectAsState = Updater.collectAsState(dialogNavigator.getState().backStack, gapComposer);
            List list = (List) collectAsState.getValue();
            boolean booleanValue = ((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue();
            boolean changed = gapComposer.changed(list);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            Object obj2 = rememberedValue;
            if (changed || rememberedValue == obj) {
                SnapshotStateList snapshotStateList2 = new SnapshotStateList();
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                    if (booleanValue || navBackStackEntry.impl.lifecycle.state.compareTo(Lifecycle.State.STARTED) >= 0) {
                        arrayList.add(obj3);
                    }
                }
                snapshotStateList2.addAll(arrayList);
                gapComposer.updateRememberedValue(snapshotStateList2);
                obj2 = snapshotStateList2;
            }
            SnapshotStateList snapshotStateList3 = (SnapshotStateList) obj2;
            PopulateVisibleList(snapshotStateList3, (List) collectAsState.getValue(), gapComposer, 0);
            MutableState collectAsState2 = Updater.collectAsState(dialogNavigator.getState().transitionsInProgress, gapComposer);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = new SnapshotStateList();
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            final SnapshotStateList snapshotStateList4 = (SnapshotStateList) rememberedValue2;
            gapComposer.startReplaceGroup(-367418626);
            ListIterator listIterator = snapshotStateList3.listIterator();
            while (true) {
                ListBuilder.Itr itr = (ListBuilder.Itr) listIterator;
                if (!itr.hasNext()) {
                    break;
                }
                final NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) itr.next();
                NavDestination navDestination = navBackStackEntry2.destination;
                navDestination.getClass();
                final DialogNavigator.Destination destination = (DialogNavigator.Destination) navDestination;
                boolean changedInstance = gapComposer.changedInstance(dialogNavigator) | gapComposer.changedInstance(navBackStackEntry2);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue3 == obj) {
                    rememberedValue3 = new Recomposer$$ExternalSyntheticLambda6(29, dialogNavigator, navBackStackEntry2);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Dialog((Function0) rememberedValue3, destination.dialogProperties, Expect_jvmKt.rememberComposableLambda(1129586364, new Function2() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$1$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj4, Object obj5) {
                        Composer composer2 = (Composer) obj4;
                        if ((((Number) obj5).intValue() & 3) == 2) {
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (gapComposer2.getSkipping()) {
                                gapComposer2.skipToGroupEnd();
                                return Unit.INSTANCE;
                            }
                        }
                        GapComposer gapComposer3 = (GapComposer) composer2;
                        NavBackStackEntry navBackStackEntry3 = NavBackStackEntry.this;
                        boolean changedInstance2 = gapComposer3.changedInstance(navBackStackEntry3);
                        DialogNavigator dialogNavigator2 = dialogNavigator;
                        boolean changedInstance3 = changedInstance2 | gapComposer3.changedInstance(dialogNavigator2);
                        Object rememberedValue4 = gapComposer3.rememberedValue();
                        if (changedInstance3 || rememberedValue4 == Composer.Companion.Empty) {
                            rememberedValue4 = new SimpleActor$$ExternalSyntheticLambda0(snapshotStateList4, navBackStackEntry3, dialogNavigator2, 21);
                            gapComposer3.updateRememberedValue(rememberedValue4);
                        }
                        Updater.DisposableEffect(navBackStackEntry3, (Function1) rememberedValue4, gapComposer3);
                        RelationUtil.LocalOwnersProvider(navBackStackEntry3, rememberSaveableStateHolder, Expect_jvmKt.rememberComposableLambda(-497631156, new ButtonKt$Button$2.AnonymousClass1(7, destination, navBackStackEntry3), gapComposer3), gapComposer3, 384);
                        return Unit.INSTANCE;
                    }
                }, gapComposer), gapComposer, 384);
            }
            gapComposer.end(false);
            Set set = (Set) collectAsState2.getValue();
            boolean changed2 = gapComposer.changed(collectAsState2) | gapComposer.changedInstance(dialogNavigator);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue4 == obj) {
                snapshotStateList = snapshotStateList4;
                Object imageLoadKt$ImageLoad$2$1$1 = new ImageLoadKt$ImageLoad$2$1$1(collectAsState2, dialogNavigator, snapshotStateList, null, 2);
                gapComposer.updateRememberedValue(imageLoadKt$ImageLoad$2$1$1);
                rememberedValue4 = imageLoadKt$ImageLoad$2$1$1;
            } else {
                snapshotStateList = snapshotStateList4;
            }
            Updater.LaunchedEffect(set, snapshotStateList, (Function2) rememberedValue4, gapComposer);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposerKt$$ExternalSyntheticLambda0(i, 21, dialogNavigator);
        }
    }

    public static final void LibraryItem(Library library, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        library.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1020770002);
        int i2 = (gapComposer.changed(library) ? 4 : 2) | i | 48;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            boolean changedInstance = ((i2 & 14) == 4) | gapComposer.changedInstance(context);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Regex$$ExternalSyntheticLambda1(28, context, library);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            modifier2 = Modifier.Companion.$$INSTANCE;
            Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(modifier2, false, null, (Function0) rememberedValue, 15);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m219paddingVpY3zN4 = OffsetKt.m219paddingVpY3zN4(m136clickableoSLSa3U$default, 16.0f, 12.0f);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            Modifier wrapContentHeight$default = SizeKt.wrapContentHeight$default(m219paddingVpY3zN4.then(fillElement));
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, wrapContentHeight$default);
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            m787TextTitleMediumXl4FiYE(library.name, SizeKt.wrapContentHeight$default(fillElement), 0L, null, 0, 0, gapComposer, 48, 60);
            Data.Companion.m825TextBodyMediumZHfKjFs(library.license, SizeKt.wrapContentHeight$default(fillElement), 0L, 0, 0, (Function1) null, gapComposer, 48, 124);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda7(i, i3, library, modifier2);
        }
    }

    public static final void LibraryList(ImmutableList immutableList, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(413082687);
        int i2 = (gapComposer.changed(immutableList) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
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
            gapComposer.startReplaceGroup(1586818450);
            Iterator<E> it = immutableList.iterator();
            while (it.hasNext()) {
                LibraryItem((Library) it.next(), null, gapComposer, 0);
            }
            gapComposer.end(false);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposerKt$$ExternalSyntheticLambda0(i, 27, immutableList);
        }
    }

    public static final void PopulateVisibleList(List list, Collection collection, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1537894851);
        int i2 = 16;
        if ((((gapComposer.changedInstance(list) ? 4 : 2) | i | (gapComposer.changedInstance(collection) ? 32 : 16)) & 19) == 18 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            boolean booleanValue = ((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
                LifecycleRegistry lifecycleRegistry = navBackStackEntry.impl.lifecycle;
                boolean changed = gapComposer.changed(booleanValue) | gapComposer.changedInstance(list) | gapComposer.changedInstance(navBackStackEntry);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new DialogHostKt$$ExternalSyntheticLambda0(0, navBackStackEntry, list, booleanValue);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Updater.DisposableEffect(lifecycleRegistry, (Function1) rememberedValue, gapComposer);
            }
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, i2, list, collection);
        }
    }

    public static final void QrCodeScannerScreen(Function1 function1, Function0 function0, QrCodeScannerViewModel qrCodeScannerViewModel, Composer composer, int i) {
        QrCodeScannerViewModel qrCodeScannerViewModel2;
        QrCodeScannerViewModel qrCodeScannerViewModel3;
        function1.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1978573539);
        int i2 = i | (gapComposer.changedInstance(function1) ? 4 : 2) | (gapComposer.changedInstance(function0) ? 32 : 16) | 128;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                qrCodeScannerViewModel3 = (QrCodeScannerViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(QrCodeScannerViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null);
            } else {
                gapComposer.skipToGroupEnd();
                qrCodeScannerViewModel3 = qrCodeScannerViewModel;
            }
            gapComposer.endDefaults();
            AuthorizationContract authorizationContract = new AuthorizationContract(5);
            boolean changedInstance = gapComposer.changedInstance(qrCodeScannerViewModel3);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (changedInstance || rememberedValue == obj) {
                rememberedValue = new DiskLruCache$$ExternalSyntheticLambda0(27, qrCodeScannerViewModel3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ManagedActivityResultLauncher rememberLauncherForActivityResult = DBUtil.rememberLauncherForActivityResult(authorizationContract, (Function1) rememberedValue, gapComposer);
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(qrCodeScannerViewModel3.state, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(qrCodeScannerViewModel3);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue2 == obj) {
                rememberedValue2 = new ProduceKt$awaitClose$4$1(6, qrCodeScannerViewModel3);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function1 function12 = (Function1) rememberedValue2;
            QrCodeScannerViewModel qrCodeScannerViewModel4 = qrCodeScannerViewModel3;
            Updater.LaunchedEffect(gapComposer, qrCodeScannerViewModel3.effect, new NavHostKt$NavHost$25$1(qrCodeScannerViewModel4, (Continuation) null, rememberLauncherForActivityResult, context, function1, function0));
            collectAsStateWithLifecycle.getClass();
            function12.getClass();
            boolean changed = gapComposer.changed(function12);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed || rememberedValue3 == obj) {
                rememberedValue3 = new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(i3, null, function12);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue3);
            DBUtil.QrCodeScannerContent(qrCodeScannerViewModel4.cameraUseCasesProvider, (QrCodeScannerContract$State) collectAsStateWithLifecycle.getValue(), function12, gapComposer, 64);
            qrCodeScannerViewModel2 = qrCodeScannerViewModel4;
        } else {
            gapComposer.skipToGroupEnd();
            qrCodeScannerViewModel2 = qrCodeScannerViewModel;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(function1, function0, qrCodeScannerViewModel2, i, 13);
        }
    }

    public static final void SectionContent(String str, String str2, int i, Modifier modifier, String str3, Function0 function0, Composer composer, int i2, int i3) {
        String str4;
        int i4;
        Modifier modifier2;
        String str5;
        String str6;
        str.getClass();
        str2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-648176685);
        int i5 = i2 | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(str2) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128);
        int i6 = i5 | 3072;
        int i7 = i3 & 16;
        if (i7 != 0) {
            i4 = i5 | 27648;
            str4 = str3;
        } else {
            str4 = str3;
            i4 = i6 | (gapComposer.changed(str4) ? 16384 : 8192);
        }
        int i8 = i4 | (gapComposer.changedInstance(function0) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i8 & 1, (74899 & i8) != 74898)) {
            if (i7 != 0) {
                str4 = null;
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m136clickableoSLSa3U$default = ImageKt.m136clickableoSLSa3U$default(companion, false, null, function0, 15);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Modifier m219paddingVpY3zN4 = OffsetKt.m219paddingVpY3zN4(m136clickableoSLSa3U$default, 16.0f, 8.0f);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            Modifier wrapContentHeight$default = SizeKt.wrapContentHeight$default(m219paddingVpY3zN4.then(fillElement));
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 54);
            long j = gapComposer.compositeKeyHashCode;
            int i9 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, wrapContentHeight$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i9);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Painter painterResource = MathKt.painterResource(i, gapComposer, (i8 >> 6) & 14);
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            String str7 = str4;
            ImageKt.Image(painterResource, null, SizeKt.m234size3ABfNKs(companion, 24.0f), null, null, 0.0f, null, gapComposer, 56, 120);
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            OffsetKt.Spacer(gapComposer, SizeKt.m238width3ABfNKs(companion, 24.0f));
            Modifier wrapContentHeight$default2 = SizeKt.wrapContentHeight$default(new LayoutWeightElement(1.0f, true));
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j2 = gapComposer.compositeKeyHashCode;
            int i10 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, wrapContentHeight$default2);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Config.CC.m(i10, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            m787TextTitleMediumXl4FiYE(str, SizeKt.wrapContentHeight$default(fillElement), 0L, null, 0, 0, gapComposer, (i8 & 14) | 48, 60);
            Data.Companion.m825TextBodyMediumZHfKjFs(str2, SizeKt.wrapContentHeight$default(fillElement), 0L, 0, 0, (Function1) null, gapComposer, ((i8 >> 3) & 14) | 48, 124);
            if (str7 == null) {
                gapComposer.startReplaceGroup(605656850);
                gapComposer.end(false);
                str6 = str7;
            } else {
                gapComposer.startReplaceGroup(605656851);
                str6 = str7;
                Data.Companion.m825TextBodyMediumZHfKjFs(str6, SizeKt.wrapContentHeight$default(fillElement), 0L, 0, 0, (Function1) null, gapComposer, 48, 124);
                gapComposer.end(false);
            }
            gapComposer.end(true);
            gapComposer.end(true);
            modifier2 = companion;
            str5 = str6;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            str5 = str4;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda5(str, str2, i, modifier2, str5, function0, i2, i3);
        }
    }

    public static final void SectionTitle(String str, Modifier modifier, Composer composer, int i) {
        String str2;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-398353545);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | 48;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            str2 = str;
            RelationUtil.m809TextTitleSmallXl4FiYE(str2, OffsetKt.m221paddingqDBjuR0(fillElement, 16.0f, 16.0f, 16.0f, 8.0f), 0L, 0, 0, gapComposer, i2 & 14, 60);
            modifier = Modifier.Companion.$$INSTANCE;
        } else {
            str2 = str;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda2(str2, modifier, i, i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0045  */
    /* renamed from: TextTitleMedium-Xl4FiYE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m787TextTitleMediumXl4FiYE(java.lang.String r30, androidx.compose.ui.Modifier r31, long r32, androidx.compose.ui.text.style.TextAlign r34, int r35, int r36, androidx.compose.runtime.Composer r37, int r38, int r39) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.util.DebugUtils.m787TextTitleMediumXl4FiYE(java.lang.String, androidx.compose.ui.Modifier, long, androidx.compose.ui.text.style.TextAlign, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void WizardNavigationBar(kotlin.jvm.functions.Function0 r11, kotlin.jvm.functions.Function0 r12, androidx.compose.ui.Modifier r13, java.lang.String r14, java.lang.String r15, app.k9mail.feature.account.common.ui.WizardNavigationBarState r16, androidx.compose.runtime.Composer r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.util.DebugUtils.WizardNavigationBar(kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, java.lang.String, java.lang.String, app.k9mail.feature.account.common.ui.WizardNavigationBarState, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void access$DialogLayout(Modifier modifier, Function2 function2, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1090521195);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = AndroidPopup_androidKt$SimpleStack$1$1.INSTANCE$1;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            int i4 = (((((i2 << 3) & 112) | (((i2 >> 3) & 14) | 384)) << 6) & 896) | 6;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            function2.invoke(gapComposer, Integer.valueOf((i4 >> 6) & 14));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AndroidDialog_androidKt$DialogLayout$2(modifier, function2, i);
        }
    }

    public static final Selection access$adjustToBoundaries(LocalFolder.AnonymousClass12 anonymousClass12, SelectionAdjustment$Companion selectionAdjustment$Companion) {
        CrossStatus crossStatus = anonymousClass12.getCrossStatus();
        CircularArray circularArray = (CircularArray) anonymousClass12.val$flags;
        boolean z = crossStatus == CrossStatus.CROSSED;
        return new Selection(anchorOnBoundary(circularArray, z, true, selectionAdjustment$Companion), anchorOnBoundary(circularArray, z, false, selectionAdjustment$Companion), z);
    }

    public static final Selection.AnchorInfo access$updateSelectionBoundary(final LocalFolder.AnonymousClass12 anonymousClass12, final CircularArray circularArray, Selection.AnchorInfo anchorInfo) {
        int i = circularArray.tail;
        int i2 = circularArray.head;
        boolean z = anonymousClass12.val$value;
        final int i3 = z ? i2 : i;
        TextLayoutResult textLayoutResult = (TextLayoutResult) circularArray.elements;
        int i4 = circularArray.capacityBitmask;
        SelectionAdjustmentKt$$ExternalSyntheticLambda0 selectionAdjustmentKt$$ExternalSyntheticLambda0 = new SelectionAdjustmentKt$$ExternalSyntheticLambda0(i3, 0, circularArray);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final Lazy lazy = ResultKt.lazy(lazyThreadSafetyMode, selectionAdjustmentKt$$ExternalSyntheticLambda0);
        final int i5 = z ? i : i2;
        Lazy lazy2 = ResultKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustmentKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                CircularArray circularArray2 = CircularArray.this;
                TextLayoutResult textLayoutResult2 = (TextLayoutResult) circularArray2.elements;
                int intValue = ((Number) lazy.getValue()).intValue();
                LocalFolder.AnonymousClass12 anonymousClass122 = anonymousClass12;
                boolean z2 = anonymousClass122.val$value;
                boolean z3 = anonymousClass122.getCrossStatus() == CrossStatus.CROSSED;
                int i6 = i3;
                long m696getWordBoundaryjx7JFs = textLayoutResult2.m696getWordBoundaryjx7JFs(i6);
                MultiParagraph multiParagraph = textLayoutResult2.multiParagraph;
                int i7 = TextRange.$r8$clinit;
                int i8 = (int) (m696getWordBoundaryjx7JFs >> 32);
                int lineForOffset = multiParagraph.getLineForOffset(i8);
                int i9 = multiParagraph.lineCount;
                if (lineForOffset != intValue) {
                    i8 = intValue >= i9 ? textLayoutResult2.getLineStart(i9 - 1) : textLayoutResult2.getLineStart(intValue);
                }
                int i10 = (int) (m696getWordBoundaryjx7JFs & 4294967295L);
                if (multiParagraph.getLineForOffset(i10) != intValue) {
                    i10 = intValue >= i9 ? multiParagraph.getLineEnd(i9 - 1, false) : multiParagraph.getLineEnd(intValue, false);
                }
                int i11 = i5;
                if (i8 == i11) {
                    return circularArray2.anchorForOffset(i10);
                }
                if (i10 == i11) {
                    return circularArray2.anchorForOffset(i8);
                }
                if (!(z2 ^ z3) ? i6 >= i8 : i6 > i10) {
                    i8 = i10;
                }
                return circularArray2.anchorForOffset(i8);
            }
        });
        if (1 != anchorInfo.selectableId) {
            return (Selection.AnchorInfo) lazy2.getValue();
        }
        if (i3 == i4) {
            return anchorInfo;
        }
        if (((Number) lazy.getValue()).intValue() != textLayoutResult.multiParagraph.getLineForOffset(i4)) {
            return (Selection.AnchorInfo) lazy2.getValue();
        }
        int i6 = anchorInfo.offset;
        long m696getWordBoundaryjx7JFs = textLayoutResult.m696getWordBoundaryjx7JFs(i6);
        if (i4 != -1) {
            if (i3 != i4) {
                CrossStatus crossStatus = CrossStatus.CROSSED;
                if (((z ? 1 : 0) ^ ((i2 < i ? CrossStatus.NOT_CROSSED : i2 > i ? crossStatus : CrossStatus.COLLAPSED) == crossStatus ? 1 : 0)) == 0) {
                }
            }
            return circularArray.anchorForOffset(i3);
        }
        int i7 = TextRange.$r8$clinit;
        return (i6 == ((int) (m696getWordBoundaryjx7JFs >> 32)) || i6 == ((int) (m696getWordBoundaryjx7JFs & 4294967295L))) ? (Selection.AnchorInfo) lazy2.getValue() : circularArray.anchorForOffset(i3);
    }

    public static final Selection.AnchorInfo anchorOnBoundary(CircularArray circularArray, boolean z, boolean z2, SelectionAdjustment$Companion selectionAdjustment$Companion) {
        long TextRange;
        long j;
        int i = z2 ? circularArray.head : circularArray.tail;
        switch (selectionAdjustment$Companion.$r8$classId) {
            case 1:
                String str = ((TextLayoutResult) circularArray.elements).layoutInput.text.text;
                TextRange = ParagraphKt.TextRange(BasicTextKt.findParagraphStart(i, str), BasicTextKt.findParagraphEnd(i, str));
                break;
            default:
                TextRange = ((TextLayoutResult) circularArray.elements).m696getWordBoundaryjx7JFs(i);
                break;
        }
        if (z ^ z2) {
            int i2 = TextRange.$r8$clinit;
            j = TextRange >> 32;
        } else {
            int i3 = TextRange.$r8$clinit;
            j = 4294967295L & TextRange;
        }
        return circularArray.anchorForOffset((int) j);
    }

    public static final AnnotatedString bold(String str) {
        str.getClass();
        AnnotatedString.Builder builder = new AnnotatedString.Builder();
        int pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
        try {
            builder.append(str);
            builder.pop(pushStyle);
            return builder.toAnnotatedString();
        } catch (Throwable th) {
            builder.pop(pushStyle);
            throw th;
        }
    }

    public static void buildShortClassTag(Object obj, StringBuilder sb) {
        int lastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.length() <= 0 && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(lastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static final Selection.AnchorInfo changeOffset(Selection.AnchorInfo anchorInfo, CircularArray circularArray, int i) {
        return new Selection.AnchorInfo(((TextLayoutResult) circularArray.elements).getBidiRunDirection(i), i, anchorInfo.selectableId);
    }

    public static String decodeUtf8(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            DBUtil$$ExternalSyntheticBUOutline0.m("UTF-8 not found");
            return null;
        }
    }

    public static PathPart fromEncoded(String str) {
        return str == null ? PathPart.NULL : str.length() == 0 ? PathPart.EMPTY : new PathPart(str, NotCachedHolder.NotCached);
    }

    public static final boolean getAutoDetectNamespace(ServerSettings serverSettings) {
        serverSettings.getClass();
        String str = (String) serverSettings.extra.get("autoDetectNamespace");
        if (str != null) {
            return Boolean.parseBoolean(str);
        }
        return true;
    }

    /* renamed from: getCenter-uvyYCjk, reason: not valid java name */
    public static final long m788getCenteruvyYCjk(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) / 2.0f;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) / 2.0f;
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    public static final String getPathPrefix(ServerSettings serverSettings) {
        serverSettings.getClass();
        return (String) serverSettings.extra.get("pathPrefix");
    }

    public static boolean isHuaweiP20Lite$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Huawei")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Huawei")) {
                return false;
            }
        }
        return "HWANE".equalsIgnoreCase(Build.DEVICE);
    }

    public static boolean isNokia7Plus$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Nokia")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Nokia")) {
                return false;
            }
        }
        String str3 = Build.DEVICE;
        return "B2N".equalsIgnoreCase(str3) || "B2N_sprout".equalsIgnoreCase(str3);
    }

    public static boolean isOnePlus6$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("OnePlus")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("OnePlus")) {
                return false;
            }
        }
        return "OnePlus6".equalsIgnoreCase(Build.DEVICE);
    }

    public static boolean isOnePlus6T$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("OnePlus")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("OnePlus")) {
                return false;
            }
        }
        return "OnePlus6T".equalsIgnoreCase(Build.DEVICE);
    }

    public static boolean isRedmiNote9Pro$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Redmi")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Redmi")) {
                return false;
            }
        }
        return "joyeuse".equalsIgnoreCase(Build.DEVICE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSamsungA05s$camera_camera2() {
        /*
            java.lang.String r0 = android.os.Build.MANUFACTURER
            r0.getClass()
            java.lang.String r1 = "Samsung"
            boolean r0 = r0.equalsIgnoreCase(r1)
            r2 = 0
            if (r0 != 0) goto L19
            java.lang.String r0 = android.os.Build.BRAND
            r0.getClass()
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L3b
        L19:
            java.lang.String r0 = "a05s"
            java.lang.String r1 = android.os.Build.DEVICE
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L3b
            java.lang.String r0 = android.os.Build.MODEL
            r0.getClass()
            java.util.Locale r1 = java.util.Locale.ROOT
            java.lang.String r0 = r0.toUpperCase(r1)
            r0.getClass()
            java.lang.String r1 = "SM-A057"
            boolean r0 = kotlin.text.StringsKt.contains(r0, r1, r2)
            if (r0 == 0) goto L3b
            r0 = 1
            return r0
        L3b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.util.DebugUtils.isSamsungA05s$camera_camera2():boolean");
    }

    public static boolean isSamsungJ7Api27Above$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Samsung")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Samsung")) {
                return false;
            }
        }
        return "J7XELTE".equalsIgnoreCase(Build.DEVICE) && Build.VERSION.SDK_INT >= 27;
    }

    public static boolean isSamsungJ7PrimeApi27Above$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Samsung")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Samsung")) {
                return false;
            }
        }
        return "ON7XELTE".equalsIgnoreCase(Build.DEVICE) && Build.VERSION.SDK_INT >= 27;
    }

    public static boolean isSamsungZFold4$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Samsung")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Samsung")) {
                return false;
            }
        }
        String str3 = Build.DEVICE;
        return "q4q".equalsIgnoreCase(str3) || "SCG16".equalsIgnoreCase(str3) || "SC-55C".equalsIgnoreCase(str3);
    }

    public static final boolean isSendClientInfo(ServerSettings serverSettings) {
        serverSettings.getClass();
        String str = (String) serverSettings.extra.get("sendClientInfo");
        if (str != null) {
            return Boolean.parseBoolean(str);
        }
        return true;
    }

    public static final boolean isUseCompression(ServerSettings serverSettings) {
        serverSettings.getClass();
        String str = (String) serverSettings.extra.get("useCompression");
        if (str != null) {
            return Boolean.parseBoolean(str);
        }
        return true;
    }

    public static void setMaxElevation(CardView.AnonymousClass1 anonymousClass1, float f) {
        RoundRectDrawable roundRectDrawable = (RoundRectDrawable) anonymousClass1.mCardBackground;
        CardView cardView = (CardView) anonymousClass1.this$0;
        boolean useCompatPadding = cardView.getUseCompatPadding();
        boolean preventCornerOverlap = cardView.getPreventCornerOverlap();
        if (f != roundRectDrawable.mPadding || roundRectDrawable.mInsetForPadding != useCompatPadding || roundRectDrawable.mInsetForRadius != preventCornerOverlap) {
            roundRectDrawable.mPadding = f;
            roundRectDrawable.mInsetForPadding = useCompatPadding;
            roundRectDrawable.mInsetForRadius = preventCornerOverlap;
            roundRectDrawable.updateBounds(null);
            roundRectDrawable.invalidateSelf();
        }
        if (!cardView.getUseCompatPadding()) {
            anonymousClass1.setShadowPadding(0, 0, 0, 0);
            return;
        }
        RoundRectDrawable roundRectDrawable2 = (RoundRectDrawable) anonymousClass1.mCardBackground;
        float f2 = roundRectDrawable2.mPadding;
        float f3 = roundRectDrawable2.mRadius;
        int ceil = (int) Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(f2, f3, cardView.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(f2, f3, cardView.getPreventCornerOverlap()));
        anonymousClass1.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    public static void setNewList$default(ItemAdapter itemAdapter, List list) {
        ItemFilter itemFilter = itemAdapter.itemFilter;
        list.getClass();
        ArrayList intercept = itemAdapter.intercept(list);
        if (itemAdapter.isUseIdDistributor) {
            itemAdapter.idDistributor.checkIds(intercept);
        }
        if (itemFilter.constraint != null) {
            itemFilter.performFiltering(null);
        }
        BinaryBitmap binaryBitmap = itemAdapter.itemList;
        binaryBitmap.getClass();
        binaryBitmap.matrix = new ArrayList(intercept);
        FastAdapter fastAdapter = (FastAdapter) binaryBitmap.binarizer;
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterDataSetChanged();
        }
    }

    /* renamed from: setObject-sGr0YRc, reason: not valid java name */
    public static final void m789setObjectsGr0YRc(Operations operations, int i, Object obj) {
        operations.objectArgs[(operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].objects) + i] = obj;
    }

    /* renamed from: setObjects-EsEZvaA, reason: not valid java name */
    public static final void m790setObjectsEsEZvaA(Operations operations, int i, Object obj, int i2, Object obj2) {
        int i3 = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].objects;
        Object[] objArr = operations.objectArgs;
        objArr[i + i3] = obj;
        objArr[i3 + i2] = obj2;
    }

    /* renamed from: setObjects-JOGOPjs, reason: not valid java name */
    public static final void m791setObjectsJOGOPjs(Operations operations, Object obj, Object obj2, Object obj3) {
        int i = operations.objectArgsSize - operations.opCodes[operations.opCodesSize - 1].objects;
        Object[] objArr = operations.objectArgs;
        objArr[i] = obj;
        objArr[i + 1] = obj2;
        objArr[i + 2] = obj3;
    }

    public static void suppressLayout(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            TraceApi29Impl.suppressLayout(viewGroup, z);
        } else if (sTryHiddenSuppressLayout) {
            try {
                TraceApi29Impl.suppressLayout(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    public static final CardColors toCardColors(androidx.compose.material3.CardColors cardColors) {
        return new CardColors(cardColors.containerColor, cardColors.contentColor, cardColors.disabledContainerColor, cardColors.disabledContentColor);
    }

    public static final androidx.compose.material3.CardColors toMaterial3CardColors(CardColors cardColors) {
        cardColors.getClass();
        return new androidx.compose.material3.CardColors(cardColors.containerColor, cardColors.contentColor, cardColors.disabledContainerColor, cardColors.disabledContentColor);
    }

    public static final String toResourceString(AuthenticationType authenticationType, Resources resources) {
        authenticationType.getClass();
        resources.getClass();
        int ordinal = authenticationType.ordinal();
        if (ordinal == 0) {
            String string = resources.getString(R.string.account_server_settings_authentication_none);
            string.getClass();
            return string;
        }
        if (ordinal == 1) {
            String string2 = resources.getString(R.string.account_server_settings_authentication_password_cleartext);
            string2.getClass();
            return string2;
        }
        if (ordinal == 2) {
            String string3 = resources.getString(R.string.account_server_settings_authentication_password_encrypted);
            string3.getClass();
            return string3;
        }
        if (ordinal == 3) {
            String string4 = resources.getString(R.string.account_server_settings_authentication_client_certificate);
            string4.getClass();
            return string4;
        }
        if (ordinal != 4) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        String string5 = resources.getString(R.string.account_server_settings_authentication_client_oauth);
        string5.getClass();
        return string5;
    }

    public static final ServerSettings toServerSettings(ImapServerSettings imapServerSettings, String str) {
        ConnectionSecurity connectionSecurity;
        imapServerSettings.getClass();
        if (!(imapServerSettings instanceof ImapServerSettings)) {
            Regex$$ExternalSyntheticBUOutline0.m$2(imapServerSettings, "Unknown server settings type: ");
            return null;
        }
        String str2 = imapServerSettings.hostname;
        int i = imapServerSettings.port;
        app.k9mail.autodiscovery.api.ConnectionSecurity connectionSecurity2 = imapServerSettings.connectionSecurity;
        connectionSecurity2.getClass();
        int ordinal = connectionSecurity2.ordinal();
        if (ordinal == 0) {
            connectionSecurity = ConnectionSecurity.StartTLS;
        } else {
            if (ordinal != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            connectionSecurity = ConnectionSecurity.TLS;
        }
        return new ServerSettings("imap", str2, i, Validate.toMailConnectionSecurity(connectionSecurity), IntRectKt.toAuthType(RelationUtil.toAuthenticationType((app.k9mail.autodiscovery.api.AuthenticationType) CollectionsKt.first(imapServerSettings.authenticationTypes))), imapServerSettings.username, str, null, MapsKt__MapsKt.mapOf(new kotlin.Pair("autoDetectNamespace", String.valueOf(true)), new kotlin.Pair("pathPrefix", null), new kotlin.Pair("useCompression", String.valueOf(true)), new kotlin.Pair("sendClientInfo", String.valueOf(true))));
    }

    /* renamed from: updateRangeAfterDelete-pWDy79M, reason: not valid java name */
    public static final long m792updateRangeAfterDeletepWDy79M(long j, long j2) {
        int m700getLengthimpl;
        int m702getMinimpl = TextRange.m702getMinimpl(j);
        int m701getMaximpl = TextRange.m701getMaximpl(j);
        if ((TextRange.m702getMinimpl(j2) < TextRange.m701getMaximpl(j)) && (TextRange.m702getMinimpl(j) < TextRange.m701getMaximpl(j2))) {
            if ((TextRange.m702getMinimpl(j2) <= TextRange.m702getMinimpl(j)) && (TextRange.m701getMaximpl(j) <= TextRange.m701getMaximpl(j2))) {
                m702getMinimpl = TextRange.m702getMinimpl(j2);
                m701getMaximpl = m702getMinimpl;
            } else {
                if ((TextRange.m702getMinimpl(j) <= TextRange.m702getMinimpl(j2)) && (TextRange.m701getMaximpl(j2) <= TextRange.m701getMaximpl(j))) {
                    m700getLengthimpl = TextRange.m700getLengthimpl(j2);
                } else {
                    int m702getMinimpl2 = TextRange.m702getMinimpl(j2);
                    if (m702getMinimpl >= TextRange.m701getMaximpl(j2) || m702getMinimpl2 > m702getMinimpl) {
                        m701getMaximpl = TextRange.m702getMinimpl(j2);
                    } else {
                        m702getMinimpl = TextRange.m702getMinimpl(j2);
                        m700getLengthimpl = TextRange.m700getLengthimpl(j2);
                    }
                }
                m701getMaximpl -= m700getLengthimpl;
            }
        } else if (m701getMaximpl > TextRange.m702getMinimpl(j2)) {
            m702getMinimpl -= TextRange.m700getLengthimpl(j2);
            m700getLengthimpl = TextRange.m700getLengthimpl(j2);
            m701getMaximpl -= m700getLengthimpl;
        }
        return ParagraphKt.TextRange(m702getMinimpl, m701getMaximpl);
    }

    public static final Exception wrapExceptionIfDueToDirectBoot(String str, FileNotFoundException fileNotFoundException) {
        int i;
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
                method.getClass();
                try {
                    Parcel obtain = Parcel.obtain();
                    obtain.getClass();
                    Process.myUserHandle().writeToParcel(obtain, 0);
                    obtain.setDataPosition(0);
                    i = obtain.readInt();
                } catch (Throwable unused) {
                    Log.d("DirectBootExceptionUtil", "Error when reading current user id. Selected default user id `0`.");
                    i = 0;
                }
                Object invoke = method.invoke(null, "sys.user." + i + ".ce_available", "false");
                invoke.getClass();
                z = ((String) invoke).equals("true");
            } catch (Throwable th) {
                ResultKt.addSuppressed(fileNotFoundException, th);
                z = false;
            }
        }
        if (z || str == null) {
            return fileNotFoundException;
        }
        File file = new File(str, "siblingTestFile.txt");
        if (file.exists()) {
            file.delete();
        }
        try {
            file.createNewFile();
            return fileNotFoundException;
        } catch (IOException unused2) {
            return new DirectBootUsageException(fileNotFoundException);
        } finally {
            file.delete();
        }
    }

    public static final void writeParameter(CaptureRequest.Builder builder, Object obj, Object obj2) {
        if (obj == null || !(obj instanceof CaptureRequest.Key)) {
            return;
        }
        try {
            builder.set((CaptureRequest.Key) obj, obj2);
        } catch (IllegalArgumentException e) {
            Log.w("CXCP", "Failed to set [" + ((CaptureRequest.Key) obj).getName() + ": " + obj2 + "] on CaptureRequest.Builder", e);
        }
    }

    public static final void writeParameters(CaptureRequest.Builder builder, Map map) {
        map.getClass();
        for (Map.Entry entry : map.entrySet()) {
            writeParameter(builder, entry.getKey(), entry.getValue());
        }
    }

    public static final ServerSettings toServerSettings(SmtpServerSettings smtpServerSettings, String str) {
        ConnectionSecurity connectionSecurity;
        smtpServerSettings.getClass();
        if (smtpServerSettings instanceof SmtpServerSettings) {
            String str2 = smtpServerSettings.hostname;
            int i = smtpServerSettings.port;
            app.k9mail.autodiscovery.api.ConnectionSecurity connectionSecurity2 = smtpServerSettings.connectionSecurity;
            connectionSecurity2.getClass();
            int ordinal = connectionSecurity2.ordinal();
            if (ordinal == 0) {
                connectionSecurity = ConnectionSecurity.StartTLS;
            } else {
                if (ordinal != 1) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                connectionSecurity = ConnectionSecurity.TLS;
            }
            return new ServerSettings("smtp", str2, i, Validate.toMailConnectionSecurity(connectionSecurity), IntRectKt.toAuthType(RelationUtil.toAuthenticationType((app.k9mail.autodiscovery.api.AuthenticationType) CollectionsKt.first(smtpServerSettings.authenticationTypes))), smtpServerSettings.username, str, null, EmptyMap.INSTANCE);
        }
        Regex$$ExternalSyntheticBUOutline0.m$2(smtpServerSettings, "Unknown server settings type: ");
        return null;
    }
}
