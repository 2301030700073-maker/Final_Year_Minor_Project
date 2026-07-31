package androidx.compose.foundation.layout;

import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ValueInsets implements WindowInsets {
    public final String name;
    public final ParcelableSnapshotMutableState value$delegate;

    public ValueInsets(InsetsValues insetsValues, String str) {
        this.name = str;
        this.value$delegate = Updater.mutableStateOf$default(insetsValues);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ValueInsets) {
            return Intrinsics.areEqual(getValue$foundation_layout(), ((ValueInsets) obj).getValue$foundation_layout());
        }
        return false;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getBottom(Density density) {
        return getValue$foundation_layout().bottom;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getLeft(Density density, LayoutDirection layoutDirection) {
        return getValue$foundation_layout().left;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getRight(Density density, LayoutDirection layoutDirection) {
        return getValue$foundation_layout().right;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int getTop(Density density) {
        return getValue$foundation_layout().top;
    }

    public final InsetsValues getValue$foundation_layout() {
        return (InsetsValues) this.value$delegate.getValue();
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    public final void setValue$foundation_layout(InsetsValues insetsValues) {
        this.value$delegate.setValue(insetsValues);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.name);
        sb.append("(left=");
        sb.append(getValue$foundation_layout().left);
        sb.append(", top=");
        sb.append(getValue$foundation_layout().top);
        sb.append(", right=");
        sb.append(getValue$foundation_layout().right);
        sb.append(", bottom=");
        return Animation.CC.m(sb, getValue$foundation_layout().bottom, ')');
    }
}
