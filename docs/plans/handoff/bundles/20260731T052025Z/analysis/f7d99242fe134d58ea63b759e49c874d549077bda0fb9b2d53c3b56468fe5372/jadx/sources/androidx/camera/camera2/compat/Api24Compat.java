package androidx.camera.camera2.compat;

import android.app.Activity;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.LocaleList;
import android.os.UserManager;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.SurfaceView;
import androidx.camera.view.SurfaceViewImplementation$$ExternalSyntheticLambda2;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.unit.IntOffsetKt;
import j$.util.stream.IntStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Api24Compat {
    public static IntStream chars(CharSequence charSequence) {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(charSequence.chars());
        return convert;
    }

    public static IntStream codePoints(CharSequence charSequence) {
        IntStream convert;
        convert = IntStream.VivifiedWrapper.convert(charSequence.codePoints());
        return convert;
    }

    public static LocaleList createLocaleList(Locale... localeArr) {
        return new LocaleList(localeArr);
    }

    public static final Locale getCurrentLocale(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 24) {
            Locale locale = configuration.getLocales().get(0);
            locale.getClass();
            return locale;
        }
        Locale locale2 = configuration.locale;
        locale2.getClass();
        return locale2;
    }

    public static LocaleList getDefault() {
        return LocaleList.getDefault();
    }

    public static DecimalFormatSymbols getInstance(Locale locale) {
        return DecimalFormatSymbols.getInstance(locale);
    }

    public static LocaleList getLocales(Configuration configuration) {
        return configuration.getLocales();
    }

    public static String[] getTriggeredContentAuthorities(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentAuthorities();
    }

    public static Uri[] getTriggeredContentUris(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentUris();
    }

    public static boolean isDeviceProtectedStorage(Context context) {
        return context.isDeviceProtectedStorage();
    }

    public static boolean isInMultiWindowMode(Activity activity) {
        activity.getClass();
        return activity.isInMultiWindowMode();
    }

    public static boolean isUserUnlocked(Context context) {
        return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
    }

    public static final void onCaptureBufferLost(CameraCaptureSession.CaptureCallback captureCallback, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
        captureCallback.onCaptureBufferLost(cameraCaptureSession, captureRequest, surface, j);
    }

    public static void pixelCopyRequest(SurfaceView surfaceView, Bitmap bitmap, SurfaceViewImplementation$$ExternalSyntheticLambda2 surfaceViewImplementation$$ExternalSyntheticLambda2, Handler handler) {
        PixelCopy.request(surfaceView, bitmap, surfaceViewImplementation$$ExternalSyntheticLambda2, handler);
    }

    public static final void setCurrentLocale(Configuration configuration, Locale locale) {
        locale.getClass();
        if (Build.VERSION.SDK_INT < 24) {
            configuration.setLocale(locale);
            return;
        }
        LocaleList locales = configuration.getLocales();
        locales.getClass();
        if (locales.isEmpty() || !Intrinsics.areEqual(locales.get(0), locale)) {
            ArrayList mutableListOf = IntOffsetKt.mutableListOf(locale);
            int size = locales.size();
            for (int i = 0; i < size; i++) {
                Locale locale2 = locales.get(i);
                if (!Intrinsics.areEqual(locale2, locale)) {
                    locale2.getClass();
                    mutableListOf.add(locale2);
                }
            }
            Locale[] localeArr = (Locale[]) mutableListOf.toArray(new Locale[0]);
            locales = new LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length));
        }
        configuration.setLocales(locales);
    }

    public static void setTextLocales(AndroidTextPaint androidTextPaint, androidx.compose.ui.text.intl.LocaleList localeList) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(localeList, 10));
        Iterator it = localeList.localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(((androidx.compose.ui.text.intl.Locale) it.next()).platformLocale);
        }
        Locale[] localeArr = (Locale[]) arrayList.toArray(new Locale[0]);
        androidTextPaint.setTextLocales(new LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
    }
}
