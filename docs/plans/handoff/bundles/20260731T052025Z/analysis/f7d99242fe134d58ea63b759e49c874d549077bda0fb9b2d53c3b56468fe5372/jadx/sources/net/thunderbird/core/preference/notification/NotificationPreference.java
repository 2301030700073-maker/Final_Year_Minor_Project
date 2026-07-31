package net.thunderbird.core.preference.notification;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.preference.LockScreenNotificationVisibility;
import net.thunderbird.core.preference.NotificationQuickDelete;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationPreference {
    public final boolean isNotificationDuringQuietTimeEnabled;
    public final boolean isQuietTimeEnabled;
    public final boolean isShowContactPictureInNotification;
    public final boolean isSummaryDeleteActionEnabled;
    public final LockScreenNotificationVisibility lockScreenNotificationVisibility;
    public final int messageActionsCutoff;
    public final List messageActionsOrder;
    public final NotificationQuickDelete notificationQuickDeleteBehaviour;
    public final String quietTimeEnds;
    public final String quietTimeStarts;

    public NotificationPreference(boolean z, String str, String str2, boolean z2, List list, int i, boolean z3, boolean z4, NotificationQuickDelete notificationQuickDelete, LockScreenNotificationVisibility lockScreenNotificationVisibility) {
        list.getClass();
        notificationQuickDelete.getClass();
        lockScreenNotificationVisibility.getClass();
        this.isQuietTimeEnabled = z;
        this.quietTimeStarts = str;
        this.quietTimeEnds = str2;
        this.isNotificationDuringQuietTimeEnabled = z2;
        this.messageActionsOrder = list;
        this.messageActionsCutoff = i;
        this.isSummaryDeleteActionEnabled = z3;
        this.isShowContactPictureInNotification = z4;
        this.notificationQuickDeleteBehaviour = notificationQuickDelete;
        this.lockScreenNotificationVisibility = lockScreenNotificationVisibility;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v14, types: [java.util.List] */
    public static NotificationPreference copy$default(NotificationPreference notificationPreference, boolean z, String str, String str2, boolean z2, ArrayList arrayList, int i, boolean z3, boolean z4, LockScreenNotificationVisibility lockScreenNotificationVisibility, int i2) {
        if ((i2 & 1) != 0) {
            z = notificationPreference.isQuietTimeEnabled;
        }
        boolean z5 = z;
        if ((i2 & 2) != 0) {
            str = notificationPreference.quietTimeStarts;
        }
        String str3 = str;
        if ((i2 & 4) != 0) {
            str2 = notificationPreference.quietTimeEnds;
        }
        String str4 = str2;
        if ((i2 & 8) != 0) {
            z2 = notificationPreference.isNotificationDuringQuietTimeEnabled;
        }
        boolean z6 = z2;
        ArrayList arrayList2 = (i2 & 16) != 0 ? notificationPreference.messageActionsOrder : arrayList;
        int i3 = (i2 & 32) != 0 ? notificationPreference.messageActionsCutoff : i;
        boolean z7 = (i2 & 64) != 0 ? notificationPreference.isSummaryDeleteActionEnabled : z3;
        boolean z8 = (i2 & 128) != 0 ? notificationPreference.isShowContactPictureInNotification : z4;
        NotificationQuickDelete notificationQuickDelete = notificationPreference.notificationQuickDeleteBehaviour;
        LockScreenNotificationVisibility lockScreenNotificationVisibility2 = (i2 & 512) != 0 ? notificationPreference.lockScreenNotificationVisibility : lockScreenNotificationVisibility;
        notificationPreference.getClass();
        str3.getClass();
        str4.getClass();
        arrayList2.getClass();
        notificationQuickDelete.getClass();
        lockScreenNotificationVisibility2.getClass();
        return new NotificationPreference(z5, str3, str4, z6, arrayList2, i3, z7, z8, notificationQuickDelete, lockScreenNotificationVisibility2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationPreference)) {
            return false;
        }
        NotificationPreference notificationPreference = (NotificationPreference) obj;
        return this.isQuietTimeEnabled == notificationPreference.isQuietTimeEnabled && this.quietTimeStarts.equals(notificationPreference.quietTimeStarts) && this.quietTimeEnds.equals(notificationPreference.quietTimeEnds) && this.isNotificationDuringQuietTimeEnabled == notificationPreference.isNotificationDuringQuietTimeEnabled && Intrinsics.areEqual(this.messageActionsOrder, notificationPreference.messageActionsOrder) && this.messageActionsCutoff == notificationPreference.messageActionsCutoff && this.isSummaryDeleteActionEnabled == notificationPreference.isSummaryDeleteActionEnabled && this.isShowContactPictureInNotification == notificationPreference.isShowContactPictureInNotification && this.notificationQuickDeleteBehaviour == notificationPreference.notificationQuickDeleteBehaviour && this.lockScreenNotificationVisibility == notificationPreference.lockScreenNotificationVisibility;
    }

    public final int hashCode() {
        return this.lockScreenNotificationVisibility.hashCode() + ((this.notificationQuickDeleteBehaviour.hashCode() + ((((((CameraDevices$CC.m(this.messageActionsOrder, (Modifier.CC.m(Modifier.CC.m((this.isQuietTimeEnabled ? 1231 : 1237) * 31, this.quietTimeStarts, 31), this.quietTimeEnds, 31) + (this.isNotificationDuringQuietTimeEnabled ? 1231 : 1237)) * 31, 31) + this.messageActionsCutoff) * 31) + (this.isSummaryDeleteActionEnabled ? 1231 : 1237)) * 31) + (this.isShowContactPictureInNotification ? 1231 : 1237)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NotificationPreference(isQuietTimeEnabled=");
        sb.append(this.isQuietTimeEnabled);
        sb.append(", quietTimeStarts=");
        sb.append(this.quietTimeStarts);
        sb.append(", quietTimeEnds=");
        sb.append(this.quietTimeEnds);
        sb.append(", isNotificationDuringQuietTimeEnabled=");
        sb.append(this.isNotificationDuringQuietTimeEnabled);
        sb.append(", messageActionsOrder=");
        sb.append(this.messageActionsOrder);
        sb.append(", messageActionsCutoff=");
        sb.append(this.messageActionsCutoff);
        sb.append(", isSummaryDeleteActionEnabled=");
        ViewSizeResolver.CC.m(sb, this.isSummaryDeleteActionEnabled, ", isShowContactPictureInNotification=", this.isShowContactPictureInNotification, ", notificationQuickDeleteBehaviour=");
        sb.append(this.notificationQuickDeleteBehaviour);
        sb.append(", lockScreenNotificationVisibility=");
        sb.append(this.lockScreenNotificationVisibility);
        sb.append(")");
        return sb.toString();
    }
}
