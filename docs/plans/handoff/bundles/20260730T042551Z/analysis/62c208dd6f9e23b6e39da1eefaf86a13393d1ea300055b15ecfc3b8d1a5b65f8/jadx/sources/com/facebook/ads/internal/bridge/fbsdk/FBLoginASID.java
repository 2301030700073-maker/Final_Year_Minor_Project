package com.facebook.ads.internal.bridge.fbsdk;

import android.annotation.SuppressLint;
import androidx.annotation.Keep;
import com.facebook.AccessToken;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Date;

@Keep
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class FBLoginASID {
    @SuppressLint({"CatchGeneralException"})
    public static String getFBLoginASID() {
        try {
            Date date = AccessToken.f9198new;
            Object invoke = AccessToken.class.getDeclaredMethod("getCurrentAccessToken", new Class[0]).invoke(null, new Object[0]);
            if (invoke != null) {
                return (String) AccessToken.class.getDeclaredMethod("getUserId", new Class[0]).invoke(invoke, new Object[0]);
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
