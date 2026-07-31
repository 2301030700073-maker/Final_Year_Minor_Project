package androidx.glance;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.io.File;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1 extends Lambda implements Function0 {
    public final /* synthetic */ Function0 $factory;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1(int i, Function0 function0) {
        super(0);
        this.$r8$classId = i;
        this.$factory = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Function0 function0 = this.$factory;
        switch (i) {
            case 0:
                return function0.invoke();
            case 1:
                File file = (File) function0.invoke();
                file.getClass();
                String name = file.getName();
                name.getClass();
                if (StringsKt.substringAfterLast('.', name, "").equals("preferences_pb")) {
                    return file;
                }
                ContextsKt$$ExternalSyntheticBUOutline0.m$2(file, " does not match required extension for Preferences file: preferences_pb", "File extension for file: ");
                return null;
            case 2:
                MemberScope memberScope = (MemberScope) function0.invoke();
                return memberScope instanceof LazyScopeAdapter ? ((LazyScopeAdapter) memberScope).getActualScope() : memberScope;
            default:
                return CollectionsKt.toSet((Iterable) function0.invoke());
        }
    }
}
