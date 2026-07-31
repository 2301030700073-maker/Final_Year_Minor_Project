package kotlin.coroutines;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CombinedContext implements CoroutineContext, Serializable {
    private final CoroutineContext.Element element;
    private final CoroutineContext left;

    public CombinedContext(CoroutineContext.Element element, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        element.getClass();
        this.left = coroutineContext;
        this.element = element;
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (obj instanceof CombinedContext) {
            CombinedContext combinedContext = (CombinedContext) obj;
            int i = 2;
            CombinedContext combinedContext2 = combinedContext;
            int i2 = 2;
            while (true) {
                CoroutineContext coroutineContext = combinedContext2.left;
                combinedContext2 = coroutineContext instanceof CombinedContext ? (CombinedContext) coroutineContext : null;
                if (combinedContext2 == null) {
                    break;
                }
                i2++;
            }
            CombinedContext combinedContext3 = this;
            while (true) {
                CoroutineContext coroutineContext2 = combinedContext3.left;
                combinedContext3 = coroutineContext2 instanceof CombinedContext ? (CombinedContext) coroutineContext2 : null;
                if (combinedContext3 == null) {
                    break;
                }
                i++;
            }
            if (i2 == i) {
                while (true) {
                    CoroutineContext.Element element = this.element;
                    if (!Intrinsics.areEqual(combinedContext.get(element.getKey()), element)) {
                        z = false;
                        break;
                    }
                    CoroutineContext coroutineContext3 = this.left;
                    if (!(coroutineContext3 instanceof CombinedContext)) {
                        coroutineContext3.getClass();
                        CoroutineContext.Element element2 = (CoroutineContext.Element) coroutineContext3;
                        z = Intrinsics.areEqual(combinedContext.get(element2.getKey()), element2);
                        break;
                    }
                    this = (CombinedContext) coroutineContext3;
                }
                if (z) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(this.left.fold(obj, function2), this.element);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        key.getClass();
        while (true) {
            CoroutineContext.Element element = this.element.get(key);
            if (element != null) {
                return element;
            }
            CoroutineContext coroutineContext = this.left;
            if (!(coroutineContext instanceof CombinedContext)) {
                return coroutineContext.get(key);
            }
            this = (CombinedContext) coroutineContext;
        }
    }

    public final int hashCode() {
        return this.element.hashCode() + this.left.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        key.getClass();
        CoroutineContext.Element element = this.element.get(key);
        CoroutineContext coroutineContext = this.left;
        if (element != null) {
            return coroutineContext;
        }
        CoroutineContext minusKey = coroutineContext.minusKey(key);
        if (minusKey == this.left) {
            return this;
        }
        CoroutineContext.Element element2 = this.element;
        return minusKey == EmptyCoroutineContext.INSTANCE ? element2 : new CombinedContext(element2, minusKey);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        return coroutineContext == EmptyCoroutineContext.INSTANCE ? this : (CoroutineContext) coroutineContext.fold(this, new SaversKt$$ExternalSyntheticLambda3(22));
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("["), (String) fold("", new SaversKt$$ExternalSyntheticLambda3(21)), ']');
    }
}
