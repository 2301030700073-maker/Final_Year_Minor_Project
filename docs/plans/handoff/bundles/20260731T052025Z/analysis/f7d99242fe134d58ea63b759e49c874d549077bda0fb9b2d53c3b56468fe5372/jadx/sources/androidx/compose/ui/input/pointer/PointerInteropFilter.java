package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$4;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PointerInteropFilter implements Modifier.Element {
    public boolean disallowIntercept;
    public AndroidViewHolder$layoutNode$1$4 onTouchEvent;
    public final Dispatcher pointerInputFilter = new Dispatcher(this);
    public ProduceKt$awaitClose$4$1 requestDisallowInterceptTouchEvent;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DispatchToViewState {
        public static final /* synthetic */ DispatchToViewState[] $VALUES;
        public static final DispatchToViewState Dispatching;
        public static final DispatchToViewState NotDispatching;
        public static final DispatchToViewState Unknown;

        static {
            DispatchToViewState dispatchToViewState = new DispatchToViewState("Unknown", 0);
            Unknown = dispatchToViewState;
            DispatchToViewState dispatchToViewState2 = new DispatchToViewState("Dispatching", 1);
            Dispatching = dispatchToViewState2;
            DispatchToViewState dispatchToViewState3 = new DispatchToViewState("NotDispatching", 2);
            NotDispatching = dispatchToViewState3;
            $VALUES = new DispatchToViewState[]{dispatchToViewState, dispatchToViewState2, dispatchToViewState3};
        }

        public static DispatchToViewState valueOf(String str) {
            return (DispatchToViewState) Enum.valueOf(DispatchToViewState.class, str);
        }

        public static DispatchToViewState[] values() {
            return (DispatchToViewState[]) $VALUES.clone();
        }
    }

    @Override // androidx.compose.ui.Modifier
    public final boolean all(Function1 function1) {
        return ((Boolean) function1.invoke(this)).booleanValue();
    }

    @Override // androidx.compose.ui.Modifier
    public final Object foldIn(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    public final Function1 getOnTouchEvent() {
        AndroidViewHolder$layoutNode$1$4 androidViewHolder$layoutNode$1$4 = this.onTouchEvent;
        if (androidViewHolder$layoutNode$1$4 != null) {
            return androidViewHolder$layoutNode$1$4;
        }
        Intrinsics.throwUninitializedPropertyAccessException("onTouchEvent");
        throw null;
    }

    @Override // androidx.compose.ui.Modifier
    public final /* synthetic */ Modifier then(Modifier modifier) {
        return Modifier.CC.$default$then(this, modifier);
    }
}
