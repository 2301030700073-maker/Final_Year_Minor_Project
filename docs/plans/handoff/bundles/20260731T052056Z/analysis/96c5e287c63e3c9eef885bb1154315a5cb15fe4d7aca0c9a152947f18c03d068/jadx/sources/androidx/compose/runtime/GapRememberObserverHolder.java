package androidx.compose.runtime;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class GapRememberObserverHolder {
    public final int afterGroupIndex;
    public final RememberObserver wrapped;

    public GapRememberObserverHolder(RememberObserver rememberObserver, int i) {
        this.wrapped = rememberObserver;
        this.afterGroupIndex = i;
    }
}
