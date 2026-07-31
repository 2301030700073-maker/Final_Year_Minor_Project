package androidx.glance.appwidget.translators;

import android.widget.RemoteViews;
import androidx.compose.ui.graphics.ColorKt;
import androidx.core.widget.RemoteViewsCompat$Api31Impl;
import androidx.glance.appwidget.TranslationContext;
import androidx.glance.color.DayNightColorProvider;
import androidx.glance.unit.ColorProvider;
import androidx.glance.unit.ResourceColorProvider;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageTranslatorApi31Impl {
    public static final ImageTranslatorApi31Impl INSTANCE = new ImageTranslatorApi31Impl();

    public final void applyTintColorFilter(TranslationContext translationContext, RemoteViews remoteViews, ColorProvider colorProvider, int i) {
        if (colorProvider instanceof DayNightColorProvider) {
            DayNightColorProvider dayNightColorProvider = (DayNightColorProvider) colorProvider;
            long j = dayNightColorProvider.day;
            long j2 = dayNightColorProvider.night;
            int m444toArgb8_81llA = ColorKt.m444toArgb8_81llA(j);
            int m444toArgb8_81llA2 = ColorKt.m444toArgb8_81llA(j2);
            remoteViews.getClass();
            RemoteViewsCompat$Api31Impl.setColorInt(remoteViews, i, "setColorFilter", m444toArgb8_81llA, m444toArgb8_81llA2);
            return;
        }
        if (colorProvider instanceof ResourceColorProvider) {
            int i2 = ((ResourceColorProvider) colorProvider).resId;
            remoteViews.getClass();
            RemoteViewsCompat$Api31Impl.setColor(remoteViews, i, "setColorFilter", i2);
        } else {
            int m444toArgb8_81llA3 = ColorKt.m444toArgb8_81llA(colorProvider.mo744getColorvNxB06k(translationContext.context));
            remoteViews.getClass();
            remoteViews.setInt(i, "setColorFilter", m444toArgb8_81llA3);
        }
    }
}
