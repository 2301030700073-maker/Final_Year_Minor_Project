package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AndroidTextStyle.android.kt */
/* loaded from: classes.dex */
public final class PlatformSpanStyle {
    public static final Companion Companion = new Companion(null);
    private static final PlatformSpanStyle Default = new PlatformSpanStyle();

    public final PlatformSpanStyle merge(PlatformSpanStyle platformSpanStyle) {
        return this;
    }

    /* compiled from: AndroidTextStyle.android.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PlatformSpanStyle getDefault() {
            return PlatformSpanStyle.Default;
        }
    }

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof PlatformSpanStyle);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return "PlatformSpanStyle()";
    }
}
