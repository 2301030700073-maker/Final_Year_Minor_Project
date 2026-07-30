package androidx.compose.animation.core;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AnimationSpec.kt */
/* loaded from: classes.dex */
public abstract class StartOffsetType {
    public static final Companion Companion = new Companion(null);
    private static final int Delay = m68constructorimpl(-1);
    private static final int FastForward = m68constructorimpl(1);

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m68constructorimpl(int i) {
        return i;
    }

    /* compiled from: AnimationSpec.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getDelay-Eo1U57Q, reason: not valid java name */
        public final int m69getDelayEo1U57Q() {
            return StartOffsetType.Delay;
        }
    }
}
