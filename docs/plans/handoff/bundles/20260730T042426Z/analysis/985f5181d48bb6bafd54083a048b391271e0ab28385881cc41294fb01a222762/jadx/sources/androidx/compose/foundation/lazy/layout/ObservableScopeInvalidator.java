package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ObservableScopeInvalidator.kt */
/* loaded from: classes.dex */
public abstract class ObservableScopeInvalidator {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static MutableState m356constructorimpl(MutableState mutableState) {
        return mutableState;
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ MutableState m357constructorimpl$default(MutableState mutableState, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            mutableState = SnapshotStateKt.mutableStateOf(Unit.INSTANCE, SnapshotStateKt.neverEqualPolicy());
        }
        return m356constructorimpl(mutableState);
    }

    /* renamed from: attachToScope-impl, reason: not valid java name */
    public static final void m355attachToScopeimpl(MutableState mutableState) {
        mutableState.getValue();
    }

    /* renamed from: invalidateScope-impl, reason: not valid java name */
    public static final void m358invalidateScopeimpl(MutableState mutableState) {
        mutableState.setValue(Unit.INSTANCE);
    }
}
