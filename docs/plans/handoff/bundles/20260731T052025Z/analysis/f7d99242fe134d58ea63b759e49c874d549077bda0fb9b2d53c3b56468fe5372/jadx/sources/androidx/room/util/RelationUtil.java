package androidx.room.util;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Range;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.ExtractedText;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda1;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.activity.compose.ComposePredictiveBackHandler;
import androidx.activity.compose.LocalOnBackPressedDispatcherOwner;
import androidx.activity.compose.PredictiveBackHandlerInfo;
import androidx.activity.compose.PredictiveBackHandlerKt$$ExternalSyntheticLambda3;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.ArrayMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerImpl;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.AbstractResolvableFuture;
import androidx.core.view.MenuHostHelper;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.BackStackEntryIdViewModel;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import androidx.tracing.TraceApi29Impl;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Data;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.atom.CheckboxKt$$ExternalSyntheticLambda0;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$DisplayText;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.ConnectionSecurity;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.store.imap.ImapUtility$WhenMappings;
import com.google.android.material.snackbar.Snackbar$$ExternalSyntheticLambda0;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.FastAdapter$viewLongClickListener$1;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import com.mikepenz.fastadapter.listeners.EventHook;
import com.mikepenz.fastadapter.listeners.TouchEventHook;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.LongProgression;
import kotlin.ranges.LongProgressionIterator;
import kotlin.ranges.LongRange;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import okhttp3.Dispatcher;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* loaded from: classes.dex */
public abstract class RelationUtil {
    public static ImageVector _add = null;
    public static ImageVector _menu = null;
    public static volatile Handler sHandler = null;
    public static boolean sTryHiddenTransitionAlpha = true;
    public static Field sViewFlagsField;
    public static boolean sViewFlagsFieldFetched;

