package androidx.compose.runtime;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Composer.kt */
/* loaded from: classes.dex */
abstract class GroupKind {
    public static final Companion Companion = new Companion(null);
    private static final int Group = m1021constructorimpl(0);
    private static final int Node = m1021constructorimpl(1);
    private static final int ReusableNode = m1021constructorimpl(2);

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m1021constructorimpl(int i) {
        return i;
    }

    /* compiled from: Composer.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getGroup-ULZAiWs, reason: not valid java name */
        public final int m1022getGroupULZAiWs() {
            return GroupKind.Group;
        }

        /* renamed from: getNode-ULZAiWs, reason: not valid java name */
        public final int m1023getNodeULZAiWs() {
            return GroupKind.Node;
        }

        /* renamed from: getReusableNode-ULZAiWs, reason: not valid java name */
        public final int m1024getReusableNodeULZAiWs() {
            return GroupKind.ReusableNode;
        }
    }
}
