package androidx.compose.ui.platform;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.inputmethodservice.InputMethodService;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.activity.ComponentActivity$$ExternalSyntheticLambda5;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.text.font.Font$ResourceLoader;
import androidx.compose.ui.unit.DensityWithConverter;
import androidx.compose.ui.unit.IntSize;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.room.Room;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.WindowMetricsCalculator;
import androidx.window.layout.WindowMetricsCalculatorCompat;
import androidx.window.layout.util.BoundsHelperApi16Impl;
import androidx.window.layout.util.BoundsHelperApi30Impl;
import androidx.window.layout.util.DensityCompatHelperApi34Impl;
import coil3.memory.MemoryCacheService;
import com.google.android.exoplayer2.RendererCapabilities;
import io.noties.markwon.RenderPropsImpl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableSet;
import kotlin.ranges.RangesKt;
import net.newpipe.app.ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposeViewContext {
    public final AndroidAccessibilityManager accessibilityManager;
    public final ComposeViewContext$callback$1 callback;
    public final CanvasHolder canvasHolder;
    public final AndroidClipboard clipboard;
    public final AndroidClipboardManager clipboardManager;
    public final CompositionContext compositionContext;
    public final MutableState configuration;
    public final Configuration currentConfiguration;
    public final MutableState fontFamilyResolver;
    public final Font$ResourceLoader fontLoader;
    public final HapticFeedback hapticFeedback;
    public final RenderPropsImpl imageVectorCache;
    public final LifecycleOwner lifecycleOwner;
    public final MemoryCacheService resourceIdCache;
    public final SavedStateRegistryOwner savedStateRegistryOwner;
    public final LayoutNodeDrawScope sharedDrawScope;
    public final AndroidUriHandler uriHandler;
    public final View view;
    public final AndroidViewConfiguration viewConfiguration;
    public int viewCount;
    public final ViewModelStoreOwner viewModelStoreOwner;
    public final PopupMenu$1 windowInfo;

    public ComposeViewContext(ComposeViewContext composeViewContext, View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
        RenderPropsImpl renderPropsImpl;
        Configuration configuration;
        MutableState mutableStateOf$default;
        AndroidAccessibilityManager androidAccessibilityManager;
        AndroidUriHandler androidUriHandler;
        AndroidClipboardManager androidClipboardManager;
        AndroidClipboard androidClipboard;
        Font$ResourceLoader androidUriHandler2;
        MutableState parcelableSnapshotMutableState;
        AndroidViewConfiguration androidViewConfiguration;
        CanvasHolder canvasHolder;
        LayoutNodeDrawScope layoutNodeDrawScope;
        MemoryCacheService memoryCacheService;
        View view2;
        boolean areEqual = Intrinsics.areEqual((composeViewContext == null || (view2 = composeViewContext.view) == null) ? null : view2.getContext(), view.getContext());
        this.view = view;
        this.compositionContext = compositionContext;
        this.lifecycleOwner = lifecycleOwner;
        this.savedStateRegistryOwner = savedStateRegistryOwner;
        this.viewModelStoreOwner = viewModelStoreOwner;
        if (areEqual) {
            composeViewContext.getClass();
            renderPropsImpl = composeViewContext.imageVectorCache;
        } else {
            renderPropsImpl = new RenderPropsImpl(1);
        }
        this.imageVectorCache = renderPropsImpl;
        this.resourceIdCache = (composeViewContext == null || (memoryCacheService = composeViewContext.resourceIdCache) == null) ? new MemoryCacheService(2) : memoryCacheService;
        if (areEqual) {
            composeViewContext.getClass();
            configuration = composeViewContext.currentConfiguration;
        } else {
            configuration = new Configuration(view.getContext().getResources().getConfiguration());
        }
        this.currentConfiguration = configuration;
        if (areEqual) {
            composeViewContext.getClass();
            mutableStateOf$default = composeViewContext.configuration;
        } else {
            mutableStateOf$default = Updater.mutableStateOf$default(new Configuration(configuration));
        }
        this.configuration = mutableStateOf$default;
        if (areEqual) {
            composeViewContext.getClass();
            androidAccessibilityManager = composeViewContext.accessibilityManager;
        } else {
            Context context = view.getContext();
            androidAccessibilityManager = new AndroidAccessibilityManager();
            Object systemService = context.getSystemService("accessibility");
            systemService.getClass();
        }
        this.accessibilityManager = androidAccessibilityManager;
        if (areEqual) {
            composeViewContext.getClass();
            androidUriHandler = composeViewContext.uriHandler;
        } else {
            view.getContext();
            androidUriHandler = new AndroidUriHandler();
        }
        this.uriHandler = androidUriHandler;
        if (areEqual) {
            composeViewContext.getClass();
            androidClipboardManager = composeViewContext.clipboardManager;
        } else {
            androidClipboardManager = new AndroidClipboardManager(view.getContext());
        }
        this.clipboardManager = androidClipboardManager;
        if (areEqual) {
            composeViewContext.getClass();
            androidClipboard = composeViewContext.clipboard;
        } else {
            androidClipboard = new AndroidClipboard();
        }
        this.clipboard = androidClipboard;
        if (areEqual) {
            composeViewContext.getClass();
            androidUriHandler2 = composeViewContext.fontLoader;
        } else {
            view.getContext();
            androidUriHandler2 = new AndroidUriHandler();
        }
        this.fontLoader = androidUriHandler2;
        if (areEqual) {
            composeViewContext.getClass();
            parcelableSnapshotMutableState = composeViewContext.fontFamilyResolver;
        } else {
            parcelableSnapshotMutableState = new ParcelableSnapshotMutableState(RangesKt.createFontFamilyResolver(view.getContext()), NeverEqualPolicy.INSTANCE$1);
        }
        this.fontFamilyResolver = parcelableSnapshotMutableState;
        this.hapticFeedback = view == (composeViewContext != null ? composeViewContext.view : null) ? composeViewContext.hapticFeedback : new PopupMenu$1(view, 24);
        if (areEqual) {
            composeViewContext.getClass();
            androidViewConfiguration = composeViewContext.viewConfiguration;
        } else {
            androidViewConfiguration = new AndroidViewConfiguration(android.view.ViewConfiguration.get(view.getContext()));
        }
        this.viewConfiguration = androidViewConfiguration;
        this.sharedDrawScope = (composeViewContext == null || (layoutNodeDrawScope = composeViewContext.sharedDrawScope) == null) ? new LayoutNodeDrawScope() : layoutNodeDrawScope;
        this.windowInfo = new PopupMenu$1(28);
        this.canvasHolder = (composeViewContext == null || (canvasHolder = composeViewContext.canvasHolder) == null) ? new CanvasHolder() : canvasHolder;
        new Function0() { // from class: androidx.compose.ui.platform.ComposeViewContext$calculateWindowSizeLambda$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ComposeViewContext.this.getClass();
                boolean m449equalsimpl0 = IntSize.m449equalsimpl0(0L, 0L);
                ComposeViewContext composeViewContext2 = ComposeViewContext.this;
                if (!m449equalsimpl0) {
                    composeViewContext2.getClass();
                    return new DerivedSize(0L, Owner.CC.m359$default$toDpSizekrfVVM(Cookie.Companion.m708toSizeozmzZPI(0L), Room.Density(ComposeViewContext.this.view.getContext())));
                }
                Context context2 = composeViewContext2.view.getContext();
                Context context3 = context2;
                while (context3 instanceof ContextWrapper) {
                    if ((context3 instanceof Activity) || (context3 instanceof InputMethodService) || (context3 instanceof Application)) {
                        break;
                    }
                    ContextWrapper contextWrapper = (ContextWrapper) context3;
                    if (contextWrapper.getBaseContext() == null) {
                        break;
                    }
                    context3 = contextWrapper.getBaseContext();
                }
                context3 = null;
                if (context3 == null) {
                    Configuration configuration2 = context2.getResources().getConfiguration();
                    DensityWithConverter Density = Room.Density(context2);
                    long m718DpSizeYgX7TsA = Okio.m718DpSizeYgX7TsA(configuration2.screenWidthDp, configuration2.screenHeightDp);
                    long m361$default$toSizeXkaWNTQ = Owner.CC.m361$default$toSizeXkaWNTQ(m718DpSizeYgX7TsA, Density);
                    return new DerivedSize((4294967295L & ((int) Float.intBitsToFloat((int) (m361$default$toSizeXkaWNTQ & 4294967295L)))) | (((int) Float.intBitsToFloat((int) (m361$default$toSizeXkaWNTQ >> 32))) << 32), m718DpSizeYgX7TsA);
                }
                WindowMetricsCalculator.Companion.getClass();
                WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.Companion.$$INSTANCE;
                WindowMetricsCalculatorCompat windowMetricsCalculatorCompat = WindowMetricsCalculator.Companion.windowMetricsCalculatorCompat;
                windowMetricsCalculatorCompat.getClass();
                ContextWrapper contextWrapper2 = (ContextWrapper) context3;
                int i = Build.VERSION.SDK_INT;
                WindowMetrics currentWindowMetrics = (i >= 34 ? DensityCompatHelperApi34Impl.INSTANCE$1 : i >= 30 ? BoundsHelperApi30Impl.INSTANCE$1 : BoundsHelperApi16Impl.INSTANCE$5).currentWindowMetrics(contextWrapper2, windowMetricsCalculatorCompat.densityCompatHelper);
                long height = (4294967295L & currentWindowMetrics.getBounds().height()) | (currentWindowMetrics.getBounds().width() << 32);
                return new DerivedSize(height, Owner.CC.m359$default$toDpSizekrfVVM(Cookie.Companion.m708toSizeozmzZPI(height), Room.Density(context3)));
            }
        };
        this.callback = new ComposeViewContext$callback$1(this);
    }

    public final void ProvideCompositionLocals$ui(final AndroidComposeView androidComposeView, final Function2 function2, Composer composer, final int i) {
        char c;
        char c2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(123858079);
        int i2 = (i & 6) == 0 ? (gapComposer.changedInstance(androidComposeView) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer.changedInstance(this) ? 256 : 128;
        }
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
            Object tag = androidComposeView.getTag(R.id.inspection_slot_table_set);
            LinkedHashMap linkedHashMap = null;
            Set set = (!(tag instanceof Set) || ((tag instanceof KMappedMarker) && !(tag instanceof KMutableSet))) ? null : (Set) tag;
            if (set == null) {
                Object parent = androidComposeView.getParent();
                View view = parent instanceof View ? (View) parent : null;
                Object tag2 = view != null ? view.getTag(R.id.inspection_slot_table_set) : null;
                set = (!(tag2 instanceof Set) || ((tag2 instanceof KMappedMarker) && !(tag2 instanceof KMutableSet))) ? null : (Set) tag2;
            }
            if (set != null) {
                set.add(gapComposer.getCompositionData());
                gapComposer.forceRecomposeScopes = true;
                gapComposer.sourceMarkersEnabled = true;
                gapComposer.slotTable.collectSourceInformation();
                gapComposer.insertTable.collectSourceInformation();
                SlotWriter slotWriter = gapComposer.writer;
                SlotTable slotTable = slotWriter.table;
                slotWriter.sourceInformationMap = slotTable.sourceInformationMap;
                slotWriter.calledByMap = slotTable.calledByMap;
            }
            Object rememberedValue = gapComposer.rememberedValue();
            SavedStateRegistryOwner savedStateRegistryOwner = this.savedStateRegistryOwner;
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                Object parent2 = androidComposeView.getParent();
                parent2.getClass();
                View view2 = (View) parent2;
                Object tag3 = view2.getTag(R.id.compose_view_saveable_id_tag);
                String str = tag3 instanceof String ? (String) tag3 : null;
                if (str == null) {
                    str = String.valueOf(view2.getId());
                }
                String m = Owner.CC.m("SaveableStateRegistry:", str);
                SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
                Bundle consumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey(m);
                if (consumeRestoredStateForKey != null) {
                    linkedHashMap = new LinkedHashMap();
                    for (String str2 : consumeRestoredStateForKey.keySet()) {
                        ArrayList parcelableArrayList = consumeRestoredStateForKey.getParcelableArrayList(str2);
                        parcelableArrayList.getClass();
                        linkedHashMap.put(str2, parcelableArrayList);
                    }
                }
                c = 2;
                c2 = 4;
                AndroidComposeView$getFocusedRect$1 androidComposeView$getFocusedRect$1 = AndroidComposeView$getFocusedRect$1.INSTANCE$3;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.LocalSaveableStateRegistry;
                SaveableStateRegistryImpl saveableStateRegistryImpl = new SaveableStateRegistryImpl(linkedHashMap, androidComposeView$getFocusedRect$1);
                if (savedStateRegistry.getSavedStateProvider(m) == null) {
                    try {
                        savedStateRegistry.registerSavedStateProvider(m, new ComponentActivity$$ExternalSyntheticLambda5(saveableStateRegistryImpl, i3));
                        z = true;
                    } catch (IllegalArgumentException unused) {
                    }
                    DisposableSaveableStateRegistry disposableSaveableStateRegistry = new DisposableSaveableStateRegistry(saveableStateRegistryImpl, new DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(z, savedStateRegistry, m));
                    gapComposer.updateRememberedValue(disposableSaveableStateRegistry);
                    rememberedValue = disposableSaveableStateRegistry;
                }
                z = false;
                DisposableSaveableStateRegistry disposableSaveableStateRegistry2 = new DisposableSaveableStateRegistry(saveableStateRegistryImpl, new DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(z, savedStateRegistry, m));
                gapComposer.updateRememberedValue(disposableSaveableStateRegistry2);
                rememberedValue = disposableSaveableStateRegistry2;
            } else {
                c = 2;
                c2 = 4;
            }
            final DisposableSaveableStateRegistry disposableSaveableStateRegistry3 = (DisposableSaveableStateRegistry) rememberedValue;
            boolean changedInstance = gapComposer.changedInstance(disposableSaveableStateRegistry3);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new Function1() { // from class: androidx.compose.ui.platform.ComposeViewContext$ProvideCompositionLocals$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return new ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1(DisposableSaveableStateRegistry.this, 5);
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.DisposableEffect(Unit.INSTANCE, (Function1) rememberedValue2, gapComposer);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = CompositionLocalsKt.LocalProvidableScrollCaptureInProgress;
            boolean booleanValue = ((Boolean) gapComposer.consume(dynamicProvidableCompositionLocal)).booleanValue() | androidComposeView.getScrollCaptureInProgress$ui();
            boolean changed = gapComposer.changed(androidComposeView.getView());
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ViewTreeHostDefaultProvider(androidComposeView.getView());
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            ProvidedValue defaultProvidedValue$runtime = LocalLifecycleOwnerKt.LocalLifecycleOwner.defaultProvidedValue$runtime(this.lifecycleOwner);
            ProvidedValue defaultProvidedValue$runtime2 = LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner.defaultProvidedValue$runtime(savedStateRegistryOwner);
            ProvidedValue defaultProvidedValue$runtime3 = AndroidCompositionLocals_androidKt.LocalImageVectorCache.defaultProvidedValue$runtime(this.imageVectorCache);
            ProvidedValue defaultProvidedValue$runtime4 = AndroidCompositionLocals_androidKt.LocalResourceIdCache.defaultProvidedValue$runtime(this.resourceIdCache);
            ProvidedValue defaultProvidedValue$runtime5 = AndroidCompositionLocals_androidKt.LocalContext.defaultProvidedValue$runtime(androidComposeView.getContext());
            ProvidedValue defaultProvidedValue$runtime6 = InspectionTablesKt.LocalInspectionTables.defaultProvidedValue$runtime(set);
            ProvidedValue defaultProvidedValue$runtime7 = AndroidCompositionLocals_androidKt.LocalConfiguration.defaultProvidedValue$runtime(androidComposeView.getConfiguration());
            ProvidedValue defaultProvidedValue$runtime8 = SaveableStateRegistryKt.LocalSaveableStateRegistry.defaultProvidedValue$runtime(disposableSaveableStateRegistry3);
            ProvidedValue defaultProvidedValue$runtime9 = AndroidCompositionLocals_androidKt.LocalView.defaultProvidedValue$runtime(androidComposeView.getView());
            ProvidedValue defaultProvidedValue$runtime10 = dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(Boolean.valueOf(booleanValue));
            ProvidedValue defaultProvidedValue$runtime11 = CompositionLocalsKt.LocalViewConfiguration.defaultProvidedValue$runtime(androidComposeView.getViewConfiguration());
            ProvidedValue defaultProvidedValue$runtime12 = HostDefaultProviderKt.LocalHostDefaultProvider.defaultProvidedValue$runtime((ViewTreeHostDefaultProvider) rememberedValue3);
            ProvidedValue[] providedValueArr = new ProvidedValue[12];
            providedValueArr[0] = defaultProvidedValue$runtime;
            providedValueArr[1] = defaultProvidedValue$runtime2;
            providedValueArr[c] = defaultProvidedValue$runtime3;
            providedValueArr[3] = defaultProvidedValue$runtime4;
            providedValueArr[c2] = defaultProvidedValue$runtime5;
            providedValueArr[5] = defaultProvidedValue$runtime6;
            providedValueArr[6] = defaultProvidedValue$runtime7;
            providedValueArr[7] = defaultProvidedValue$runtime8;
            providedValueArr[8] = defaultProvidedValue$runtime9;
            providedValueArr[9] = defaultProvidedValue$runtime10;
            providedValueArr[10] = defaultProvidedValue$runtime11;
            providedValueArr[11] = defaultProvidedValue$runtime12;
            Updater.CompositionLocalProvider(providedValueArr, Expect_jvmKt.rememberComposableLambda(1317454175, new Function2() { // from class: androidx.compose.ui.platform.ComposeViewContext$ProvideCompositionLocals$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Number) obj2).intValue();
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        gapComposer2.startReplaceGroup(866651995);
                        CompositionLocalsKt.ProvideCommonCompositionLocals(AndroidComposeView.this, this.uriHandler, function2, gapComposer2, 0);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.ui.platform.ComposeViewContext$ProvideCompositionLocals$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    ComposeViewContext.this.ProvideCompositionLocals$ui(androidComposeView, function2, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public final void decrementViewCount$ui() {
        int i = this.viewCount - 1;
        this.viewCount = i;
        if (i < 0) {
            Log.e("ComposeViewContext", "View count has dropped below 0");
            this.viewCount = 0;
        }
        if (this.viewCount == 0) {
            View view = this.view;
            Context context = view.getContext();
            ComposeViewContext$callback$1 composeViewContext$callback$1 = this.callback;
            context.unregisterComponentCallbacks(composeViewContext$callback$1);
            this.windowInfo.getClass();
            view.getViewTreeObserver().removeOnWindowFocusChangeListener(composeViewContext$callback$1);
        }
    }

    public final void incrementViewCount$ui() {
        int i = this.viewCount + 1;
        this.viewCount = i;
        if (i == 1) {
            View view = this.view;
            Context context = view.getContext();
            ComposeViewContext$callback$1 composeViewContext$callback$1 = this.callback;
            context.registerComponentCallbacks(composeViewContext$callback$1);
            onConfigurationChanged$ui(view.getResources().getConfiguration());
            ((ParcelableSnapshotMutableState) this.windowInfo.this$0).setValue(Boolean.valueOf(view.hasWindowFocus()));
            view.getViewTreeObserver().addOnWindowFocusChangeListener(composeViewContext$callback$1);
        }
    }

    public final void onConfigurationChanged$ui(Configuration configuration) {
        int updateFrom = this.currentConfiguration.updateFrom(configuration);
        if (updateFrom != 0) {
            Iterator it = this.imageVectorCache.values.entrySet().iterator();
            while (it.hasNext()) {
                if (((WeakReference) ((Map.Entry) it.next()).getValue()).get() != null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                    return;
                }
                it.remove();
            }
            this.configuration.setValue(new Configuration(configuration));
            MemoryCacheService memoryCacheService = this.resourceIdCache;
            synchronized (memoryCacheService) {
                ((MutableIntObjectMap) memoryCacheService.imageLoader).clear();
            }
            if ((268435456 & updateFrom) != 0) {
                this.fontFamilyResolver.setValue(RangesKt.createFontFamilyResolver(this.view.getContext()));
            }
            if (((-1342235264) & updateFrom) != 0) {
                this.windowInfo.getClass();
            }
        }
    }
}
