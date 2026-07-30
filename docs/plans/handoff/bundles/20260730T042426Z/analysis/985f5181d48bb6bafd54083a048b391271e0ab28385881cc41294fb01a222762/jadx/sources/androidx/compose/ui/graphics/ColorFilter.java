package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ColorFilter.kt */
/* loaded from: classes.dex */
public abstract class ColorFilter {
    public static final Companion Companion = new Companion(null);
    private final android.graphics.ColorFilter nativeColorFilter;

    public ColorFilter(android.graphics.ColorFilter colorFilter) {
        this.nativeColorFilter = colorFilter;
    }

    public final android.graphics.ColorFilter getNativeColorFilter$ui_graphics_release() {
        return this.nativeColorFilter;
    }

    /* compiled from: ColorFilter.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: tint-xETnrds$default, reason: not valid java name */
        public static /* synthetic */ ColorFilter m1319tintxETnrds$default(Companion companion, long j, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = BlendMode.Companion.m1282getSrcIn0nO6VwU();
            }
            return companion.m1320tintxETnrds(j, i);
        }

        /* renamed from: tint-xETnrds, reason: not valid java name */
        public final ColorFilter m1320tintxETnrds(long j, int i) {
            return new BlendModeColorFilter(j, i, (DefaultConstructorMarker) null);
        }
    }
}
