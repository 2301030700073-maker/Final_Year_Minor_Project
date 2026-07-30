package androidx.compose.ui.geometry;

/* compiled from: MutableRect.kt */
/* loaded from: classes.dex */
public abstract class MutableRectKt {
    public static final Rect toRect(MutableRect mutableRect) {
        return new Rect(mutableRect.getLeft(), mutableRect.getTop(), mutableRect.getRight(), mutableRect.getBottom());
    }
}
