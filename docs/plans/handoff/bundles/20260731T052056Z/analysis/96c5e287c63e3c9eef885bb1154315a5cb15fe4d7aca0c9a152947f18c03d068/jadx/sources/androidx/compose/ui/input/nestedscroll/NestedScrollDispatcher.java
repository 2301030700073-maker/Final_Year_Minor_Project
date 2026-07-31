package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NestedScrollDispatcher {
    public Function0 calculateNestedScrollScope = new LayoutNode$_foldedChildren$1(4, this);
    public NestedScrollNode lastKnownParentNode;
    public NestedScrollNode nestedScrollNode;
    public CoroutineScope scope;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
    
        if (r0 == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006d, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006b, code lost:
    
        if (r0 == r1) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* renamed from: dispatchPostFling-RZ2iAVY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m501dispatchPostFlingRZ2iAVY(long r9, long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r8 = this;
            boolean r0 = r13 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1
            if (r0 == 0) goto L14
            r0 = r13
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r13 = r0
            goto L1a
        L14:
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPostFling$1
            r0.<init>(r8, r13)
            goto L12
        L1a:
            java.lang.Object r0 = r13.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r13.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L37
            if (r2 == r5) goto L33
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r0)
            goto L6e
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            return r3
        L33:
            kotlin.ResultKt.throwOnFailure(r0)
            goto L55
        L37:
            kotlin.ResultKt.throwOnFailure(r0)
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r0 = r8.nestedScrollNode
            if (r0 == 0) goto L43
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r0 = r0.getParentNestedScrollNode$ui()
            goto L44
        L43:
            r0 = r3
        L44:
            r6 = 0
            if (r0 != 0) goto L5a
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r8 = r8.lastKnownParentNode
            if (r8 == 0) goto L72
            r13.label = r5
            java.lang.Object r0 = r8.mo2onPostFlingRZ2iAVY(r9, r11, r13)
            if (r0 != r1) goto L55
            goto L6d
        L55:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r6 = r0.packedValue
            goto L72
        L5a:
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r8 = r8.nestedScrollNode
            if (r8 == 0) goto L62
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r3 = r8.getParentNestedScrollNode$ui()
        L62:
            r8 = r3
            if (r8 == 0) goto L72
            r13.label = r4
            java.lang.Object r0 = r8.mo2onPostFlingRZ2iAVY(r9, r11, r13)
            if (r0 != r1) goto L6e
        L6d:
            return r1
        L6e:
            androidx.compose.ui.unit.Velocity r0 = (androidx.compose.ui.unit.Velocity) r0
            long r6 = r0.packedValue
        L72:
            androidx.compose.ui.unit.Velocity r8 = new androidx.compose.ui.unit.Velocity
            r8.<init>(r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher.m501dispatchPostFlingRZ2iAVY(long, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: dispatchPreFling-QWom1Mo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m502dispatchPreFlingQWom1Mo(long r6, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1 r0 = (androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1 r0 = new androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher$dispatchPreFling$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r8)
            goto L44
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r5 = r5.nestedScrollNode
            if (r5 == 0) goto L39
            androidx.compose.ui.input.nestedscroll.NestedScrollNode r3 = r5.getParentNestedScrollNode$ui()
        L39:
            if (r3 == 0) goto L49
            r0.label = r4
            java.lang.Object r8 = r3.mo4onPreFlingQWom1Mo(r6, r0)
            if (r8 != r1) goto L44
            return r1
        L44:
            androidx.compose.ui.unit.Velocity r8 = (androidx.compose.ui.unit.Velocity) r8
            long r5 = r8.packedValue
            goto L4b
        L49:
            r5 = 0
        L4b:
            androidx.compose.ui.unit.Velocity r7 = new androidx.compose.ui.unit.Velocity
            r7.<init>(r5)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher.m502dispatchPreFlingQWom1Mo(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final CoroutineScope getCoroutineScope() {
        CoroutineScope coroutineScope = (CoroutineScope) this.calculateNestedScrollScope.invoke();
        if (coroutineScope != null) {
            return coroutineScope;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
        return null;
    }
}
