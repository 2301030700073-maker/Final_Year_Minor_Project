package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsNodeKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TouchBoundsExpansion {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long None = Companion.pack$ui(0, 0, 0, 0);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ Companion(int i) {
            this.$r8$classId = i;
        }

        public static final int access$unpack(int i, long j) {
            int i2 = TouchBoundsExpansion.$r8$clinit;
            return ((int) (j >> (i * 15))) & 32767;
        }

        public static long pack$ui(int i, int i2, int i3, int i4) {
            return ((i2 & 32767) << 15) | (i & 32767) | ((i3 & 32767) << 30) | ((i4 & 32767) << 45) | Long.MIN_VALUE;
        }

        /* renamed from: entityType-OLwlOKw, reason: not valid java name */
        public int m640entityTypeOLwlOKw() {
            switch (this.$r8$classId) {
                case 1:
                    return 16;
                default:
                    return 8;
            }
        }

        public boolean shouldHitTest(Modifier.Node node) {
            switch (this.$r8$classId) {
                case 1:
                    return true;
                default:
                    return SemanticsNodeKt.isImportantForAccessibility(SemanticsNodeKt.SemanticsNode(HitTestResultKt.requireLayoutNode(node), false));
            }
        }
    }
}
