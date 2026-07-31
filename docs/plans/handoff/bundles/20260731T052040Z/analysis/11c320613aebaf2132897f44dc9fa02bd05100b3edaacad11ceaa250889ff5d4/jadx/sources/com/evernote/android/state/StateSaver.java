package com.evernote.android.state;

import android.app.Application;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StateSaver {
    public static final String ANDROID_PREFIX = "android.";
    private static final StateSaverImpl IMPL = new StateSaverImpl(new LinkedHashMap());
    public static final String JAVA_PREFIX = "java.";
    public static final String SUFFIX = "$$StateSaver";

    private StateSaver() {
        throw new UnsupportedOperationException();
    }

    public static <T extends View> Parcelable restoreInstanceState(T t, Parcelable parcelable) {
        return IMPL.restoreInstanceState((StateSaverImpl) t, parcelable);
    }

    public static <T extends View> Parcelable saveInstanceState(T t, Parcelable parcelable) {
        return IMPL.saveInstanceState((StateSaverImpl) t, parcelable);
    }

    public static void setEnabledForAllActivitiesAndSupportFragments(Application application, boolean z) {
        IMPL.setEnabledForAllActivitiesAndSupportFragments(application, z);
    }

    public static <T> void restoreInstanceState(T t, Bundle bundle) {
        IMPL.restoreInstanceState((StateSaverImpl) t, bundle);
    }

    public static <T> void saveInstanceState(T t, Bundle bundle) {
        IMPL.saveInstanceState((StateSaverImpl) t, bundle);
    }
}
