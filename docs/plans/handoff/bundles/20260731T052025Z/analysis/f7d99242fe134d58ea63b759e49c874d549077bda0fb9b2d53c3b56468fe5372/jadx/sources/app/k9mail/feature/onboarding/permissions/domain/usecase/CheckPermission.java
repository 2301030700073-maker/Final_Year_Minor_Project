package app.k9mail.feature.onboarding.permissions.domain.usecase;

import android.content.Context;
import android.os.Build;
import androidx.tracing.TraceApi29Impl;
import app.k9mail.core.android.permissions.AndroidPermissionChecker;
import app.k9mail.core.android.permissions.Permission;
import app.k9mail.core.android.permissions.PermissionState;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CheckPermission {
    public final AndroidPermissionChecker permissionChecker;

    public CheckPermission(AndroidPermissionChecker androidPermissionChecker) {
        this.permissionChecker = androidPermissionChecker;
    }

    public final PermissionState invoke(Permission permission) {
        Context context = this.permissionChecker.context;
        int ordinal = permission.ordinal();
        PermissionState permissionState = PermissionState.Denied;
        PermissionState permissionState2 = PermissionState.Granted;
        if (ordinal == 0) {
            return TraceApi29Impl.checkSelfPermission(context, "android.permission.READ_CONTACTS") == 0 ? permissionState2 : permissionState;
        }
        if (ordinal == 1) {
            return Build.VERSION.SDK_INT >= 33 ? TraceApi29Impl.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") == 0 ? permissionState2 : permissionState : PermissionState.GrantedImplicitly;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }
}
