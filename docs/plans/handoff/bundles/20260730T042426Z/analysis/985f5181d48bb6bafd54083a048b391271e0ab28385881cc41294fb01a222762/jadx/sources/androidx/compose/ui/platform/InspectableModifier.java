package androidx.compose.ui.platform;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: InspectableValue.kt */
/* loaded from: classes.dex */
public final class InspectableModifier extends InspectorValueInfo implements Modifier.Element {
    private final End end;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean all(Function1 function1) {
        boolean booleanValue;
        booleanValue = ((Boolean) function1.invoke(this)).booleanValue();
        return booleanValue;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object foldIn(Object obj, Function2 function2) {
        Object invoke;
        invoke = function2.invoke(obj, this);
        return invoke;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier then(Modifier modifier) {
        return Modifier.CC.$default$then(this, modifier);
    }

    /* compiled from: InspectableValue.kt */
    public final class End implements Modifier.Element {
        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ boolean all(Function1 function1) {
            boolean booleanValue;
            booleanValue = ((Boolean) function1.invoke(this)).booleanValue();
            return booleanValue;
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Object foldIn(Object obj, Function2 function2) {
            Object invoke;
            invoke = function2.invoke(obj, this);
            return invoke;
        }

        @Override // androidx.compose.ui.Modifier
        public /* synthetic */ Modifier then(Modifier modifier) {
            return Modifier.CC.$default$then(this, modifier);
        }

        public End() {
        }
    }

    public InspectableModifier(Function1 function1) {
        super(function1);
        this.end = new End();
    }
}
