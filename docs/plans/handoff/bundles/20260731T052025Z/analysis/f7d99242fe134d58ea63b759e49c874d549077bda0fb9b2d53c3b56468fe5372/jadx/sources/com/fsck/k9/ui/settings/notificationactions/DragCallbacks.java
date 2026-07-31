package com.fsck.k9.ui.settings.notificationactions;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DragCallbacks {
    public final Function1 onDrag;
    public final Function0 onDragEnd;
    public final Function0 onDragStart;

    public DragCallbacks(Function0 function0, Function0 function02, Function1 function1) {
        function0.getClass();
        function1.getClass();
        function02.getClass();
        this.onDragStart = function0;
        this.onDrag = function1;
        this.onDragEnd = function02;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DragCallbacks)) {
            return false;
        }
        DragCallbacks dragCallbacks = (DragCallbacks) obj;
        return Intrinsics.areEqual(this.onDragStart, dragCallbacks.onDragStart) && Intrinsics.areEqual(this.onDrag, dragCallbacks.onDrag) && Intrinsics.areEqual(this.onDragEnd, dragCallbacks.onDragEnd);
    }

    public final int hashCode() {
        return this.onDragEnd.hashCode() + ((this.onDrag.hashCode() + (this.onDragStart.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "DragCallbacks(onDragStart=" + this.onDragStart + ", onDrag=" + this.onDrag + ", onDragEnd=" + this.onDragEnd + ")";
    }
}
