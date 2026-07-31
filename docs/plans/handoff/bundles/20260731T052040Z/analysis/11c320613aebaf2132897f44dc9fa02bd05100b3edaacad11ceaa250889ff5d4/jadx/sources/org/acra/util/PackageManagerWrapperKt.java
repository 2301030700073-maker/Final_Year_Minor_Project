package org.acra.util;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.graphics.Bitmap;
import android.graphics.Picture;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.PrecomputedText;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewStructure;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.compose.ui.node.Owner;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.C;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PackageManagerWrapperKt {
    public static final DisplayCutout access$getCutoutForDisplay(Display display) {
        try {
            Constructor<?> constructor = Class.forName("android.view.DisplayInfo").getConstructor(null);
            constructor.setAccessible(true);
            Object newInstance = constructor.newInstance(null);
            Method declaredMethod = display.getClass().getDeclaredMethod("getDisplayInfo", newInstance.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(display, newInstance);
            Field declaredField = newInstance.getClass().getDeclaredField("displayCutout");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(newInstance);
            if (obj instanceof DisplayCutout) {
                return (DisplayCutout) obj;
            }
            return null;
        } catch (Exception e) {
            if (!(e instanceof ClassNotFoundException) && !(e instanceof NoSuchMethodException) && !(e instanceof NoSuchFieldException) && !(e instanceof IllegalAccessException) && !(e instanceof InvocationTargetException) && !(e instanceof InstantiationException)) {
                throw e;
            }
            Log.w("BoundsHelper", e);
            return null;
        }
    }

    public static Handler createAsync(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static Bitmap createBitmap(Picture picture) {
        return Bitmap.createBitmap(picture);
    }

    public static List getBoundingRects(DisplayCutout displayCutout) {
        return displayCutout.getBoundingRects();
    }

    public static String[] getDigitStrings(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static Executor getMainExecutor(Context context) {
        return context.getMainExecutor();
    }

    public static void getNetwork(JobParameters jobParameters) {
        jobParameters.getNetwork();
    }

    public static int getResId(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static String getResPackage(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static int getSafeInsetBottom(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int getSafeInsetLeft(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static int getSafeInsetRight(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int getSafeInsetTop(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static int getScaledHoverSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static PrecomputedText.Params getTextMetricsParams(AppCompatTextView appCompatTextView) {
        return appCompatTextView.getTextMetricsParams();
    }

    public static int getType(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Uri getUri(Object obj) {
        return ((Icon) obj).getUri();
    }

    public static final long getVersionCodeLong(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }

    public static boolean hasSignatures(PackageManager packageManager, String str, Map map) {
        Signature[] signatureArr;
        byte[][] bArr;
        if (!map.isEmpty()) {
            Set<Object> keySet = map.keySet();
            for (Object obj : keySet) {
                if (obj == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Owner.CC.m("Cert byte array cannot be null when verifying ", str));
                    return false;
                }
                Integer num = (Integer) map.get(obj);
                if (num == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Owner.CC.m("Type must be specified for cert when verifying ", str));
                    return false;
                }
                int intValue = num.intValue();
                if (intValue != 0 && intValue != 1) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$1("Unsupported certificate type ", num, " when verifying ", str);
                    return false;
                }
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 28) {
                SigningInfo signingInfo = packageManager.getPackageInfo(str, C.BUFFER_FLAG_FIRST_SAMPLE).signingInfo;
                signatureArr = signingInfo.hasMultipleSigners() ? signingInfo.getApkContentsSigners() : signingInfo.getSigningCertificateHistory();
            } else {
                signatureArr = packageManager.getPackageInfo(str, 64).signatures;
            }
            List asList = signatureArr == null ? Collections.EMPTY_LIST : Arrays.asList(signatureArr);
            if (i >= 28) {
                Iterator it = keySet.iterator();
                while (it.hasNext()) {
                    byte[] bArr2 = (byte[]) it.next();
                    if (!packageManager.hasSigningCertificate(str, bArr2, ((Integer) map.get(bArr2)).intValue())) {
                    }
                }
                return true;
            }
            if (asList.size() != 0 && map.size() <= asList.size()) {
                if (map.containsValue(1)) {
                    bArr = new byte[asList.size()][];
                    for (int i2 = 0; i2 < asList.size(); i2++) {
                        try {
                            bArr[i2] = MessageDigest.getInstance("SHA256").digest(((Signature) asList.get(i2)).toByteArray());
                        } catch (NoSuchAlgorithmException e) {
                            DecodeUtils$$ExternalSyntheticBUOutline0.m("Device doesn't support SHA256 cert checking", e);
                            return false;
                        }
                    }
                } else {
                    bArr = null;
                }
                Iterator it2 = keySet.iterator();
                if (it2.hasNext()) {
                    byte[] bArr3 = (byte[]) it2.next();
                    Integer num2 = (Integer) map.get(bArr3);
                    int intValue2 = num2.intValue();
                    if (intValue2 != 0) {
                        if (intValue2 != 1) {
                            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(num2, "Unsupported certificate type ");
                            return false;
                        }
                        for (byte[] bArr4 : bArr) {
                            if (Arrays.equals(bArr3, bArr4)) {
                                return true;
                            }
                        }
                    } else if (asList.contains(new Signature(bArr3))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean postDelayed(Handler handler, Runnable runnable, String str, long j) {
        return handler.postDelayed(runnable, str, j);
    }

    public static void resetPivot(View view) {
        view.resetPivot();
    }

    public static int safeInsetBottom(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int safeInsetLeft(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static int safeInsetRight(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int safeInsetTop(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static void setFirstBaselineToTopHeight(TextView textView, int i) {
        textView.setFirstBaselineToTopHeight(i);
    }

    public static void setMaxTextLength(ViewStructure viewStructure, int i) {
        viewStructure.setMaxTextLength(i);
    }

    public static void setOutlineAmbientShadowColor(int i, View view) {
        view.setOutlineAmbientShadowColor(i);
    }

    public static void setOutlineSpotShadowColor(int i, View view) {
        view.setOutlineSpotShadowColor(i);
    }

    public static boolean shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }
}
