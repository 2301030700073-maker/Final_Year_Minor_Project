package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbcl;
import java.util.List;
import java.util.Locale;

@TargetApi(28)
/* loaded from: classes.dex */
public class zzx extends zzv {
    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final int zzj(AudioManager audioManager) {
        int streamMinVolume;
        streamMinVolume = audioManager.getStreamMinVolume(3);
        return streamMinVolume;
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final void zzk(final Activity activity) {
        boolean isInMultiWindowMode;
        int i;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbo)).booleanValue() && com.google.android.gms.ads.internal.zzv.zzp().zzi().zzj() == null) {
            isInMultiWindowMode = activity.isInMultiWindowMode();
            if (isInMultiWindowMode) {
                return;
            }
            Window window = activity.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            i = attributes.layoutInDisplayCutoutMode;
            if (1 != i) {
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this) { // from class: com.google.android.gms.ads.internal.util.zzw
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    int i2;
                    DisplayCutout displayCutout;
                    List<Rect> boundingRects;
                    Activity activity2 = activity;
                    if (com.google.android.gms.ads.internal.zzv.zzp().zzi().zzj() == null) {
                        displayCutout = windowInsets.getDisplayCutout();
                        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        if (displayCutout != null) {
                            zzg zzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
                            boundingRects = displayCutout.getBoundingRects();
                            for (Rect rect : boundingRects) {
                                String format = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                                if (!TextUtils.isEmpty(str)) {
                                    str = str.concat("|");
                                }
                                str = str.concat(String.valueOf(format));
                            }
                            zzi.zzy(str);
                        } else {
                            com.google.android.gms.ads.internal.zzv.zzp().zzi().zzy(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        }
                    }
                    Window window2 = activity2.getWindow();
                    WindowManager.LayoutParams attributes2 = window2.getAttributes();
                    i2 = attributes2.layoutInDisplayCutoutMode;
                    if (2 != i2) {
                        attributes2.layoutInDisplayCutoutMode = 2;
                        window2.setAttributes(attributes2);
                    }
                    return view.onApplyWindowInsets(windowInsets);
                }
            });
        }
    }
}
