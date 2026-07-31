package kotlin.reflect.jvm.internal.impl.util;

import coil3.util.ContextsKt;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class MemberKindCheck implements Check {
    public final /* synthetic */ int $r8$classId;
    public final String description;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Member extends MemberKindCheck {
        public static final Member INSTANCE = new Member(0, "must be a member function");
        public static final Member INSTANCE$1 = new Member(1, "must be a member or an extension function");
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Member(int i, String str) {
            super(0, str);
            this.$r8$classId = i;
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.Check
        public final boolean check(JavaMethodDescriptor javaMethodDescriptor) {
            switch (this.$r8$classId) {
                case 0:
                    if (javaMethodDescriptor.dispatchReceiverParameter == null) {
                        break;
                    }
                    break;
                default:
                    if (javaMethodDescriptor.dispatchReceiverParameter == null && javaMethodDescriptor.extensionReceiverParameter == null) {
                        break;
                    }
                    break;
            }
            return false;
        }
    }

    public /* synthetic */ MemberKindCheck(int i, String str) {
        this.$r8$classId = i;
        this.description = str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String getDescription() {
        int i = this.$r8$classId;
        return this.description;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public final String invoke(JavaMethodDescriptor javaMethodDescriptor) {
        switch (this.$r8$classId) {
        }
        return ContextsKt.invoke(this, javaMethodDescriptor);
    }
}
