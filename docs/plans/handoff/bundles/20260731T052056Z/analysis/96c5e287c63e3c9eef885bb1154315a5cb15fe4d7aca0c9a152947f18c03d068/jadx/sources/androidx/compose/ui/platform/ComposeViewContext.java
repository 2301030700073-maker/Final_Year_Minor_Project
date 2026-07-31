package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.CompositionContext;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.res.ImageVectorCache;
import androidx.compose.ui.res.ResourceIdCache;
import androidx.compose.ui.text.font.Font$ResourceLoader;
import androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda5;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import androidx.work.Operation$State;
import coil3.svg.internal.AndroidSvg;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableSet;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposeViewContext {
    public final AndroidAccessibilityManager accessibilityManager;
    public final LayoutNode$_foldedChildren$1 calculateWindowSizeLambda;
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
    public final ImageVectorCache imageVectorCache;
    public final LifecycleOwner lifecycleOwner;
    public final ResourceIdCache resourceIdCache;
    public final SavedStateRegistryOwner savedStateRegistryOwner;
    public final LayoutNodeDrawScope sharedDrawScope;
    public final AndroidUriHandler uriHandler;
    public final View view;
    public final AndroidViewConfiguration viewConfiguration;
    public int viewCount;
    public final ViewModelStoreOwner viewModelStoreOwner;
    public final LazyWindowInfo windowInfo;

    public ComposeViewContext(ComposeViewContext composeViewContext, View view, CompositionContext compositionContext, LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner) {
        ImageVectorCache imageVectorCache;
        Configuration configuration;
        MutableState mutableStateOf$default;
        AndroidAccessibilityManager androidAccessibilityManager;
        AndroidUriHandler androidUriHandler;
        AndroidClipboardManager androidClipboardManager;
        AndroidClipboard androidClipboard;
        Font$ResourceLoader androidFontResourceLoader;
        MutableState parcelableSnapshotMutableState;
        AndroidViewConfiguration androidViewConfiguration;
        boolean areEqual = Intrinsics.areEqual(composeViewContext != null ? composeViewContext.view.getContext() : null, view.getContext());
        this.view = view;
        this.compositionContext = compositionContext;
        this.lifecycleOwner = lifecycleOwner;
        this.savedStateRegistryOwner = savedStateRegistryOwner;
        this.viewModelStoreOwner = viewModelStoreOwner;
        if (areEqual) {
            composeViewContext.getClass();
            imageVectorCache = composeViewContext.imageVectorCache;
        } else {
            imageVectorCache = new ImageVectorCache();
        }
        this.imageVectorCache = imageVectorCache;
        this.resourceIdCache = composeViewContext != null ? composeViewContext.resourceIdCache : new ResourceIdCache();
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
            androidAccessibilityManager = new AndroidAccessibilityManager(view.getContext());
        }
        this.accessibilityManager = androidAccessibilityManager;
        if (areEqual) {
            composeViewContext.getClass();
            androidUriHandler = composeViewContext.uriHandler;
        } else {
            androidUriHandler = new AndroidUriHandler(view.getContext());
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
            androidClipboard = new AndroidClipboard(androidClipboardManager);
        }
        this.clipboard = androidClipboard;
        if (areEqual) {
            composeViewContext.getClass();
            androidFontResourceLoader = composeViewContext.fontLoader;
        } else {
            view.getContext();
            androidFontResourceLoader = new AndroidFontResourceLoader();
        }
        this.fontLoader = androidFontResourceLoader;
        if (areEqual) {
            composeViewContext.getClass();
            parcelableSnapshotMutableState = composeViewContext.fontFamilyResolver;
        } else {
            parcelableSnapshotMutableState = new ParcelableSnapshotMutableState(Operation$State.createFontFamilyResolver(view.getContext()), NeverEqualPolicy.INSTANCE$1);
        }
        this.fontFamilyResolver = parcelableSnapshotMutableState;
        this.hapticFeedback = view == (composeViewContext != null ? composeViewContext.view : null) ? composeViewContext.hapticFeedback : new PlatformHapticFeedback(view);
        if (areEqual) {
            composeViewContext.getClass();
            androidViewConfiguration = composeViewContext.viewConfiguration;
        } else {
            androidViewConfiguration = new AndroidViewConfiguration(android.view.ViewConfiguration.get(view.getContext()));
        }
        this.viewConfiguration = androidViewConfiguration;
        this.sharedDrawScope = composeViewContext != null ? composeViewContext.sharedDrawScope : new LayoutNodeDrawScope();
        this.windowInfo = new LazyWindowInfo();
        this.canvasHolder = composeViewContext != null ? composeViewContext.canvasHolder : new CanvasHolder();
        this.calculateWindowSizeLambda = new LayoutNode$_foldedChildren$1(10, this);
        this.callback = new ComposeViewContext$callback$1(this);
    }

    public final void ProvideCompositionLocals$ui(AndroidComposeView androidComposeView, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        char c;
        char c2;
        boolean z;
        gapComposer.startRestartGroup(123858079);
        int i2 = (gapComposer.changedInstance(androidComposeView) ? 4 : 2) | i | (gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16) | (gapComposer.changedInstance(this) ? 256 : 128);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
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
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                Object parent2 = androidComposeView.getParent();
                parent2.getClass();
                View view2 = (View) parent2;
                Object tag3 = view2.getTag(R.id.compose_view_saveable_id_tag);
                String str = tag3 instanceof String ? (String) tag3 : null;
                if (str == null) {
                    str = String.valueOf(view2.getId());
                }
                String m = Modifier.CC.m("SaveableStateRegistry:", str);
                AndroidSvg savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
                Bundle consumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey(m);
                if (consumeRestoredStateForKey != null) {
                    linkedHashMap = new LinkedHashMap();
                    for (String str2 : consumeRestoredStateForKey.keySet()) {
                        ArrayList parcelableArrayList = consumeRestoredStateForKey.getParcelableArrayList(str2);
                        parcelableArrayList.getClass();
                        linkedHashMap.put(str2, parcelableArrayList);
                    }
                }
                c = 4;
                c2 = 2;
                CompositionLocalsKt$LocalLocale$1 compositionLocalsKt$LocalLocale$1 = CompositionLocalsKt$LocalLocale$1.INSTANCE$4;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.LocalSaveableStateRegistry;
                SaveableStateRegistryImpl saveableStateRegistryImpl = new SaveableStateRegistryImpl(linkedHashMap, compositionLocalsKt$LocalLocale$1);
                if (savedStateRegistry.getSavedStateProvider(m) == null) {
                    try {
                        savedStateRegistry.registerSavedStateProvider(m, new FragmentManager$$ExternalSyntheticLambda5(i3, saveableStateRegistryImpl));
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
                c = 4;
                c2 = 2;
            }
            DisposableSaveableStateRegistry disposableSaveableStateRegistry3 = (DisposableSaveableStateRegistry) rememberedValue;
            boolean changedInstance = gapComposer.changedInstance(disposableSaveableStateRegistry3);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new NodeChainKt$fillVector$1(18, disposableSaveableStateRegistry3);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.DisposableEffect(Unit.INSTANCE, (Function1) rememberedValue2, gapComposer);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = CompositionLocalsKt.LocalProvidableScrollCaptureInProgress;
            boolean booleanValue = ((Boolean) gapComposer.consume(staticProvidableCompositionLocal2)).booleanValue() | androidComposeView.getScrollCaptureInProgress$ui();
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
            ProvidedValue defaultProvidedValue$runtime10 = staticProvidableCompositionLocal2.defaultProvidedValue$runtime(Boolean.valueOf(booleanValue));
            ProvidedValue defaultProvidedValue$runtime11 = CompositionLocalsKt.LocalViewConfiguration.defaultProvidedValue$runtime(androidComposeView.getViewConfiguration());
            ProvidedValue defaultProvidedValue$runtime12 = HostDefaultProviderKt.LocalHostDefaultProvider.defaultProvidedValue$runtime((ViewTreeHostDefaultProvider) rememberedValue3);
            ProvidedValue[] providedValueArr = new ProvidedValue[12];
            providedValueArr[0] = defaultProvidedValue$runtime;
            providedValueArr[1] = defaultProvidedValue$runtime2;
            providedValueArr[c2] = defaultProvidedValue$runtime3;
            providedValueArr[3] = defaultProvidedValue$runtime4;
            providedValueArr[c] = defaultProvidedValue$runtime5;
            providedValueArr[5] = defaultProvidedValue$runtime6;
            providedValueArr[6] = defaultProvidedValue$runtime7;
            providedValueArr[7] = defaultProvidedValue$runtime8;
            providedValueArr[8] = defaultProvidedValue$runtime9;
            providedValueArr[9] = defaultProvidedValue$runtime10;
            providedValueArr[10] = defaultProvidedValue$runtime11;
            providedValueArr[11] = defaultProvidedValue$runtime12;
            Updater.CompositionLocalProvider(providedValueArr, Expect_jvmKt.rememberComposableLambda(1317454175, new ComposeViewContext$ProvideCompositionLocals$2(androidComposeView, this, composableLambdaImpl), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposeViewContext$ProvideCompositionLocals$2(this, androidComposeView, composableLambdaImpl, i);
        }
    }

    public final void decrementViewCount$ui() {
        int i = this.viewCount - 1;
        this.viewCount = i;
        if (i < 0) {
            Log.e("ComposeViewContext", "View count has dropped below 0");
            i = 0;
            this.viewCount = 0;
        }
        if (i == 0) {
            View view = this.view;
            Context context = view.getContext();
            ComposeViewContext$callback$1 composeViewContext$callback$1 = this.callback;
            context.unregisterComponentCallbacks(composeViewContext$callback$1);
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
            this.windowInfo.isWindowFocused$delegate.setValue(Boolean.valueOf(view.hasWindowFocus()));
            view.getViewTreeObserver().addOnWindowFocusChangeListener(composeViewContext$callback$1);
        }
    }

    public final void onConfigurationChanged$ui(Configuration configuration) {
        int updateFrom = this.currentConfiguration.updateFrom(configuration);
        if (updateFrom != 0) {
            Iterator it = this.imageVectorCache.map.entrySet().iterator();
            while (it.hasNext()) {
                ImageVectorCache.ImageVectorEntry imageVectorEntry = (ImageVectorCache.ImageVectorEntry) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (imageVectorEntry == null || Configuration.needNewResources(updateFrom, imageVectorEntry.configFlags)) {
                    it.remove();
                }
            }
            this.configuration.setValue(new Configuration(configuration));
            ResourceIdCache resourceIdCache = this.resourceIdCache;
            synchronized (resourceIdCache) {
                resourceIdCache.resIdPathMap.clear();
            }
            if ((268435456 & updateFrom) != 0) {
                this.fontFamilyResolver.setValue(Operation$State.createFontFamilyResolver(this.view.getContext()));
            }
        }
    }
}
