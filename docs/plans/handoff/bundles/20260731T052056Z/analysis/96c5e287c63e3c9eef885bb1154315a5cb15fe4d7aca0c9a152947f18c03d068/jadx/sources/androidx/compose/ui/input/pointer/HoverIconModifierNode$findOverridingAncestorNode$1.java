package androidx.compose.ui.input.pointer;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HoverIconModifierNode$findOverridingAncestorNode$1 extends Lambda implements Function1 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HoverIconModifierNode$findOverridingAncestorNode$1(int i, Object obj) {
        super(1);
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((HoverIconModifierNode) obj).getClass();
                return Boolean.TRUE;
            case 1:
                ((KotlinTypeRefiner$Default) obj).getClass();
                return null;
            default:
                ((ClassId) obj).getClass();
                return SourceElement.NO_SOURCE;
        }
    }
}
