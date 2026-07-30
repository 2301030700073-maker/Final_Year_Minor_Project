package androidx.compose.ui.graphics;

/* compiled from: AndroidColorFilter.android.kt */
/* loaded from: classes.dex */
final class BlendModeColorFilterHelper {
    public static final BlendModeColorFilterHelper INSTANCE = new BlendModeColorFilterHelper();

    private BlendModeColorFilterHelper() {
    }

    /* renamed from: BlendModeColorFilter-xETnrds, reason: not valid java name */
    public final android.graphics.BlendModeColorFilter m1287BlendModeColorFilterxETnrds(long j, int i) {
        BlendModeColorFilterHelper$$ExternalSyntheticApiModelOutline3.m();
        return BlendModeColorFilterHelper$$ExternalSyntheticApiModelOutline2.m(ColorKt.m1324toArgb8_81llA(j), AndroidBlendMode_androidKt.m1213toAndroidBlendModes9anfk8(i));
    }

    public final BlendModeColorFilter createBlendModeColorFilter(android.graphics.BlendModeColorFilter blendModeColorFilter) {
        int color;
        android.graphics.BlendMode mode;
        color = blendModeColorFilter.getColor();
        long Color = ColorKt.Color(color);
        mode = blendModeColorFilter.getMode();
        return new BlendModeColorFilter(Color, AndroidBlendMode_androidKt.toComposeBlendMode(mode), blendModeColorFilter, null);
    }
}
