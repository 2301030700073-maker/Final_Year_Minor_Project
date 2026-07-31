package androidx.glance;

import androidx.glance.GlanceModifier;
import androidx.glance.layout.ContentScale;
import androidx.glance.semantics.SemanticsModifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageKt$Image$2$1 extends Lambda implements Function2 {
    public static final ImageKt$Image$2$1 INSTANCE;
    public static final ImageKt$Image$2$1 INSTANCE$1;
    public static final ImageKt$Image$2$1 INSTANCE$2;
    public static final ImageKt$Image$2$1 INSTANCE$3;
    public static final ImageKt$Image$2$1 INSTANCE$4;
    public static final ImageKt$Image$2$1 INSTANCE$5;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 2;
        INSTANCE$1 = new ImageKt$Image$2$1(i, 1);
        INSTANCE = new ImageKt$Image$2$1(i, 0);
        INSTANCE$2 = new ImageKt$Image$2$1(i, 2);
        INSTANCE$3 = new ImageKt$Image$2$1(i, 3);
        INSTANCE$4 = new ImageKt$Image$2$1(i, 4);
        INSTANCE$5 = new ImageKt$Image$2$1(i, 5);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImageKt$Image$2$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((EmittableImage) obj).provider = (AndroidResourceImageProvider) obj2;
                return unit;
            case 1:
                String str = (String) obj;
                GlanceModifier.Element element = (GlanceModifier.Element) obj2;
                if (str.length() == 0) {
                    return element.toString();
                }
                return str + ", " + element;
            case 2:
                ((EmittableImage) obj).modifier = (GlanceModifier) obj2;
                return unit;
            case 3:
                ((ContentScale) obj2).getClass();
                ((EmittableImage) obj).contentScale = 1;
                return unit;
            case 4:
                ColorFilter colorFilter = (ColorFilter) obj2;
                ((EmittableImage) obj).colorFilterParams = colorFilter != null ? colorFilter.colorFilterParams : null;
                return unit;
            default:
                GlanceModifier.Element element2 = (GlanceModifier.Element) obj2;
                return element2 instanceof SemanticsModifier ? element2 : obj;
        }
    }
}
