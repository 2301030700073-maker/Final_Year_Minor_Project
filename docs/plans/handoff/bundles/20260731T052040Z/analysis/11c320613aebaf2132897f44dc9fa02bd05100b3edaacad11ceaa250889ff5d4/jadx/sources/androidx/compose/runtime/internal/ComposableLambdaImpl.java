package androidx.compose.runtime.internal;

import androidx.compose.animation.core.Transition$$ExternalSyntheticLambda2;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposableLambdaImpl implements Function2, Function3, Function4, Function5, Function6, Function7, Function8, Function9, Function10, Function11, Function13, Function14, Function15, Function16, Function17, Function18, Function19, Function20, Function21 {
    public Function _block;
    public final int key;
    public RecomposeScopeImpl scope;
    public ArrayList scopes;
    public final boolean tracked;

    public ComposableLambdaImpl(int i, boolean z, Function function) {
        this.key = i;
        this.tracked = z;
        this._block = function;
    }

    public final Object invoke(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(this.key);
        trackRead(gapComposer);
        int bitsForSlot = i | (gapComposer.changed(this) ? Expect_jvmKt.bitsForSlot(2, 0) : Expect_jvmKt.bitsForSlot(1, 0));
        Function function = this._block;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function);
        Object invoke = ((Function2) function).invoke(gapComposer, Integer.valueOf(bitsForSlot));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposableLambdaImpl$invoke$1(2, this, ComposableLambdaImpl.class, "invoke", "invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", 8, 0);
        }
        return invoke;
    }

    public final void trackRead(Composer composer) {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        if (!this.tracked || (currentRecomposeScope$runtime = ((GapComposer) composer).getCurrentRecomposeScope$runtime()) == null) {
            return;
        }
        currentRecomposeScope$runtime.flags |= 1;
        if (Expect_jvmKt.replacableWith(this.scope, currentRecomposeScope$runtime)) {
            this.scope = currentRecomposeScope$runtime;
            return;
        }
        ArrayList arrayList = this.scopes;
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            this.scopes = arrayList2;
            arrayList2.add(currentRecomposeScope$runtime);
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (Expect_jvmKt.replacableWith((RecomposeScopeImpl) arrayList.get(i), currentRecomposeScope$runtime)) {
                arrayList.set(i, currentRecomposeScope$runtime);
                return;
            }
        }
        arrayList.add(currentRecomposeScope$runtime);
    }

    @Override // kotlin.jvm.functions.Function3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke(obj, (Composer) obj2, ((Number) obj3).intValue());
    }

    @Override // kotlin.jvm.functions.Function4
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return invoke(obj, obj2, (Composer) obj3, ((Number) obj4).intValue());
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke((Composer) obj, ((Number) obj2).intValue());
    }

    public final Object invoke(Object obj, Composer composer, int i) {
        int bitsForSlot;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(this.key);
        trackRead(gapComposer);
        if (gapComposer.changed(this)) {
            bitsForSlot = Expect_jvmKt.bitsForSlot(2, 1);
        } else {
            bitsForSlot = Expect_jvmKt.bitsForSlot(1, 1);
        }
        Function function = this._block;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, function);
        Object invoke = ((Function3) function).invoke(obj, gapComposer, Integer.valueOf(bitsForSlot | i));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Transition$$ExternalSyntheticLambda2(i, this, obj, 7);
        }
        return invoke;
    }

    public final Object invoke(Object obj, Object obj2, Composer composer, int i) {
        int bitsForSlot;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(this.key);
        trackRead(gapComposer);
        if (gapComposer.changed(this)) {
            bitsForSlot = Expect_jvmKt.bitsForSlot(2, 2);
        } else {
            bitsForSlot = Expect_jvmKt.bitsForSlot(1, 2);
        }
        Function function = this._block;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(4, function);
        Object invoke = ((Function4) function).invoke(obj, obj2, gapComposer, Integer.valueOf(bitsForSlot | i));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda4(this, obj, obj2, i);
        }
        return invoke;
    }
}
