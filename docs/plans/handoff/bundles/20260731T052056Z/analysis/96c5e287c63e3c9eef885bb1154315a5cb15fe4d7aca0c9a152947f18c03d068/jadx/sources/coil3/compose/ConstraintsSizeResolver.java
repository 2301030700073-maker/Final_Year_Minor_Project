package coil3.compose;

import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MeasuringIntrinsics$IntrinsicMinMax;
import androidx.compose.ui.layout.MeasuringIntrinsics$IntrinsicWidthHeight;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import coil3.size.SizeResolver;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ConstraintsSizeResolver implements SizeResolver, LayoutModifier {
    public ArrayList continuations;
    public long latestConstraints;

    @Override // androidx.compose.ui.Modifier
    public final boolean all(Function1 function1) {
        return ((Boolean) function1.invoke(this)).booleanValue();
    }

    @Override // androidx.compose.ui.Modifier
    public final Object foldIn(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final /* synthetic */ int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo186measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, MeasuringIntrinsics$IntrinsicMinMax.Max, MeasuringIntrinsics$IntrinsicWidthHeight.Height, 1), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final /* synthetic */ int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo186measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, MeasuringIntrinsics$IntrinsicMinMax.Max, MeasuringIntrinsics$IntrinsicWidthHeight.Width, 1), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo186measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        m778setConstraintsBRTryo0(j);
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(j);
        return measureScope.layout(mo512measureBRTryo0.width, mo512measureBRTryo0.height, EmptyMap.INSTANCE, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 13));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final /* synthetic */ int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int height;
        height = mo186measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, MeasuringIntrinsics$IntrinsicMinMax.Min, MeasuringIntrinsics$IntrinsicWidthHeight.Height, 1), ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
        return height;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final /* synthetic */ int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        int width;
        width = mo186measure3p2s80s(new IntrinsicsMeasureScope(lookaheadCapablePlaceable, lookaheadCapablePlaceable.getLayoutDirection()), new DefaultIntrinsicMeasurable(measurable, MeasuringIntrinsics$IntrinsicMinMax.Min, MeasuringIntrinsics$IntrinsicWidthHeight.Width, 1), ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
        return width;
    }

    /* renamed from: setConstraints-BRTryo0, reason: not valid java name */
    public final void m778setConstraintsBRTryo0(long j) {
        this.latestConstraints = j;
        if (Constraints.m684isZeroimpl(j)) {
            return;
        }
        ArrayList arrayList = this.continuations;
        if (arrayList.isEmpty()) {
            return;
        }
        this.continuations = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Continuation) it.next()).resumeWith(Unit.INSTANCE);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // coil3.size.SizeResolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object size(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof coil3.compose.ConstraintsSizeResolver$size$1
            if (r0 == 0) goto L13
            r0 = r8
            coil3.compose.ConstraintsSizeResolver$size$1 r0 = (coil3.compose.ConstraintsSizeResolver$size$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            coil3.compose.ConstraintsSizeResolver$size$1 r0 = new coil3.compose.ConstraintsSizeResolver$size$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r8 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r8
            r0.<init>(r7, r8)
        L1a:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2d
            kotlin.jvm.internal.Ref$ObjectRef r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L2b
            goto L63
        L2b:
            r8 = move-exception
            goto L72
        L2d:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            r7 = 0
            return r7
        L34:
            kotlin.ResultKt.throwOnFailure(r8)
            long r4 = r7.latestConstraints
            boolean r8 = androidx.compose.ui.unit.Constraints.m684isZeroimpl(r4)
            if (r8 == 0) goto L7d
            kotlin.jvm.internal.Ref$ObjectRef r8 = new kotlin.jvm.internal.Ref$ObjectRef
            r8.<init>()
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L6e
            r0.label = r3     // Catch: java.lang.Throwable -> L6e
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L6e
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L6e
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L6e
            r2.initCancellability()     // Catch: java.lang.Throwable -> L6e
            r8.element = r2     // Catch: java.lang.Throwable -> L6e
            java.util.ArrayList r0 = r7.continuations     // Catch: java.lang.Throwable -> L6e
            r0.add(r2)     // Catch: java.lang.Throwable -> L6e
            java.lang.Object r0 = r2.getResult()     // Catch: java.lang.Throwable -> L6e
            if (r0 != r1) goto L62
            return r1
        L62:
            r0 = r8
        L63:
            java.util.ArrayList r8 = r7.continuations
            java.lang.Object r0 = r0.element
            kotlin.jvm.internal.TypeIntrinsics.asMutableCollection(r8)
            r8.remove(r0)
            goto L7d
        L6e:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
        L72:
            java.util.ArrayList r7 = r7.continuations
            java.lang.Object r0 = r0.element
            kotlin.jvm.internal.TypeIntrinsics.asMutableCollection(r7)
            r7.remove(r0)
            throw r8
        L7d:
            long r7 = r7.latestConstraints
            coil3.size.Size r0 = new coil3.size.Size
            int r1 = androidx.compose.ui.unit.Constraints.m681getMaxWidthimpl(r7)
            coil3.size.Dimension$Undefined r2 = coil3.size.Dimension.Undefined.INSTANCE
            r3 = 2147483647(0x7fffffff, float:NaN)
            if (r1 == r3) goto L95
            coil3.size.Dimension.Pixels.m784constructorimpl(r1)
            coil3.size.Dimension$Pixels r4 = new coil3.size.Dimension$Pixels
            r4.<init>(r1)
            goto L96
        L95:
            r4 = r2
        L96:
            int r7 = androidx.compose.ui.unit.Constraints.m680getMaxHeightimpl(r7)
            if (r7 == r3) goto La4
            coil3.size.Dimension.Pixels.m784constructorimpl(r7)
            coil3.size.Dimension$Pixels r2 = new coil3.size.Dimension$Pixels
            r2.<init>(r7)
        La4:
            r0.<init>(r4, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.compose.ConstraintsSizeResolver.size(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.Modifier
    public final /* synthetic */ Modifier then(Modifier modifier) {
        return Modifier.CC.$default$then(this, modifier);
    }
}
