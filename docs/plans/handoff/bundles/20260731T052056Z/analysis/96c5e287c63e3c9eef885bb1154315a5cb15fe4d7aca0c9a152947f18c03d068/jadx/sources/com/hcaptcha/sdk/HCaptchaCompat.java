package com.hcaptcha.sdk;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.CursorAnchorInfo;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.android.BoringLayoutFactory33$$ExternalSyntheticApiModelOutline0;
import androidx.compose.ui.window.Api33Impl$$ExternalSyntheticLambda0;
import androidx.compose.ui.window.PopupLayout;
import com.hcaptcha.sdk.HCaptcha;
import java.io.Serializable;
import java.util.ArrayList;
import org.wikipedia.activity.BaseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class HCaptchaCompat {
    public static ApplicationInfo getApplicationInfo(BaseActivity baseActivity) {
        return Build.VERSION.SDK_INT >= 33 ? baseActivity.getPackageManager().getApplicationInfo(baseActivity.getPackageName(), PackageManager.ApplicationInfoFlags.of(128L)) : baseActivity.getPackageManager().getApplicationInfo(baseActivity.getPackageName(), 128);
    }

    public static Parcelable getParcelable(Bundle bundle) {
        return Build.VERSION.SDK_INT >= 33 ? (Parcelable) bundle.getParcelable("hCaptchaDialogListener", HCaptcha.AnonymousClass1.class) : bundle.getParcelable("hCaptchaDialogListener");
    }

    public static ArrayList getParcelableArrayList(Bundle bundle, String str, Class cls) {
        return bundle.getParcelableArrayList(str, cls);
    }

    public static Object getParcelableExtra(Intent intent, String str, Class cls) {
        return intent.getParcelableExtra(str, cls);
    }

    public static Serializable getSerializable(Bundle bundle, String str, Class cls) {
        return Build.VERSION.SDK_INT >= 33 ? bundle.getSerializable(str, cls) : bundle.getSerializable(str);
    }

    public static String getUniqueId(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getUniqueId();
    }

    public static boolean isTextSelectable(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isTextSelectable();
    }

    public static final void maybeRegisterBackCallback(PopupLayout popupLayout, Object obj) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (!(obj instanceof OnBackInvokedCallback) || (findOnBackInvokedDispatcher = popupLayout.findOnBackInvokedDispatcher()) == null) {
            return;
        }
        findOnBackInvokedDispatcher.registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj);
    }

    public static final void maybeUnregisterBackCallback(PopupLayout popupLayout, Api33Impl$$ExternalSyntheticLambda0 api33Impl$$ExternalSyntheticLambda0) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (!Animation.CC.m23m((Object) api33Impl$$ExternalSyntheticLambda0) || (findOnBackInvokedDispatcher = popupLayout.findOnBackInvokedDispatcher()) == null) {
            return;
        }
        findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(api33Impl$$ExternalSyntheticLambda0);
    }

    public static final void setEditorBoundsInfo(CursorAnchorInfo.Builder builder, Rect rect) {
        builder.setEditorBoundsInfo(BoringLayoutFactory33$$ExternalSyntheticApiModelOutline0.m().setEditorBounds(ColorKt.toAndroidRectF(rect)).setHandwritingBounds(ColorKt.toAndroidRectF(rect)).build());
    }

    public static void setExcludedFromSurfaces(ShortcutInfo.Builder builder) {
        builder.setExcludedFromSurfaces(0);
    }

    public static Object getParcelable(Bundle bundle, String str, Class cls) {
        return bundle.getParcelable(str, cls);
    }
}
