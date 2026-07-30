package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;

/* compiled from: IconButton.kt */
/* loaded from: classes.dex */
public final class IconButtonDefaults {
    public static final IconButtonDefaults INSTANCE = new IconButtonDefaults();

    private IconButtonDefaults() {
    }

    public final IconButtonColors iconButtonColors(Composer composer, int i) {
        IconButtonColors m695copyjRlVdoo;
        composer.startReplaceGroup(-1519621781);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1519621781, i, -1, "androidx.compose.material3.IconButtonDefaults.iconButtonColors (IconButton.kt:592)");
        }
        long m1312unboximpl = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1312unboximpl();
        IconButtonColors m697defaultIconButtonColors4WTKRHQ$material3_release = m697defaultIconButtonColors4WTKRHQ$material3_release(MaterialTheme.INSTANCE.getColorScheme(composer, 6), m1312unboximpl);
        if (Color.m1304equalsimpl0(m697defaultIconButtonColors4WTKRHQ$material3_release.m696getContentColor0d7_KjU(), m1312unboximpl)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return m697defaultIconButtonColors4WTKRHQ$material3_release;
        }
        m695copyjRlVdoo = m697defaultIconButtonColors4WTKRHQ$material3_release.m695copyjRlVdoo((r18 & 1) != 0 ? m697defaultIconButtonColors4WTKRHQ$material3_release.containerColor : 0L, (r18 & 2) != 0 ? m697defaultIconButtonColors4WTKRHQ$material3_release.contentColor : m1312unboximpl, (r18 & 4) != 0 ? m697defaultIconButtonColors4WTKRHQ$material3_release.disabledContainerColor : 0L, (r18 & 8) != 0 ? m697defaultIconButtonColors4WTKRHQ$material3_release.disabledContentColor : Color.m1302copywmQWz5c$default(m1312unboximpl, 0.38f, 0.0f, 0.0f, 0.0f, 14, null));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return m695copyjRlVdoo;
    }

    /* renamed from: defaultIconButtonColors-4WTKRHQ$material3_release, reason: not valid java name */
    public final IconButtonColors m697defaultIconButtonColors4WTKRHQ$material3_release(ColorScheme colorScheme, long j) {
        IconButtonColors defaultIconButtonColorsCached$material3_release = colorScheme.getDefaultIconButtonColorsCached$material3_release();
        if (defaultIconButtonColorsCached$material3_release != null) {
            return defaultIconButtonColorsCached$material3_release;
        }
        Color.Companion companion = Color.Companion;
        IconButtonColors iconButtonColors = new IconButtonColors(companion.m1316getTransparent0d7_KjU(), j, companion.m1316getTransparent0d7_KjU(), Color.m1302copywmQWz5c$default(j, 0.38f, 0.0f, 0.0f, 0.0f, 14, null), null);
        colorScheme.setDefaultIconButtonColorsCached$material3_release(iconButtonColors);
        return iconButtonColors;
    }
}
