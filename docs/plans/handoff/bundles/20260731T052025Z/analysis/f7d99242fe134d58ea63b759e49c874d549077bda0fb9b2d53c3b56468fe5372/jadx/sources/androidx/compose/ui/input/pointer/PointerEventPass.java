package androidx.compose.ui.input.pointer;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PointerEventPass {
    public static final /* synthetic */ PointerEventPass[] $VALUES;
    public static final PointerEventPass Final;
    public static final PointerEventPass Initial;
    public static final PointerEventPass Main;

    static {
        PointerEventPass pointerEventPass = new PointerEventPass("Initial", 0);
        Initial = pointerEventPass;
        PointerEventPass pointerEventPass2 = new PointerEventPass("Main", 1);
        Main = pointerEventPass2;
        PointerEventPass pointerEventPass3 = new PointerEventPass("Final", 2);
        Final = pointerEventPass3;
        $VALUES = new PointerEventPass[]{pointerEventPass, pointerEventPass2, pointerEventPass3};
    }

    public static PointerEventPass valueOf(String str) {
        return (PointerEventPass) Enum.valueOf(PointerEventPass.class, str);
    }

    public static PointerEventPass[] values() {
        return (PointerEventPass[]) $VALUES.clone();
    }
}
