package com.android.systemui.plugins.shared;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public interface LauncherOverlayManager extends Application.ActivityLifecycleCallbacks {

    public interface LauncherOverlay {
        void onScrollChange(float f, boolean z);

        void onScrollInteractionBegin();

        void onScrollInteractionEnd();

        void setOverlayCallbacks(LauncherOverlayCallbacks launcherOverlayCallbacks);
    }

    public interface LauncherOverlayCallbacks {
        void onScrollChanged(float f);
    }

    default void dump(String str, PrintWriter printWriter) {
    }

    default void hideOverlay(int i) {
    }

    default void hideOverlay(boolean z) {
        hideOverlay(z ? 200 : 0);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    default void onActivityStopped(Activity activity) {
    }

    default void onAttachedToWindow() {
    }

    default void onDetachedFromWindow() {
    }

    default void onDeviceProvideChanged() {
    }

    default void openOverlay() {
    }

    default boolean startSearch(byte[] bArr, Bundle bundle) {
        return false;
    }
}
