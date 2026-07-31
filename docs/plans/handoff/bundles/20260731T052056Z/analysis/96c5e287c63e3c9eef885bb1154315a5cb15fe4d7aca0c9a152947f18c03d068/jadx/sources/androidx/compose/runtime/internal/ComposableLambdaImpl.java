package androidx.compose.runtime.internal;

import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.CompositionImpl;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposableLambdaImpl implements Function2, Function3, Function4, Function5, Function6, Function7, Function8, Function9, Function10, Function11, Function13, Function14, Function15, Function16, Function17, Function18, Function19, Function20, Function21 {
    public Object _block;
    public final int key;
    public RecomposeScopeImpl scope;
    public ArrayList scopes;
    public final boolean tracked;

    public ComposableLambdaImpl(Object obj, boolean z, int i) {
        this.key = i;
        this.tracked = z;
        this._block = obj;
    }

    public final Object invoke(Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(this.key);
        trackRead(gapComposer);
        int bitsForSlot = gapComposer.changed(this) ? Expect_jvmKt.bitsForSlot(2, 6) : Expect_jvmKt.bitsForSlot(1, 6);
        Object obj5 = this._block;
        obj5.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(8, obj5);
        Object invoke = ((Function8) obj5).invoke(obj, bool, obj2, obj3, obj4, gapComposer, Integer.valueOf(i | bitsForSlot));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda3(this, obj, bool, obj2, obj3, obj4, i);
        }
        return invoke;
    }

    public final void trackRead(GapComposer gapComposer) {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        if (!this.tracked || (currentRecomposeScope$runtime = gapComposer.getCurrentRecomposeScope$runtime()) == null) {
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

    public final void update(Function function) {
        if (Intrinsics.areEqual(this._block, function)) {
            return;
        }
        boolean z = this._block == null;
        this._block = function;
        if (z || !this.tracked) {
            return;
        }
        RecomposeScopeImpl recomposeScopeImpl = this.scope;
        if (recomposeScopeImpl != null) {
            CompositionImpl compositionImpl = recomposeScopeImpl.owner;
            if (compositionImpl != null) {
                compositionImpl.invalidate(recomposeScopeImpl, null);
            }
            this.scope = null;
        }
        ArrayList arrayList = this.scopes;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) arrayList.get(i);
                CompositionImpl compositionImpl2 = recomposeScopeImpl2.owner;
                if (compositionImpl2 != null) {
                    compositionImpl2.invalidate(recomposeScopeImpl2, null);
                }
            }
            arrayList.clear();
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke(((Number) obj2).intValue(), (GapComposer) obj);
    }

    @Override // kotlin.jvm.functions.Function3
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke(obj, (GapComposer) obj2, ((Number) obj3).intValue());
    }

    @Override // kotlin.jvm.functions.Function4
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return invoke(obj, obj2, (GapComposer) obj3, ((Number) obj4).intValue());
    }

    @Override // kotlin.jvm.functions.Function5
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return invoke(obj, obj2, obj3, (GapComposer) obj4, ((Number) obj5).intValue());
    }

    @Override // kotlin.jvm.functions.Function6
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return invoke(obj, obj2, obj3, obj4, (GapComposer) obj5, ((Number) obj6).intValue());
    }

    public final Object invoke(int i, GapComposer gapComposer) {
        int bitsForSlot;
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

    public final Object invoke(Object obj, GapComposer gapComposer, int i) {
        int bitsForSlot;
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
            endRestartGroup.block = new ForYouCardKt$$ExternalSyntheticLambda31(this, obj, i, 11);
        }
        return invoke;
    }

    public final Object invoke(Object obj, Object obj2, GapComposer gapComposer, int i) {
        int bitsForSlot;
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
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9(this, obj, obj2, i, 11);
        }
        return invoke;
    }

    public final Object invoke(Object obj, Object obj2, Object obj3, GapComposer gapComposer, int i) {
        int bitsForSlot;
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
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(this, obj, obj2, obj3, i, 4);
        }
        return invoke;
    }

    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, GapComposer gapComposer, int i) {
        int bitsForSlot;
        gapComposer.startRestartGroup(this.key);
        trackRead(gapComposer);
        if (gapComposer.changed(this)) {
            bitsForSlot = Expect_jvmKt.bitsForSlot(2, 4);
        } else {
            bitsForSlot = Expect_jvmKt.bitsForSlot(1, 4);
        }
        Object obj5 = this._block;
        obj5.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(6, obj5);
        Object invoke = ((Function6) obj5).invoke(obj, obj2, obj3, obj4, gapComposer, Integer.valueOf(i | bitsForSlot));
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda18(i, 2, this, obj, obj2, obj3, obj4);
        }
        return invoke;
    }

    @Override // kotlin.jvm.functions.Function8
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Boolean bool, Object obj2, Object obj3, Object obj4, GapComposer gapComposer, Integer num) {
        return invoke(obj, bool, obj2, obj3, obj4, gapComposer, num.intValue());
    }
}
