package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.text.StringsKt__StringsJVMKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RenderingFormat {
    private static final /* synthetic */ RenderingFormat[] $VALUES;
    public static final RenderingFormat HTML;
    public static final RenderingFormat PLAIN;

    static {
        RenderingFormat renderingFormat = new RenderingFormat() { // from class: kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat.PLAIN
            @Override // kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat
            public final String escape(String str) {
                str.getClass();
                return str;
            }
        };
        PLAIN = renderingFormat;
        RenderingFormat renderingFormat2 = new RenderingFormat() { // from class: kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat.HTML
            @Override // kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat
            public final String escape(String str) {
                str.getClass();
                return StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "<", "&lt;"), ">", "&gt;");
            }
        };
        HTML = renderingFormat2;
        $VALUES = new RenderingFormat[]{renderingFormat, renderingFormat2};
    }

    public static RenderingFormat valueOf(String str) {
        return (RenderingFormat) Enum.valueOf(RenderingFormat.class, str);
    }

    public static RenderingFormat[] values() {
        return (RenderingFormat[]) $VALUES.clone();
    }

    public abstract String escape(String str);
}
