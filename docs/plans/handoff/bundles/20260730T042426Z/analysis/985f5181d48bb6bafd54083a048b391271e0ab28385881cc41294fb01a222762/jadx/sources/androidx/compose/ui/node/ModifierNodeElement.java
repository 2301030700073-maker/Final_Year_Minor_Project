package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: ModifierNodeElement.kt */
/* loaded from: classes.dex */
public abstract class ModifierNodeElement implements Modifier.Element {
    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean all(Function1 function1) {
        boolean booleanValue;
        booleanValue = ((Boolean) function1.invoke(this)).booleanValue();
        return booleanValue;
    }

    public abstract Modifier.Node create();

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

    public abstract void update(Modifier.Node node);
}