    public static final void Checkbox(boolean z, Function1 function1, Modifier modifier, boolean z2, Composer composer, int i) {
        boolean z3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-2081895425);
        int i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        int i3 = i2 | 3456;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            CardKt.Checkbox(z, function1, null, gapComposer, i3 & 8190);
            modifier = Modifier.Companion.$$INSTANCE;
            z3 = true;
        } else {
            gapComposer.skipToGroupEnd();
            z3 = z2;
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CheckboxKt$$ExternalSyntheticLambda0(z, function1, modifier2, z3, i);
        }
    }

    public static final void ErrorItem(LazyItemScopeImpl lazyItemScopeImpl, String str, Modifier modifier, String str2, Function0 function0, Composer composer, int i) {
        int i2;
        LazyItemScopeImpl lazyItemScopeImpl2;
        lazyItemScopeImpl.getClass();
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(830028007);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(lazyItemScopeImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(str) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changed(str2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            lazyItemScopeImpl2 = lazyItemScopeImpl;
            ActionBar.ListItem(lazyItemScopeImpl2, companion, null, Expect_jvmKt.rememberComposableLambda(951808455, new SegmentedButtonKt$$ExternalSyntheticLambda4(str, str2, function0, 9), gapComposer), gapComposer, (i3 & 14) | 3072 | ((i3 >> 3) & 112), 2);
            modifier = companion;
        } else {
            lazyItemScopeImpl2 = lazyItemScopeImpl;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0(lazyItemScopeImpl2, str, modifier, str2, function0, i);
        }
    }

    public static final void LocalOwnersProvider(NavBackStackEntry navBackStackEntry, SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(233973821);
        if ((((gapComposer.changedInstance(navBackStackEntry) ? 4 : 2) | i | (gapComposer.changedInstance(saveableStateHolder) ? 32 : 16)) & 147) == 146 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            Updater.CompositionLocalProvider(new ProvidedValue[]{LocalViewModelStoreOwner.LocalViewModelStoreOwner.defaultProvidedValue$runtime(navBackStackEntry), LocalLifecycleOwnerKt.LocalLifecycleOwner.defaultProvidedValue$runtime(navBackStackEntry), LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner.defaultProvidedValue$runtime(navBackStackEntry)}, Expect_jvmKt.rememberComposableLambda(1808964477, new ButtonKt$Button$2.AnonymousClass1(8, saveableStateHolder, composableLambdaImpl), gapComposer), gapComposer, 56);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4((Object) navBackStackEntry, (Object) saveableStateHolder, composableLambdaImpl, i, 5);
        }
    }

    public static final void PredictiveBackHandler(boolean z, Function2 function2, Composer composer, int i) {
        int i2;
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-642000585);
        int i4 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 32 : 16;
        }
        int i5 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object obj = (NavigationEventDispatcherOwner) gapComposer.consume(LocalNavigationEventDispatcherOwner.LocalNavigationEventDispatcherOwner);
            if (obj == null) {
                gapComposer.startReplaceGroup(1512740606);
                obj = LocalOnBackPressedDispatcherOwner.getCurrent(gapComposer);
            } else {
                gapComposer.startReplaceGroup(1512737723);
            }
            gapComposer.end(false);
            if (obj == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.");
                return;
            }
            boolean changed = gapComposer.changed(obj);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                NavigationEventDispatcherOwner navigationEventDispatcherOwner = obj instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) obj : null;
                Dispatcher navigationEventDispatcher = navigationEventDispatcherOwner != null ? navigationEventDispatcherOwner.getNavigationEventDispatcher() : null;
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = obj instanceof OnBackPressedDispatcherOwner ? (OnBackPressedDispatcherOwner) obj : null;
                rememberedValue = new BackHandlerDispatcherCompat(navigationEventDispatcher, onBackPressedDispatcherOwner != null ? onBackPressedDispatcherOwner.getOnBackPressedDispatcher() : null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            BackHandlerDispatcherCompat backHandlerDispatcherCompat = (BackHandlerDispatcherCompat) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue2;
            long j = gapComposer.compositeKeyHashCode;
            boolean changed2 = gapComposer.changed(backHandlerDispatcherCompat) | gapComposer.changed(j);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ComposePredictiveBackHandler(coroutineScope, new PredictiveBackHandlerInfo(j, obj));
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            ComposePredictiveBackHandler composePredictiveBackHandler = (ComposePredictiveBackHandler) rememberedValue3;
            gapComposer.startReplaceGroup(-348514256);
            boolean changedInstance = gapComposer.changedInstance(composePredictiveBackHandler) | gapComposer.changedInstance(function2);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new Recomposer$$ExternalSyntheticLambda6(i4, composePredictiveBackHandler, function2);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Updater.SideEffect((Function0) rememberedValue4, gapComposer);
            int i6 = i2;
            Boolean valueOf = Boolean.valueOf(z);
            int i7 = i6 & 14;
            boolean changedInstance2 = (i7 == 4) | gapComposer.changedInstance(composePredictiveBackHandler);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue5 == neverEqualPolicy) {
                rememberedValue5 = new BackHandlerKt$$ExternalSyntheticLambda1(i5, composePredictiveBackHandler, z);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            SchemaInfoUtilKt.LifecycleStartEffect(valueOf, composePredictiveBackHandler, null, (Function1) rememberedValue5, gapComposer, i7);
            boolean changedInstance3 = gapComposer.changedInstance(backHandlerDispatcherCompat) | gapComposer.changedInstance(composePredictiveBackHandler);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changedInstance3 || rememberedValue6 == neverEqualPolicy) {
                rememberedValue6 = new BackHandlerKt$$ExternalSyntheticLambda2(i5, backHandlerDispatcherCompat, composePredictiveBackHandler);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Updater.DisposableEffect(backHandlerDispatcherCompat, composePredictiveBackHandler, (Function1) rememberedValue6, gapComposer);
            i3 = 0;
            gapComposer.end(false);
        } else {
            i3 = 0;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new PredictiveBackHandlerKt$$ExternalSyntheticLambda3(z, function2, i, i3);
        }
    }

    public static final void QrCodeScannerView(DrawResult drawResult, QrCodeScannerContract$DisplayText qrCodeScannerContract$DisplayText, Function0 function0, Composer composer, int i) {
        String stringResource;
        drawResult.getClass();
        qrCodeScannerContract$DisplayText.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1410768471);
        int i2 = i | (gapComposer.changed(drawResult) ? 4 : 2) | (gapComposer.changed(qrCodeScannerContract$DisplayText) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Modifier testTag = TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "QrCodeScannerView");
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, testTag);
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
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
            Validate.CameraPreviewView(drawResult, OffsetKt.m222paddingqDBjuR0$default(fillElement, 16.0f, 16.0f, 16.0f, 0.0f, 8).then(new LayoutWeightElement(1.0f, true)), gapComposer, i2 & 14);
            int i4 = i2 >> 3;
            if (qrCodeScannerContract$DisplayText.equals(QrCodeScannerContract$DisplayText.HelpText.INSTANCE)) {
                gapComposer.startReplaceGroup(-210755911);
                stringResource = Operation$State.stringResource(gapComposer, R.string.migration_qrcode_scanning_instructions);
                gapComposer.end(false);
            } else {
                if (!(qrCodeScannerContract$DisplayText instanceof QrCodeScannerContract$DisplayText.ProgressText)) {
                    throw ViewSizeResolver.CC.m(gapComposer, -1253725827, false);
                }
                gapComposer.startReplaceGroup(-210627943);
                QrCodeScannerContract$DisplayText.ProgressText progressText = (QrCodeScannerContract$DisplayText.ProgressText) qrCodeScannerContract$DisplayText;
                stringResource = Operation$State.stringResource(R.string.migration_qrcode_scanning_progress, new Object[]{Integer.valueOf(progressText.scannedCount), Integer.valueOf(progressText.totalCount)}, gapComposer);
                gapComposer.end(false);
            }
            Util.QrCodeScannerBottomContent(stringResource, function0, gapComposer, i4 & 112);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(drawResult, qrCodeScannerContract$DisplayText, function0, i, 14);
        }
    }

    public static final void SaveableStateProvider(SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(832919318);
        int i2 = (gapComposer.changedInstance(saveableStateHolder) ? 4 : 2) | i | (gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16);
        int i3 = 18;
        if ((i2 & 19) == 18 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new RoomDatabase$$ExternalSyntheticLambda0(i3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
            if (current == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
            ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BackStackEntryIdViewModel.class);
            Data.Builder builder = new Data.Builder(3);
            builder.addInitializer(Reflection.getOrCreateKotlinClass(BackStackEntryIdViewModel.class), function1);
            InitializerViewModelFactory build = builder.build();
            CreationExtras defaultViewModelCreationExtras = current instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) current).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            ViewModelStore viewModelStore = current.getViewModelStore();
            viewModelStore.getClass();
            defaultViewModelCreationExtras.getClass();
            Dispatcher dispatcher = new Dispatcher(viewModelStore, build, defaultViewModelCreationExtras);
            String qualifiedName = orCreateKotlinClass.getQualifiedName();
            if (qualifiedName == null) {
                UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
                return;
            }
            BackStackEntryIdViewModel backStackEntryIdViewModel = (BackStackEntryIdViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
            Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
            anonymousClass7.this$0 = new WeakReference(saveableStateHolder);
            backStackEntryIdViewModel.saveableStateHolderRef = anonymousClass7;
            saveableStateHolder.SaveableStateProvider(backStackEntryIdViewModel.id, composableLambdaImpl, gapComposer, ((i2 << 6) & 896) | (i2 & 112));
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, 17, saveableStateHolder, composableLambdaImpl);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0047  */
    /* renamed from: TextTitleSmall-Xl4FiYE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m809TextTitleSmallXl4FiYE(java.lang.String r29, androidx.compose.ui.Modifier r30, long r31, int r33, int r34, androidx.compose.runtime.Composer r35, int r36, int r37) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.RelationUtil.m809TextTitleSmallXl4FiYE(java.lang.String, androidx.compose.ui.Modifier, long, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003d -> B:10:0x0040). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$awaitDown(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r6, kotlin.coroutines.jvm.internal.BaseContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1 r0 = (androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1 r0 = new androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L40
        L27:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            r6 = 0
            return r6
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
        L31:
            r0.L$0 = r6
            r0.label = r2
            androidx.compose.ui.input.pointer.PointerEventPass r7 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            java.lang.Object r7 = r6.awaitPointerEvent(r7, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r1) goto L40
            return r1
        L40:
            androidx.compose.ui.input.pointer.PointerEvent r7 = (androidx.compose.ui.input.pointer.PointerEvent) r7
            java.util.List r1 = r7.changes
            int r3 = r1.size()
            r4 = 0
        L49:
            if (r4 >= r3) goto L5b
            java.lang.Object r5 = r1.get(r4)
            androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
            boolean r5 = androidx.compose.ui.input.pointer.PointerId.changedToDown(r5)
            if (r5 != 0) goto L58
            goto L31
        L58:
            int r4 = r4 + 1
            goto L49
        L5b:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.RelationUtil.access$awaitDown(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c1, code lost:
    
        if (r15 == r6) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0095 A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009b A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$touchSelectionSubsequentPress(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r11, androidx.compose.foundation.text.TextDragObserver r12, androidx.compose.ui.input.pointer.PointerEvent r13, int r14, kotlin.coroutines.jvm.internal.BaseContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.RelationUtil.access$touchSelectionSubsequentPress(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.foundation.text.TextDragObserver, androidx.compose.ui.input.pointer.PointerEvent, int, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static void appendParameters(StringBuilder sb, String str, Map map) {
        String valueOf;
        if (map.isEmpty()) {
            sb.append(str.concat(": (None)\n"));
            return;
        }
        sb.append(str.concat("\n"));
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key instanceof CameraCharacteristics.Key) {
                valueOf = ((CameraCharacteristics.Key) key).getName();
                valueOf.getClass();
            } else if (key instanceof CaptureRequest.Key) {
                valueOf = ((CaptureRequest.Key) key).getName();
                valueOf.getClass();
            } else if (key instanceof CaptureResult.Key) {
                valueOf = ((CaptureResult.Key) key).getName();
                valueOf.getClass();
            } else {
                valueOf = String.valueOf(key);
            }
            Object value = entry.getValue();
            arrayList.add(new Pair(valueOf, value instanceof Object[] ? ArraysKt___ArraysKt.joinToString$default((Object[]) value, null, "[", "]", new BorderKt$$ExternalSyntheticLambda1(5), 25) : String.valueOf(value)));
        }
        for (Pair pair : CollectionsKt.sortedWith(arrayList, new ViewPager.AnonymousClass1(1))) {
            sb.append("  " + StringsKt.padEnd((String) pair.first, 50) + ' ' + ((String) pair.second) + '\n');
        }
    }

    public static IOException attachFileSystemMessage(File file, IOException iOException) {
        StringBuilder sb = new StringBuilder("Inoperable file:");
        try {
            sb.append(" canonical[" + file.getCanonicalPath() + "] freeSpace[" + file.getFreeSpace() + ']');
        } catch (IOException unused) {
            sb.append(" failed to attach additional metadata");
        }
        return new IOException(sb.toString(), iOException);
    }

    public static IOException attachParentStacktrace(File file, IOException iOException) {
        File parentFile = file.getParentFile();
        return parentFile == null ? attachFileSystemMessage(file, iOException) : parentFile.exists() ? parentFile.isFile() ? parentFile.canRead() ? parentFile.canWrite() ? attachFileSystemMessage(file, iOException) : attachFileSystemMessage(file, iOException) : parentFile.canWrite() ? attachFileSystemMessage(file, iOException) : attachFileSystemMessage(file, iOException) : parentFile.canRead() ? parentFile.canWrite() ? attachFileSystemMessage(file, iOException) : attachFileSystemMessage(file, iOException) : parentFile.canWrite() ? attachFileSystemMessage(file, iOException) : attachFileSystemMessage(file, iOException) : attachFileSystemMessage(file, iOException);
    }

    public static final void attachToView(final EventHook eventHook, final RecyclerView.ViewHolder viewHolder, View view) {
        eventHook.getClass();
        view.getClass();
        if (eventHook instanceof ClickEventHook) {
            view.setOnClickListener(new Snackbar$$ExternalSyntheticLambda0(1, viewHolder, eventHook));
        } else if (eventHook instanceof FastAdapter$viewLongClickListener$1) {
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.fastadapter.utils.EventHookUtilKt$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    int bindingAdapterPosition;
                    EventHook eventHook2 = eventHook;
                    eventHook2.getClass();
                    RecyclerView.ViewHolder viewHolder2 = RecyclerView.ViewHolder.this;
                    View view3 = viewHolder2.itemView;
                    Object tag = view3.getTag(R.id.fastadapter_item_adapter);
                    ItemAdapter itemAdapter = null;
                    FastAdapter fastAdapter = tag instanceof FastAdapter ? (FastAdapter) tag : null;
                    if (fastAdapter != null && (bindingAdapterPosition = viewHolder2.getBindingAdapterPosition()) != -1) {
                        Object tag2 = view3.getTag(R.id.fastadapter_item);
                        AbstractItem abstractItem = tag2 instanceof AbstractItem ? (AbstractItem) tag2 : null;
                        if (abstractItem != null) {
                            view2.getClass();
                            if (abstractItem.isEnabled) {
                                if (bindingAdapterPosition >= 0 && bindingAdapterPosition < fastAdapter.globalSize) {
                                    fastAdapter.logger.getClass();
                                    SparseArray sparseArray = fastAdapter.adapterSizes;
                                    int indexOfKey = sparseArray.indexOfKey(bindingAdapterPosition);
                                    if (indexOfKey < 0) {
                                        indexOfKey = (~indexOfKey) - 1;
                                    }
                                    itemAdapter = (ItemAdapter) sparseArray.valueAt(indexOfKey);
                                }
                                if (itemAdapter != null) {
                                    ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) ((ArrayMap.ValueCollection) fastAdapter.extensionsCache.values()).iterator();
                                    if (keyIterator.hasNext()) {
                                        keyIterator.next().getClass();
                                        DBUtil$$ExternalSyntheticBUOutline0.m();
                                    }
                                }
                            }
                        }
                    }
                    return false;
                }
            });
        } else if (eventHook instanceof TouchEventHook) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.mikepenz.fastadapter.utils.EventHookUtilKt$$ExternalSyntheticLambda2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    int bindingAdapterPosition;
                    EventHook eventHook2 = eventHook;
                    eventHook2.getClass();
                    RecyclerView.ViewHolder viewHolder2 = RecyclerView.ViewHolder.this;
                    View view3 = viewHolder2.itemView;
                    Object tag = view3.getTag(R.id.fastadapter_item_adapter);
                    FastAdapter fastAdapter = tag instanceof FastAdapter ? (FastAdapter) tag : null;
                    if (fastAdapter == null || (bindingAdapterPosition = viewHolder2.getBindingAdapterPosition()) == -1) {
                        return false;
                    }
                    Object tag2 = view3.getTag(R.id.fastadapter_item);
                    AbstractItem abstractItem = tag2 instanceof AbstractItem ? (AbstractItem) tag2 : null;
                    if (abstractItem == null) {
                        return false;
                    }
                    view2.getClass();
                    motionEvent.getClass();
                    return ((TouchEventHook) eventHook2).onTouch(view2, motionEvent, bindingAdapterPosition, fastAdapter, abstractItem);
                }
            });
        }
    }

    public static void checkArgument(boolean z) {
        if (z) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
    }

    public static void checkArgumentInRange(int i, int i2, int i3, String str) {
        if (i < i2) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(str + " is out of range of [" + i2 + ", " + i3 + "] (too low)");
        }
        if (i <= i3) {
            return;
        }
        Locale locale2 = Locale.US;
        throw new IllegalArgumentException(str + " is out of range of [" + i2 + ", " + i3 + "] (too high)");
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        Regex$$ExternalSyntheticBUOutline0.m(str);
    }

    public static void checkState(String str, boolean z) {
        if (z) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(str);
    }

    public static String combineFlags$tfa_mail_protocols_imap(Iterable iterable, boolean z) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            String str = null;
            switch (ImapUtility$WhenMappings.$EnumSwitchMapping$0[((Flag) it.next()).ordinal()]) {
                case 1:
                    str = "\\Seen";
                    break;
                case 2:
                    str = "\\Deleted";
                    break;
                case 3:
                    str = "\\Answered";
                    break;
                case 4:
                    str = "\\Flagged";
                    break;
                case 5:
                    if (z) {
                        str = "$Forwarded";
                        break;
                    }
                    break;
                case 6:
                    str = "\\Draft";
                    break;
            }
            if (str != null) {
                arrayList.add(str);
            }
        }
        return CollectionsKt.joinToString$default(arrayList, " ", null, null, null, 62);
    }

    public static ServerSettings decode(String str) {
        ConnectionSecurity connectionSecurity;
        String str2;
        String str3;
        String str4;
        String str5;
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            String str6 = null;
            if (scheme.equals("webdav")) {
                connectionSecurity = ConnectionSecurity.NONE;
            } else {
                if (!scheme.startsWith("webdav+")) {
                    UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Unsupported protocol (", scheme, ")"));
                    return null;
                }
                connectionSecurity = ConnectionSecurity.SSL_TLS_REQUIRED;
            }
            ConnectionSecurity connectionSecurity2 = connectionSecurity;
            String host = uri.getHost();
            if (host.startsWith("http")) {
                String[] split = host.split("://", 2);
                if (split.length > 1) {
                    host = split[1];
                }
            }
            String str7 = host;
            int port = uri.getPort();
            String userInfo = uri.getUserInfo();
            if (userInfo != null) {
                String[] split2 = userInfo.split(":");
                String decodeUtf8 = IntRectKt.decodeUtf8(split2[0]);
                String[] split3 = decodeUtf8.split("\\\\", 2);
                String str8 = split3.length > 1 ? split3[1] : decodeUtf8;
                str4 = split2.length > 1 ? IntRectKt.decodeUtf8(split2[1]) : null;
                str2 = str8;
                str3 = decodeUtf8;
            } else {
                str2 = null;
                str3 = null;
                str4 = null;
            }
            String[] split4 = uri.getPath().split("\\|");
            int length = split4.length;
            String str9 = null;
            String str10 = null;
            for (int i = 0; i < length; i++) {
                if (i == 0) {
                    String str11 = split4[0];
                    if (str11 != null && str11.length() > 1) {
                        str6 = split4[0];
                    }
                } else if (i == 1) {
                    String str12 = split4[1];
                    if (str12 != null && str12.length() > 1) {
                        str9 = split4[1];
                    }
                } else if (i == 2 && (str5 = split4[2]) != null && str5.length() > 1) {
                    str10 = split4[2];
                }
            }
            HashMap hashMap = new HashMap();
            hashMap.put("alias", str2);
            hashMap.put("path", str6);
            hashMap.put("authPath", str9);
            hashMap.put("mailboxPath", str10);
            return new ServerSettings("webdav", str7, port, connectionSecurity2, AuthType.PLAIN, str3, str4, null, hashMap);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Invalid WebDavStore URI", e);
        }
    }

    public static final void drawLayer(DrawScope drawScope, GraphicsLayer graphicsLayer) {
        boolean z;
        boolean z2;
        Canvas canvas;
        boolean z3;
        float f;
        androidx.compose.ui.graphics.Canvas canvas2 = drawScope.getDrawContext().getCanvas();
        GraphicsLayer graphicsLayer2 = (GraphicsLayer) drawScope.getDrawContext().mMenuProviders;
        GraphicsLayerImpl graphicsLayerImpl = graphicsLayer.impl;
        if (graphicsLayer.isReleased) {
            return;
        }
        graphicsLayer.configureOutlineAndClip();
        if (!graphicsLayerImpl.getHasDisplayList()) {
            try {
                graphicsLayer.impl.record(graphicsLayer.density, graphicsLayer.layoutDirection, graphicsLayer, graphicsLayer.clipDrawBlock);
            } catch (Throwable unused) {
            }
        }
        boolean z4 = graphicsLayerImpl.getShadowElevation() > 0.0f;
        if (z4) {
            canvas2.enableZ();
        }
        Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas2);
        boolean isHardwareAccelerated = nativeCanvas.isHardwareAccelerated();
        if (!isHardwareAccelerated) {
            long j = graphicsLayer.topLeft;
            float f2 = (int) (j >> 32);
            float f3 = (int) (j & 4294967295L);
            long j2 = graphicsLayer.size;
            float f4 = ((int) (j2 >> 32)) + f2;
            float f5 = ((int) (j2 & 4294967295L)) + f3;
            float alpha = graphicsLayerImpl.getAlpha();
            ColorFilter colorFilter = graphicsLayerImpl.getColorFilter();
            int mo537getBlendMode0nO6VwU = graphicsLayerImpl.mo537getBlendMode0nO6VwU();
            if (alpha < 1.0f || mo537getBlendMode0nO6VwU != 3 || colorFilter != null || graphicsLayerImpl.mo538getCompositingStrategyke2Ky5w() == 1) {
                AndroidPaint androidPaint = graphicsLayer.softwareLayerPaint;
                if (androidPaint == null) {
                    androidPaint = ColorKt.Paint();
                    graphicsLayer.softwareLayerPaint = androidPaint;
                }
                androidPaint.setAlpha(alpha);
                androidPaint.m463setBlendModes9anfk8(mo537getBlendMode0nO6VwU);
                androidPaint.setColorFilter(colorFilter);
                nativeCanvas = nativeCanvas;
                f = f2;
                nativeCanvas.saveLayer(f, f3, f4, f5, ColorKt.getNativePaint(androidPaint));
            } else {
                nativeCanvas.save();
                nativeCanvas = nativeCanvas;
                f = f2;
            }
            nativeCanvas.translate(f, f3);
            nativeCanvas.concat(graphicsLayerImpl.calculateMatrix());
        }
        boolean z5 = !isHardwareAccelerated && graphicsLayer.clip;
        if (z5) {
            canvas2.save();
            ColorKt outline = graphicsLayer.getOutline();
            if (outline instanceof Outline$Rectangle) {
                canvas2.mo455clipRectmtrdDE(((Outline$Rectangle) outline).rect);
            } else if (outline instanceof Outline$Rounded) {
                AndroidPath androidPath = graphicsLayer.roundRectClipPath;
                if (androidPath != null) {
                    androidPath.internalPath.rewind();
                } else {
                    androidPath = AndroidPath_androidKt.Path();
                    graphicsLayer.roundRectClipPath = androidPath;
                }
                Modifier.CC.addRoundRect$default(androidPath, ((Outline$Rounded) outline).roundRect);
                canvas2.mo453clipPathmtrdDE(androidPath);
            } else {
                if (!(outline instanceof Outline$Generic)) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                }
                canvas2.mo453clipPathmtrdDE(((Outline$Generic) outline).path);
            }
        }
        if (graphicsLayer2 != null) {
            StateLayer stateLayer = graphicsLayer2.childDependenciesTracker;
            if (!stateLayer.bounded) {
                InlineClassHelperKt.throwIllegalArgumentException("Only add dependencies during a tracking");
            }
            MutableScatterSet mutableScatterSet = (MutableScatterSet) stateLayer.interactions;
            if (mutableScatterSet != null) {
                mutableScatterSet.add(graphicsLayer);
            } else if (((GraphicsLayer) stateLayer.rippleAlpha) != null) {
                MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                GraphicsLayer graphicsLayer3 = (GraphicsLayer) stateLayer.rippleAlpha;
                graphicsLayer3.getClass();
                mutableScatterSet3.add(graphicsLayer3);
                mutableScatterSet3.add(graphicsLayer);
                stateLayer.interactions = mutableScatterSet3;
                stateLayer.rippleAlpha = null;
            } else {
                stateLayer.rippleAlpha = graphicsLayer;
            }
            MutableScatterSet mutableScatterSet4 = (MutableScatterSet) stateLayer.currentInteraction;
            if (mutableScatterSet4 != null) {
                z3 = !mutableScatterSet4.remove(graphicsLayer);
            } else if (((GraphicsLayer) stateLayer.animatedAlpha) != graphicsLayer) {
                z3 = true;
            } else {
                stateLayer.animatedAlpha = null;
                z3 = false;
            }
            if (z3) {
                graphicsLayer.parentLayerUsages++;
            }
        }
        if (((AndroidCanvas) canvas2).internalCanvas.isHardwareAccelerated()) {
            z = z4;
            z2 = z5;
            canvas = nativeCanvas;
            graphicsLayerImpl.draw(canvas2);
        } else {
            CanvasDrawScope canvasDrawScope = graphicsLayer.softwareDrawScope;
            if (canvasDrawScope == null) {
                canvasDrawScope = new CanvasDrawScope();
                graphicsLayer.softwareDrawScope = canvasDrawScope;
            }
            MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
            Density density = graphicsLayer.density;
            LayoutDirection layoutDirection = graphicsLayer.layoutDirection;
            long m1072toSizeozmzZPI = Validate.m1072toSizeozmzZPI(graphicsLayer.size);
            CanvasDrawScope.DrawParams drawParams = ((CanvasDrawScope) menuHostHelper.mProviderToLifecycleContainers).drawParams;
            Density density2 = drawParams.density;
            LayoutDirection layoutDirection2 = drawParams.layoutDirection;
            androidx.compose.ui.graphics.Canvas canvas3 = menuHostHelper.getCanvas();
            z2 = z5;
            canvas = nativeCanvas;
            long m795getSizeNHjbRc = menuHostHelper.m795getSizeNHjbRc();
            z = z4;
            GraphicsLayer graphicsLayer4 = (GraphicsLayer) menuHostHelper.mMenuProviders;
            menuHostHelper.setDensity(density);
            menuHostHelper.setLayoutDirection(layoutDirection);
            menuHostHelper.setCanvas(canvas2);
            menuHostHelper.m797setSizeuvyYCjk(m1072toSizeozmzZPI);
            menuHostHelper.mMenuProviders = graphicsLayer;
            canvas2.save();
            try {
                graphicsLayer.drawWithChildTracking(canvasDrawScope);
            } finally {
                canvas2.restore();
                menuHostHelper.setDensity(density2);
                menuHostHelper.setLayoutDirection(layoutDirection2);
                menuHostHelper.setCanvas(canvas3);
                menuHostHelper.m797setSizeuvyYCjk(m795getSizeNHjbRc);
                menuHostHelper.mMenuProviders = graphicsLayer4;
            }
        }
        if (z2) {
            canvas2.restore();
        }
        if (z) {
            canvas2.disableZ();
        }
        if (isHardwareAccelerated) {
            return;
        }
        canvas.restore();
    }

    public static final String encodeString(String str) {
        str.getClass();
        return CameraDevices$CC.m("\"", StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "\\", "\\\\"), "\"", "\\\""), "\"");
    }

    public static List getImapSequenceValues(String str) {
        ArrayList arrayList;
        List list;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (str == null) {
            return emptyList;
        }
        List<String> split$default = StringsKt.split$default(str, new String[]{","}, 6);
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : split$default) {
            if (StringsKt.contains$default(str2, ':')) {
                int indexOf$default = StringsKt.indexOf$default(str2, ':', 0, 6);
                Integer valueOf = Integer.valueOf(indexOf$default);
                Pair pair = null;
                if (indexOf$default <= 0) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    int intValue = valueOf.intValue();
                    try {
                        long parseLong = Long.parseLong(str2.substring(0, intValue));
                        long parseLong2 = Long.parseLong(str2.substring(intValue + 1));
                        if ((parseLong & (-4294967296L)) == 0) {
                            if ((parseLong2 & (-4294967296L)) == 0) {
                                pair = new Pair(Long.valueOf(parseLong), Long.valueOf(parseLong2));
                            }
                        }
                        Log.d("Invalid range: %s", str2);
                    } catch (NumberFormatException e) {
                        Log.d(e, "Invalid range value: %s", str2);
                    }
                }
                if (pair != null) {
                    long longValue = ((Number) pair.first).longValue();
                    long longValue2 = ((Number) pair.second).longValue();
                    if (longValue <= longValue2) {
                        LongRange longRange = new LongRange(longValue, longValue2);
                        arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(longRange, 10));
                        Iterator it = longRange.iterator();
                        while (true) {
                            LongProgressionIterator longProgressionIterator = (LongProgressionIterator) it;
                            if (!longProgressionIterator.hasNext) {
                                break;
                            }
                            arrayList.add(String.valueOf(longProgressionIterator.nextLong()));
                        }
                    } else {
                        LongProgression longProgression = new LongProgression(longValue, longValue2, -1L);
                        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(longProgression, 10));
                        Iterator it2 = longProgression.iterator();
                        while (true) {
                            LongProgressionIterator longProgressionIterator2 = (LongProgressionIterator) it2;
                            if (!longProgressionIterator2.hasNext) {
                                break;
                            }
                            arrayList3.add(String.valueOf(longProgressionIterator2.nextLong()));
                        }
                        arrayList = arrayList3;
                    }
                    list = arrayList;
                }
                list = emptyList;
            } else {
                Long longOrNull = StringsKt__StringsJVMKt.toLongOrNull(str2);
                if (longOrNull == null || ((-4294967296L) & longOrNull.longValue()) != 0) {
                    Log.d("Invalid UID value: %s", str2);
                    list = emptyList;
                } else {
                    list = IntOffsetKt.listOf(str2);
                }
            }
            CollectionsKt.addAll(list, arrayList2);
        }
        return arrayList2;
    }

    public static Handler getInstance() {
        if (sHandler != null) {
            return sHandler;
        }
        synchronized (RelationUtil.class) {
            try {
                if (sHandler == null) {
                    sHandler = DBUtil.createAsync(Looper.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sHandler;
    }

    public static final void getMenu() {
        if (_menu != null) {
            return;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Outlined.Menu", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 96);
        int i = VectorKt.$r8$clinit;
        SolidColor solidColor = new SolidColor(Color.Black);
        Headers.Builder builder2 = new Headers.Builder(1);
        builder2.moveTo(3.0f, 18.0f);
        builder2.horizontalLineToRelative(18.0f);
        builder2.verticalLineToRelative(-2.0f);
        builder2.lineTo(3.0f, 16.0f);
        builder2.verticalLineToRelative(2.0f);
        builder2.close();
        builder2.moveTo(3.0f, 13.0f);
        builder2.horizontalLineToRelative(18.0f);
        builder2.verticalLineToRelative(-2.0f);
        builder2.lineTo(3.0f, 11.0f);
        builder2.verticalLineToRelative(2.0f);
        builder2.close();
        builder2.moveTo(3.0f, 6.0f);
        builder2.verticalLineToRelative(2.0f);
        builder2.horizontalLineToRelative(18.0f);
        builder2.lineTo(21.0f, 6.0f);
        builder2.lineTo(3.0f, 6.0f);
        builder2.close();
        builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", builder2.namesAndValues);
        _menu = builder.build();
    }

    public static boolean isSamsungDistortion$camera_camera2() {
        String str = Build.MANUFACTURER;
        str.getClass();
        if (!str.equalsIgnoreCase("Samsung")) {
            String str2 = Build.BRAND;
            str2.getClass();
            if (!str2.equalsIgnoreCase("Samsung")) {
                return false;
            }
        }
        LinkedHashMap linkedHashMap = ExtraCroppingQuirk.SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP;
        String str3 = Build.MODEL;
        str3.getClass();
        Locale locale = Locale.ROOT;
        String upperCase = str3.toUpperCase(locale);
        upperCase.getClass();
        if (!linkedHashMap.containsKey(upperCase)) {
            return false;
        }
        String upperCase2 = str3.toUpperCase(locale);
        upperCase2.getClass();
        Range range = (Range) linkedHashMap.get(upperCase2);
        if (range != null) {
            return range.contains((Range) Integer.valueOf(Build.VERSION.SDK_INT));
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x0166, code lost:
    
        if (r3 == r13) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bd A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:36:0x004f, B:37:0x00b5, B:39:0x00bd, B:41:0x00c9, B:43:0x00d5, B:63:0x009b), top: B:8:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object mouseSelection(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r17, com.fsck.k9.mailstore.LocalFolder.AnonymousClass12 r18, de.cketti.changelog.XmlParser r19, androidx.compose.ui.input.pointer.PointerEvent r20, kotlin.coroutines.jvm.internal.BaseContinuationImpl r21) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.RelationUtil.mouseSelection(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, com.fsck.k9.mailstore.LocalFolder$12, de.cketti.changelog.XmlParser, androidx.compose.ui.input.pointer.PointerEvent, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final int offsetOnMainAxis(LazyGridMeasuredItem lazyGridMeasuredItem, Orientation orientation) {
        return (int) (orientation == Orientation.Vertical ? lazyGridMeasuredItem.offset & 4294967295L : lazyGridMeasuredItem.offset >> 32);
    }

    /* renamed from: outlinedCardColors-ro_MJ88, reason: not valid java name */
    public static CardColors m810outlinedCardColorsro_MJ88(long j, long j2, Composer composer) {
        long Color;
        long Color2;
        long j3 = Color.Unspecified;
        Color = ColorKt.Color(Color.m487getRedimpl(r5), Color.m486getGreenimpl(r5), Color.m484getBlueimpl(r5), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.m341contentColorForek8zF_U(j, composer)));
        ColorScheme colorScheme = (ColorScheme) ((GapComposer) composer).consume(ColorSchemeKt.LocalColorScheme);
        androidx.compose.material3.CardColors cardColors = colorScheme.defaultOutlinedCardColorsCached;
        if (cardColors == null) {
            ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.ContainerColor$7;
            long fromToken = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
            long m340contentColorFor4WTKRHQ = ColorSchemeKt.m340contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens));
            long fromToken2 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
            Color2 = ColorKt.Color(Color.m487getRedimpl(r0), Color.m486getGreenimpl(r0), Color.m484getBlueimpl(r0), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.m340contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens))));
            androidx.compose.material3.CardColors cardColors2 = new androidx.compose.material3.CardColors(fromToken, m340contentColorFor4WTKRHQ, fromToken2, Color2);
            colorScheme.defaultOutlinedCardColorsCached = cardColors2;
            cardColors = cardColors2;
        }
        long j4 = j != 16 ? j : cardColors.containerColor;
        long j5 = j2 != 16 ? j2 : cardColors.contentColor;
        if (j3 == 16) {
            j3 = cardColors.disabledContainerColor;
        }
        long j6 = j3;
        if (Color == 16) {
            Color = cardColors.disabledContentColor;
        }
        return new CardColors(j4, j5, j6, Color);
    }

    public static String parsePath(String str, int i) {
        int i2;
        str.getClass();
        int length = str.length();
        int i3 = i + 2;
        if (length > i3 && str.charAt(i + 1) == '/' && str.charAt(i3) == '/') {
            i2 = i + 3;
            while (i2 < length) {
                char charAt = str.charAt(i2);
                if (charAt != '#' && charAt != '?') {
                    if (charAt == '/' || charAt == '\\') {
                        break;
                    }
                    i2++;
                } else {
                    return "";
                }
            }
        } else {
            i2 = i + 1;
        }
        int i4 = i2;
        while (i4 < length) {
            char charAt2 = str.charAt(i4);
            if (charAt2 == '#' || charAt2 == '?') {
                break;
            }
            i4++;
        }
        return str.substring(i2, i4);
    }

    public static final void recursiveFetchArrayMap(ArrayMap arrayMap, Function1 function1) {
        arrayMap.getClass();
        ArrayMap arrayMap2 = new ArrayMap(999);
        int i = arrayMap.size;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            arrayMap2.put(arrayMap.keyAt(i2), arrayMap.valueAt(i2));
            i2++;
            i3++;
            if (i3 == 999) {
                function1.invoke(arrayMap2);
                arrayMap2.clear();
                i3 = 0;
            }
        }
        if (i3 > 0) {
            function1.invoke(arrayMap2);
        }
    }

    public static final void remove(Preference preference) {
        PreferenceGroup preferenceGroup;
        if (preference == null || (preferenceGroup = preference.mParentGroup) == null) {
            return;
        }
        preferenceGroup.removePreference(preference);
    }

    public static final AuthenticationType toAuthenticationType(app.k9mail.autodiscovery.api.AuthenticationType authenticationType) {
        authenticationType.getClass();
        int ordinal = authenticationType.ordinal();
        if (ordinal == 0) {
            return AuthenticationType.PasswordCleartext;
        }
        if (ordinal == 1) {
            return AuthenticationType.PasswordEncrypted;
        }
        if (ordinal == 2) {
            return AuthenticationType.OAuth2;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public static final ExtractedText toExtractedText(TextFieldValue textFieldValue) {
        ExtractedText extractedText = new ExtractedText();
        String str = textFieldValue.annotatedString.text;
        extractedText.text = str;
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = str.length();
        extractedText.partialStartOffset = -1;
        long j = textFieldValue.selection;
        extractedText.selectionStart = TextRange.m702getMinimpl(j);
        extractedText.selectionEnd = TextRange.m701getMaximpl(j);
        extractedText.flags = !StringsKt.contains$default(textFieldValue.annotatedString.text, '\n') ? 1 : 0;
        return extractedText;
    }

    public static final String toResourceString(app.k9mail.feature.account.common.domain.entity.ConnectionSecurity connectionSecurity, Resources resources) {
        connectionSecurity.getClass();
        resources.getClass();
        int ordinal = connectionSecurity.ordinal();
        if (ordinal == 0) {
            String string = resources.getString(R.string.account_server_settings_connection_security_none);
            string.getClass();
            return string;
        }
        if (ordinal == 1) {
            String string2 = resources.getString(R.string.account_server_settings_connection_security_start_tls);
            string2.getClass();
            return string2;
        }
        if (ordinal != 2) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        String string3 = resources.getString(R.string.account_server_settings_connection_security_ssl);
        string3.getClass();
        return string3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009e, code lost:
    
        if (r15 == r6) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0067 A[Catch: CancellationException -> 0x0031, TryCatch #0 {CancellationException -> 0x0031, blocks: (B:12:0x002c, B:13:0x00a1, B:15:0x00a9, B:17:0x00b5, B:19:0x00c1, B:21:0x00c4, B:24:0x00c7, B:28:0x00cb, B:32:0x0040, B:34:0x0063, B:36:0x0067, B:40:0x0086, B:45:0x004a), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object touchSelectionFirstPress(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r12, androidx.compose.foundation.text.TextDragObserver r13, androidx.compose.ui.input.pointer.PointerEvent r14, kotlin.coroutines.jvm.internal.BaseContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.RelationUtil.touchSelectionFirstPress(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.foundation.text.TextDragObserver, androidx.compose.ui.input.pointer.PointerEvent, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public abstract boolean casListeners(AbstractResolvableFuture abstractResolvableFuture, AbstractResolvableFuture.Listener listener, AbstractResolvableFuture.Listener listener2);

    public abstract boolean casValue(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2);

    public abstract boolean casWaiters(AbstractResolvableFuture abstractResolvableFuture, AbstractResolvableFuture.Waiter waiter, AbstractResolvableFuture.Waiter waiter2);

    public float getTransitionAlpha(View view) {
        if (sTryHiddenTransitionAlpha) {
            try {
                return TraceApi29Impl.getTransitionAlpha(view);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        return view.getAlpha();
    }

    public abstract void putNext(AbstractResolvableFuture.Waiter waiter, AbstractResolvableFuture.Waiter waiter2);

    public abstract void putThread(AbstractResolvableFuture.Waiter waiter, Thread thread);

    public void setTransitionAlpha(View view, float f) {
        if (sTryHiddenTransitionAlpha) {
            try {
                TraceApi29Impl.setTransitionAlpha(view, f);
                return;
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransitionAlpha = false;
            }
        }
        view.setAlpha(f);
    }

    public static void checkArgument(String str, boolean z) {
        if (z) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006b  */
    /* renamed from: TextTitleSmall-Xl4FiYE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m808TextTitleSmallXl4FiYE(androidx.compose.ui.text.AnnotatedString r30, androidx.compose.ui.Modifier r31, long r32, int r34, int r35, androidx.compose.runtime.Composer r36, int r37, int r38) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.RelationUtil.m808TextTitleSmallXl4FiYE(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, long, int, int, androidx.compose.runtime.Composer, int, int):void");
    }
}
