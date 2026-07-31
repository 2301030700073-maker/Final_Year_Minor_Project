package com.fsck.k9.contacts;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.R;
import kotlin.math.MathKt;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContactLetterBitmapConfig {
    public final int[] backgroundColors;
    public final int defaultBackgroundColor;
    public final boolean hasDefaultBackgroundColor;

    public ContactLetterBitmapConfig(Context context, ThemeManager themeManager, DefaultMessageListPreferencesManager defaultMessageListPreferencesManager) {
        boolean z = ((DisplayMessageListSettings) defaultMessageListPreferencesManager.getConfig()).isColorizeMissingContactPictures;
        this.hasDefaultBackgroundColor = !z;
        Resources.Theme theme = new ContextThemeWrapper(context, R.style.Theme_K9_DayNight).getTheme();
        if (!z) {
            theme.getClass();
            this.defaultBackgroundColor = MathKt.resolveColorAttribute(theme, R.attr.contactPictureFallbackDefaultBackgroundColor);
            this.backgroundColors = new int[0];
            return;
        }
        this.defaultBackgroundColor = 0;
        theme.getClass();
        TypedValue typedValue = new TypedValue();
        if (!theme.resolveAttribute(R.attr.contactPictureFallbackBackgroundColors, typedValue, true)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m(R.attr.contactPictureFallbackBackgroundColors, "Couldn't resolve attribute (", ")"));
            throw null;
        }
        int[] intArray = theme.getResources().getIntArray(typedValue.resourceId);
        intArray.getClass();
        this.backgroundColors = intArray;
    }
}
