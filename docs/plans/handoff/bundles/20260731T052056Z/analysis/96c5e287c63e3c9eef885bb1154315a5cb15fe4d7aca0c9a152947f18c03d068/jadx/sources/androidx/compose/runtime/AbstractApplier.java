package androidx.compose.runtime;

import java.util.ArrayList;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractApplier implements Applier {
    public final /* synthetic */ int $r8$classId;
    public Object current;
    public final Object root;
    public final Object stack;

    public AbstractApplier(Object obj) {
        this.$r8$classId = 0;
        this.root = obj;
        this.stack = new ArrayList();
        this.current = obj;
    }

    @Override // androidx.compose.runtime.Applier
    public void apply(Object obj, Function2 function2) {
        function2.invoke(getCurrent(), obj);
    }

    public void clear() {
        ((ArrayList) this.stack).clear();
        this.current = this.root;
        onClear();
    }

    public abstract FqName debugFqName();

    @Override // androidx.compose.runtime.Applier
    public void down(Object obj) {
        ((ArrayList) this.stack).add(this.current);
        this.current = obj;
    }

    public Object getCurrent() {
        return this.current;
    }

    public abstract void onClear();

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        Object obj = this.current;
        ComposeNodeLifecycleCallback composeNodeLifecycleCallback = obj instanceof ComposeNodeLifecycleCallback ? (ComposeNodeLifecycleCallback) obj : null;
        if (composeNodeLifecycleCallback != null) {
            composeNodeLifecycleCallback.onReuse();
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                return getClass().getSimpleName() + ": " + debugFqName();
            default:
                return super.toString();
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        this.current = ((ArrayList) this.stack).remove(r0.size() - 1);
    }

    public AbstractApplier(NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, SourceElement sourceElement) {
        this.$r8$classId = 1;
        this.root = nameResolver;
        this.current = dispatcher$promoteAndExecute$Effects;
        this.stack = sourceElement;
    }

    @Override // androidx.compose.runtime.Applier
    public void onEndChanges() {
    }
}
