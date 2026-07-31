package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SignatureBuildingComponents$jvmDescriptor$1 extends Lambda implements Function1 {
    public static final SignatureBuildingComponents$jvmDescriptor$1 INSTANCE = new SignatureBuildingComponents$jvmDescriptor$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        return str.length() > 1 ? Animation.CC.m(';', "L", str) : str;
    }
}
