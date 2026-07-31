package net.thunderbird.feature.notification.api.ui.action;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.R;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.notification.api.ui.icon.NotificationIcon;
import net.thunderbird.feature.notification.resources.api.String0_commonMainKt;
import org.jetbrains.compose.resources.StringResource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NotificationAction {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AssignSentFolder extends NotificationAction {
        public final String accountUuid;
        public final StringResource labelResource;

        public AssignSentFolder(String str) {
            str.getClass();
            this.accountUuid = str;
            this.labelResource = (StringResource) String0_commonMainKt.notification_action_assign_sent_folder$delegate.getValue();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AssignSentFolder) && Intrinsics.areEqual(this.accountUuid, ((AssignSentFolder) obj).accountUuid);
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final NotificationIcon getIcon() {
            return null;
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final StringResource getLabelResource() {
            return this.labelResource;
        }

        public final int hashCode() {
            return this.accountUuid.hashCode();
        }

        public final String toString() {
            return CameraDevices$CC.m("AssignSentFolder(accountUuid=", this.accountUuid, ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OpenNotificationCentre extends NotificationAction {
        public static final OpenNotificationCentre INSTANCE = new OpenNotificationCentre();
        public static final StringResource labelResource = (StringResource) String0_commonMainKt.banner_inline_notification_open_notifications$delegate.getValue();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OpenNotificationCentre);
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final NotificationIcon getIcon() {
            return null;
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final StringResource getLabelResource() {
            return labelResource;
        }

        public final int hashCode() {
            return 864769666;
        }

        public final String toString() {
            return "OpenNotificationCentre";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Tap extends NotificationAction {
        public final NotificationIcon icon;
        public final StringResource labelResource;
        public final NotificationAction override;

        public Tap(NotificationAction notificationAction) {
            this.override = notificationAction;
            this.icon = notificationAction != null ? notificationAction.getIcon() : null;
            this.labelResource = notificationAction != null ? notificationAction.getLabelResource() : null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Tap) && Intrinsics.areEqual(this.override, ((Tap) obj).override);
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final NotificationIcon getIcon() {
            return this.icon;
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final StringResource getLabelResource() {
            return this.labelResource;
        }

        public final int hashCode() {
            NotificationAction notificationAction = this.override;
            if (notificationAction == null) {
                return 0;
            }
            return notificationAction.hashCode();
        }

        public final String toString() {
            return "Tap(override=" + this.override + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateIncomingServerSettings extends NotificationAction {
        public final int accountNumber;
        public final String accountUuid;
        public final NotificationIcon icon;
        public final StringResource labelResource;

        public UpdateIncomingServerSettings(String str, int i) {
            str.getClass();
            this.accountUuid = str;
            this.accountNumber = i;
            this.icon = new NotificationIcon(Integer.valueOf(R.drawable.ic_settings), null);
            this.labelResource = (StringResource) String0_commonMainKt.notification_action_update_server_settings$delegate.getValue();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateIncomingServerSettings)) {
                return false;
            }
            UpdateIncomingServerSettings updateIncomingServerSettings = (UpdateIncomingServerSettings) obj;
            return Intrinsics.areEqual(this.accountUuid, updateIncomingServerSettings.accountUuid) && this.accountNumber == updateIncomingServerSettings.accountNumber;
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final NotificationIcon getIcon() {
            return this.icon;
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final StringResource getLabelResource() {
            return this.labelResource;
        }

        public final int hashCode() {
            return (this.accountUuid.hashCode() * 31) + this.accountNumber;
        }

        public final String toString() {
            return "UpdateIncomingServerSettings(accountUuid=" + this.accountUuid + ", accountNumber=" + this.accountNumber + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class UpdateOutgoingServerSettings extends NotificationAction {
        public final int accountNumber;
        public final String accountUuid;
        public final NotificationIcon icon;
        public final StringResource labelResource;

        public UpdateOutgoingServerSettings(String str, int i) {
            str.getClass();
            this.accountUuid = str;
            this.accountNumber = i;
            this.icon = new NotificationIcon(Integer.valueOf(R.drawable.ic_settings), null);
            this.labelResource = (StringResource) String0_commonMainKt.notification_action_update_server_settings$delegate.getValue();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateOutgoingServerSettings)) {
                return false;
            }
            UpdateOutgoingServerSettings updateOutgoingServerSettings = (UpdateOutgoingServerSettings) obj;
            return Intrinsics.areEqual(this.accountUuid, updateOutgoingServerSettings.accountUuid) && this.accountNumber == updateOutgoingServerSettings.accountNumber;
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final NotificationIcon getIcon() {
            return this.icon;
        }

        @Override // net.thunderbird.feature.notification.api.ui.action.NotificationAction
        public final StringResource getLabelResource() {
            return this.labelResource;
        }

        public final int hashCode() {
            return (this.accountUuid.hashCode() * 31) + this.accountNumber;
        }

        public final String toString() {
            return "UpdateOutgoingServerSettings(accountUuid=" + this.accountUuid + ", accountNumber=" + this.accountNumber + ")";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object resolveTitle$suspendImpl(net.thunderbird.feature.notification.api.ui.action.NotificationAction r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof net.thunderbird.feature.notification.api.ui.action.NotificationAction$resolveTitle$1
            if (r0 == 0) goto L13
            r0 = r5
            net.thunderbird.feature.notification.api.ui.action.NotificationAction$resolveTitle$1 r0 = (net.thunderbird.feature.notification.api.ui.action.NotificationAction$resolveTitle$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.notification.api.ui.action.NotificationAction$resolveTitle$1 r0 = new net.thunderbird.feature.notification.api.ui.action.NotificationAction$resolveTitle$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            net.thunderbird.feature.notification.api.ui.action.NotificationAction r4 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L50
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            org.jetbrains.compose.resources.StringResource r5 = r4.getLabelResource()
            if (r5 == 0) goto L56
            r0.L$0 = r4
            r0.label = r3
            androidx.compose.runtime.StaticProvidableCompositionLocal r1 = org.jetbrains.compose.resources.ResourceReaderKt.LocalResourceReader
            org.jetbrains.compose.resources.ResourceEnvironmentKt$getResourceEnvironment$1 r1 = org.jetbrains.compose.resources.ResourceEnvironmentKt.getResourceEnvironment
            java.lang.Object r1 = r1.invoke()
            org.jetbrains.compose.resources.ResourceEnvironment r1 = (org.jetbrains.compose.resources.ResourceEnvironment) r1
            org.jetbrains.compose.resources.DefaultAndroidResourceReader r3 = org.jetbrains.compose.resources.DefaultAndroidResourceReader.INSTANCE
            java.lang.Object r5 = kotlin.text.CharsKt__CharKt.loadString(r5, r3, r1, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r0) goto L50
            return r0
        L50:
            java.lang.String r5 = (java.lang.String) r5
            if (r5 != 0) goto L55
            goto L56
        L55:
            return r5
        L56:
            r4.getClass()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.api.ui.action.NotificationAction.resolveTitle$suspendImpl(net.thunderbird.feature.notification.api.ui.action.NotificationAction, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public abstract NotificationIcon getIcon();

    public abstract StringResource getLabelResource();
}
