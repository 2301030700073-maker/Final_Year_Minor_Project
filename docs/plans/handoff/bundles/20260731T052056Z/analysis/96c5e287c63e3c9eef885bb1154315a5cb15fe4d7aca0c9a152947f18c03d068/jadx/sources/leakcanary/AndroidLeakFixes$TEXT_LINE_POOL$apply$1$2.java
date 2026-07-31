package leakcanary;

import androidx.glance.session.InteractiveFrameClock;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2 extends Lambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $sCachedField;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(ModuleAwareClassDescriptor moduleAwareClassDescriptor, RawSubstitution rawSubstitution, SimpleType simpleType, JavaTypeAttributes javaTypeAttributes) {
        super(1);
        this.$r8$classId = 13;
        this.$sCachedField = moduleAwareClassDescriptor;
    }

    private final Object invoke$androidx$glance$session$InteractiveFrameClock$startInteractive$2$1$2(Object obj) {
        InteractiveFrameClock interactiveFrameClock = (InteractiveFrameClock) this.$sCachedField;
        synchronized (interactiveFrameClock.lock) {
            interactiveFrameClock.currentHz = 5;
            interactiveFrameClock.interactiveCoroutine = null;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:285:0x06f4, code lost:
    
        if (r0.equals("hashCode") == false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x073f, code lost:
    
        r0 = ((java.util.ArrayList) r1.getValueParameters()).isEmpty();
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0749, code lost:
    
        if (r0 != false) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x073d, code lost:
    
        if (r0.equals("toString") != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x08cc, code lost:
    
        if (r0 != false) goto L321;
     */
    /* JADX WARN: Removed duplicated region for block: B:227:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 2474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2.invoke(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(int i, Object obj) {
        super(1);
        this.$r8$classId = i;
        this.$sCachedField = obj;
    }
}
