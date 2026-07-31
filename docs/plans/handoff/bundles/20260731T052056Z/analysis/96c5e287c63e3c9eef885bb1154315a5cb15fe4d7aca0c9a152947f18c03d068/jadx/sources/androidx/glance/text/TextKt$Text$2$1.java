package androidx.glance.text;

import androidx.glance.GlanceModifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextKt$Text$2$1 extends Lambda implements Function2 {
    public static final TextKt$Text$2$1 INSTANCE;
    public static final TextKt$Text$2$1 INSTANCE$1;
    public static final TextKt$Text$2$1 INSTANCE$2;
    public static final TextKt$Text$2$1 INSTANCE$3;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 2;
        INSTANCE = new TextKt$Text$2$1(i, 0);
        INSTANCE$1 = new TextKt$Text$2$1(i, 1);
        INSTANCE$2 = new TextKt$Text$2$1(i, 2);
        INSTANCE$3 = new TextKt$Text$2$1(i, 3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TextKt$Text$2$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((EmittableText) obj).text = (String) obj2;
                break;
            case 1:
                ((EmittableText) obj).modifier = (GlanceModifier) obj2;
                break;
            case 2:
                ((EmittableText) obj).style = (TextStyle) obj2;
                break;
            default:
                ((EmittableText) obj).maxLines = ((Number) obj2).intValue();
                break;
        }
        return unit;
    }
}
