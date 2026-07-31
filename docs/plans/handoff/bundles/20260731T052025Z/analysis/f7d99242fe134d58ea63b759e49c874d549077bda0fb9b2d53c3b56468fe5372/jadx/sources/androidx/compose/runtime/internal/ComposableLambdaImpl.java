package androidx.compose.runtime.internal;

import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import java.util.ArrayList;
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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposableLambdaImpl implements Function2, Function3, Function4, Function5, Function6, Function7, Function8, Function9, Function10, Function11, Function13, Function14, Function15, Function16, Function17, Function18, Function19, Function20, Function21 {
    public Object _block;
    public final int key;
    public RecomposeScopeImpl scope;
    public ArrayList scopes;
    public final boolean tracked;

    public ComposableLambdaImpl(int i, Object obj, boolean z) {
        this.key = i;
        this.tracked = z;
        this._block = obj;
    }

    public final Object invoke(Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(this.key);
        trackRead(gapComposer);
        int bitsForSlot = gapComposer.changed(this) ? Expect_jvmKt.bitsForSlot(2, 6) : Expect_jvmKt.bitsForSlot(1, 6);
        Object obj5 = this._block;
        obj5.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(8, obj5);
        Object invoke = ((Function8) obj5).invoke(obj, bool, obj2, obj3, obj4, gapComposer, Integer.valueOf(i | bitsForSlot));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(this, obj, bool, obj2, obj3, obj4, i);
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

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke((Composer) obj, ((Number) obj2).intValue());
    }

    @Override // kotlin.jvm.functions.Function3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke(obj, (Composer) obj2, ((Number) obj3).intValue());
    }

    @Override // kotlin.jvm.functions.Function4
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return invoke(obj, obj2, (Composer) obj3, ((Number) obj4).intValue());
    }

    @Override // kotlin.jvm.functions.Function5
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return invoke(obj, obj2, obj3, (Composer) obj4, ((Number) obj5).intValue());
    }

    public final Object invoke(Composer composer, int i) {
        int bitsForSlot;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(this.key);
        trackRead(gapComposer);
        if (gapComposer.changed(this)) {
            bitsForSlot = Expect_jvmKt.bitsForSlot(2, 0);
        } else {
            bitsForSlot = Expect_jvmKt.bitsForSlot(1, 0);
        }
        int i2 = i | bitsForSlot;
        Object obj = this._block;
        obj.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, obj);
        Object invoke = ((Function2) obj).invoke(gapComposer, Integer.valueOf(i2));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposableLambdaImpl$invoke$1(2, this, ComposableLambdaImpl.class, "invoke", "invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;", 8, 0);
        }
        return invoke;
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
        Object obj2 = this._block;
        obj2.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, obj2);
        Object invoke = ((Function3) obj2).invoke(obj, gapComposer, Integer.valueOf(bitsForSlot | i));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda0(this, obj, i);
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
        Object obj3 = this._block;
        obj3.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(4, obj3);
        Object invoke = ((Function4) obj3).invoke(obj, obj2, gapComposer, Integer.valueOf(bitsForSlot | i));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(i, this, obj, obj2);
        }
        return invoke;
    }

    public final Object invoke(Object obj, Object obj2, Object obj3, Composer composer, int i) {
        int bitsForSlot;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(this.key);
        trackRead(gapComposer);
        if (gapComposer.changed(this)) {
            bitsForSlot = Expect_jvmKt.bitsForSlot(2, 3);
        } else {
            bitsForSlot = Expect_jvmKt.bitsForSlot(1, 3);
        }
        Object obj4 = this._block;
        obj4.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(5, obj4);
        Object invoke = ((Function5) obj4).invoke(obj, obj2, obj3, gapComposer, Integer.valueOf(bitsForSlot | i));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(this, obj, obj2, obj3, i);
        }
        return invoke;
    }

    @Override // kotlin.jvm.functions.Function8
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, GapComposer gapComposer, Integer num) {
        return invoke(obj, bool, obj2, obj3, obj4, gapComposer, num.intValue());
    }
}
