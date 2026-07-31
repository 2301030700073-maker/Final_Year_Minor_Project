package androidx.compose.ui.node;

import android.os.Trace;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.InputMethodManager;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.animation.EnterExitState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.platform.ComposeViewContext;
import androidx.compose.ui.platform.DerivedSize;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.window.PopupLayout;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.core.PreferenceDataStore;
import androidx.glance.appwidget.GlanceAppWidgetManager;
import androidx.work.Data;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.JobKt;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LayoutNode$_foldedChildren$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LayoutNode$_foldedChildren$1(int i, Object obj) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        CompositionImpl compositionImpl;
        LayoutCoordinates parentLayoutCoordinates;
        PreferenceDataStore preferenceDataStore;
        LayoutCoordinates layoutCoordinates = null;
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = ((LayoutNode) this.this$0).layoutDelegate;
                layoutNodeLayoutDelegate.measurePassDelegate.childDelegatesDirty = true;
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.childDelegatesDirty = true;
                }
                return Unit.INSTANCE;
            case 1:
                Transition transition = (Transition) this.this$0;
                Object currentState = transition.transitionState.getCurrentState();
                EnterExitState enterExitState = EnterExitState.PostExit;
                if (currentState == enterExitState && transition.targetState$delegate.getValue() == enterExitState) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 2:
                ((FocusTargetNode) this.this$0).fetchFocusProperties$ui();
                return Unit.INSTANCE;
            case 3:
                VectorPainter vectorPainter = (VectorPainter) this.this$0;
                Unit unit = Unit.INSTANCE;
                vectorPainter.drawInvalidation$delegate.setValue(unit);
                return unit;
            case 4:
                return ((NestedScrollDispatcher) this.this$0).scope;
            case 5:
                return ((NestedScrollNode) this.this$0).getNestedCoroutineScope();
            case 6:
                LayoutNodeSubcompositionsState.NodeState nodeState = (LayoutNodeSubcompositionsState.NodeState) this.this$0;
                if (!((Boolean) nodeState.activeState.getValue()).booleanValue() && (compositionImpl = nodeState.composition) != null) {
                    compositionImpl.deactivate();
                }
                return Unit.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                LayoutNodeSubcompositionsState state = ((SubcomposeLayoutState) this.this$0).getState();
                LayoutNode layoutNode = state.root;
                if (state.reusableCount != ((MutableVector) ((MutableObjectList.ObjectListMutableList) layoutNode.getFoldedChildren$ui()).objectList).size) {
                    MutableScatterMap mutableScatterMap = state.nodeToNodeState;
                    Object[] objArr = mutableScatterMap.values;
                    long[] jArr = mutableScatterMap.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i = 0;
                        while (true) {
                            long j = jArr[i];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i2 = 8 - ((~(i - length)) >>> 31);
                                for (int i3 = 0; i3 < i2; i3++) {
                                    if ((255 & j) < 128) {
                                        ((LayoutNodeSubcompositionsState.NodeState) objArr[(i << 3) + i3]).forceRecompose = true;
                                    }
                                    j >>= 8;
                                }
                                if (i2 != 8) {
                                }
                            }
                            if (i != length) {
                                i++;
                            }
                        }
                    }
                    if (layoutNode.lookaheadRoot != null) {
                        if (!layoutNode.layoutDelegate.lookaheadMeasurePending) {
                            LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, false, 7);
                        }
                    } else if (!layoutNode.getMeasurePending$ui()) {
                        LayoutNode.requestRemeasure$ui$default(layoutNode, false, 7);
                    }
                }
                return Unit.INSTANCE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                JobKt.cancel(((AndroidPlatformTextInputSession) this.this$0).coroutineScope, (CancellationException) null);
                return Unit.INSTANCE;
            case 9:
                return Unit.INSTANCE;
            case 10:
                ComposeViewContext composeViewContext = (ComposeViewContext) this.this$0;
                boolean m768equalsimpl0 = IntSize.m768equalsimpl0(0L, 0L);
                View view = composeViewContext.view;
                return m768equalsimpl0 ? TestTagKt.calculateWindowSize(view) : new DerivedSize(0L, Modifier.CC.m390$default$toDpSizekrfVVM(Validate.m1072toSizeozmzZPI(0L), Data.Companion.Density(view.getContext())));
            case 11:
                ManagedRetainedValuesStore managedRetainedValuesStore = (ManagedRetainedValuesStore) ((LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry) this.this$0)._retainedValuesStore.this$0;
                if (!managedRetainedValuesStore.isDisposed) {
                    if (managedRetainedValuesStore.isContentComposed) {
                        PreconditionsKt.throwIllegalStateException("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                    }
                    managedRetainedValuesStore.purgeUnusedExitedValues();
                    managedRetainedValuesStore.isContentComposed = true;
                }
                return Unit.INSTANCE;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Function0) ((Ref$ObjectRef) this.this$0).element).invoke();
                return Unit.INSTANCE;
            case 13:
                RectManager rectManager = (RectManager) this.this$0;
                rectManager.dispatchToken = null;
                Trace.beginSection("OnPositionedDispatch");
                try {
                    rectManager.dispatchCallbacks();
                    Trace.endSection();
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            case 14:
                Object systemService = ((View) ((MenuHostHelper) this.this$0).mOnInvalidateMenuCallback).getContext().getSystemService("input_method");
                systemService.getClass();
                return (InputMethodManager) systemService;
            case OffsetKt.Horizontal /* 15 */:
                return new BaseInputConnection(((TextInputServiceAndroid) this.this$0).view, false);
            case 16:
                return (Rect) this.this$0;
            case 17:
                PopupLayout popupLayout = (PopupLayout) this.this$0;
                parentLayoutCoordinates = popupLayout.getParentLayoutCoordinates();
                if (parentLayoutCoordinates != null && parentLayoutCoordinates.isAttached$1()) {
                    layoutCoordinates = parentLayoutCoordinates;
                }
                if (layoutCoordinates != null && popupLayout.m785getPopupContentSizebOM6tXw() != null) {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                GlanceAppWidgetManager glanceAppWidgetManager = (GlanceAppWidgetManager) this.this$0;
                GlanceAppWidgetManager.Companion companion = GlanceAppWidgetManager.Companion;
                synchronized (companion) {
                    preferenceDataStore = GlanceAppWidgetManager.dataStoreSingleton;
                    if (preferenceDataStore == null) {
                        preferenceDataStore = GlanceAppWidgetManager.Companion.access$getAppManagerDataStore(companion, glanceAppWidgetManager.context);
                        GlanceAppWidgetManager.dataStoreSingleton = preferenceDataStore;
                    }
                }
                return preferenceDataStore;
        }
    }
}
