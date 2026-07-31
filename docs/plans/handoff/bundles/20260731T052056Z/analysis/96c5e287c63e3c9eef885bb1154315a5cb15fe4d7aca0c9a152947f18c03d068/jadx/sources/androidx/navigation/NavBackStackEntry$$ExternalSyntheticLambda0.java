package androidx.navigation;

import android.app.RemoteAction;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.InputMethodManager;
import androidx.activity.OnBackPressedDispatcher;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollFactory;
import androidx.compose.foundation.CombinedClickableNode;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.ScrollableAreaNode;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.selection.ToggleableNode;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.snapshots.SnapshotStateObserver$ObservedScopeMap;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import coil3.svg.internal.AndroidSvg;
import java.util.Arrays;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.NotCompleted;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NavBackStackEntry$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ NavBackStackEntry$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z;
        boolean z2;
        int i;
        boolean z3 = true;
        switch (this.$r8$classId) {
            case 0:
                NavBackStackEntryImpl navBackStackEntryImpl = ((NavBackStackEntry) this.f$0).impl;
                if (!navBackStackEntryImpl.savedStateRegistryAttached) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
                    return null;
                }
                if (navBackStackEntryImpl.lifecycle.state == Lifecycle$State.DESTROYED) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.");
                    return null;
                }
                NavBackStackEntry navBackStackEntry = navBackStackEntryImpl.entry;
                ViewModelProvider$Factory viewModelProvider$Factory = (ViewModelProvider$Factory) navBackStackEntryImpl.navResultSavedStateFactory$delegate.getValue();
                CreationExtras viewModelCreationExtras = ViewModelKt.getViewModelCreationExtras(navBackStackEntry);
                viewModelProvider$Factory.getClass();
                viewModelCreationExtras.getClass();
                ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(navBackStackEntry.getViewModelStore(), viewModelProvider$Factory, viewModelCreationExtras);
                KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(NavBackStackEntryImpl.SavedStateViewModel.class);
                String qualifiedName = orCreateKotlinClass.getQualifiedName();
                if (qualifiedName != null) {
                    return ((NavBackStackEntryImpl.SavedStateViewModel) imageLoader$Builder.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass)).handle;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
                return null;
            case 1:
                return new OnBackPressedDispatcher.OnBackPressedEventInput((OnBackPressedDispatcher) this.f$0);
            case 2:
                return Float.valueOf(ArcSplineKt.getDurationScale(((CoroutineScope) this.f$0).getCoroutineContext()));
            case 3:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) this.f$0;
                Transition transition = seekableTransitionState.transition;
                seekableTransitionState.totalDurationNanos = transition != null ? ((Number) transition.totalDurationNanos$delegate.getValue()).longValue() : 0L;
                return Unit.INSTANCE;
            case 4:
                Function0 function0 = ((CombinedClickableNode) this.f$0).onLongClick;
                if (function0 != null) {
                    function0.invoke();
                }
                return Boolean.TRUE;
            case 5:
                ScrollableAreaNode scrollableAreaNode = (ScrollableAreaNode) this.f$0;
                AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) HitTestResultKt.currentValueOf(scrollableAreaNode, OverscrollKt.LocalOverscrollFactory);
                scrollableAreaNode.localOverscrollFactory = androidEdgeEffectOverscrollFactory;
                scrollableAreaNode.localOverscrollFactoryCreatedOverscrollEffect = androidEdgeEffectOverscrollFactory != null ? new AndroidEdgeEffectOverscrollEffect(androidEdgeEffectOverscrollFactory.context, androidEdgeEffectOverscrollFactory.density, androidEdgeEffectOverscrollFactory.glowColor, androidEdgeEffectOverscrollFactory.glowDrawPadding) : null;
                return Unit.INSTANCE;
            case 6:
                LazyLayoutItemAnimator.DisplayingDisappearingItemsNode displayingDisappearingItemsNode = ((LazyLayoutItemAnimator) this.f$0).displayingNode;
                if (displayingDisappearingItemsNode != null) {
                    HitTestResultKt.invalidateDraw(displayingDisappearingItemsNode);
                }
                return Unit.INSTANCE;
            case 7:
                return (Rect) this.f$0;
            case 8:
                ((ToggleableNode) this.f$0).onValueChange.invoke(Boolean.valueOf(!r0.value));
                return Unit.INSTANCE;
            case 9:
                return (AnnotatedString) this.f$0;
            case 10:
                return ((LegacyTextFieldState) this.f$0).getLayoutResult();
            case 11:
                return new TextFieldScrollerPosition((Orientation) this.f$0, RecyclerView.DECELERATION_RATE);
            case 12:
                return new IntOffset(((IntRect) this.f$0).m720getTopLeftnOccac());
            case IMAGE_VALUE:
                return ((TextContextMenuDataProvider) this.f$0).data();
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((TextContextMenuSession) this.f$0).close();
                return Unit.INSTANCE;
            case 15:
                TextContextMenuHelperApi28.textClassificationItem$lambda$4((RemoteAction) this.f$0);
                return Unit.INSTANCE;
            case LAZY_VERTICAL_GRID_VALUE:
                TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) this.f$0;
                return textContextMenuToolbarHandlerNode.isAttached ? TextContextMenuModifierKt.collectTextContextMenuData(textContextMenuToolbarHandlerNode) : TextContextMenuData.Empty;
            case VERTICAL_GRID_ITEM_VALUE:
                Object systemService = ((View) ((CardView.AnonymousClass1) this.f$0).mCardBackground).getContext().getSystemService("input_method");
                systemService.getClass();
                return (InputMethodManager) systemService;
            case RADIO_GROUP_VALUE:
                return new BaseInputConnection(((LegacyTextInputMethodRequest) this.f$0).view, false);
            case RADIO_BUTTON_VALUE:
                TextAnnotatedStringNode textAnnotatedStringNode = (TextAnnotatedStringNode) this.f$0;
                textAnnotatedStringNode.textSubstitution = null;
                HitTestResultKt.invalidateSemantics(textAnnotatedStringNode);
                HitTestResultKt.invalidateMeasurement(textAnnotatedStringNode);
                HitTestResultKt.invalidateDraw(textAnnotatedStringNode);
                return Boolean.TRUE;
            case RADIO_ROW_VALUE:
                TextStringSimpleNode textStringSimpleNode = (TextStringSimpleNode) this.f$0;
                textStringSimpleNode.textSubstitution = null;
                HitTestResultKt.invalidateSemantics(textStringSimpleNode);
                HitTestResultKt.invalidateMeasurement(textStringSimpleNode);
                HitTestResultKt.invalidateDraw(textStringSimpleNode);
                return Boolean.TRUE;
            case RADIO_COLUMN_VALUE:
                HitTestResultKt.invalidateDraw((AndroidRippleNode) this.f$0);
                return Unit.INSTANCE;
            case SIZE_BOX_VALUE:
                CancellableContinuationImpl cancellableContinuationImpl = ((SnackbarHostState.SnackbarDataImpl) this.f$0).continuation;
                if (cancellableContinuationImpl.getState$kotlinx_coroutines_core() instanceof NotCompleted) {
                    cancellableContinuationImpl.resumeWith(SnackbarResult.Dismissed);
                }
                return Boolean.TRUE;
            case 23:
                return Float.valueOf(((FloatProducer) this.f$0).invoke() < 1.0f ? 0.3f : 1.0f);
            case 24:
                SaveableHolder saveableHolder = (SaveableHolder) this.f$0;
                Saver saver = saveableHolder.saver;
                Object obj = saveableHolder.value;
                if (obj != null) {
                    return saver.save(saveableHolder, obj);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Value should be initialized");
                return null;
            case 25:
                AndroidSvg androidSvg = ((SaveableStateRegistryWrapper) this.f$0)._controller;
                if (androidSvg == null) {
                    return null;
                }
                Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                androidSvg.performSave(bundleOf);
                if (bundleOf.isEmpty()) {
                    return null;
                }
                return bundleOf;
            case 26:
                PreferenceManager preferenceManager = (PreferenceManager) this.f$0;
                while (true) {
                    synchronized (preferenceManager.mOnPreferenceTreeClickListener) {
                        try {
                            if (preferenceManager.mNoCommit) {
                                z = z3;
                            } else {
                                preferenceManager.mNoCommit = z3;
                                try {
                                    MutableVector mutableVector = (MutableVector) preferenceManager.mPreferenceScreen;
                                    Object[] objArr = mutableVector.content;
                                    int i2 = mutableVector.size;
                                    int i3 = 0;
                                    while (i3 < i2) {
                                        SnapshotStateObserver$ObservedScopeMap snapshotStateObserver$ObservedScopeMap = (SnapshotStateObserver$ObservedScopeMap) objArr[i3];
                                        MutableScatterSet mutableScatterSet = snapshotStateObserver$ObservedScopeMap.invalidated;
                                        Function1 function1 = snapshotStateObserver$ObservedScopeMap.onChanged;
                                        Object[] objArr2 = mutableScatterSet.elements;
                                        long[] jArr = mutableScatterSet.metadata;
                                        int length = jArr.length - 2;
                                        if (length >= 0) {
                                            int i4 = 0;
                                            while (true) {
                                                long j = jArr[i4];
                                                boolean z4 = z3;
                                                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i5 = 8;
                                                    int i6 = 8 - ((~(i4 - length)) >>> 31);
                                                    z2 = z4;
                                                    int i7 = 0;
                                                    while (i7 < i6) {
                                                        if ((j & 255) < 128) {
                                                            i = i5;
                                                            function1.invoke(objArr2[(i4 << 3) + i7]);
                                                        } else {
                                                            i = i5;
                                                        }
                                                        j >>= i;
                                                        i7++;
                                                        i5 = i;
                                                    }
                                                    if (i6 == i5) {
                                                    }
                                                } else {
                                                    z2 = z4;
                                                }
                                                if (i4 != length) {
                                                    i4++;
                                                    z3 = z2;
                                                }
                                            }
                                        } else {
                                            z2 = z3;
                                        }
                                        mutableScatterSet.clear();
                                        i3++;
                                        z3 = z2;
                                    }
                                    z = z3;
                                    preferenceManager.mNoCommit = false;
                                } catch (Throwable th) {
                                    preferenceManager.mNoCommit = false;
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    if (!preferenceManager.drainChanges()) {
                        return Unit.INSTANCE;
                    }
                    z3 = z;
                }
            case 27:
                ShaderBrushSpan shaderBrushSpan = (ShaderBrushSpan) this.f$0;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = shaderBrushSpan.size$delegate;
                if (((Size) parcelableSnapshotMutableState.getValue()).packedValue == 9205357640488583168L || Size.m398isEmptyimpl(((Size) parcelableSnapshotMutableState.getValue()).packedValue)) {
                    return null;
                }
                return shaderBrushSpan.shaderBrush.mo422createShaderuvyYCjk(((Size) parcelableSnapshotMutableState.getValue()).packedValue);
            case 28:
                return (TextForegroundStyle) this.f$0;
            default:
                return ViewModelKt.getSavedStateHandlesVM((ViewModelStoreOwner) this.f$0);
        }
    }
}
