package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AndroidMenu_androidKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;

    public /* synthetic */ AndroidMenu_androidKt$$ExternalSyntheticLambda0(MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r13, java.lang.Object r14) {
        /*
            r12 = this;
            int r0 = r12.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            r2 = 2
            androidx.compose.runtime.MutableState r12 = r12.f$0
            switch(r0) {
                case 0: goto L3a;
                default: goto La;
            }
        La:
            androidx.compose.runtime.Composer r13 = (androidx.compose.runtime.Composer) r13
            java.lang.Integer r14 = (java.lang.Integer) r14
            int r14 = r14.intValue()
            r0 = r14 & 3
            r3 = 1
            if (r0 == r2) goto L19
            r0 = r3
            goto L1a
        L19:
            r0 = 0
        L1a:
            r14 = r14 & r3
            androidx.compose.runtime.GapComposer r13 = (androidx.compose.runtime.GapComposer) r13
            boolean r14 = r13.shouldExecute(r14, r0)
            if (r14 == 0) goto L36
            androidx.compose.material3.ExposedDropdownMenuDefaults r14 = androidx.compose.material3.ExposedDropdownMenuDefaults.INSTANCE
            java.lang.Object r12 = r12.getValue()
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            r0 = 0
            r2 = 384(0x180, float:5.38E-43)
            r14.TrailingIcon(r12, r0, r13, r2)
            goto L39
        L36:
            r13.skipToGroupEnd()
        L39:
            return r1
        L3a:
            androidx.compose.ui.unit.IntRect r13 = (androidx.compose.ui.unit.IntRect) r13
            androidx.compose.ui.unit.IntRect r14 = (androidx.compose.ui.unit.IntRect) r14
            int r0 = r14.left
            int r3 = r14.bottom
            int r4 = r14.right
            int r5 = r14.top
            int r6 = r13.right
            int r7 = r13.top
            int r8 = r13.bottom
            int r9 = r13.left
            r10 = 1065353216(0x3f800000, float:1.0)
            r11 = 0
            if (r0 < r6) goto L55
        L53:
            r13 = r11
            goto L74
        L55:
            if (r4 > r9) goto L59
            r13 = r10
            goto L74
        L59:
            int r6 = r14.getWidth()
            if (r6 != 0) goto L60
            goto L53
        L60:
            int r6 = java.lang.Math.max(r9, r0)
            int r13 = r13.right
            int r13 = java.lang.Math.min(r13, r4)
            int r13 = r13 + r6
            int r13 = r13 / r2
            int r13 = r13 - r0
            float r13 = (float) r13
            int r0 = r14.getWidth()
            float r0 = (float) r0
            float r13 = r13 / r0
        L74:
            if (r5 < r8) goto L78
        L76:
            r10 = r11
            goto L95
        L78:
            if (r3 > r7) goto L7b
            goto L95
        L7b:
            int r0 = r14.getHeight()
            if (r0 != 0) goto L82
            goto L76
        L82:
            int r0 = java.lang.Math.max(r7, r5)
            int r3 = java.lang.Math.min(r8, r3)
            int r3 = r3 + r0
            int r3 = r3 / r2
            int r3 = r3 - r5
            float r0 = (float) r3
            int r14 = r14.getHeight()
            float r14 = (float) r14
            float r10 = r0 / r14
        L95:
            long r13 = androidx.compose.ui.graphics.ColorKt.TransformOrigin(r13, r10)
            androidx.compose.ui.graphics.TransformOrigin r0 = new androidx.compose.ui.graphics.TransformOrigin
            r0.<init>(r13)
            r12.setValue(r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AndroidMenu_androidKt$$ExternalSyntheticLambda0.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
