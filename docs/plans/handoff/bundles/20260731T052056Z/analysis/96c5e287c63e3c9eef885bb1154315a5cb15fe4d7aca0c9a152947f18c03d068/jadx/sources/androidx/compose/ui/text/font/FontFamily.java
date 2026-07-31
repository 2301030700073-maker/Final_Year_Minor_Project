package androidx.compose.ui.text.font;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FontFamily {
    public static final DefaultFontFamily Default = new DefaultFontFamily();
    public static final GenericFontFamily SansSerif = new GenericFontFamily("sans-serif", "FontFamily.SansSerif");
    public static final GenericFontFamily Serif = new GenericFontFamily("serif", "FontFamily.Serif");
    public static final GenericFontFamily Monospace = new GenericFontFamily("monospace", "FontFamily.Monospace");
    public static final GenericFontFamily Cursive = new GenericFontFamily("cursive", "FontFamily.Cursive");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Resolver {
    }
}
