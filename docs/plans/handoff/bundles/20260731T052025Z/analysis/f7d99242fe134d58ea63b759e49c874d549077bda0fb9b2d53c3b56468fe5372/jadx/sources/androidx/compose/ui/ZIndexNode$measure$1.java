package androidx.compose.ui;

import android.os.Looper;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.View;
import androidx.compose.animation.ContentTransform;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.foundation.text.input.internal.RecordingInputConnection;
import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.graphics.BlockGraphicsLayerModifier;
import androidx.compose.ui.graphics.SimpleGraphicsLayerModifier;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.WeakReference;
import androidx.compose.ui.platform.AndroidPlatformTextInputSession;
import androidx.compose.ui.platform.AndroidUiDispatcher;
import androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1;
import androidx.compose.ui.platform.ComposeViewContext;
import androidx.compose.ui.platform.InputMethodSession;
import androidx.compose.ui.platform.WrappedComposition;
import androidx.compose.ui.platform.WrappedComposition$setContent$1$2;
import androidx.compose.ui.text.input.NullableInputConnectionWrapperApi21;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$4;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1;
import androidx.compose.ui.window.PopupLayout;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ZIndexNode$measure$1 extends Lambda implements Function1 {
    public final /* synthetic */ Object $placeable;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ZIndexNode$measure$1(int i, Object obj, Object obj2) {
        super(1);
        this.$r8$classId = i;
        this.$placeable = obj;
        this.this$0 = obj2;
    }

    private final Object invoke$androidx$compose$ui$platform$AndroidUiFrameClock$withFrameNanos$2$1(Object obj) {
        AndroidUiDispatcher androidUiDispatcher = (AndroidUiDispatcher) this.$placeable;
        AndroidUiFrameClock$withFrameNanos$2$callback$1 androidUiFrameClock$withFrameNanos$2$callback$1 = (AndroidUiFrameClock$withFrameNanos$2$callback$1) this.this$0;
        synchronized (androidUiDispatcher.lock) {
            androidUiDispatcher.toRunOnFrame.remove(androidUiFrameClock$withFrameNanos$2$callback$1);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        RecordingInputConnection recordingInputConnection;
        int i = 1;
        switch (this.$r8$classId) {
            case 0:
                ((Placeable.PlacementScope) obj).place((Placeable) this.$placeable, 0, 0, ((ZIndexNode) this.this$0).zIndex);
                return Unit.INSTANCE;
            case 1:
                ((Placeable.PlacementScope) obj).place((Placeable) this.$placeable, 0, 0, ((ContentTransform) this.this$0).targetContentZIndex$delegate.getFloatValue());
                return Unit.INSTANCE;
            case 2:
                Placeable.PlacementScope.placeWithLayer$default((Placeable.PlacementScope) obj, (Placeable) this.$placeable, 0, 0, ((BlockGraphicsLayerModifier) this.this$0).layerBlock, 4);
                return Unit.INSTANCE;
            case 3:
                Placeable.PlacementScope.placeWithLayer$default((Placeable.PlacementScope) obj, (Placeable) this.$placeable, 0, 0, ((SimpleGraphicsLayerModifier) this.this$0).layerBlock, 4);
                return Unit.INSTANCE;
            case 4:
                MotionEvent motionEvent = (MotionEvent) obj;
                PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) this.this$0;
                if (motionEvent.getActionMasked() == 0) {
                    ((Dispatcher) this.$placeable).readyAsyncCalls = ((Boolean) ((AndroidViewHolder$layoutNode$1$4) pointerInteropFilter.getOnTouchEvent()).invoke(motionEvent)).booleanValue() ? PointerInteropFilter.DispatchToViewState.Dispatching : PointerInteropFilter.DispatchToViewState.NotDispatching;
                } else {
                    ((AndroidViewHolder$layoutNode$1$4) pointerInteropFilter.getOnTouchEvent()).invoke(motionEvent);
                }
                return Unit.INSTANCE;
            case 5:
                return new InputMethodSession((LegacyTextInputMethodRequest) this.$placeable, new LayoutNode$_foldedChildren$1(8, (AndroidPlatformTextInputSession) this.this$0));
            case 6:
                InputMethodSession inputMethodSession = (InputMethodSession) this.$placeable;
                synchronized (inputMethodSession.lock) {
                    try {
                        inputMethodSession.disposed = true;
                        MutableVector mutableVector = inputMethodSession.connections;
                        Object[] objArr = mutableVector.content;
                        int i2 = mutableVector.size;
                        for (int i3 = 0; i3 < i2; i3++) {
                            NullableInputConnectionWrapperApi21 nullableInputConnectionWrapperApi21 = (NullableInputConnectionWrapperApi21) ((WeakReference) objArr[i3]).get();
                            if (nullableInputConnectionWrapperApi21 != null && (recordingInputConnection = nullableInputConnectionWrapperApi21.delegate) != null) {
                                nullableInputConnectionWrapperApi21.closeDelegate(recordingInputConnection);
                                nullableInputConnectionWrapperApi21.delegate = null;
                            }
                        }
                        inputMethodSession.connections.clear();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                TextInputService textInputService = ((AndroidPlatformTextInputSession) this.this$0).textInputService;
                textInputService._currentInputSession.set(null);
                textInputService.platformTextInputService.stopInput();
                return Unit.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return invoke$androidx$compose$ui$platform$AndroidUiFrameClock$withFrameNanos$2$1(obj);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Choreographer) ((BroadcastFrameClock) this.$placeable).onNewAwaiters).removeFrameCallback((AndroidUiFrameClock$withFrameNanos$2$callback$1) this.this$0);
                return Unit.INSTANCE;
            case 9:
                ComposeViewContext composeViewContext = (ComposeViewContext) obj;
                Function2 function2 = (Function2) this.this$0;
                WrappedComposition wrappedComposition = (WrappedComposition) this.$placeable;
                if (!wrappedComposition.disposed) {
                    LifecycleOwner lifecycleOwner = composeViewContext.lifecycleOwner;
                    View view = composeViewContext.view;
                    Lifecycle lifecycle = lifecycleOwner.getLifecycle();
                    wrappedComposition.lastContent = function2;
                    if (wrappedComposition.addedToLifecycle == null) {
                        if (Intrinsics.areEqual(Looper.myLooper(), view.getHandler().getLooper())) {
                            wrappedComposition.addedToLifecycle = lifecycle;
                            lifecycle.addObserver(wrappedComposition);
                        } else {
                            view.post(new Processor$$ExternalSyntheticLambda2(i, wrappedComposition, lifecycle));
                        }
                    } else if (((LifecycleRegistry) lifecycle).state.compareTo(Lifecycle.State.CREATED) >= 0) {
                        wrappedComposition.original.setContent(new ComposableLambdaImpl(-1723985096, new WrappedComposition$setContent$1$2(wrappedComposition, composeViewContext, function2), true));
                    }
                }
                return Unit.INSTANCE;
            case 10:
                ((LayoutNode) this.$placeable).setModifier(((Modifier) obj).then((Modifier) this.this$0));
                return Unit.INSTANCE;
            default:
                PopupLayout popupLayout = (PopupLayout) this.$placeable;
                popupLayout.setPositionProvider((PopupPositionProvider) this.this$0);
                popupLayout.updatePosition();
                return new AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1();
        }
    }
}
