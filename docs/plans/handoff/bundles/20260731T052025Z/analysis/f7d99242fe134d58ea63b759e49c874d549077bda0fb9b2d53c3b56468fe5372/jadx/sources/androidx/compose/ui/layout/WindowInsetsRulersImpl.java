package androidx.compose.ui.layout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowInsetsRulersImpl implements WindowInsetsRulers {
    public final RectRulersImpl current;
    public final RectRulersImpl maximum;
    public final String name;

    public WindowInsetsRulersImpl(String str) {
        this.name = str;
        this.current = new RectRulersImpl(str);
        this.maximum = new RectRulersImpl(str.concat(" maximum"));
    }

    public final String toString() {
        return this.name;
    }
}
