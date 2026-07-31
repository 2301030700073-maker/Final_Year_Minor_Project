package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypedArrayValue extends ArrayValue {
    public final KotlinType type;

    public TypedArrayValue(List list, KotlinType kotlinType) {
        super(list, new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(19, kotlinType));
        this.type = kotlinType;
    }
}
