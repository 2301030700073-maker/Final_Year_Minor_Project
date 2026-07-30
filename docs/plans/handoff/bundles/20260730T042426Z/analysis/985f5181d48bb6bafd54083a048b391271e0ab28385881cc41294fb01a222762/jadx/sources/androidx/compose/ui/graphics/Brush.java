package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Size;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Brush.kt */
/* loaded from: classes.dex */
public abstract class Brush {
    public static final Companion Companion = new Companion(null);
    private final long intrinsicSize;

    public /* synthetic */ Brush(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: applyTo-Pq9zytI, reason: not valid java name */
    public abstract void mo1288applyToPq9zytI(long j, Paint paint, float f);

    private Brush() {
        this.intrinsicSize = Size.Companion.m1209getUnspecifiedNHjbRc();
    }

    /* compiled from: Brush.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
