package androidx.compose.ui.layout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
