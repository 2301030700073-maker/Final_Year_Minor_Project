package com.fsck.k9.ui.settings.notificationactions;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MoveActions {
    public final String moveDownLabel;
    public final String moveUpLabel;
    public final Function0 onMoveDown;
    public final Function0 onMoveUp;

    public MoveActions(String str, String str2, Function0 function0, Function0 function02) {
        str.getClass();
        str2.getClass();
        function0.getClass();
        function02.getClass();
        this.moveUpLabel = str;
        this.moveDownLabel = str2;
        this.onMoveUp = function0;
        this.onMoveDown = function02;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MoveActions)) {
            return false;
        }
        MoveActions moveActions = (MoveActions) obj;
        return Intrinsics.areEqual(this.moveUpLabel, moveActions.moveUpLabel) && Intrinsics.areEqual(this.moveDownLabel, moveActions.moveDownLabel) && Intrinsics.areEqual(this.onMoveUp, moveActions.onMoveUp) && Intrinsics.areEqual(this.onMoveDown, moveActions.onMoveDown);
    }

    public final int hashCode() {
        return this.onMoveDown.hashCode() + Config.CC.m(Modifier.CC.m(this.moveUpLabel.hashCode() * 31, this.moveDownLabel, 31), 31, this.onMoveUp);
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("MoveActions(moveUpLabel=", this.moveUpLabel, ", moveDownLabel=", this.moveDownLabel, ", onMoveUp=");
        m.append(this.onMoveUp);
        m.append(", onMoveDown=");
        m.append(this.onMoveDown);
        m.append(")");
        return m.toString();
    }
}
