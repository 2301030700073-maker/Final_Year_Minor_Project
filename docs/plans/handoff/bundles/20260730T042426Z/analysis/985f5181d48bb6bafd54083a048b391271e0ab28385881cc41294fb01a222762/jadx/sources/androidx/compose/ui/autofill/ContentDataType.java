package androidx.compose.ui.autofill;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ContentDataType.android.kt */
/* loaded from: classes.dex */
public abstract class ContentDataType {
    public static final Companion Companion = new Companion(null);
    private static final int Text = m1079constructorimpl(1);
    private static final int List = m1079constructorimpl(3);
    private static final int Date = m1079constructorimpl(4);
    private static final int Toggle = m1079constructorimpl(2);
    private static final int None = m1079constructorimpl(0);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1079constructorimpl(int i) {
        return i;
    }

    /* compiled from: ContentDataType.android.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getText-A48pgw8, reason: not valid java name */
        public final int m1080getTextA48pgw8() {
            return ContentDataType.Text;
        }
    }
}
